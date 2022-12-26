// ignore_for_file: use_key_in_widget_constructors

import 'dart:math';

import 'package:flutter/material.dart';

// latihan 1
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String textHolder = "project pertama";
  int r = 0, g = 0, b = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:
            AppBar(title: Text(namanim("Dzikri Arraiyan ", "202057301019"))),
        body: Center(
          child: Text(
            textHolder,
            style: TextStyle(fontSize: 20),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.account_balance_wallet_outlined,
              color: Color.fromARGB(255, 9, 253, 232)),
          onPressed: () {
            setState(() {
              textHolder = namanim("Dzikri Arraiyan ", "202057301019");
              r = Random().nextInt(255);
              g = Random().nextInt(255);
              b = Random().nextInt(255);
            });
          },
        ),
      ),
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 148, 195, 50),
        appBarTheme: AppBarTheme(color: Color.fromARGB(255, r, g, b)),
        accentColor: Colors.red,
        textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: 26, fontStyle: FontStyle.italic),
        ),
        brightness: Brightness.dark,
      ),
    );
  }

  String namanim(String nama, String nim) {
    return "$nama" "$nim";
  }
}

// latihan 2
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Text(namanim("rahmat", "2020573010055"))),
//         body: const Center(
//           child: Text(
//             'Project Pertama menggunakan Scaffolds',
//             style: TextStyle(fontSize: 24),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.ac_unit, color: Colors.amberAccent),
//           onPressed: () {
//             print("Oh, it is cold outside....");
//           },
//         ),
//       ),
//       theme: ThemeData(
//         primaryColor: Colors.deepOrange,
//         textTheme: const TextTheme(
//           bodyText2: TextStyle(fontSize: 26, fontStyle: FontStyle.italic),
//         ),
//       ),
//     );
//   }

//   String namanim(String nama, String nim) {
//     return "$nama" "$nim";
//   }
// }

//percobaan masukan gambar
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Text('Flutter ui Succintctly')),
//         body: Container(
//           margin: EdgeInsets.all(100),
//           padding: EdgeInsets.all(40),
//           width: 450,
//           height: 450,
//           decoration: BoxDecoration(
//             color: Colors.lightBlue,
//             shape: BoxShape.rectangle,
//             borderRadius: BorderRadius.only(
//                 topRight: Radius.elliptical(50, 50),
//                 topLeft: Radius.circular(20),
//                 bottomLeft: Radius.elliptical(25, 25)),
//             image: DecorationImage(
//               colorFilter: ColorFilter.mode(
//                   Colors.black.withOpacity(0.6), BlendMode.dstATop),
//               image: AssetImage("gambar/gmbr1.jpg"),
//               repeat: ImageRepeat.repeatY,
//             ),
//           ),
//           child: Text('container'),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.ac_unit),
//           onPressed: () {
//             print("Oh, it is cold outside....");
//           },
//         ),
//       ),
//       theme: ThemeData(
//         primaryColor: Color.fromARGB(255, 148, 195, 50),
//         appBarTheme: AppBarTheme(color: Color.fromARGB(255, 148, 195, 50)),
//         accentColor: Colors.red,
//         textTheme: TextTheme(
//           bodyText2: TextStyle(fontSize: 26, fontStyle: FontStyle.italic),
//         ),
//         brightness: Brightness.dark,
//       ),
//     );
//   }
// }
//BOX DECORATION
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter UI Succinctly'),
//         ),
//         body: Container(
//           margin: EdgeInsets.all(100),
//           padding: EdgeInsets.all(28),
//           decoration: BoxDecoration(
//               color: Colors.lightBlue,
//               shape: BoxShape.rectangle,
//               borderRadius: BorderRadius.only(
//                   topRight: Radius.elliptical(50, 50),
//                   topLeft: Radius.circular(20),
//                   bottomRight: Radius.elliptical(50, 50))),
//           child: Text('Containners'),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.ac_unit),
//           onPressed: () {
//             print('Oh, it is cold outside...');
//           },
//         ),
//       ),
//       theme: ThemeData(
//         primaryColor: Color.fromARGB(255, 125, 170, 148),
//         appBarTheme: AppBarTheme(color: Color.fromARGB(255, 125, 170, 148)),
//         accentColor: Colors.red,
//         textTheme: TextTheme(
//           bodyText2: TextStyle(fontSize: 26, fontStyle: FontStyle.italic),
//         ),
//         brightness: Brightness.dark,
//       ),
//     );
//   }
// }

