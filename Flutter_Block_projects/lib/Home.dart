import 'package:counter_app/ContainerApp/ContainerEvent.dart';
import 'package:counter_app/CounterBlock.dart';
import 'package:counter_app/CounterState.dart';

import 'package:counter_app/counterEvent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ContainerApp/ContainerBlock.dart';
import 'ContainerApp/ContainerState.dart';
import 'SwitchApp/SwitchBloc.dart';
import 'SwitchApp/SwitchingEvent.dart';
import 'SwitchApp/SwitchingState.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Center(
              child: BlocBuilder<CounterBlock, CounterState>(
                builder: (context, state) => Text(state.counter.toString()),
              ),
            ),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    context.read<CounterBlock>().add(IncrementEvent());
                  },
                  label: Text("increment"),
                ),
                SizedBox(width: 30),
                ElevatedButton.icon(
                  onPressed: () {
                    context.read<CounterBlock>().add(DecrementEvent());
                  },
                  label: Text("decrement"),
                ),
              ],
            ),
            BlocBuilder<SwitchBloc, SwitchState>(
              buildWhen:
                  (previous, current) => previous.isSwitch != current.isSwitch,
              builder:
                  (context, state) => Switch(
                    value: state.isSwitch,
                    onChanged: (newvalue) {
                      print("witch build call call");
                      context.read<SwitchBloc>().add(EnableDisableEvent());
                    },
                  ),
            ),
            SizedBox(height: 40),

            BlocBuilder<ContainerBloc, SliderState>(
              builder: (context, state) {
                print("Sliderbuild call");
                return Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue.withOpacity(state.slider),
                );
              },
            ),
            BlocBuilder<ContainerBloc, SliderState>(
              builder: (context, state) {
                return Slider(
                  value: state.slider,
                  onChanged: (value) {
                    context.read<ContainerBloc>().add(
                      SliderEvent(slider: value),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
