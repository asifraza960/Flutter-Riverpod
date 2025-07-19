import 'package:counter_app/ContainerApp/ContainerEvent.dart';
import 'package:counter_app/ContainerApp/ContainerState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContainerBloc extends Bloc<ContainerEvent,SliderState>{
ContainerBloc (): super(SliderState(slider: 1.0)){
  on<SliderEvent>((event,emit){
    emit(SliderState(slider: event.slider));
  });
}
}