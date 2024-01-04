import 'package:freezed_annotation/freezed_annotation.dart';
part 'vote_mp.freezed.dart';
part 'vote_mp.g.dart';

@freezed
class VoteMP with _$VoteMP {
  const factory VoteMP({
    String? date,
    String? vote
}) = _VoteMP;
  factory VoteMP.fromJson(Map<String, Object?> json) =>
      _$VoteMPFromJson(json);
}