import 'package:flutter_riverpod/flutter_riverpod.dart';

final nameprovider = Provider <String>((ref){
return 'my name is Asif';
});

final ageprovider = Provider<int>((ref){
  return 24;
});