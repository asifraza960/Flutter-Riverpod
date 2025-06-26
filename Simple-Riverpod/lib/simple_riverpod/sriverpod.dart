import 'package:flutter_riverpod/flutter_riverpod.dart';

final nameprovider = Provider <String>((ref){
return 'My Name is Asif';
});

final ageprovider = Provider<int>((ref){
  return 07;
});