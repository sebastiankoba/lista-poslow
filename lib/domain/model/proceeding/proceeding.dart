import 'package:freezed_annotation/freezed_annotation.dart';
part 'proceeding.freezed.dart';
part 'proceeding.g.dart';

@freezed
class Proceeding with _$Proceeding {
  const factory Proceeding({
    List<String>? dates,
    int? number,
    String? title
}) = _Proceeding;
  factory Proceeding.fromJson(Map<String, Object?> json) => _$ProceedingFromJson(json);
}