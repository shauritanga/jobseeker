import 'package:flutter/material.dart';
import 'package:jobseeker/src/screens/verification.dart';
import 'package:jobseeker/src/wigdets/header.dart';
import 'package:jobseeker/src/wigdets/job_poster_card.dart';
import 'package:jobseeker/src/wigdets/verify_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final bool _isProfileComplete = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Header(),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(7),
                        bottomLeft: Radius.circular(7),
                      ),
                    ),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey),
                        right: BorderSide(color: Colors.grey),
                        top: BorderSide(color: Colors.grey),
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(7),
                        bottomRight: Radius.circular(7),
                      ),
                    ),
                    height: 48,
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Search and filter jobs",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        suffixIcon: Icon(
                          Icons.filter_alt,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 24),
            _isProfileComplete
                ? const SizedBox()
                : GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const Verification(),
                        ),
                      );
                    },
                    child: const VerifyCard()),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 12),
            RichText(
              text: const TextSpan(
                text: "5,000",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: " jobs available",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                      )),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Divider(),
            const JobPosterCard(),
            const SizedBox(height: 12),
            const Divider(),
            const SizedBox(height: 12),
            const JobPosterCard(),
            const SizedBox(height: 12),
            const Divider(),
            const SizedBox(height: 12),
            const JobPosterCard()
          ],
        ),
      ),
    );
  }
}
