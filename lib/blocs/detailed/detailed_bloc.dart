import 'package:bloc/bloc.dart';

import 'package:tabletki/component/model/medicines.dart';

part 'detailed_event.dart';
part 'detailed_state.dart';

class DetailedBloc extends Bloc<DetailedEvent, DetailedState> {
  DetailedBloc() : super(DetailedInitial()) {
    on<DetailedShowEvent>((event, emit) {
      emit(DetailedLoadedState(detailedItem: event.detailedItem));
    });
  }
}
