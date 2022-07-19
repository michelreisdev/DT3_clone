import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  final img;
  final nome;
  const CardButton(this.img, this.nome, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
          print(nome);
      },
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            child: Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
                child: Stack(
                  children: [
                    AspectRatio(
                        aspectRatio: 1,
                        child: Image.network(
                            img.toString(),
                            fit: BoxFit.contain,
                            ))
                  ],
                ),
              ),
            ),
          ),
          Text(
            nome.toString(),
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
