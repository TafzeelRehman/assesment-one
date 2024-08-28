import 'package:flutter/material.dart';

class Nextpage extends StatefulWidget {
  const Nextpage({super.key});

  @override
  State<Nextpage> createState() => _NextpageState();
}

class _NextpageState extends State<Nextpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212832),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF212832),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back!',
              style: TextStyle(
                  color: Colors.amberAccent, fontWeight: FontWeight.bold),
            ),
            Text(
              'Fazil Laghari',
              style: TextStyle(
                  color: Colors.amberAccent, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        // actions: [CircleAvatar(backgroundImage: ,)],
      ),
    );
  }
}
