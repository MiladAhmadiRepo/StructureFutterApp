
import 'package:shared_preferences/shared_preferences.dart';

String formatPrice(String code) {
  String split = code.split(".")[0];
  final Pattern pattern = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
  return split.replaceAllMapped(pattern, (m) => '${m[0]},');
}

//******************************************
class _Currency {
  static money _myMoney;

  _Currency() {
    init();
  }

  Future<money> init() async {
    if (_myMoney == null) {
      bool isToman = await _getBoolValuesSF() ?? true;
      if (isToman) {
        _myMoney = money.Toman;
      } else {
        _myMoney = money.Rial;
      }
      return _myMoney;
    } else {
      return _myMoney;
      // do noting
    }
  }

//  static money get mymoney => _myMoney;

  set myMoney(money value) {
    if (_myMoney != null) {
      _myMoney = value;
      _addBoolToSF(value.value == money.Toman.value ? true : false);
    } else {
      _myMoney = value;
      _addBoolToSF(value.value == 10 ? true : false);
    }
  }

  _getBoolValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return bool
    bool boolValue = prefs.getBool('isToman');
    return boolValue;
  }

  _addBoolToSF(bool isToman) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isToman', isToman);
  }
}

enum money {
  Toman,
  Rial,
}

extension MoneyExtension on money {
  static const values = {
    money.Toman: 10,
    money.Rial: 1,
  };
  static const Names = {
    money.Toman: "تومان",
    money.Rial: "ریال",
  };

  int get value => values[this];

  String get names => Names[this];
}
//*******************************************

///  accepting price in Rial ...
///  and return Toman OR Rial formatted with Currency Unit Name (تومان یا ریال )
///  and if price less and equal 0 return free in persian (رایگان)
Future<String> priceMaker(double price) async {
  if (price.compareTo(0) > 0) {
    money my;
    await _Currency().init().then((value) => my = value);
    double p = price / my.value;
    return formatPrice(p.toString()) + " " + my.names;
  } else {
    return "رایگان";
  }
}
