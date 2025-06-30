import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier_provider/Provideres.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final search = ref.watch(SearchProvider);
    return Scaffold(

      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              onChanged: (value){
                ref.read(SearchProvider.notifier).Search(value);
              },
            ),
            Text(search)
          ],
        ),
      ),
    );
  }
}
