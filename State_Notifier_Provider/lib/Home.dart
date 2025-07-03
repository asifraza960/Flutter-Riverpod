import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier_provider/Provideres.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  ref.read(SearchProvider.notifier).Search(value);
                },
              ),
              Consumer(
                builder: (child, ref, context) {
                  final search = ref.watch(SearchProvider);
                  return Text(search,style: TextStyle(
                    color: Colors.black,
                    wordSpacing: 1.0,
                    fontSize: 22
                  ),);

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
