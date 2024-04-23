import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  final bool _isOn = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGVyc29ufGVufDB8fDB8fHww"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Theme.of(context).colorScheme.primary),
          ),
        ),
        const Text(
          "Jobs",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Switch(
            value: _isOn,
            onChanged: (value) {
              setState(() {
                value = !value;
              });
            })
      ],
    );
  }
}
