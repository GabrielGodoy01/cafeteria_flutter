import 'package:mobx/mobx.dart';

part 'details_controller.g.dart';

class DetailsController = DetailsControllerBase with _$DetailsController;

abstract class DetailsControllerBase with Store {
  @observable
  bool isClicked = false;

  @action
  void setIsClicked() {
    isClicked = !isClicked;
  }
}
