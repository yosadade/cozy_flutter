import 'package:cozy/models/city.dart';
import 'package:cozy/models/space.dart';
import 'package:cozy/models/tips.dart';
// import 'package:cozy/provider/space_provider.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widgets/bottom_navbar_item.dart';
import 'package:cozy/widgets/city_card.dart';
import 'package:cozy/widgets/space_cart.dart';
import 'package:cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var spaceProvider = Provider.of<SpaceProvider>(context);
    // spaceProvider.getRecommendedSpace();

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(children: [
          SizedBox(height: edge),
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
                    id: 2,
                    imgUrl: 'assets/city2.png',
                    name: 'Bandung',
                    isPopular: true)),
                SizedBox(width: 20),
                CityCard(City(
                    id: 3,
                    imgUrl: 'assets/city3.png',
                    name: 'Surabaya',
                    isPopular: false)),
                SizedBox(width: 24),
                CityCard(City(
                    id: 4,
                    imgUrl: 'assets/city4.png',
                    name: 'Palembang',
                    isPopular: false)),
                SizedBox(width: 24),
                CityCard(City(
                    id: 5,
                    imgUrl: 'assets/city5.png',
                    name: 'Aceh',
                    isPopular: true)),
                SizedBox(width: 24),
                CityCard(City(
                    id: 6,
                    imgUrl: 'assets/city6.png',
                    name: 'Bogor',
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
                    rating: 4,
                    address: '',
                    mapUrl: '',
                    // numberOfBadrooms: 0,
                    // numberOfCupboards: 0,
                    // numberOfKitchens: 0,
                    phone: '',
                    photos: [])),
                SizedBox(height: 30),
                SpaceCard(Space(
                    id: 2,
                    name: 'Roemah Nenek',
                    imageUrl: 'assets/space2.png',
                    price: 11,
                    city: 'Seattle',
                    country: 'United State',
                    rating: 5,
                    address: '',
                    mapUrl: '',
                    // numberOfBadrooms: 0,
                    // numberOfCupboards: 0,
                    // numberOfKitchens: 0,
                    phone: '',
                    photos: [])),
                SizedBox(height: 30),
                SpaceCard(Space(
                    id: 3,
                    name: 'Darrling How',
                    imageUrl: 'assets/space3.png',
                    price: 20,
                    city: 'Jakarta',
                    country: 'Indonesia',
                    rating: 3,
                    address: '',
                    mapUrl: '',
                    // numberOfBadrooms: 0,
                    // numberOfCupboards: 0,
                    // numberOfKitchens: 0,
                    phone: '',
                    photos: [])),
                SizedBox(height: 30),
                SpaceCard(Space(
                    id: 4,
                    name: 'Orang Crown',
                    imageUrl: 'assets/space4.png',
                    price: 20,
                    city: 'Padang',
                    country: 'Indonesia',
                    rating: 3,
                    address: '',
                    mapUrl: '',
                    // numberOfBadrooms: 0,
                    // numberOfCupboards: 0,
                    // numberOfKitchens: 0,
                    phone: '',
                    photos: [])),
                SizedBox(height: 30),
                SpaceCard(Space(
                    id: 5,
                    name: 'City of Cactus',
                    imageUrl: 'assets/space5.png',
                    price: 20,
                    city: 'Jakarta',
                    country: 'Indonesia',
                    rating: 3,
                    address: '',
                    mapUrl: '',
                    // numberOfBadrooms: 0,
                    // numberOfCupboards: 0,
                    // numberOfKitchens: 0,
                    phone: '',
                    photos: [])),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text('Tips & Guidance',
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
                TipsCard(Tips(
                  id: 1,
                  name: 'City Guidelines',
                  imgUrl: 'assets/tips1.png',
                  updateAt: '20 Apr',
                )),
                SizedBox(height: 20),
                TipsCard(Tips(
                  id: 1,
                  name: 'Jakarta Fairship',
                  imgUrl: 'assets/tips2.png',
                  updateAt: '11 Dec',
                )),
                SizedBox(height: 20),
              ],
            ),
          ),
          SizedBox(height: 50 + edge),
        ]),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
            color: Color(0xffF6F7F8), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
                imageUrl: 'assets/icon_home_solid.png', isActive: true),
            BottomNavbarItem(
                imageUrl: 'assets/icon_card_solid.png', isActive: false),
            BottomNavbarItem(
                imageUrl: 'assets/icon_love_solid.png', isActive: false),
            BottomNavbarItem(
                imageUrl: 'assets/icon_mail_solid.png', isActive: false),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
