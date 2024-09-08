import 'package:flutter/material.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.ice_skating,
        ),

        title: const Text(
          'If you going throw hell keep gone',
        ),
        actions: const [
          Icon(
            Icons.icecream_rounded,
          ),
          Icon(
            Icons.icecream_rounded,
          ),
        ],
      ),
    );
  }
}
