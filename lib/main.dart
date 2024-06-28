import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/material.dart';
import 'package:freshproject/apis/auth.dart';
import 'package:freshproject/features/homepage/homepage.dart';
import 'package:freshproject/features/homepage/widget/button_nav.dart';
import 'package:freshproject/features/onboarding/screen/onboarding.dart';
import 'package:freshproject/features/sign_up/provider/sign_up_provider.dart';
import 'package:freshproject/features/splash/provider/splash_provider.dart';
import 'package:freshproject/firebase_options.dart';
import 'package:freshproject/global_widget/loading.dart';
import 'package:freshproject/theme/theme.dart';
import 'package:freshproject/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
    ),
    ChangeNotifierProvider(
      create: (_) => SplashProvider(),
    ),
    ChangeNotifierProvider(
      create: (_) => AuthProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: AppTheme().dark,
      theme: AppTheme.light,
      themeMode: Provider.of<ThemeProvider>(context).theme,
      home: StreamBuilder<auth.User?>(
          stream: AuthService().firebaseAuth.userChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return LoadingScreen();
            } else if (snapshot.hasData) {
              return Home();
            } else {
              return Onboarding();
            }
          }),
    );
  }
}
