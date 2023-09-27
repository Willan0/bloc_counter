import 'package:bloc/bloc.dart';

class CounterBlocObserver extends BlocObserver {
  const CounterBlocObserver();

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    // ignore: avoid_print
    print('${bloc.runtimeType} $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print("${bloc.runtimeType} $transition");
  }
}
