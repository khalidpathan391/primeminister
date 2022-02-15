
import 'package:flutter/material.dart';
import 'package:untitled4/textlist.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'PRIME MINISTER'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key,  this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String  dropdownValue = "ManMohanSingh";
  List<String> primelist=["ManMohanSingh","JavaharlaNehru","Shastri_G","Indira_Gandhi","Rajiv_Gandhi"];
  List<PrimeMinister> primeminister = [
    new PrimeMinister("ManMohanSingh", "2013-2017" , "Congress" , "2019" , "assets/images/ManMohanSingh.jpg"),
    new PrimeMinister("Jawaharlal_Nehru" , "2013-2017" , "Congress" , "2019" , "assets/images/JavaharlalNehru.jpg"),
    new PrimeMinister("Shastri_G" , "2013-2017" , "Congress" , "2019" , "assets/images/Shastri_G.webp"),
    new PrimeMinister("Indira_Gandhi" , "2012-2019" , "BJp" , "2021" , "assets/images/Indira_Gandhi.jpg"),
    new PrimeMinister("Rajiv_Gandhi" , "2021-2023" , "AAP" , "2022" , "assets/images/Rajiv_Gandhi.jpg")];

  PrimeMinister selectedpath=null;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:
      ListView.builder(
        itemCount: primeminister.length,
        itemBuilder: (context, position) {
          return Card(
            child: ListTile(
              leading:  CircleAvatar(
                backgroundImage: AssetImage(primeminister[position].pic), // no matter how big it is, it won't overflow
              ),
              title: Text(primeminister[position].name),
              subtitle: Column(children: [
                Text(primeminister[position].duration),
                Text(primeminister[position].party)
              ],),
            ),
          );
        },
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}