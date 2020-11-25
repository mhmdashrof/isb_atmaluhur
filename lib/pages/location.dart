import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:isb_atmaluhur/widgets/card.dart';
import 'package:isb_atmaluhur/widgets/listitem.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 10.0,
                bottom: 20.0,
              ),
              child: Text(
                'Where are you\nGoing ?',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width - 20.0,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Feather.search,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Flexible(
                    child: Theme(
                      data: ThemeData(primaryColor: Colors.black),
                      child: TextField(
                        cursorColor: Theme.of(context).accentColor,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Search for a trip',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Flexible(
              child: Container(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 265.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            physics: AlwaysScrollableScrollPhysics(),
                            children: <Widget>[
                              ListItems(
                                  imgPath: 'assets/img/country/Lengkuas.jpg',
                                  country: 'Lengkuas',
                                  place: 'Bangka Belitung'),
                              ListItems(
                                  imgPath: 'assets/img/country/Parai.jpg',
                                  country: 'Parai',
                                  place: 'Bangka Belitung'),
                              ListItems(
                                  imgPath: 'assets/img/country/Pasirpadi.jpg',
                                  country: 'Pasir Padi',
                                  place: 'Bangka Belitung'),
                              ListItems(
                                  imgPath: 'assets/img/country/Memperak.jpg',
                                  country: 'Memperak',
                                  place: 'Bangka Belitung'),
                              ListItems(
                                  imgPath: 'assets/img/country/Menumbing.jpg',
                                  country: 'Menumbing',
                                  place: 'Bangka Belitung'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 15.0, top: 5.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'All Trips',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'More ',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CardItem(
                            imgPath: 'assets/img/country/LabuanBajo.jpg',
                            place: 'Labuan Bajo',
                            price: '-',
                            country: 'Indonesia'),
                        Divider(),
                        CardItem(
                            imgPath: 'assets/img/country/Dewata.jpg',
                            place: 'Dewata Bali',
                            price: '-',
                            country: 'Indonesia'),
                        Divider(),
                        CardItem(
                            imgPath: 'assets/img/country/Toba.jpg',
                            place: 'Danau Toba',
                            price: '-',
                            country: 'Indonesia'),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
