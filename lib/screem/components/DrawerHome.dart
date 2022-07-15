import 'package:flutter/material.dart';
import '../../common/custom_drawer/custom_drawer_header.dart';

class DrawerHome extends StatefulWidget {
  const DrawerHome({Key? key}) : super(key: key);

  @override
  State<DrawerHome> createState() => _DrawerHomeState();
}

class _DrawerHomeState extends State<DrawerHome> {
  bool _customTileExpandedSport = false;
  bool _customTileExpandedRacing = false;
  bool _customTileExpandedOffice = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeaderCommon(),
                  ExpansionTile(
                    title: Text(
                      'Sport',
                      style: TextStyle(
                          color: _customTileExpandedSport
                              ? Colors.red
                              : Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(
                      _customTileExpandedSport
                          ? Icons.arrow_drop_down_circle
                          : Icons.arrow_drop_down,
                      color:
                          _customTileExpandedSport ? Colors.red : Colors.black,
                    ),
                    children: const <Widget>[
                      ListTile(title: Text('Elite')),
                      ListTile(title: Text('Racing')),
                      ListTile(title: Text('Gaming')),
                    ],
                    onExpansionChanged: (bool expanded) {
                      setState(() => _customTileExpandedSport = expanded);
                    },
                  ),
                  ExpansionTile(
                    title: Text(
                      'Office',
                      style: TextStyle(
                          color: _customTileExpandedOffice
                              ? Colors.red
                              : Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(
                      _customTileExpandedOffice
                          ? Icons.arrow_drop_down_circle
                          : Icons.arrow_drop_down,
                      color:
                          _customTileExpandedOffice ? Colors.red : Colors.black,
                    ),
                    children: const <Widget>[
                      ListTile(title: Text('Elite')),
                      ListTile(title: Text('Racing')),
                      ListTile(title: Text('Gaming')),
                    ],
                    onExpansionChanged: (bool expanded) {
                      setState(() => _customTileExpandedOffice = expanded);
                    },
                  ),
                  ExpansionTile(
                    title: Text(
                      'Racing',
                      style: TextStyle(
                          color: _customTileExpandedRacing
                              ? Colors.red
                              : Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(
                      _customTileExpandedRacing
                          ? Icons.arrow_drop_down_circle
                          : Icons.arrow_drop_down,
                      color:
                          _customTileExpandedRacing ? Colors.red : Colors.black,
                    ),
                    children: const <Widget>[
                      ListTile(title: Text('Elite')),
                      ListTile(title: Text('Racing')),
                      ListTile(title: Text('Gaming')),
                    ],
                    onExpansionChanged: (bool expanded) {
                      setState(() => _customTileExpandedRacing = expanded);
                    },
                  ),
                ],
              ),
            ),
            Container(child: Text("tes"))
          ],
        ),
      ),
    );
  }
}
