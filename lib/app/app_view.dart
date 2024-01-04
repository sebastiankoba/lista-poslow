import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sejm/domain/repository/term_repository.dart';
import '../features/parliament_members/cubit/parliament_members_cubit.dart';
import '../features/parliament_members/parliament_members_screen.dart';

class AppView extends StatelessWidget {
  AppView({super.key, required this.termRepository});

  final TermRepository termRepository;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: BlocProvider(
          create: (context) => ParliamentMembersCubit(
              termRepository: termRepository
          ),
          child: const ParliamentMembersScreen(),
        )
      ),
    );
  }
}