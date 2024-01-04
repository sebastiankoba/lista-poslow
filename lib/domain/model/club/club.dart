import 'package:freezed_annotation/freezed_annotation.dart';
part 'club.freezed.dart';
part 'club.g.dart';

@freezed
class Club with _$Club {
  const factory Club({
    String? email,
    String? fax,
    String? id,
    int? membersCount,
    String? name,
    String? phone,
}) = _Club;
  factory Club.fromJson(Map<String, Object?> json) =>
      _$ClubFromJson(json);
}