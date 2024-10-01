part of 'detailed_bloc.dart';

abstract class DetailedEvent {}

class DetailedShowEvent extends DetailedEvent {
  final Datum detailedItem;

  DetailedShowEvent({required this.detailedItem});
}
