import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class FavoriteScreem extends StatelessWidget {
  const FavoriteScreem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          Icons.favorite_border,
                          color: Colors.grey,
                          size: 76,
                        ),
                        Text(
                          "Lista de desejos vazia",
                          style: GoogleFonts.inter(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        Text(
                          "Nenhum item na lista de desejo",
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
    );
  }
}
