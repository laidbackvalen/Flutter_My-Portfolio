import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const PortfolioMain());
}

class PortfolioMain extends StatelessWidget {
  const PortfolioMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                     // color: Colors.amber,
                    width: 100,
                    height: 50,
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(left: 15),
                    // width: double.infinity,
                    child: SvgPicture.asset('assets/images/menuu.svg', width: 35,),
                  ),
                  Container(
                    height: 40,
                    width: 150,
                      margin: const EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20), // Rounded corners
                      ),
                    child: Row(
                        children: [
                          Container(
                             padding: const EdgeInsets.only(left: 25),
                              child: SvgPicture.asset('assets/images/bell.svg',
                                width: 30, // Adjust as needed
                                height: 20, // Adjust as needed
                              ),
                            ),
                          const SizedBox(width: 20,),
                          const Text('Follow',
                            style: TextStyle(fontSize: 16, // Adjust as needed
                              color: Colors.black, // Text color
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                  ),
                ],
              ),
            ),
            Container(
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 50),
                      // color: Colors.amberAccent,
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(100.0),
                        ),
                        child: Image.asset('assets/images/valen.png'),
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Add some spacing between the image and text
                    const Text(
                      'Valen Patel',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'HindVadodara',
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(
                      width: 250,
                      child: Center(
                        child: Text(
                          'Android Developer | Java | Kotlin | Firebase | SQLite | Rest API | UI/UX',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Align(alignment: Alignment.center),
                          SvgPicture.asset('assets/images/instag.svg'),
                          const SizedBox(width: 12),
                          SvgPicture.asset(
                            'assets/images/whatsapp.svg',
                            width: 30,
                            height: 30,
                          ),
                          const SizedBox(width: 12),
                          SvgPicture.asset('assets/images/facebook.svg'),
                          const SizedBox(width: 12),
                          SvgPicture.asset(
                            'assets/images/github.svg',
                            width: 25,
                            height: 25,
                          ),
                          const SizedBox(width: 12),
                          SvgPicture.asset(
                            'assets/images/linkedin.svg',
                            width: 30,
                            height: 30,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
