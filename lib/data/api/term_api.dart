import 'package:dio/dio.dart';
import 'package:sejm/domain/model/proceeding/proceeding.dart';
import 'package:sejm/domain/model/vote_mp/vote_mp.dart';

import '../../domain/model/club/club.dart';
import '../../domain/model/parliament_member/parliament_member.dart';
import '../../domain/model/term/term.dart';

class TermApi {
  final Dio dio;
  TermApi({required this.dio});
  Future<List<Term>> getTerms() async {
    final res = await dio.get("/term");
    return List<Map<String, dynamic>>.from(res.data)
        .map((e) => Term.fromJson(e))
        .toList();
  }
  Future<List<Proceeding>> getProceedings(String term) async {
    final res = await dio.get("/term$term/proceedings");
    return List<Map<String, dynamic>>.from(res.data)
        .map((e) => Proceeding.fromJson(e))
        .toList();
  }
  Future<List<VoteMP>> getParliamentMemberVotes(String date, String id, String sitting, String term) async {
    final res = await dio.get("/term$term/MP/$id/votings/$sitting/$date");
    return List<Map<String, dynamic>>.from(res.data)
        .map((e) => VoteMP.fromJson(e))
        .toList();
  }
  Future<List<Club>> getClubs(String term) async {
    final res = await dio
        .get('/term$term/clubs');
    return List<Map<String, dynamic>>.from(res.data)
        .map((e) => Club.fromJson(e))
        .toList();
  }
  Future<List<ParliamentMember>> getParliamentMembers(String term) async {
    final res = await dio
        .get('/term$term/MP');
    return List<Map<String, dynamic>>.from(res.data)
        .map((e) => ParliamentMember.fromJson(e))
        .toList();
  }
}