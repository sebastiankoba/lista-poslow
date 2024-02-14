import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sejm/domain/repository/term_repository.dart';
import 'package:sejm/utils/PolishComparator.dart';

import '../../../domain/model/parliament_member/parliament_member.dart';
import '../../../domain/model/term/term.dart';

part 'parliament_members_cubit.freezed.dart';
part 'parliament_members_cubit_state.dart';

class ParliamentMembersCubit extends Cubit<ParliamentMembersCubitState> {
  final TermRepository _termRepository;
  ParliamentMembersCubit({required TermRepository termRepository})
      : _termRepository = termRepository, super(const ParliamentMembersCubitState.loading()) {
    getParliamentMembersFullData();
  }

  List<ParliamentMember> parliamentMembers = [];
  List<ParliamentMember> parliamentMembersToShow = [];
  int parliamentMembersToShowValue = 15;
  int? termNum;

  Future<void> getParliamentMembersFullData() async {
    try {
      List<Term> terms = await _termRepository.getAllTerms();
      termNum = terms.singleWhere((element) => element.current ?? false).num;
      parliamentMembers = await _termRepository.getParliamentMembers(termNum.toString());
      parliamentMembers = parliamentMembers.where((element) => element.active ?? false).toList();
      //default sorting
      parliamentMembers.sort((a, b) {
        int result = PolishComparator.compare(a.lastName.toString().toLowerCase(), b.lastName.toString().toLowerCase());
        return result;
      });
      parliamentMembersToShow = parliamentMembers;
      emit(ParliamentMembersCubitState.data(parliamentMembers: parliamentMembersToShow.sublist(0, parliamentMembersToShowValue), termNum: termNum.toString()));
    } catch(e, s) {
      emit(ParliamentMembersCubitState.error(mesage: s.toString()));
    }
  }

  Future<void> loadMoreParliamentMembers() async {
    try {
      if(parliamentMembersToShow.length > parliamentMembersToShowValue + 15) {
        parliamentMembersToShowValue = parliamentMembersToShowValue + 15;
        emit(ParliamentMembersCubitState.data(parliamentMembers: parliamentMembersToShow.sublist(0, parliamentMembersToShowValue), termNum: termNum.toString()));
      } else  {
        if((parliamentMembersToShow.length - parliamentMembersToShowValue) < 15 && (parliamentMembersToShow.length - parliamentMembersToShowValue) > 0) {
          parliamentMembersToShowValue = parliamentMembersToShowValue + (parliamentMembersToShow.length - parliamentMembersToShowValue);
          emit(ParliamentMembersCubitState.data(parliamentMembers: parliamentMembersToShow.sublist(0, parliamentMembersToShowValue), termNum: termNum.toString()));
        }
      }
    } catch(e, s) {
      emit(ParliamentMembersCubitState.error(mesage: s.toString()));
    }
  }

  Future<void> filterParliamentMembers(String text) async {
    if(text.isNotEmpty) {
      parliamentMembersToShow = parliamentMembers.where((element) => element.lastName.toString().toLowerCase().contains(text.toLowerCase())).toList();
      if(parliamentMembersToShow.length < parliamentMembersToShowValue) {
        parliamentMembersToShowValue = parliamentMembersToShow.length;
      }
    } else {
      parliamentMembersToShow = parliamentMembers;
      parliamentMembersToShowValue = 15;
    }
    emit(ParliamentMembersCubitState.data(parliamentMembers: parliamentMembersToShow.sublist(0, parliamentMembersToShowValue), termNum: termNum.toString()));
  }
}