import 'package:dt3/screem/carrinho_compras.dart/carrinho_compras.dart';
import 'package:dt3/screem/favorite/favoriteScreem.dart';
import 'package:dt3/screem/search_products/search_product.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'package:device_preview/device_preview.dart';
import 'package:dt3/screem/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'modal/RouterBody.dart';
import 'modal/firebasePush.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    DevicePreview(
      enabled: false,
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
        ChangeNotifierProvider(
          create: (_) => RouterBody(),
          lazy: true,
        ),
      ],
      child: GetMaterialApp(
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
        initialRoute: '/',
        getPages: [
          GetPage(name: '/search_product', page: () => SearchProducts(),   fullscreenDialog: true, preventDuplicates: false,),
          GetPage(
              name: '/favoriteScreem',
              page: () => FavoriteScreem(),
           /*    fullscreenDialog: true, */
              preventDuplicates: false,
              showCupertinoParallax: false,
              transitionDuration: Duration(milliseconds: 100)),
          GetPage(name: '/', page: () => MyHomePage()),
          GetPage(name: '/carrinho', page: () => CarrinhoCompras()),
        ],
      ),
    );
  }
}
