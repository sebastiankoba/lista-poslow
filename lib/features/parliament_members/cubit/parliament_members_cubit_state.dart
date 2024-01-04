part of 'parliament_members_cubit.dart';

@freezed
class ParliamentMembersCubitState with _$ParliamentMembersCubitState {
  const factory ParliamentMembersCubitState.loading() = _Loading;
  const factory ParliamentMembersCubitState.data({required List<ParliamentMember> parliamentMembers, required String termNum}) = _Data;
  const factory ParliamentMembersCubitState.error({required String mesage}) = _Error;
}