import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_provider/State_provider/counter_provider.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    print("asi");
    return Scaffold(
      appBar: AppBar(
      
        backgroundColor: Colors.blue,
      
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(
              builder: (context ,ref , child){
                final cont = ref.watch(CounterProvider);
                print("build2");
                return Center(
                  child: Text(cont.toString(),style: TextStyle(
                    fontSize: 23
                  ),),
                );
                
              }
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    ref.read(CounterProvider.notifier).state++;
                  }, child: Text("+",style: TextStyle(
                    fontSize: 23
                  ),))
                ],
              ),
              
              Consumer(
                builder: (context ,ref,child){
                  print("3");
                  final Switchp = ref.watch(switchprovider);
                  return Switch(value: Switchp, onChanged: (value){
                    ref.read(switchprovider.notifier).state = value;

                  });
                }
                )
             
            
          ],
        )
      ),
    );
  }
}