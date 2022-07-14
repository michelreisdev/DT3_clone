import 'package:flutter/material.dart';

class DrawerHeaderCommon extends StatelessWidget {
  const DrawerHeaderCommon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(color: Colors.white),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              child: Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
/*                       shape: BoxShape.circle,
 */
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg'),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            Text(
              "Olá, Jorge",
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            Text(
              "Cliqui aqui para fazer logout",
              style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