//GRADIENT
// void main() {
//   runApp(MyApp());
// }

// int r = 0, g = 0, b = 0;

// void random() {
//   r = Random().nextInt(255);
//   g = Random().nextInt(255);
//   b = Random().nextInt(255);
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Text('Flutter ui Succintctly')),
//         body: Container(
//           decoration: BoxDecoration(
//             color: Colors.lightBlue,
//             gradient: RadialGradient(
//                 radius: 0.15,
//                 center: Alignment(0, 0),
//                 tileMode: TileMode.mirror,
//                 colors: [Colors.blue, Colors.deepPurple, Colors.lightBlue]),
//             shape: BoxShape.rectangle,
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.ac_unit_sharp),
//           onPressed: () {
//             print('oeh its cold inside');
//           },
//         ),
//       ),
//       theme: ThemeData(
//         primaryColor: Color.fromARGB(255, 148, 195, 50),
//         appBarTheme: AppBarTheme(color: Color.fromARGB(255, 148, 195, 50)),
//         accentColor: Colors.red,
//         textTheme: TextTheme(
//           bodyText2: TextStyle(fontSize: 26, fontStyle: FontStyle.italic),
//         ),
//         brightness: Brightness.dark,
//       ),
//     );
//   }
// }

// Dzikri Arraiyan
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   String textHolder = "project pertama";
//   // int r = 0, g = 0, b = 0;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           appBar:
//               AppBar(title: Text(namanim("Dzikri Arraiyan ", "2020573010019"))),
//           body: Container(
//             // margin: EdgeInsets.all(100),
//             // padding: EdgeInsets.all(50),
//             decoration: BoxDecoration(
//               color: Colors.lightBlue,
//               shape: BoxShape.rectangle,
//               gradient: LinearGradient(
//                   begin: Alignment(0, -1),
//                   end: Alignment(0, -0.4),
//                   tileMode: TileMode.mirror,
//                   colors: [Colors.blue, Colors.orange]),
//               // borderRadius: BorderRadius.only(
//               //   topRight: Radius.elliptical(50, 50),
//               //   bottomLeft: Radius.elliptical(25, 25),
//               // ),
//               // image: DecorationImage(
//               //   image: AssetImage("gambar/gmbr1.jpg"),
//               //   fit: BoxFit.cover,
//               // ),
//             ),
//             // child: Text('Container')
//           ),
//           floatingActionButton: FloatingActionButton(
//             child: const Icon(Icons.account_balance_wallet_outlined,
//                 color: Color.fromARGB(255, 0, 0, 0)),
//             onPressed: () {
//               // setState(() {
//               //   textHolder = namanim("rahmat", "2020573010055");
//               //   r = Random().nextInt(255);
//               //   g = Random().nextInt(255);
//               //   b = Random().nextInt(255);
//               // });
//             },
//           ),
//         ),
//         theme: ThemeData(
//           primaryColor: const Color.fromARGB(255, 148, 195, 50),
//           // appBarTheme: AppBarTheme(color: Color.fromARGB(255, r, g, b)),
//           textTheme: const TextTheme(
//             bodyText2: TextStyle(fontSize: 26, fontStyle: FontStyle.italic),
//           ),
//           brightness: Brightness.dark,
//           // colorScheme:
//           //     ColorScheme.fromSwatch().copyWith(secondary: Colors.red)
//         ));
//   }

//   String namanim(String nama, String nim) {
//     return "$nama" "$nim";
//   }
// }
