import 'package:flutter_bloc/flutter_bloc.dart';
import '/counter/cubit/states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitialState());

  // to get an object from this cubit: CounterCubit in many places
  static CounterCubit getObject(context) => BlocProvider.of(context);

  int counter = 1;

  void decrement() {
    counter--;
    emit(CounterDecrementState());
  }

  void increment() {
    counter++;
    emit(CounterIncrementState());
  }
}
