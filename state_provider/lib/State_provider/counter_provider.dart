import 'package:riverpod/riverpod.dart';


final  CounterProvider = StateProvider <int>((ref){
return 0;
});


final switchprovider = StateProvider<bool>((ref){
return false;
}
);