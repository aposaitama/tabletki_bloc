import 'package:bloc/bloc.dart';
import 'package:tabletki/component/model/medicines.dart';
import 'package:tabletki/repository/medicines_repo.dart';

part 'medicines_bloc_event.dart';
part 'medicines_bloc_state.dart';

class MedicinesBloc extends Bloc<MedicinesBlocEvent, MedicinesBlocState> {
  final MedicinesRepo _medicinesRepo = MedicinesRepo();
  MedicinesBloc() : super(MedicinesBlocInitialState()) {
    on<MedicinesBlocEvent>((event, emit) async {
      Medicines medicinesData = await _medicinesRepo.getMedicines();
      emit(MedicinesBlocLoadedState(medicinesData: medicinesData));
    });

    add(MedicinesInitialEvent());
  }
}
