import 'package:flutter/material.dart';

// alignment adjustment
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<Widget> boxes(int n, double w, double h) {
    List<Widget> bxs = [];
    List fill = [
      Colors.blue,
      Colors.green,
      Colors.purple,
      Colors.pink,
      Colors.orange
    ];
    for (int i = 0; i <= n - 1; i++) {
      Container bx = Container(
        child: Text(i.toString()),
        color: fill[i],
        width: w,
        height: h,
      );
      bxs.add(bx);
    }
    return bxs;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter U Succinctly'),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: boxes(5, 40, 40),
          ),
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue, Colors.orange]),
            shape: BoxShape.rectangle,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.ac_unit),
          onPressed: () {
            print("oh its so cold outside");
          },
        ),
      ),
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 148, 195, 50),
        appBarTheme: AppBarTheme(color: Color.fromARGB(255, 148, 195, 50)),
        accentColor: Colors.red,
        textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: 26, fontStyle: FontStyle.italic),
        ),
        brightness: Brightness.dark,
      ),
    );
  }
}

// // boxes row
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   List<Widget> boxes(int n, double w, double h) {
//     List<Widget> bxs = [];
//     List fill = [
//       Colors.blue,
//       Colors.green,
//       Colors.purple,
//       Colors.pink,
//       Colors.orange
//     ];
//     for (int i = 0; i <= n - 1; i++) {
//       Container bx = Container(
//         child: Text(i.toString()),
//         color: fill[i],
//         width: w,
//         height: h,
//       );
//       bxs.add(bx);
//     }
//     return bxs;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter U Succinctly'),
//         ),
//         body: Container(
//           decoration: BoxDecoration(
//             color: Colors.lightBlue,
//             gradient: LinearGradient(
//                 begin: Alignment.topRight,
//                 end: Alignment.bottomLeft,
//                 colors: [Colors.blue, Colors.orange]),
//             shape: BoxShape.rectangle,
//           ),
//           child: Row(children: boxes(5, 40, 50)),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.ac_unit),
//           onPressed: () {
//             print("oh its so cold outside");
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




//boxes column
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   List<Widget> boxes(int n, double w, double h) {
//     List<Widget> bxs = [];
//     List fill = [
//       Colors.blue,
//       Colors.green,
//       Colors.purple,
//       Colors.pink,
//       Colors.orange
//     ];
//     for (int i = 0; i <= n - 1; i++) {
//       Container bx = Container(
//         child: Text(i.toString()),
//         color: fill[i],
//         width: w,
//         height: h,
//       );
//       bxs.add(bx);
//     }
//     return bxs;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter U Succinctly'),
//         ),
//         body: Container(
//           decoration: BoxDecoration(
//             color: Colors.lightBlue,
//             gradient: LinearGradient(
//                 begin: Alignment.topRight,
//                 end: Alignment.bottomLeft,
//                 colors: [Colors.blue, Colors.orange]),
//             shape: BoxShape.rectangle,
//           ),
//           child: Column(children: boxes(5, 40, 50)),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.ac_unit),
//           onPressed: () {
//             print("oh its so cold outside");
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
//