import 'package:flutter/material.dart';
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
      body: Container(
        // double color backgound effect
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(49, 49, 49, 1),
              Color.fromARGB(255, 232, 232, 232)
            ],
            stops: [0.4, 0.0],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              // body content.
              child: Column(children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Location",
                          textAlign: TextAlign.end,
                          style: GoogleFonts.sora(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Bilzen, Tanjungbalai",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.sora(
                            color: Colors.white70,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    Image.asset('lib/images/Image.png')
                  ],
                ),
                const SizedBox(height: 25),
                SizedBox(
                  height: 60,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(198, 124, 78, 100),
                          ),
                          child: const Icon(
                            Icons.analytics_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      fillColor: const Color.fromARGB(143, 111, 111, 111),
                      filled: true,
                      hintText: "Search Coffee",
                      prefixIcon: const Icon(Icons.search),
                      prefixIconColor: Colors.white,
                      hintStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(143, 111, 111, 111)),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(143, 111, 111, 111))),
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                          image: AssetImage('lib/images/coffee_promo.png'),
                          fit: BoxFit.fill)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 210, 81, 72),
                              borderRadius: BorderRadius.circular(6.0)),
                          child: Text("Testando",
                              style: GoogleFonts.sora(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Buy onde get \none FREE",
                          style: GoogleFonts.sora(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 30,
                              backgroundColor: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                        padding: const EdgeInsets.only(right: 7),
                        child: Container(
                          padding: const EdgeInsets.all(9),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                          child: Text(
                            "Cappuccino",
                            style: GoogleFonts.sora(
                                fontWeight: FontWeight.w700, fontSize: 15),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 7),
                        child: Container(
                          padding: const EdgeInsets.all(9),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                          child: Text(
                            "Machiato",
                            style: GoogleFonts.sora(
                                fontWeight: FontWeight.w700, fontSize: 15),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 7),
                        child: Container(
                          padding: const EdgeInsets.all(9),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                          child: Text(
                            "Latte",
                            style: GoogleFonts.sora(
                                fontWeight: FontWeight.w700, fontSize: 15),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 7),
                        child: Container(
                          padding: const EdgeInsets.all(9),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                          child: Text(
                            "Americano",
                            style: GoogleFonts.sora(
                                fontWeight: FontWeight.w700, fontSize: 15),
                          ),
                        ),
                      ),
                      ],
                    )
                    )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
