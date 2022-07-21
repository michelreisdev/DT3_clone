import 'package:carousel_slider/carousel_slider.dart';
import 'package:dt3/componets/CardProduct.dart';
import 'package:flutter/material.dart';

final List<Map> imgList = [
  {
    'url':
        'https://d3ugyf2ht6aenh.cloudfront.net/stores/002/007/282/products/cadeira-gamer-dt3sports-spider-28-21-62fba6e85aaa0fe3be16458002845554-320-0.jpg',
    'valor': '1.999,90',
    'nome': 'Spider',
    'favorito': false
  },
  {
    'url':
        'https://d3ugyf2ht6aenh.cloudfront.net/stores/002/007/282/products/orion-blue-21-c5379caa58ebe4c20716518574523608-320-0.jpg',
    'valor': '2.499,90',
    'nome': 'Orion',
    'favorito': false
  },
  {
    'url':
        'https://d3ugyf2ht6aenh.cloudfront.net/stores/002/007/282/products/elise-grey-21-9ada5b08a72e7e4c9c16536706200480-320-0.jpg',
    'valor': '1.699,90',
    'nome': 'Elise',
    'favorito': true
  },
  {
    'url':
        'https://d3ugyf2ht6aenh.cloudfront.net/stores/002/007/282/products/modena_-21-77216c07616391b61f16463317820775-480-0.jpg',
    'valor': '1.699,90',
    'nome': 'Módena',
    'favorito': true
  },
];

class CarouselHome extends StatefulWidget {
  const CarouselHome({Key? key}) : super(key: key);

  @override
  State<CarouselHome> createState() => _CarouselHomeState();
}

class _CarouselHomeState extends State<CarouselHome> {
  final CarouselController _controller = CarouselController();
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: 340),
          child: CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
                height: 290,
                autoPlay: true,
                aspectRatio: 2,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            items: imgList.map((e) {
              return CardProduct(e['url'], e['valor'], e['nome'], e['favorito']);
            }).toList(),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
