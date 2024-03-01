import 'package:freezed_annotation/freezed_annotation.dart';

part 'parliament_member.freezed.dart';
part 'parliament_member.g.dart';

@freezed
class ParliamentMember with _$ParliamentMember {
  const factory ParliamentMember({
    bool? active,
    String? birthDate,
    String? club,
    String? districtName,
    String? profession,
    String? lastFirstName,
    int? id,
    int? numberOfVotes,
}) = _ParliamentMember;
  factory ParliamentMember.fromJson(Map<String, Object?> json) =>
  _$ParliamentMemberFromJson(json);
}