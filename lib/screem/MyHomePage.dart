import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../modal/RouterBody.dart';
import 'carrinho_compras.dart/carrinho_compras.dart';
import 'components/BottomNavigationBarHome.dart';
import 'components/DrawerHome.dart';
import 'favorite/favoriteScreem.dart';
import 'home/home.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: DrawerHome(),
        appBar: AppBar(
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Center(
                /*  alignment: Alignment.center, */
                child: Stack(
                  children: [
                    Align(
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                      ),
                    ),
                    Positioned(
                      bottom: 34.0,
                      left: 10.0,
                      child: Container(
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.red,
                          ),
                          alignment: Alignment.center,
                          width: 14,
                          height: 14,
                          child: Center(
                              child: Text(
                            '1',
                            style: TextStyle(
                                fontSize: 9, fontWeight: FontWeight.bold),
                          ))),
                    )
                  ],
                ),
              ),
            )
          ],
          title: Container(
            width: 100,
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.network(
                  'https://d3ugyf2ht6aenh.cloudfront.net/stores/002/007/282/themes/common/logo-1512487490-1650888813-b7a11699b80f2c22ab3ebbeaf2c4950c1650888813-320-0.png?0',
                  fit: BoxFit.scaleDown),
            ),
          ),
          leading: IconButton(
            color: Colors.black,
            icon: Icon(Icons.dehaze_sharp),
            onPressed: () {
              this._scaffoldKey.currentState?.openDrawer();
            },
          ),
        ),
        body: Consumer<RouterBody>(builder: (context, routerBody, child) {
          switch (routerBody.intRouter) {
            case 0:
              return Home2();
            case 3:
              return FavoriteScreem();
            case 4:
              return CarrinhoCompras();
            default:
              return Home2();
          }
        }),
        bottomNavigationBar: BottomNavigationBarHome(0),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Get.dialog(AlertDialog(
            content: Text("data"),
          )),
          backgroundColor: Color.fromARGB(255, 249, 19, 3),
          child: const Icon(Icons.chat),
        ),
      ),
    );
  }
}
