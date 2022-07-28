import 'dart:async';

import 'package:bloc/bloc.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<IncrementCount>(_increment);
    on<DecrementCount>(_decrement);
  }

  _increment(event, emit) {
    emit(state + 1);
  }

  _decrement(event, emit) {
    if (state > 0) emit(state - 1);
  }
}
