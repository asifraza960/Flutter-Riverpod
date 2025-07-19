import 'package:equatable/equatable.dart';

class SwitchState  extends Equatable{

  bool isSwitch ;

  SwitchState({required this.isSwitch});

  SwitchState copyWith({required bool isSwitch}){
    return SwitchState(
    isSwitch: isSwitch ?? this.isSwitch
    );
}
  @override
  // TODO: implement props
  List<Object?> get props => [isSwitch];
}