import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contact Info"),
          centerTitle: true,
        ),
        body: Container(
          height: 200,
          width: double.infinity,
          color: Colors.purple,
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){}, child: const Text("Send Email to us")),
              const SizedBox(height: 20.0,),
              ElevatedButton(onPressed: (){}, child: const Text("Call Us Here")),
              const SizedBox(height: 20.0,),
              ElevatedButton(onPressed: (){}, child: const Text("Send us SMS"))
            ],
          ),
        ),
      );
  }
}