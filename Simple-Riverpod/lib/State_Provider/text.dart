import 'package:flutter/material.dart';
import 'package:flutter_application_1/State_Provider/counter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CountText extends ConsumerWidget {
  const CountText({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Text(ref.watch(counterprovider).toString());
  }
}


class CounterButton extends ConsumerWidget {
  const CounterButton({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return  ElevatedButton(onPressed: (){
      ref.read(counterprovider.notifier).state++;
    },
     child: Text('+'));
  }
}