import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<TangEvent>((event, emit) {
      emit(CounterState(counter: state.counter + 1, x: state.x + 1));
    },
        transformer: (event, mapper) =>
            event.throttleTime(const Duration(seconds: 5)).switchMap(mapper));
    on<GiamEvent>((event, emit) {});
  }
}

abstract class CounterEvent {}

class TangEvent extends CounterEvent {}

class GiamEvent extends CounterEvent {}

class CounterState {
  final int counter;
  final int x;

  CounterState({this.counter = 0, this.x = 0});
}
