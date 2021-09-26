

import 'package:mobx/mobx.dart';

part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;



abstract class ControllerBase with Store {

  @observable
  double price = 0;

  @action
  changePrice(newPrice){

    price = newPrice;

  }

}