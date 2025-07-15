import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruithub/core/helper/routes_manger.dart';
import 'package:fruithub/features/onboarding/presentation/views/widgets/shared_prefrences_singleton.dart';
import 'package:fruithub/features/splash/presentation/views/splash_view.dart';
import 'package:fruithub/generated/l10n.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();

        await SharedPrefsSingleton.getInstance();
  runApp(const Fruithub());
  
}

class Fruithub extends StatelessWidget {
  const Fruithub({super.key});

  @override
  Widget build(BuildContext context)   {
    return MaterialApp (
 
        localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            locale: Locale('ar'),
      debugShowCheckedModeBanner: false,
      title: 'Fruithub',
      theme: ThemeData(
 
        fontFamily: 'Cairo',
      ),
      onGenerateRoute: RoutesManger.route,
      initialRoute: SplashView.splashView, 
    );
  }
}

