import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Duvidadas extends StatelessWidget {
  const Duvidadas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 200,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Possui alguma dúvida ou problema que precisa de garantia?",
              style: GoogleFonts.inter(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w900
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Entre em conato conosco! Nosso time terá a maior ateção a sua dúvida e estaremos prontos para te atender!",
              style: GoogleFonts.inter(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 11
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: 28.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                onPressed: () {},
                padding: EdgeInsets.fromLTRB(50, 3, 50, 3),
                color: Color.fromARGB(255, 250, 3, 3),
                textColor: Color.fromARGB(255, 251, 252, 252),
                child: Text("Suporte", style:  GoogleFonts.inter(
              color: Color.fromARGB(255, 253, 250, 250), fontWeight: FontWeight.bold, fontSize: 14
              ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}