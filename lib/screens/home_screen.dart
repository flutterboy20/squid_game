import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:squid_game/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleBar(),
              const SizedBox(
                height: 20,
              ),
              const TextWidget(text: 'Recommeded for you'),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: SizedBox(
                    height: 400,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              DetailScreen.routeName,
                            );
                          },
                          child: const RecommededProduct(
                            imageUrl: 'assets/images/redCharacter.png',
                            title: 'Supervisor Toy',
                            height: 350,
                            width: 200,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        const RecommededProduct(
                          imageUrl: 'assets/images/frontman.png',
                          title: 'Frontman Toy',
                          height: 350,
                          width: 200,
                          fit: BoxFit.fitHeight,
                        ),
                        const RecommededProduct(
                          imageUrl: 'assets/images/player67.png',
                          title: 'Player 067',
                          height: 350,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        const RecommededProduct(
                          imageUrl: 'assets/images/player101.png',
                          title: 'Player 101',
                          height: 350,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        const RecommededProduct(
                          imageUrl: 'assets/images/player199.png',
                          title: 'Player 199',
                          height: 350,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        const RecommededProduct(
                          imageUrl: 'assets/images/player001.png',
                          title: 'Player 001',
                          height: 350,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const TextWidget(text: 'Recent orders'),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  height: 180,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      children: const [
                        RecentOrder(
                          title: 'Collector outfit',
                          imageUrl: 'assets/images/redCharacter2.png',
                          totalOrders: 3,
                        ),
                        RecentOrder(
                          title: 'Doll',
                          imageUrl: 'assets/images/doll.png',
                          totalOrders: 1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 20,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Widgets

class RecentOrder extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int totalOrders;

  const RecentOrder({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.totalOrders,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 250,
      margin: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            spreadRadius: 3,
            blurRadius: 5,
          )
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 150,
            width: 80,
            child: Image.asset(imageUrl),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50),
            height: 100,
            width: 160,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                    title,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                    '$totalOrders items ordered',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 14, top: 10),
                  child: Row(
                    children: [
                      Text(
                        'View details',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.grey.shade400),
                      ),
                      Icon(Icons.arrow_forward_rounded,
                          size: 22, color: Colors.grey.shade400),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RecommededProduct extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double height;
  final double width;
  final BoxFit fit;
  const RecommededProduct({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.height,
    required this.width,
    required this.fit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 3),
            spreadRadius: 3,
            blurRadius: 5,
          )
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 5),
            height: 260,
            width: 170,
            child: Image.asset(imageUrl, fit: fit),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.black),
              ),
              const Icon(Icons.star_purple500_outlined,
                  color: Colors.amber, size: 26),
            ],
          ),
          const ButtonWidget(),
        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  const TextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(text,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: Colors.black87)),
    );
  }
}

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: 80,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 15),
            height: 35,
            child: Image.asset('assets/images/DarkLogo.png'),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15),
            height: 45,
            width: 195,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: const BorderRadius.all(Radius.circular(30)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15, bottom: 10),
                  child: Text(
                    'Search',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black45),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.search_rounded,
                      size: 30, color: Colors.black54),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Icon(Icons.menu_rounded, size: 45, color: Colors.black),
          ),
        ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 180,
      margin: const EdgeInsets.only(bottom: 8, top: 5),
      decoration: BoxDecoration(
        color: const Color(0xFFE84381),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 5),
            spreadRadius: 3,
            blurRadius: 10,
            color: Colors.black12,
          ), // to add shadow to container
        ],
      ),
      child: Center(
        child: Text('View Details',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
                fontSize: 16,
                color: Colors.white)),
      ),
    );
  }
}
