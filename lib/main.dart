import 'package:flutter/material.dart';

void main() {
  runApp(HotelHome());
}

class HotelHome extends StatelessWidget {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.pink,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                backgroundColor: Colors.lightGreen,
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border_rounded,
                ),
                label: 'Favorites'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings")
          ],
          currentIndex: selectedIndex,
        ),
        body: ListView(
          children: [
            Stack(children: [
              Container(
                child: Image(
                    image: AssetImage(
                        "assets/wingback-chair-modern-industrial-bedroom.jpg")),
              ),
              Positioned(
                  top: 20,
                  left: 250,
                  child: Text(
                    "DETAIL",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
              Positioned(
                bottom: 10,
                left: 10,
                child: Container(
                  width: 120,
                  height: 25,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      "8.4/85 reviews",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 40,
                child: Text(
                  "  Crowne Plaza\n  Kochi, Kerala",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Positioned(
                  right: 20,
                  bottom: 10,
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white,
                    size: 25,
                  ))
            ]),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.star,
                  color: Colors.pink,
                ),
                Icon(
                  Icons.star,
                  color: Colors.pink,
                ),
                Icon(
                  Icons.star,
                  color: Colors.pink,
                ),
                Icon(
                  Icons.star,
                  color: Colors.pink,
                ),
                Icon(
                  Icons.star_border_outlined,
                  color: Colors.pink,
                ),
                SizedBox(
                  width: 250,
                ),
                Text(
                  "\$ 200",
                  style: TextStyle(
                      color: Colors.pink,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 29,
                ),
                Icon(
                  Icons.location_on,
                  size: 18,
                  color: Colors.grey,
                ),
                Text(
                  "8 km to LuluMall",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(
                  width: 260,
                ),
                Text(
                  "/per night",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 55,
                    onPressed: () {},
                    color: Colors.pink,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      "Book Now",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  "       DESCRIPTION",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(padding:EdgeInsets.only(left: 10,right: 10) ,
              margin: EdgeInsets.all(20),

              child: Text(
                  'Crown Plaza kochi,Kerala, is an ideal staying place for both the professional and leisure travelers from across the world. It is placed amidst exotic surroundings that comprised of alluring attractions of the city. The hotel is blessed with excellent accommodation arrangements in the presence of fully furnished rooms and suites. The staying facilities are majestically complimented by the traditional Indian hospitality at this five-star property. Moreover, the extensive premises of the hotel consist of excellent arrangements for business and personal events.\n\nCrowne Plaza Kochi, Kerala'),
            )
          ],
        ),
      ),
    );
  }
}
