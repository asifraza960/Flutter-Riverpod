
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ContainerApp/ContainerBlock.dart';
import 'CounterBlock.dart';
import 'Home.dart';
import 'SwitchApp/SwitchBloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context)=> CounterBlock(),),
        BlocProvider(create: (context)=>SwitchBloc()),
        BlocProvider(
            create: (context)=> ContainerBloc()
        )
      ],
      child: BlocProvider(
        create: (context) => CounterBlock(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          home: Home(),

        ),
      ),
    );
  }
}




