import 'package:flutter/material.dart';
import 'package:flutter_restaurant_app/components/button.dart';

import 'package:flutter_restaurant_app/themes/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'Que tan sushi te sentis hoy',
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Column(children: [
        //Promo banner
        Container(
          decoration: BoxDecoration(
              color: primaryColor, borderRadius: BorderRadius.circular(20)),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Get 32% Promo',
                    style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MyButton(text: 'Redeem', onTap: () {}),
                ],
              ),
              Image.asset(
                'lib/images/sushi-many-sushi.png',
                height: 100,
              ),
            ],
          ),
        ),

        const SizedBox(
          height: 25,
        ),
        //SearchBar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ),

        const SizedBox(
          height: 25,
        ),

        //Menu list
        Text('Food Menu')
        // Popular food
      ]),
    );
  }
}
