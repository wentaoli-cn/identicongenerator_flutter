import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:identicongenerator_flutter/ui/res/color.dart';
import 'package:identicongenerator_flutter/ui/res/route.dart';
import 'package:identicongenerator_flutter/ui/res/string/generated/l10n.dart';
import 'package:identicongenerator_flutter/ui/screen/splash/bloc/splash_bloc.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => SplashBloc()),
        BlocListener<SplashBloc, SplashState>(
          listener: (context, _) {
            context.pushReplacement(Paths.home);
          },
          listenWhen: (_, current) {
            return current.status == SplashStatus.success;
          },
        ),
      ],
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Lottie.asset('assets/animations/splash.json', height: 60.0),
              const SizedBox(height: 12.0),
              Text(
                S.current.appName,
                style: const TextStyle(
                  color: Colorz.cornflowerBlue,
                  fontSize: 19.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Ubuntu',
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colorz.white,
      ),
    );
  }
}
