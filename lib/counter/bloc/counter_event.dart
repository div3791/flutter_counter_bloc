part of 'counter_bloc.dart';

abstract class CounterEvent {}

class IncrementCount extends CounterEvent {}

class DecrementCount extends CounterEvent{}
