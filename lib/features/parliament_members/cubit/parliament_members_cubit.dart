import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sejm/domain/repository/term_repository.dart';

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
  int parliamentMembersToShow = 30;
  int? termNum;

  Future<void> getParliamentMembersFullData() async {
    try {
      List<Term> terms = await _termRepository.getAllTerms();
      termNum = terms.singleWhere((element) => element.current ?? false).num;
      parliamentMembers = await _termRepository.getParliamentMembers(termNum.toString());
      parliamentMembers = parliamentMembers.where((element) => element.active ?? false).toList();
      //default sorting
      parliamentMembers.sort((a, b) {
        return a.lastName.toString().compareTo(b.lastName.toString());
      });
      log("Parliament members count: ${parliamentMembers.length}");
      emit(ParliamentMembersCubitState.data(parliamentMembers: parliamentMembers.sublist(0, parliamentMembersToShow), termNum: termNum.toString()));
    } catch(e, s) {
      emit(ParliamentMembersCubitState.error(mesage: s.toString()));
    }
  }

  Future<void> loadMoreParliamentMembers() async {
    try {
      if(parliamentMembers.length > parliamentMembersToShow + 15) {
        parliamentMembersToShow = parliamentMembersToShow + 15;
        emit(ParliamentMembersCubitState.data(parliamentMembers: parliamentMembers.sublist(0, parliamentMembersToShow), termNum: termNum.toString()));
      } else  {
        if((parliamentMembers.length - parliamentMembersToShow) < 15 && (parliamentMembers.length - parliamentMembersToShow) > 0) {
          parliamentMembersToShow = parliamentMembersToShow + (parliamentMembers.length - parliamentMembersToShow);
          emit(ParliamentMembersCubitState.data(parliamentMembers: parliamentMembers.sublist(0, parliamentMembersToShow), termNum: termNum.toString()));
        }
      }
    } catch(e, s) {
      emit(ParliamentMembersCubitState.error(mesage: s.toString()));
    }
  }

  Future<void> loadFilteredParliamentMembers(String text) async {
    if(text.isNotEmpty) {
      List<ParliamentMember> filteredParliamentMembers = parliamentMembers.where((element) => element.lastName.toString().toLowerCase().contains(text.toLowerCase())).toList();
      filteredParliamentMembers.sort((a, b) {
        return a.lastName.toString().compareTo(b.lastName.toString());
      });
      emit(ParliamentMembersCubitState.data(parliamentMembers: filteredParliamentMembers, termNum: termNum.toString()));
    } else {
      parliamentMembersToShow = 30;
      emit(ParliamentMembersCubitState.data(parliamentMembers: parliamentMembers.sublist(0, parliamentMembersToShow), termNum: termNum.toString()));
    }
  }
}