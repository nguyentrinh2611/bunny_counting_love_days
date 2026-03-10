import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset('assets/images/lover-splash.png', fit: BoxFit.cover),
          ),
          Container(color: Colors.pink.withOpacity(0.3)),
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 16)],
              ),
              width: size.width / 2.5,
              height: size.width / 2.5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/lover-splash.png', fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
