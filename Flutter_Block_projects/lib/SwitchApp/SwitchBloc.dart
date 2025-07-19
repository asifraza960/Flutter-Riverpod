
import 'package:flutter_bloc/flutter_bloc.dart';

import 'SwitchingEvent.dart';
import 'SwitchingState.dart';

class SwitchBloc extends Bloc<SwitchEvent,SwitchState>{

  SwitchBloc(): super(SwitchState(isSwitch: false)){

    on<EnableDisableEvent>((event, emit){
      emit(SwitchState(isSwitch: !state.isSwitch));
    });
  }
}