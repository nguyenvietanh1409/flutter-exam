import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/cubit/app_cubit.dart';
import 'package:untitled/cubit/app_cubit_logics.dart';
import 'package:untitled/helper/helper.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context) => AppCubits(helper: Helper()),
      child: const MaterialApp(
        home: AppCubitLogics(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
