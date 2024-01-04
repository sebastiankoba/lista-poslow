import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sejm/app/app_view.dart';
import 'package:sejm/app/routes.dart';
import 'package:sejm/core/network/network_client.dart';
import 'package:sejm/data/api/term_api.dart';
import 'package:sejm/data/repository/term_repository_impl.dart';
import 'package:sejm/domain/repository/term_repository.dart';

void main()  async {
  final networkClient = NetworkClient(Dio());
  final termApi = TermApi(dio: networkClient.dio);
  final termRepositoryImpl = TermRepositoryImpl(termApi: termApi);
  runApp(MyApp(termRepository: termRepositoryImpl));
}

class MyApp extends StatelessWidget {
  const MyApp({
    required this.termRepository
  });

  final TermRepository termRepository;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /*return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      routerConfig: AppRoutes().generateRoute(termRepository)
    );*/
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: AppView(termRepository: termRepository)
    );
  }
}
