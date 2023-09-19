import 'package:equatable/equatable.dart';

import '../model/place.dart';

abstract class CubitStates extends Equatable {}

class HomePageState extends CubitStates {
  HomePageState({required this.places});
  final List<Place> places;
  @override
  // TODO: implement props
  List<Object?> get props => [places];
}