// import 'package:flutter/material.dart';
// import 'package:learningdart/gradient_container.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       home: Scaffold(
//         body: GradientContainer(Color.fromARGB(255, 3, 4, 46),Color.fromARGB(255, 16, 31, 130)),
//       ),
//     ),
//   );
// }
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Rows & Columns')),
        body: const RowsAndColumns(),
      ),
    );
  }
}

class RowsAndColumns extends StatelessWidget {
  const RowsAndColumns({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100.0, left: 20.0, right:20.0),
      child: Column(children: [
        Expanded(
          child: Column(children: [
            Container(height: 120.0, color: Colors.yellow),
            Container(height: 120.0, color: Colors.cyan),
          ]),
        ),
        Expanded(
          child: Column(children: [
            Container(height: 120.0, color: const Color.fromARGB(255, 0, 0, 0)),
            Container(
                height: 120.0, color: const Color.fromARGB(255, 0, 212, 53)),
          ]),
        ),
      ]),
    );
  }
}
