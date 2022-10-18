import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:Text("Page 2"),centerTitle: true),
    body: Column(
      children: [
        TextField(decoration: InputDecoration(hintText: "Entrez votre nom"),),
        Expanded(
          child: Align(alignment: Alignment.bottomCenter,
            child: Row(children: [
              SizedBox(width: MediaQuery.of(context).size.width/2, child: ElevatedButton(onPressed: (){}, child: Text("Annuler"))),
    SizedBox(width: MediaQuery.of(context).size.width/2, child: ElevatedButton(onPressed: (){}, child: Text("Sauvegarder")))

            ]),
          ),
        ),
      ],
    )
    );

  }
}
