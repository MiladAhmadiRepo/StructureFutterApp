import 'package:boomerang/models/CartsModel.dart';
import 'package:boomerang/ui/base/baseInterface.dart';

abstract class sampleFormMVPView extends BaseMVPView {
  void setBarcode(String barcode);

  void setCarts(List<CartsData> carts);

  void init(String phone, bool isSecure);
}

abstract class sampleFormMVPPresenter extends BaseMVPPresenter {}
