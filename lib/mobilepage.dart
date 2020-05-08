import 'package:flutter/material.dart';
import 'widgets.dart';

class MobilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text('Mountain Predator',
                            style: TextStyle(
                              fontSize: 60.0,
                            )),
                      ),
                    ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/cy.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(40.0),
              ),
              height: 900,
              width: 900,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xffEE5E0C).withOpacity(0.9),
                    Color(0xffFF8F35).withOpacity(0.9)
                  ],
                ),
                borderRadius: BorderRadius.circular(40.0),
              ),
              height: 900,
              width: 900,
            ),
            Image.asset(
              'assets/images/by2.png',
              height: 900,
              width: 900,
            ),
            Positioned(
              right: 35,
              bottom: 100,
              child: Text(
                r'$1799',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'Poppins-Black.ttf'),
              ),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Mountain \nBikes',
                style: TextStyle(
                  fontSize: 40.0,
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xffFF8F35),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.transparent,
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Fbu(word: 'Bikes'),
                                Fbu(word: 'Parts'),
                                Fbu(word: 'Delivery'),
                                Fbu(word: 'Contact'),
                                Ib(icon: Icons.search, size: 20.0),
                                GestureDetector(
                                  child: Image.asset(
                                    'assets/images/iy.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                  onTap: null,
                                )
                              ]),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
