import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 48),
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(MaterialIcons.arrow_back),
          )
        ],
      ),
    );
  }
}
