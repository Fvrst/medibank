import 'package:flutter/material.dart';
import 'dart:async';

import 'package:medibank/screen/profile.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ProfilePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage('assets/img/afrowoman.jpg'),
                fit: BoxFit.cover,
                opacity: 0.4,
              ),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/img/medibank-logo 1.png',
                width: 279,
                height: 82,
              ),
            ),
          ),

          Positioned(
            bottom: 50, 
            left: 20,
            right: 20,
            child: Column(
              children: [
                
                ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50), 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60), 
                    ),
                  ),
                  child: const Text("Sign Up", style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16, color: Colors.black,)),
                ),
                const SizedBox(height: 10), 

                
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(color: Colors.black), 
                    ),
                  ),
                  child: const Text("Sign In", style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16, color: Colors.black)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
