import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'dates.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String jour = "";
  String mois = "";
  String annee = "";
  List<Date> listeDates = [];

maRequete() async {

  Dio dio = Dio();
  final response = await dio.get("https://exercices-web.herokuapp.com/exam/$annee/$mois/$jour");
  for(var date in response.data)
    {
      listeDates.add(Date.fromJson(date));
    }


  print(listeDates);


}

@override
  void initState() {
    // TODO: implement initState

    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(),
        body: Column(children: [
          Row(children: [
            Expanded(child: TextField(onChanged: (value)=> jour=value)),
            Expanded(child: TextField(onChanged: (value)=> mois=value )),
            Expanded(child: TextField(onChanged: (value)=> annee=value )),

          ],),
          ElevatedButton(onPressed: maRequete, child: const Text("Envoyer")),
          Expanded(

            child: ListView.builder(
                itemCount: listeDates.length,
                itemBuilder: (context, index) {
                  return ListTile(title:
                  Text(listeDates[index].annee.toString()),
                      subtitle: Text(listeDates[index].jour.toString()));
                }

            ),
          )]));

  }
}
