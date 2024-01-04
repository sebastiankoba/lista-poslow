import 'package:sejm/domain/model/proceeding/proceeding.dart';
import 'package:sejm/domain/model/vote_mp/vote_mp.dart';

import '../model/club/club.dart';
import '../model/parliament_member/parliament_member.dart';
import '../model/term/term.dart';

abstract class TermRepository {
  Future<List<Term>> getAllTerms();
  Future<List<Proceeding>> getProceedings(String term);
  Future<List<VoteMP>> getParliamentMemberVotes(String date, String id, String sitting, String term);
  Future<List<Club>> getClubs(String term);
  Future<List<ParliamentMember>> getParliamentMembers(String term);
}