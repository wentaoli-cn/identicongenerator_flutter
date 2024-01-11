import 'package:flutter/material.dart';
import 'package:identicongenerator_flutter/app.dart';
import 'package:identicongenerator_flutter/ui/res/string/generated/l10n.dart';

void main() async {
  await S.load(S.delegate.supportedLocales.first);
  runApp(const App());
}
