part of 'detailed_bloc.dart';

abstract class DetailedState {}

final class DetailedInitial extends DetailedState {}

final class DetailedLoadedState extends DetailedState {
  final Datum detailedItem;

  DetailedLoadedState({required this.detailedItem});
}
