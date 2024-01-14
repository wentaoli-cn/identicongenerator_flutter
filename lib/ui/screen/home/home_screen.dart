import 'package:flutter/material.dart';
import 'package:identicongenerator_flutter/ui/res/color.dart';
import 'package:identicongenerator_flutter/ui/res/string/generated/l10n.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // TODO: Implement it.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(S.current.helloWorld),
      ),
      backgroundColor: Colorz.white,
    );
  }
}
