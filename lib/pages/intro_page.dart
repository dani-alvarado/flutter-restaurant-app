import 'package:flutter/material.dart';
import 'package:flutter_restaurant_app/components/button.dart';
import 'package:flutter_restaurant_app/themes/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // shop name
              SizedBox(
                height: 25,
              ),
              Text(
                'SOS UN SUSHI, FLACO',
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 28, color: Colors.white),
              ),

              const SizedBox(
                height: 25,
              ),
              // icon
              Padding(
                padding: const EdgeInsets.all(.0),
                child: Image.asset(
                  'lib/images/sushi-salmon-roe.png',
                  scale: 2.5,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // title
              Text(
                'PROBÁ EL SABOR JAPONÉS',
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 44, color: Colors.white),
              ),

              const SizedBox(
                height: 25,
              ),

              // subtitle
              Text(
                'Sentí el boom de este perreo, ups, de este sushi!',
                style: TextStyle(
                  color: Colors.grey[300],
                  height: 2,
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              // get started buytton
              MyButton(
                text: 'Get Started',
                onTap: () {
                  Navigator.pushNamed(context, '/menupage');
                },
              ),
            ]),
      ),
    );
  }
}
