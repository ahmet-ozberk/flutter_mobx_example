import 'dart:developer';

import 'package:mobx/mobx.dart';
import 'package:mobx_example/model/user_model.dart';
import 'package:mobx_example/service/service.dart';
part 'counter.g.dart';

class Counter = _CounterBase with _$Counter;

abstract class _CounterBase with Store {
  final service = Service();

  @observable
  List<UserModelData?> users = [];

  @observable
  bool isLoading = false;

  @action
  void getData() {
    isLoading = true;
    service.getData().then((value) {
      if (value != null) {
        users = value.data!;
        isLoading = false;
      } else {
        print("Veriler gelirken sornu oluştu");
        isLoading = false;
      }
    });
  }
}
