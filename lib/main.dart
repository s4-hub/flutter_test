import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:belajar/model.dart';
import 'package:belajar/widgetClass.dart';
import 'package:belajar/takePicture.dart';
import 'package:belajar/googleMaps.dart';
import 'package:camera/camera.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(judul: 'Halaman Pertama'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.judul}) : super(key: key);
  final String judul;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<CameraDescription> cameras;

  var gayaBaru=TextStyle(color: Colors.black,fontSize: 20);
  DataUser dataUser= DataUser(
  foto:'assets/img/satu.jpg',
  nama: "Siska",gender: 'Female',umur: 24);

  List<DataUser> dataList=[
    DataUser(
      nama: 'Siska',
      foto:'assets/img/satu.jpg',
      umur: 27,
      gender: 'Female'
            ),
    DataUser(
      nama: 'Tika',
      foto:'assets/img/dua.jpg',
      umur: 27,
      gender: 'Female'
            ),
    DataUser(
      nama: 'Susi',
      foto:'assets/img/tiga.jpg',
      umur: 25,
      gender: 'Female'
            ),
    DataUser(
      nama: 'Tina',
      foto:'assets/img/empat.jpg',
      umur: 30,
      gender: 'Female'
            ),
     DataUser(
      nama: 'Siska',
      foto:'assets/img/satu.jpg',
      umur: 27,
      gender: 'Female'
            ),
    DataUser(
      nama: 'Tika',
      foto:'assets/img/dua.jpg',
      umur: 27,
      gender: 'Female'
            ),
    DataUser(
      nama: 'Susi',
      foto:'assets/img/tiga.jpg',
      umur: 25,
      gender: 'Female'
            ),
    DataUser(
      nama: 'Tina',
      foto:'assets/img/empat.jpg',
      umur: 30,
      gender: 'Female',
            ),
  ];
  
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cekKamera();
  }

  void _incrementCounter() {
   Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_, __,___)=> CameraApp(camera: cameras,)));
  }

   openMaps() {
   Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_, __,___)=> MapSample()));
  }

   void _countDownCounter() {
    setState(() {
      _counter > 0 ? _counter-- : 0;
    });
    
  }

  

Future<void> cekKamera() async {
  cameras = await availableCameras();
 // print(cameras.toString());
}



  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(widget.judul,style: gayaBaru,),
      ),
      body:Container(
          height: MediaQuery.of(context).size.height,
          child:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Column(
            children:List.generate(dataList.length, (index)=> ShowData(data:dataList[index],))
          ),
        ),
      )
      ,
      floatingActionButton: FloatingActionButton(
        onPressed: openMaps,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class classCoba extends StatelessWidget {
  String nama;
  classCoba({
    this.nama,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

