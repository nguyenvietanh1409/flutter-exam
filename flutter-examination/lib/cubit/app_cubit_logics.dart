import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/cubit/app_cubit.dart';
import 'package:untitled/cubit/app_cubit_state.dart';
import 'package:untitled/root_page.dart';
import 'package:untitled/ui/home_page.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({super.key});

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates> (
        builder: (context, state) {
          if (state is HomePageState) {
            return const HomePage();
          }
          return const RootPage();
        },
      ),
    );
  }
}
