import 'package:flutter_bloc/flutter_bloc.dart';

sealed class CounterBlocEvent {}

final class CounterIncreamentBlocEvent extends CounterBlocEvent {}

final class CounterDecreaementBlocEvent extends CounterBlocEvent {}

class CounterBloc extends Bloc<CounterBlocEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncreamentBlocEvent>((event, emit) => emit(state + 1));
    on<CounterDecreaementBlocEvent>((event, emit) => emit(state - 1));
  }
}
