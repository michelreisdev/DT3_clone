import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/BottomNavigationBarHome.dart';

class CarrinhoCompras extends StatelessWidget {
  const CarrinhoCompras({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.close),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.all(9),
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.grey,
                          size: 76,
                        ),
                        Text(
                          "Seu Carrino está Vazio",
                          style: GoogleFonts.inter(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        Text(
                          "Adicione produtos ao carrinho de compras",
                          style: GoogleFonts.inter(
                              color: Colors.black,
                              
                              fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () {},
                    padding: EdgeInsets.fromLTRB(50, 3, 50, 3),
                    color: Color.fromARGB(255, 250, 3, 3),
                    textColor: Color.fromARGB(255, 251, 252, 252),
                    child: Text(
                      "Compre Agora",
                      style: GoogleFonts.inter(
                          color: Color.fromARGB(255, 253, 250, 250),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                ),
              ],
            )),
      ),
      bottomNavigationBar: BottomNavigationBarHome(4),
    );
  }
}
