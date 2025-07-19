

import 'package:counter_app/CounterState.dart';
import 'package:counter_app/counterEvent.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlock extends Bloc<CounterEvent,CounterState>{
  CounterBlock():super(CounterState(counter: 0)){

   on<IncrementEvent>((event ,emit){
     emit(CounterState(counter: state.counter+1));
   });

   on<DecrementEvent>((event,emit){
     emit(CounterState(counter: state.counter-1));

   });
    }
  }
