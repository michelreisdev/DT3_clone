import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../components/Carousel.dart';
import '../components/Duvidadas.dart';
import '../components/Newsletter.dart';
import 'components/AcessoBlogDt3.dart';
import 'components/SessionButtonCard.dart';
import 'components/SessionButtonCardSeriesHome.dart';


final List<String> imgList = [
  'https://d3ugyf2ht6aenh.cloudfront.net/stores/002/007/282/themes/amazonas/1-slide-1648839381074-6844273054-889ae767077db2f6fd2d594ba007a06e1648839385-1920-1920.webp?116628591',
  'https://d3ugyf2ht6aenh.cloudfront.net/stores/002/007/282/themes/amazonas/1-slide-1654269218925-8040322675-0f26934a8ba3ddc38fc9223e016743771654269223-1920-1920.webp?116628591',
  'https://d3ugyf2ht6aenh.cloudfront.net/stores/002/007/282/themes/amazonas/1-slide-1647033436808-2986169590-dea10c0d2c3ce90b5230b5a36b4ce6711647033447-1920-1920.webp?116628591'
];

class Home2 extends StatelessWidget {
  Home2({Key? key}) : super(key: key);
 

  final List<Widget> imageSliders = imgList
      .map(
        (item) => Container(
          child: Image.network(
            item,
            fit: BoxFit.fill,
          ),
        ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {

    final deviceWidth =  MediaQuery.of(context).size.width;

    return Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    maxLines: 2,
                    minLines: 1,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: "O que você está buscando?",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
              child: ListView(
            children: [
              Container(
                color: Colors.grey[200],
                alignment: Alignment.topCenter,
                child: CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 1,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: true,
                      initialPage: 1,
                      autoPlay: true,
                    ),
                    items: imageSliders),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 0, 0),
                  child: Text(
                    "Produto em destaque",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                child: CarouselHome(),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 0, 0),
                  child: Text(
                    "Linhas",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                child: SessionButtonCard(),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 0, 0),
                  child: Text(
                    "Series",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                width: deviceWidth,
                height: 130,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SessionButtonCardSeriesHome(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: AcessoBlogDt3(),
              ),
              Container(
                child: Duvidadas(),
              ),
              Container(
                child: Newsletter(),
              ),
            ],
          ))
        ],
      );
  }
}