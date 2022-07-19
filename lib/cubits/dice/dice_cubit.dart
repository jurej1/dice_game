import 'dart:math';

import 'package:bloc/bloc.dart';

class DiceCubit extends Cubit<List<int>> {
  DiceCubit() : super([1, 2]) {
    _random = Random();
  }

  late final Random _random;

  void generateNewValue() {
    emit(
      [_random.nextInt(6) + 1, _random.nextInt(6) + 1],
    );
  }
}
