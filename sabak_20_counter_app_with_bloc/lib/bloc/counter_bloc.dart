import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counter: 0)) {
    on<IncrementCounter>((CounterEvent event, Emitter<CounterState> emit) {
      emit(CounterState(counter: state.counter + 1));
    });
    on<DecrementCounter>((CounterEvent event, Emitter<CounterState> emit) {
      emit(CounterState(counter: state.counter - 1));
    });
  }
}
