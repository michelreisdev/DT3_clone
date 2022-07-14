import 'package:flutter/material.dart';
import '../../common/custom_drawer/custom_drawer_header.dart';

class DrawerHome extends StatefulWidget {
  const DrawerHome({Key? key}) : super(key: key);

  @override
  State<DrawerHome> createState() => _DrawerHomeState();
}

class _DrawerHomeState extends State<DrawerHome> {
  bool _customTileExpanded = false;
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
                    title: const Text('ExpansionTile 2'),
                    subtitle: const Text('Custom expansion arrow icon'),
                    trailing: Icon(
                      _customTileExpanded
                          ? Icons.arrow_drop_down_circle
                          : Icons.arrow_drop_down,
                    ),
                    children: const <Widget>[
                      ListTile(title: Text('This is tile number 2')),
                    ],
                    onExpansionChanged: (bool expanded) {
                      setState(() => _customTileExpanded = expanded);
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
