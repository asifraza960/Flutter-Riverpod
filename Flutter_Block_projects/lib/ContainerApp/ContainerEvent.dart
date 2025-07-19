

import 'package:flutter/cupertino.dart';

@immutable
abstract class ContainerEvent {
  const ContainerEvent();
}

class SliderEvent extends ContainerEvent{

  double slider;
   SliderEvent({required this.slider });
}

