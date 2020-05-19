
import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

//class ArtisanCard extends StatelessWidget {
//  UserModel artisan;
//
//  ArtisanCard({@required this.artisan});
//
//  @override
//  Widget build(BuildContext context) {
//    return artisanCard(context, artisan);
//  }
//
//  Widget artisanCard(BuildContext context, UserModel artisan) {
//    String tempSpecialty = "";
//    String brands = "";
//
//    artisan.specialties.forEach((specialty) {
//      tempSpecialty += specialty.area + ", ";
//    });
//    artisan.artisanBrands.forEach((brand) {
//      brands += brand.make + ", ";
//    });
//
//    return Padding(
//      padding: const EdgeInsets.all(8.0),
//      child: Card(
//        elevation: 3,
//        child: Row(
//          children: <Widget>[
//            Container(
//
//              child: PNetworkImage(
//                artisan.image,
//                fit: BoxFit.cover,
//                height: 125,
//                width: 110,
//              ),
//            ),
//            Expanded(
//              child: Padding(
//                padding: const EdgeInsets.all(8.0),
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  children: <Widget>[
//                    Text(
//                      artisan.firstName+" "+artisan.lastName,
//                      style: TextStyle(
//                          color: Colors.deepOrange,
//                          fontWeight: FontWeight.w700,
//                          fontSize: 17),
//                    ),
//
//                    Text(
//                      tempSpecialty,
//                      style: TextStyle(fontSize: 14, color: Colors.black87),
//                      maxLines: 3,
//                    ),
//                    Text(
//                      brands,
//                      style: TextStyle(fontSize: 14, color: Colors.black87),
//                      maxLines: 3,
//                    ),
//
//                    Text(
//                      artisan.addresses[0].cty,
//                      style: TextStyle(fontSize: 14, color: Colors.blue),
//                    ),
//                    SizedBox(
//                      height: 10,
//                    ),
////
//                    ///Generates Rating Stars
//                    Align(
//                      alignment: Alignment.centerLeft,
//                      child: RatingBar.readOnly(
//                        filledIcon: Icons.star,
//                        emptyIcon: Icons.star,
//                        initialRating: artisan.rating.toDouble(),
//                        isHalfAllowed: true,
//                        halfFilledIcon: Icons.star_half,
//                        filledColor: Colors.amber,
//                        emptyColor: Colors.grey,
//                        size: 20,
//                        maxRating: 5,
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//class RequesterCard extends StatelessWidget {
//  final Request _request;
//
//  RequesterCard(this._request);
//
//  @override
//  Widget build(BuildContext context) {
//    return artisanRequestCard(context, _request);
//  }
//
//  Widget artisanRequestCard(BuildContext context, Request request) {
//    String tempSpecialty = "";
//    String brands = "";
//
//    return Padding(
//      padding: const EdgeInsets.all(8.0),
//      child: Card(
//        elevation: 3,
//        child: Row(
//          children: <Widget>[
//            Container(
//              child: PNetworkImage(
//                TestData.image,
//                fit: BoxFit.cover,
//                height: 125,
//                width: 110,
//              ),
//            ),
//            Expanded(
//              child: Padding(
//                padding: const EdgeInsets.all(8.0),
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  children: <Widget>[
//                    Text(
//                      request.userShortName,
//                      style: TextStyle(
//                          color: Colors.deepOrange,
//                          fontWeight: FontWeight.w700,
//                          fontSize: 17),
//                    ),
//
//                    Text(
//                      request.location,
//                      style: TextStyle(fontSize: 14, color: Colors.black87),
//                      maxLines: 3,
//                    ),
//                    Text(
//                      request.faultyAreas,
//                      style: TextStyle(fontSize: 14, color: Colors.black87),
//                      maxLines: 3,
//                    ),
//
//                    Text(
//                      request.userCarShortName,
//                      style: TextStyle(fontSize: 14, color: Colors.blue),
//                    ),
//                    SizedBox(
//                      height: 10,
//                    ),
////
//                    ///Generates Rating Stars
//
////
//                  ],
//                ),
//              ),
//            )
//          ],
//        ),
//      ),
//    );
//  }
//
//}


