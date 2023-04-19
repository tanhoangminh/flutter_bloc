import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void tang() {
    emit(state + 1);
  }

  void giam() {
    emit(state - 1);
  }
}