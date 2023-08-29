import 'package:ecom/components/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 25),
              Text(
                "SUSHI MAN",
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 28, color: Colors.white),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('lib/images/sushi.png'),
              ),
              const SizedBox(height: 25),
              Text(
                "The Taste of Japanese Food",
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 40, color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Feel the taste of Japanese food from anywhere and anytime.",
                style:
                    TextStyle(color: Colors.grey[300], height: 2, fontSize: 19),
              ),
              const SizedBox(
                height: 25,
              ),
              MyButton(
                text: "Get Started",
                onTap: () {
                  Navigator.pushNamed(context, '/menupage');
                },
              )
            ]),
      ),
    );
  }
}
