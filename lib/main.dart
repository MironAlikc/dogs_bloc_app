import 'package:dogs_bloc_app/bloc/get_dogs_bloc.dart';
import 'package:dogs_bloc_app/repo/get_dogs_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/dio_settings.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        RepositoryProvider(
          create: (context) => DioSettings(),
        ),
        RepositoryProvider(
          create: (context) => GetDogsRepo(
            dio: RepositoryProvider.of<DioSettings>(context).dio,
          ),
        ),
      ],
      child: BlocProvider(
        create: (context) => GetDogsBloc(
          repo: RepositoryProvider.of<GetDogsRepo>(context),
        ),
        child: const MaterialApp(
          title: 'Flutter Demo',
          home: HomePage(),
        ),
      ),
    );
  }
}
