import 'package:go_router/go_router.dart';
import 'package:sejm/app/app_view.dart';
import 'package:sejm/domain/repository/term_repository.dart';

class AppRoutes {
  static const homeRoute = "/";
  static const clubsRoute = "/clubs";
  static const votingsRoute = "/votings";

  GoRouter generateRoute(TermRepository termRepository) => GoRouter(
    initialLocation: homeRoute,
      routes: [
        GoRoute(
          path: homeRoute,
            builder: (context, state) => AppView(termRepository: termRepository)
        )
        /*ShellRoute(
          builder: (context, state, child) => AppView(child: child),
            routes: [
              GoRoute(
                path: clubsRoute,
                builder: (context, state) => BlocProvider(
                  create: (context) => ClubsCubit(repository: clubsRepository),
                  child: const ClubsScreen(),
                ),
              ),
              GoRoute(
                path: votingsRoute,
                builder: (context, state) => const Text("Votings"),
              )
            ],
        )*/
      ]
  );
}