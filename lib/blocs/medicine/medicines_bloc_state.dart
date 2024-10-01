part of 'medicines_bloc_bloc.dart';

abstract class MedicinesBlocState {}

final class MedicinesBlocInitialState extends MedicinesBlocState {}

final class MedicinesBlocLoadedState extends MedicinesBlocState {
  final Medicines medicinesData;
  MedicinesBlocLoadedState({required this.medicinesData});
}
