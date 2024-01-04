import 'package:freezed_annotation/freezed_annotation.dart';

part 'term.freezed.dart';
part 'term.g.dart';

@freezed
class Term with _$Term {
  const factory Term({
    bool? current,
    String? from,
    int? num,
  }) = _Term;
  factory Term.fromJson(Map<String, Object?> json) => _$TermFromJson(json);
}