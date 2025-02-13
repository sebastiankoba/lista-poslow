import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/parliament_members_cubit.dart';

class ParliamentMembersScreen extends StatelessWidget {
  const ParliamentMembersScreen({super.key});

  static const _listItemHeight = 50.0;
  static const _searchFieldHeight = 40.0;
  static const _searchFieldWidth = 300.0;
  static const _pageTitleHeight = 36.0;
  static const _pageSubtitleHeight = 40.0;
  static const _verticalMarginHeight = 16.0;
  static const _verticalInnerMarginHeight = 20.0;
  static const _horizontalMarginWidth = 16.0;
  static const _parliamentMemberNameWidth = 260.0;

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600;

    ScrollController scrollController = ScrollController();
    scrollController.addListener(() {
      if(scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        log("load");
        context.read<ParliamentMembersCubit>().loadMoreParliamentMembers();
      }
    });
    return Scaffold(
      body: Center(
        child: BlocBuilder<ParliamentMembersCubit, ParliamentMembersCubitState>(
            builder: (context, state) {
              Widget nextView = Container();
              state.when(
                loading: () {
                  nextView = CircularProgressIndicator();
                },
                data: (parliamentMembers, termNum) {
                  nextView = LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      double appBarHeight = isMobile ? (_verticalInnerMarginHeight + _pageTitleHeight + _pageSubtitleHeight + _verticalInnerMarginHeight + _searchFieldHeight + _verticalInnerMarginHeight + _listItemHeight) : (_verticalMarginHeight + _pageTitleHeight + _pageSubtitleHeight + _verticalInnerMarginHeight + _listItemHeight);
                      double calculatedViewHeight = parliamentMembers.length * _listItemHeight + appBarHeight;
                      if(calculatedViewHeight < constraints.biggest.height) {
                        context.read<ParliamentMembersCubit>().loadMoreParliamentMembers();
                      }
                      return CustomScrollView(
                        controller: scrollController,
                        slivers: [
                          SliverAppBar(
                            floating: true,
                            stretch: true,
                            surfaceTintColor: Colors.transparent,
                            toolbarHeight: appBarHeight,
                            flexibleSpace: pageTop(termNum, isMobile, context.read<ParliamentMembersCubit>().filterText ?? "", (text) {
                              context.read<ParliamentMembersCubit>().filterParliamentMembers(text);
                            }),
                          ),
                          SliverList(
                            delegate: SliverChildBuilderDelegate(
                                    (BuildContext context, int index) {
                                  return parliamentMemberItem(
                                      "https://api.sejm.gov.pl/sejm/term$termNum/MP/${parliamentMembers[index].id.toString()}/photo-mini",
                                      parliamentMembers[index].lastFirstName.toString(),
                                      (DateTime.now().difference(DateTime.parse(parliamentMembers[index].birthDate ?? "")).inDays ~/ 365).toString(),
                                      parliamentMembers[index].club.toString(),
                                      parliamentMembers[index].districtName.toString(),
                                      parliamentMembers[index].profession ?? "-",
                                      parliamentMembers[index].numberOfVotes.toString(),
                                      isMobile
                                  );
                                },
                                childCount: parliamentMembers.length
                            ),
                          )
                        ],
                      );
                    },
                  );
                },
                error: (message) {
                  nextView = Text(message);
                },
              );
              return nextView;
            }
        )
      )
    );
  }

  Widget pageTop(String termNum, bool mobile, String initialSearchValue, Function(String) onTextChanged) {
    return Padding(
      padding: const EdgeInsets.only(left: _horizontalMarginWidth, right: _horizontalMarginWidth, top: _verticalMarginHeight),
      child: mobile ? Column(
        children: [
          Container(
            width: double.maxFinite,
              child: pageHeader(termNum)
          ),
          Container(
            margin: const EdgeInsets.only(top: _verticalInnerMarginHeight),
            width: double.maxFinite,
              child: Column(
                children: [
                  //filterButton(),
                  SizedBox(
                      width: double.maxFinite,
                      height: _searchFieldHeight,
                      child: searchField(initialSearchValue, onTextChanged)
                  ),
                ],
              )
          ),
          parliamentMembersHeader(mobile)
        ],
      ) : Column(
        children: [
          Row(
            children: [
              Expanded(child: pageHeader(termNum)),
              Container(
                height: _pageTitleHeight + _pageSubtitleHeight,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                      width: _searchFieldWidth,
                      height: _searchFieldHeight,
                      child: searchField(initialSearchValue, onTextChanged)
                  ),
                ),
              ),
            ],
          ),
          parliamentMembersHeader(mobile)
        ],
      ),
    );
  }

  Widget pageHeader(String termNum) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        pageTitle(),
        pageSubtitle(termNum)
      ],
    );
  }
  Widget pageTitle() {
    return Container(
      height: _pageTitleHeight,
      child: const Text(
        'Lista posłów',
        style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900
        ),
      ),
    );
  }
  Widget pageSubtitle(String termNum) {
    return Container(
      height:_pageSubtitleHeight,
      child: Text(
        "Podstawowe informacje o posłach na Sejm RP ${termNum}. kadencji",
        maxLines: 2,
        style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Colors.black87
        ),
      ),
    );
  }
  
  Widget filterButton() {
    return OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
          )
        ),
        child: Text("Filtry")
    );
  }
  Widget searchField(String initialValue, Function(String) onTextChanged) {
    return TextFormField(
      onChanged: (text) {
        onTextChanged(text);
      },
      initialValue: initialValue,
      enabled: true,
      style: const TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
      decoration: const InputDecoration(
        hintText: "Szukaj",
        contentPadding: EdgeInsets.all(2.0),
        prefixIcon: Icon(Icons.search),
        isDense: true,
        border: OutlineInputBorder()
      ),
    );
  }

  Widget parliamentMembersHeader(bool isMobile) {
    return Padding(
      padding: const EdgeInsets.only(top: _verticalInnerMarginHeight),
      child: Row(
        children: [
          Container(
              width: _parliamentMemberNameWidth,
              height: _listItemHeight,
              alignment: Alignment.centerLeft,
              child: const Text("Poseł", style: TextStyle(fontWeight: FontWeight.bold))
          ),
          Visibility(
            visible: !isMobile,
            child: Expanded(
              flex: 2,
              child: Container(
                  height: _listItemHeight,
                  alignment: Alignment.center,
                  child: const Text("Wiek", style: TextStyle(fontWeight: FontWeight.bold))
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
                height: _listItemHeight,
                alignment: Alignment.center,
                child: const Text("Klub", style: TextStyle(fontWeight: FontWeight.bold))
            ),
          ),
          Visibility(
            visible: !isMobile,
            child: Expanded(
              flex: 3,
              child: Container(
                  height: _listItemHeight,
                  alignment: Alignment.center,
                  child: const Text("Okręg", style: TextStyle(fontWeight: FontWeight.bold))
              ),
            ),
          ),
          Visibility(
            visible: !isMobile,
            child: Expanded(
              flex: 3,
              child: Container(
                  height: _listItemHeight,
                  alignment: Alignment.center,
                  child: const Text("Zawód", style: TextStyle(fontWeight: FontWeight.bold))
              ),
            ),
          ),
          Visibility(
            visible: !isMobile,
            child: Expanded(
              flex: 3,
              child: Container(
                  height: _listItemHeight,
                  alignment: Alignment.center,
                  child: const Text("Głosów", style: TextStyle(fontWeight: FontWeight.bold))
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget parliamentMemberItem(String imageUrl, String fullName, String age, String club, String districtName, String educationLevel, String votesCount, bool isMobile) {
    return Padding(
      padding: const EdgeInsets.only(left: _horizontalMarginWidth, right: _horizontalMarginWidth),
      child: Row(
        children: [
          Container(
              width: _parliamentMemberNameWidth,
              height: _listItemHeight,
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  imageView(imageUrl),
                  SizedBox(width: 10.0),
                  Text(fullName)
                ],
              )
          ),
          Visibility(
            visible: !isMobile,
            child: Expanded(
              flex: 2,
              child: Container(
                  height: _listItemHeight,
                  alignment: Alignment.center,
                  child: Text(age)
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
                height: _listItemHeight,
                alignment: Alignment.center,
                child: Text(club)
            ),
          ),
          Visibility(
            visible: !isMobile,
            child: Expanded(
              flex: 3,
              child: Container(
                  height: _listItemHeight,
                  alignment: Alignment.center,
                  child: Text(districtName)
              ),
            ),
          ),
          Visibility(
            visible: !isMobile,
            child: Expanded(
              flex: 3,
              child: Container(
                  height: _listItemHeight,
                  alignment: Alignment.center,
                  child: Text(educationLevel)
              ),
            ),
          ),
          Visibility(
            visible: !isMobile,
            child: Expanded(
              flex: 3,
              child: Container(
                  height: _listItemHeight,
                  alignment: Alignment.center,
                  child: Text(votesCount)
              ),
            ),
          )
        ],
      ),
    );
  }

  /*Widget parliamentMembersList(List <ParliamentMember> parliamentMembers, ScrollController scrollController, bool isMobile) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        log("ListView height: ${constraints.biggest.height}");
        if((((parliamentMembers.length) * _listItemHeight) + _verticalMarginHeight ) < constraints.biggest.height) {
          context.read<ParliamentMembersCubit>().loadMoreParliamentMembers();
        }
        return ListView.builder(
            controller: scrollController,
            itemCount: parliamentMembers.length,
            itemBuilder: (BuildContext context, int index) {
              return parliamentMemberItem(
                  "https://api.sejm.gov.pl/sejm/term10/MP/${parliamentMembers[index].id.toString()}/photo-mini",
                  "${parliamentMembers[index].lastName} ${parliamentMembers[index].firstName.toString()}",
                  (DateTime.now().difference(DateTime.parse(parliamentMembers[index].birthDate ?? "")).inDays ~/ 365).toString(),
                  parliamentMembers[index].club.toString(),
                  parliamentMembers[index].districtName.toString(),
                  parliamentMembers[index].educationLevel.toString(),
                  parliamentMembers[index].numberOfVotes.toString(),
                  isMobile
              );
            }
        );
      },
    );
  }*/

  Widget imageView(String imageUrl) {
    return CircleAvatar(
      backgroundImage: NetworkImage(imageUrl)
    );
  }
}