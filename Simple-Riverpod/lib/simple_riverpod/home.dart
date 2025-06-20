import 'package:flutter/material.dart';
import 'package:flutter_application_1/simple_riverpod/sriverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
   HomePage({super.key});
  @override
  Widget build(BuildContext context , WidgetRef ref) {
    var name = ref.read(nameprovider);
    var age = ref.read(ageprovider);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(name),
             Text(age.toString())
          ],
        ),
      ),
    );
  }
}