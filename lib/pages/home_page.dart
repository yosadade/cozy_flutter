import 'package:cozy/models/space.dart';
import 'package:cozy/pages/city.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widgets/city_card.dart';
import 'package:cozy/widgets/space_cart.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: edge,
        ),
        child: ListView(children: [
          // NOTE : TITLE/HEADER
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text('Explore Now',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                )),
          ),
          SizedBox(height: 2),
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text('Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                )),
          ),
          SizedBox(height: 30),
          // NOTE : POPULAR CITIES
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text('Popular Cities',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                )),
          ),
          SizedBox(height: 16),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 24),
                CityCard(City(
                    id: 1,
                    imgUrl: 'assets/city1.png',
                    name: 'Jakarta',
                    isPopular: false)),
                SizedBox(width: 20),
                CityCard(City(
                    id: 1,
                    imgUrl: 'assets/city2.png',
                    name: 'Bandung',
                    isPopular: true)),
                SizedBox(width: 20),
                CityCard(City(
                    id: 1,
                    imgUrl: 'assets/city3.png',
                    name: 'Surabaya',
                    isPopular: false)),
                SizedBox(width: 24),
              ],
            ),
          ),
          // Note : recommended space
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text('Recommended Space',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                )),
          ),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: edge,
            ),
            child: Column(
              children: [
                SpaceCard(Space(
                    id: 1,
                    name: 'Kuratakeso Hott',
                    imageUrl: 'assets/space1.png',
                    price: 52,
                    city: 'Bandung',
                    country: 'Germany',
                    rating: 4)),
                SizedBox(height: 30),
                SpaceCard(Space(
                    id: 1,
                    name: 'Roemah Nenek',
                    imageUrl: 'assets/space2.png',
                    price: 11,
                    city: 'Seattle',
                    country: 'United State',
                    rating: 5)),
                SizedBox(height: 30),
                SpaceCard(Space(
                    id: 1,
                    name: 'Darrling How',
                    imageUrl: 'assets/space3.png',
                    price: 20,
                    city: 'Jakarta',
                    country: 'Indonesia',
                    rating: 4)),
              ],
            ),
          )
        ]),
      ),
    ));
  }
}
