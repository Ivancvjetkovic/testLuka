import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/blocs/counter/counter_event.dart';
import 'package:test/blocs/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(value: 0)) {
    on<CounterIncrementEvent>(_increment);
    on<CounterDecrementEvent>(_decrement);
  }

  Future<void> _increment(CounterIncrementEvent event, Emitter<CounterState> emit) async {
    emit(state.copyWith(value: state.value + 1));
  }

  Future<void> _decrement(CounterDecrementEvent event, Emitter<CounterState> emit) async {
    emit(state.copyWith(value: state.value - 1));
  }
}
