import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/routes.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'styles/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Hive.initFlutter();
  //Hive.registerAdapter(AuthTokenAdapter());

  runApp(EasyLocalization(
      supportedLocales: const [
        Locale('fr', 'FR'),
        Locale('en', 'US'),
        // Locale('ar')
      ],
      path:
          'assets/translations', // <-- change the path of the translation files
      useOnlyLangCode: true,
      // errorWidget: (locale, e) => const Center(child: Text('')), //optional error widget
      fallbackLocale: const Locale('fr', 'FR'),
      child: const ProviderScope(child: App())));
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Freelance App',
      debugShowCheckedModeBanner: false,
      theme: theme,
      routerConfig: router,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
