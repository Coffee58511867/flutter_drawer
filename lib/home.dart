import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all<Size>(
              const Size(350, 40),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/dashboard');
          },
          child: const Text("Go to Dashboard"),
        ),
      ),
    );
  }
}
