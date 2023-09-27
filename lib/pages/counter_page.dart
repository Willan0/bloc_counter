import 'package:bloc_counter/bloc/counter/bloc/counter_bloc.dart';
// import 'package:bloc_counter/bloc/counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CounterBloc(), child: const CounterView());
  }
}

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
          child: BlocBuilder<CounterBloc, int>(
              builder: (context, state) => Text(
                    state.toString(),
                    style: textTheme.displaySmall,
                  ))),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(CounterIncreamentBlocEvent());
            },
            key: const Key('counter_increament_action_button'),
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(CounterDecreaementBlocEvent());
            },
            key: const Key('counter_decreament_action_button'),
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
