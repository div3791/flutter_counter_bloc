import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_bloc/counter/bloc/counter_bloc.dart';
import 'package:flutter_counter_bloc/counter/counter.dart';

void main() => runApp(
      MaterialApp(
        title: 'Counter App with BLoC',
        home: BlocProvider(
          create: (context) => CounterBloc(),   // For Cubit, use CounterCubit()
          child: const CounterScreen(),
        ),
      ),
    );
