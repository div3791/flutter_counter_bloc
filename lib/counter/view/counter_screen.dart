import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_counter_bloc/counter/bloc/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterBloc /* For Cubit, Use CounterCubit */, int>(
              builder: (context, state) {
                debugPrint("state: $state");
                return Text(
                  state.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(IncrementCount());  // For Bloc Use
              // context.read<CounterCubit>().increment();   // For Cubit Use
            },
            tooltip: 'Increment',
            child: const Icon(CupertinoIcons.add),
          ),
          const SizedBox(
            height: 8,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(DecrementCount()); // For Bloc Use
              // context.read<CounterCubit>().decrement(); // For Cubit Use
            },
            tooltip: 'Decrement',
            child: const Icon(CupertinoIcons.minus),
          ),
        ],
      ),
    );
  }
}
