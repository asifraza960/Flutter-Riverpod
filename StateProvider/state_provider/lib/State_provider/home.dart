import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_provider/State_provider/counter_provider.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Consumer(
              builder: (context ,ref , child){
                final cont = ref.watch(CounterProvider);
                return Center(
                  child: Text(cont.toString()),
                );
                
              }
              ),
              
             
            
          ],
        )
      ),
    );
  }
}