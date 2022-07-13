import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcessoBlogDt3 extends StatelessWidget {
  const AcessoBlogDt3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 115,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Acesso o BLOG da DT3",
              style: GoogleFonts.inter(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w900
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Confira as últimas notícias e novidades da DT3sports em eventos e atividades no mundo dos games e tecnologia.",
              style: GoogleFonts.inter(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 11
              ),
            ),
            SizedBox(
              height: 10,
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
                child: Text("Acesso", style:  GoogleFonts.inter(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14
              ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
