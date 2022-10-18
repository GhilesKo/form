import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Page2.dart';
import 'package:untitled1/main.dart';

class MonDrawer extends StatefulWidget {
  const MonDrawer({Key? key}) : super(key: key);

  @override
  State<MonDrawer> createState() => _MonDrawerState();
}

class _MonDrawerState extends State<MonDrawer> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(child: ListView(children: [
      DrawerHeader(
        decoration: BoxDecoration(color: Colors.blue),
        child: Align(alignment: Alignment.topCenter,child: Text("Mon drawer")),),
      ListTile(title: Text("Page 1"),onTap: (){Navigator.push(context,
          MaterialPageRoute(builder: (context)=> MyApp()));}),  ListTile(title: Text("Page 2"),onTap: (){Navigator.push(context,
          MaterialPageRoute(builder: (context)=> Page2()));})
    ]));
  }
}
