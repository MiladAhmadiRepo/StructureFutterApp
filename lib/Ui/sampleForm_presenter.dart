import 'package:barcode_scan/barcode_scan.dart';
import 'package:boomerang/network/getCarts.dart';
import 'package:boomerang/ui/base/base_presenter.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class sampleFormPresenter extends BasePresenter<sampleFormMVPView>
    implements sampleFormMVPPresenter {
  open_scanner() async {
    try {
      String barcode = await BarcodeScanner.scan();
      getView().setBarcode(barcode);
    } on PlatformException {} on FormatException {} catch (e) {}
  }

  getCarts() async {
    var response = await getCartsRequest(true);
    if (response.code == 200) getView().setCarts(response.data);
  }

  get_phone(userType) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    getView().init(
        userType == "user"
            ? prefs.getString("phone")
            : prefs.getString("vendorId"),
        prefs.getBool("isSecure"));
  }

  doBardasht(phone, amount, toAddress, pass, userType) async {
    getView().showLoading();
    var response = userType == "user"
        ? await sampleFormRequest(phone, amount, toAddress, pass)
        : await sampleFormPazirandeRequest(amount, toAddress, pass);
    if (response.code == 200)
      getView().showSuccessWithConfirm(
          "asd     asd asd.\  asd:${response.data}",
          (bool isConfirm) {
        if (isConfirm) {
          print("confirmed");
          getView().screenPop();
          getView().screenPop();
          return false;
        }
        return true;
      }, "asd  ");
    else if (response.code == 403)
      getView().screenPopAndPush("/login", null);
    else {
      getView().showError(response.message);
    }
  }
}
