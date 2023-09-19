import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/helper/helper.dart';
import 'package:untitled/ui/home_page.dart';

import 'app_cubit_state.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.helper}) : super (InitialState()) {
    loadHomePage();
  }

  final Helper helper;

  var places;

  void loadHomePage() async {
    try {
      places = await helper.getAllPlant();
      emit(HomePageState(places: places));
    } catch (e) {
      print(e);
    }
  }
}

class InitialState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];

}