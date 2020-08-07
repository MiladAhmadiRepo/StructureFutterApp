// this class is used for localizations
import 'dart:convert';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

Map<String, dynamic> language;

// this class is used for localizations
// this class support for two language fa,en
// address file on asset folder assets\strings\en.json
// address file on asset folder assets\strings\fa.json
class DemoLocalizations {
  static DemoLocalizations of(BuildContext context) {
    return Localizations.of<DemoLocalizations>(context, DemoLocalizations);
  }

  String getText(String key) => language[key];
}

class DemoLocalizationsDelegate
    extends LocalizationsDelegate<DemoLocalizations> {
  const DemoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'fa'].contains(locale.languageCode);

  @override
  Future<DemoLocalizations> load(Locale locale) async {
    String string = await rootBundle
        .loadString("assets/strings/${locale.languageCode}.json");
    language = json.decode(string);
    return SynchronousFuture<DemoLocalizations>(DemoLocalizations());
  }

  @override
  bool shouldReload(DemoLocalizationsDelegate old) => false;
}
