
import 'package:flutter/cupertino.dart';

@immutable
sealed class CounterEvent {
  const CounterEvent();
}


@immutable
class IncrementEvent extends CounterEvent{
  const IncrementEvent();

}
class DecrementEvent extends CounterEvent{

  const DecrementEvent();
}