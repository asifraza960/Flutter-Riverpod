import 'package:flutter_riverpod/flutter_riverpod.dart';

final SearchProvider = StateNotifierProvider<Searchstate,String>((ref){
  return Searchstate();
});


class Searchstate extends StateNotifier<String>{
  Searchstate () : super ('');


  void  Search (String query){
    state = query;
  }
}



// future provider
final apiprovider = FutureProvider<int>((ref)async{
  await Future.delayed(Duration(seconds: 1));
  return 123;
});


