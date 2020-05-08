import 'package:flutter/material.dart';
import 'widgets.dart';

class ProPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          children: [
            Positioned(
              top: 150.0,
              right: 100.0,
              child: Container(
                child: Column(
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
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                          'Meet the Predator - an enduro bike that\'ll recalibrate \nexpectations of whats\'s possible on a mountain bike. Built \naround a chassis crafted from premium carbon. It\'s an \n extraordinarily race-capable all-hain stays, ahead tube \ndesigned around a 160mm fork and a steep 75.5-degree seat \nangle for agile handling and efficient climbing are all part \nof the package.',
                          style: TextStyle(fontSize: 18.0)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Item(
                            data: 'Fox 36 Float Fit',
                            icon2: Icons.ac_unit,
                          ),
                          SizedBox(width: 150),
                          Item(
                            data: 'Fox Float X2',
                            icon2: Icons.ac_unit,
                          )
                        ]),
                        Row(
                          children: [
                            Item(
                              data: 'SRAM G2 RSC',
                              icon2: Icons.ac_unit,
                            ),
                            SizedBox(width: 160),
                            Item(
                              data: 'Total Weight 12 Kg',
                              icon2: Icons.ac_unit,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 35,
              bottom: 35,
              child: FloatingActionButton.extended(
                backgroundColor: Colors.deepOrangeAccent,
                onPressed: null,
                label: Row(
                  children: [
                    Icon(
                      Icons.add,
                      size: 15.0,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('To basket'),
                  ],
                ),
              ),
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/cy.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(40.0),
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width / 2,
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
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width / 2,
        ),
        Positioned(
          left: 110.0,
          child: Image.asset(
            'assets/images/by2.png',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width / 2,
          ),
        ),
        Positioned(
          right: 835,
          bottom: 35,
          child: Text(
            r'$1799',
            style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Poppins-Black.ttf'),
          ),
        ),
        Container(
          height: 200,
          color: Colors.transparent,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Ib(
                          icon: Icons.arrow_back,
                          size: 30.0,
                        ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            'Mountain \nBikes',
                            style: TextStyle(
                              fontSize: 40.0,
                            ),
                          ),
                        )
                      ]),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
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
    );
  }
}
