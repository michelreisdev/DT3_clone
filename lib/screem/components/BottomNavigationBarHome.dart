import 'package:dt3/modal/RouterBody.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class BottomNavigationBarHome extends StatefulWidget {
  int currentIndex;

  BottomNavigationBarHome(this.currentIndex, {Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarHome> createState() =>
      _BottomNavigationBarHomeState();
}

class _BottomNavigationBarHomeState extends State<BottomNavigationBarHome> {
  //int _currentIndex = widget.currentIndex;
  final _inactiveColor = Colors.grey;
  final _corFundo = Color.fromARGB(255, 249, 19, 3);

 

  @override
  Widget build(BuildContext context) {
    
    return CustomAnimatedBottomBar(
    containerHeight: 50,
    backgroundColor: Color.fromARGB(255, 10, 10, 10),
    selectedIndex: widget.currentIndex,
    showElevation: true,
    itemCornerRadius: 24,
    curve: Curves.easeIn,
    onItemSelected: (index){
      Provider.of<RouterBody>(context, listen: false).router(index);
      setState(() {
        widget.currentIndex = index;
      });
    },
    items: <BottomNavyBarItem>[
      BottomNavyBarItem(
        icon: Icon(Icons.home),
        title: Text('Home'),
        activeColor: _corFundo,
        inactiveColor: _inactiveColor,
        textAlign: TextAlign.center,
      ),
      BottomNavyBarItem(
        icon: Icon(Icons.view_comfortable_sharp),
        title: Text('Produtos'),
        activeColor: _corFundo,
        inactiveColor: _inactiveColor,
        textAlign: TextAlign.center,
      ),
      BottomNavyBarItem(
        icon: Icon(Icons.search),
        title: Text(
          'Busca ',
        ),
        activeColor: _corFundo,
        inactiveColor: _inactiveColor,
        textAlign: TextAlign.center,
      ),
      BottomNavyBarItem(
        icon: Icon(Icons.favorite_border),
        title: Text(
          'Desejos ',
        ),
        activeColor: _corFundo,
        inactiveColor: _inactiveColor,
        textAlign: TextAlign.center,
      ),
      BottomNavyBarItem(
        icon: Icon(Icons.shopping_cart_outlined),
        title: Text('Carrinho'),
        activeColor: _corFundo,
        inactiveColor: _inactiveColor,
        textAlign: TextAlign.center,
      ),
    ],
  );
  }
}


class BottomNavyBarItem {

  BottomNavyBarItem({
    required this.icon,
    required this.title,
    this.activeColor = Colors.blue,
    this.textAlign,
    this.inactiveColor,
  });

  final Widget icon;
  final Widget title;
  final Color activeColor;
  final Color? inactiveColor;
  final TextAlign? textAlign;

}

class CustomAnimatedBottomBar extends StatelessWidget {

  CustomAnimatedBottomBar({
    Key? key,
    this.selectedIndex = 0,
    this.showElevation = true,
    this.iconSize = 24,
    this.backgroundColor,
    this.itemCornerRadius = 50,
    this.containerHeight = 56,
    this.animationDuration = const Duration(milliseconds: 270),
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    required this.items,
    required this.onItemSelected,
    this.curve = Curves.linear,
  }) : assert(items.length >= 2 && items.length <= 5),
        super(key: key);
  
  final int selectedIndex;
  final double iconSize;
  final Color? backgroundColor;
  final bool showElevation;
  final Duration animationDuration;
  final List<BottomNavyBarItem> items;
  final ValueChanged<int> onItemSelected;
  final MainAxisAlignment mainAxisAlignment;
  final double itemCornerRadius;
  final double containerHeight;
  final Curve curve;

  @override
  Widget build(BuildContext context) {
    final bgColor = backgroundColor ?? Theme.of(context).bottomAppBarColor;

    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        boxShadow: [
          if (showElevation)
            const BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
            ),
        ],
      ),
      child: SafeArea(
        child: Container(
          width: double.infinity,
          height: containerHeight,
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          child: Row(
            mainAxisAlignment: mainAxisAlignment,
            children: items.map((item) {
              var index = items.indexOf(item);
              return GestureDetector(
                onTap: () => onItemSelected(index),
                child: _ItemWidget(
                  item: item,
                  iconSize: iconSize,
                  isSelected: index == selectedIndex,
                  backgroundColor: bgColor,
                  itemCornerRadius: itemCornerRadius,
                  animationDuration: animationDuration,
                  curve: curve,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget {
  final double iconSize;
  final bool isSelected;
  final BottomNavyBarItem item;
  final Color backgroundColor;
  final double itemCornerRadius;
  final Duration animationDuration;
  final Curve curve;

  const _ItemWidget({
    Key? key,
    required this.item,
    required this.isSelected,
    required this.backgroundColor,
    required this.animationDuration,
    required this.itemCornerRadius,
    required this.iconSize,
    this.curve = Curves.linear,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      selected: isSelected,
      child: AnimatedContainer(
        width: isSelected ? 130 : 50,
        height: double.maxFinite,
        duration: animationDuration,
        curve: curve,
        decoration: BoxDecoration(
          color:
          isSelected ? item.activeColor.withOpacity(0.2) : backgroundColor,
          borderRadius: BorderRadius.circular(itemCornerRadius),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            width: isSelected ? 130 : 50,
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconTheme(
                  data: IconThemeData(
                    size: iconSize,
                    color: isSelected
                        ? item.activeColor.withOpacity(1)
                        : item.inactiveColor == null
                        ? item.activeColor
                        : item.inactiveColor,
                  ),
                  child: item.icon,
                ),
                if (isSelected)
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: DefaultTextStyle.merge(
                        style: TextStyle(
                          color: item.activeColor,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        textAlign: item.textAlign,
                        child: item.title,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
