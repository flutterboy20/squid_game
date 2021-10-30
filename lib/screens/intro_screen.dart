import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:squid_game/screens/home_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Onbarding.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.58,
              left: MediaQuery.of(context).size.height * 0.03,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    height: 300,
                    color: Colors.white.withOpacity(0.2),
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: Image.asset(
                            'assets/images/title.png',
                            height: 150,
                            width: 200,
                          ),
                        ),
                        Text(
                          'Shop your favourite toys and outfits\n      of the squid game on the go!',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                        const ButtonWidget(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Widgets

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
          PageTransition(
            type: PageTransitionType.bottomToTop,
            duration: const Duration(milliseconds: 500),
            child: const HomeScreen(),
          ),
        );
      },
      child: Container(
        height: 60,
        width: 300,
        margin: const EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          color: const Color(0xFFE84381),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text('Shop Now',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                  fontSize: 26,
                  color: Colors.white)),
        ),
      ),
    );
  }
}
