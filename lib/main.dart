import 'dart:ffi';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'package:device_preview/device_preview.dart';
import 'package:dt3/screem/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'modal/firebasePush.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => FirebasePush(),
          lazy: false,
        ),
      ],
      child: MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            textTheme: GoogleFonts.interTextTheme(
              Theme.of(context).textTheme,
            ),
            appBarTheme: const AppBarTheme(color: Colors.white, elevation: 0)),
        home: SafeArea(child: MyHomePage()),
      ),
    );
  }
}
