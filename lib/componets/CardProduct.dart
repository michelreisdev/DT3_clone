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
      height: 300,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            width: 250,
            height: 300,
            child:
                AspectRatio(aspectRatio: 1, child: Image.network(linkProduct)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: 104,
                width: 300,
                color: Color.fromARGB(190, 255, 255, 255),
                child: Container(
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
                    Container(
                      child: Column(children: [
                        Container(
                          alignment: Alignment.topCenter,
                          child: Text(
                            nome,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Text("R\$1.999,99",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red)),
                        ),
                        Container(
                          child: RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                    text: '10',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: 'X de'),
                                TextSpan(
                                    text: "R\$ ${preco}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: ' sem juros'),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: const <TextSpan>[
                                TextSpan(
                                    text:
                                        'ou R\$1.859,91 à vista (PIX ou Boleto)',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        )
                      ]),
                    )
                  ]),
                )),
          )
        ],
      ),
    );
  }
}
