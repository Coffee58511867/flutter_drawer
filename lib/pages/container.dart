import 'package:flutter/material.dart';


class ConatinerPage extends StatefulWidget {
  const ConatinerPage({super.key});

  @override
  State<ConatinerPage> createState() => _ConatinerPageState();
}

class _ConatinerPageState extends State<ConatinerPage> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
        appBar: AppBar(
          title: const Text("Container example"),
          centerTitle: true,
        ),
        body: Container(
          height: 200,
          width: double.infinity,
          color: Colors.purple,
          margin: const EdgeInsets.all(20),
          child: const Text("Hello! i am inside a container!",
              style: TextStyle(fontSize: 20)),
        ),
      );
  }
}