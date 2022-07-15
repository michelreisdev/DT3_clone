import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  String nome;
  final String preco;
  String linkProduct;

  CardProduct(this.linkProduct, this.preco, this.nome, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 500,
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Card(
          elevation: 7,
          child: Stack(
            children: [
              Container(
              
                alignment: Alignment.topCenter,
             /*    width: 250, */
               /*  height: 300, */
                child: Container(
                    width: 220,
                  child: AspectRatio(
                      aspectRatio: 1, child: Image.network(linkProduct)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      height: 106,
                     /*  width: 300, */
                      color: Color.fromARGB(190, 255, 255, 255),
                      child: Column(children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                width: 18,
                                height: 18,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                width: 18,
                                height: 18,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                width: 18,
                                height: 18,
                              ),
                            )
                          ],
                        ),
                        Column(children: [
                          Text(
                            nome,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text("R\$ ${preco}",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red)),
                          RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                    text: '10',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 12)),
                                TextSpan(text: 'X de'),
                                TextSpan(
                                    text: "R\$ ${preco}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 12)),
                                TextSpan(text: ' sem juros'),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: const <TextSpan>[
                                TextSpan(
                                    text:
                                        'ou R\$1.859,91 à vista (PIX ou Boleto)',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 12)),
                              ],
                            ),
                          )
                        ])
                      ])),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
