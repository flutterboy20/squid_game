import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:squid_game/screens/home_screen.dart';

class DetailScreen extends StatefulWidget {
  static const routeName = 'detail-screen';

  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.57,
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFCEE0),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                  HomeScreen.routeName,
                                );
                              },
                              child: const Icon(Icons.arrow_back_rounded,
                                  color: Colors.black, size: 30),
                            ),
                            const SizedBox(width: 300),
                            const Icon(
                              Icons.favorite_outline_rounded,
                              color: Colors.black,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      left: 95,
                      child: SizedBox(
                        height: 400,
                        width: 200,
                        child: Image.asset('assets/images/redCharacter3.png'),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  'Supervisor Toy',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 36,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 4),
                child: Text(
                  '\$79.9',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: Colors.blueGrey.shade200),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 8),
                child: Row(
                  children: <Widget>[
                    const DecrementButton(),
                    const SizedBox(
                      width: 24,
                    ),
                    Text(
                      '1',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 26,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    const IncrementButton(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, bottom: 8),
                child: Row(
                  children: [
                    const Icon(Icons.star_rate_rounded,
                        color: Colors.amber, size: 30),
                    const Icon(Icons.star_rate_rounded,
                        color: Colors.amber, size: 30),
                    const Icon(Icons.star_rate_rounded,
                        color: Colors.amber, size: 30),
                    const Icon(Icons.star_half_rounded,
                        color: Colors.amber, size: 30),
                    Text('4.5',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            color: Colors.blueGrey.shade200)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: const [
                    SizedBox(
                      width: 18,
                    ),
                    Button1(),
                    SizedBox(
                      width: 20,
                    ),
                    Button2(),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

//Widgets

class IncrementButton extends StatelessWidget {
  const IncrementButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Icon(Icons.add, color: Colors.white),
      style: ElevatedButton.styleFrom(
          primary: const Color(0xFFE84381),
          shape: const CircleBorder(),
          minimumSize: const Size(50, 50)),
    );
  }
}

class DecrementButton extends StatelessWidget {
  const DecrementButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Padding(
        padding: EdgeInsets.only(bottom: 15),
        child: Icon(
          Icons.minimize_outlined,
          color: Color(0xFFE84381),
        ),
      ),
      style: ElevatedButton.styleFrom(
          primary: const Color(0xFFFFCEE0),
          shape: const CircleBorder(),
          minimumSize: const Size(50, 50)),
    );
  }
}

class Button2 extends StatelessWidget {
  const Button2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 170,
      decoration: BoxDecoration(
        color: const Color(0xFFE84381),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            spreadRadius: 3,
            blurRadius: 5,
          )
        ],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            'Buy Now',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class Button1 extends StatelessWidget {
  const Button1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 170,
      decoration: BoxDecoration(
        color: const Color(0xFFFFCEE0),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            spreadRadius: 3,
            blurRadius: 5,
          )
        ],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Text(
                'Add to Cart',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.black),
              ),
              const SizedBox(
                width: 6,
              ),
              const Icon(Icons.shopping_cart_outlined,
                  size: 28, color: Colors.black)
            ],
          ),
        ),
      ),
    );
  }
}
