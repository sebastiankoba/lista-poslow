import 'package:sejm/data/api/term_api.dart';
import 'package:sejm/domain/model/proceeding/proceeding.dart';
import 'package:sejm/domain/model/term/term.dart';
import 'package:sejm/domain/model/vote_mp/vote_mp.dart';
import 'package:sejm/domain/repository/term_repository.dart';

import '../../domain/model/club/club.dart';
import '../../domain/model/parliament_member/parliament_member.dart';

class TermRepositoryImpl implements TermRepository {
  final TermApi termApi;

  TermRepositoryImpl({required this.termApi});

  @override
  Future<List<Term>> getAllTerms() {
    return termApi.getTerms();
  }

  @override
  Future<List<Proceeding>> getProceedings(String term) {
    return termApi.getProceedings(term);
  }

  @override
  Future<List<VoteMP>> getParliamentMemberVotes(String date, String id, String sitting, String term) {
    return termApi.getParliamentMemberVotes(date, id, sitting, term);
  }

  @override
  Future<List<Club>> getClubs(String term) {
    return termApi.getClubs(term);
  }

  @override
  Future<List<ParliamentMember>> getParliamentMembers(String term) {
    return termApi.getParliamentMembers(term);
  }
}
