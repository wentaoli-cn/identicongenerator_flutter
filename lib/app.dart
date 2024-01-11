import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:identicongenerator_flutter/ui/res/string/generated/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: S.delegate.supportedLocales.first,
      supportedLocales: S.delegate.supportedLocales,
      // TODO: Implement it.
      home: Scaffold(
        body: Center(
          child: Text(S.current.helloWorld),
        ),
      ),
    );
  }
}
