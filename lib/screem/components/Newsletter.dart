import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Newsletter extends StatelessWidget {
  const Newsletter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 250,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Assine nossa newsletter",
              style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Seguindo nossa redes sociais e newsletter você será o primeiro a saber de sorteios, ações promocionais e eventos da DT3!",
              style: GoogleFonts.inter(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 11),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40.0,
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.bottom,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
                decoration: InputDecoration(
                  hintMaxLines: 2,
                  hintText: 'Digite aqui seu e-mail',
                  hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    gapPadding: 1,
                    borderSide: BorderSide(width: 1, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 30.0,
              child: RaisedButton(
                elevation: 1,
                onPressed: () {},
                padding: EdgeInsets.fromLTRB(50, 3, 50, 3),
                color: Color.fromARGB(255, 250, 3, 3),
                textColor: Color.fromARGB(255, 251, 252, 252),
                child: Text(
                  "Acesso",
                  style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
