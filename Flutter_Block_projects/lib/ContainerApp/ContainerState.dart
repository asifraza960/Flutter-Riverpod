
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
class SliderState extends Equatable {
  double slider ;
  SliderState({required this.slider});

  SliderState copyWith({double? slider}){
    return SliderState(
    slider: slider?? this.slider
    );
}

  @override
  // TODO: implement props
  List<Object?> get props => [slider];
}



