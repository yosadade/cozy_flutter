import 'package:cozy/theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:cozy/widgets/facility_item.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw (url);
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset('assets/thumbnail.png',
                width: MediaQuery.of(context).size.width,
                height: 350,
                fit: BoxFit.cover),
            ListView(
              children: [
                SizedBox(height: 328),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                      color: whiteColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      // NOTE: TITLE
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Kuretakeso Hott',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 22,
                                    )),
                                SizedBox(height: 2),
                                Text.rich(TextSpan(
                                    text: '\$52',
                                    style:
                                        purpleTextStyle.copyWith(fontSize: 16),
                                    children: [
                                      TextSpan(
                                          text: ' /month',
                                          style: greyTextStyle.copyWith(
                                              fontSize: 16))
                                    ])),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset('assets/icon_star.png', width: 20),
                                SizedBox(width: 2),
                                Image.asset('assets/icon_star.png', width: 20),
                                SizedBox(width: 2),
                                Image.asset('assets/icon_star.png', width: 20),
                                SizedBox(width: 2),
                                Image.asset('assets/icon_star.png', width: 20),
                                SizedBox(width: 2),
                                Image.asset('assets/icon_star.png', width: 20),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // NOTE: MAIN FACILITIES
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text('Main Facilities',
                            style: regularTextStyle.copyWith(
                              fontSize: 16,
                            )),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FacilityItem(
                                name: 'kitchen',
                                imageUrl: 'assets/icon_kitchen.png',
                                total: 2),
                            FacilityItem(
                                name: 'bedroom',
                                imageUrl: 'assets/icon_bedroom.png',
                                total: 3),
                            FacilityItem(
                                name: 'big lemari',
                                imageUrl: 'assets/icon_lemari.png',
                                total: 3),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      // NOTE: PHOTO
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text('Photos',
                            style: regularTextStyle.copyWith(
                              fontSize: 16,
                            )),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                          height: 88,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                SizedBox(width: edge),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets/photo1.png',
                                      width: 110,
                                      height: 88,
                                      fit: BoxFit.cover),
                                ),
                                SizedBox(width: 18),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets/photo2.png',
                                      width: 110,
                                      height: 88,
                                      fit: BoxFit.cover),
                                ),
                                SizedBox(width: 18),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets/photo3.png',
                                      width: 110,
                                      height: 88,
                                      fit: BoxFit.cover),
                                ),
                                SizedBox(width: edge),
                              ]))
                    ],
                  ),
                ),
                SizedBox(height: 30),
                //NOTE LOCATION
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text('Location',
                      style: regularTextStyle.copyWith(
                        fontSize: 16,
                      )),
                ),
                SizedBox(width: 6),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Jln. Kappan Sukses No. 20\nPalembang',
                            style: greyTextStyle),
                        InkWell(
                            onTap: () {
                              launchUrl(
                                  'https://www.google.co.id/maps/@-6.2023338,106.7994117,16z?hl=id');
                            },
                            child: Image.asset('assets/btn_map.png', width: 40))
                      ]),
                ),
                SizedBox(height: 40),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: edge,
                  ),
                  height: 50,
                  width: MediaQuery.of(context).size.width - (2 * edge),
                  child: ElevatedButton(
                    onPressed: () {
                      launchUrl('tel:+6288233123240');
                    },
                    style: ElevatedButton.styleFrom(
                        primary: purpleColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17))),
                    child: Text('Book Now',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                        )),
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: edge),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset('assets/btn_back.png', width: 40)),
                  Image.asset('assets/btn_wishlist.png', width: 40)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
