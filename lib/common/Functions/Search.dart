
import 'package:flutter/material.dart';


//class ArtisanSearch extends SearchDelegate <List<UserModel>> {
//
//  List<UserModel> artisans;
//  List<UserModel> updatedArtisans = [];
//  ArtisanSearch(this.artisans);
//
//  @override
//  List<Widget> buildActions(BuildContext context) {
//    // TODO: implement buildActions
//    return [
//      IconButton(icon: Icon(Icons.clear), onPressed: (){
//        query = '';
//      })
//    ];
//  }
//
//  @override
//  Widget buildLeading(BuildContext context) {
//    // TODO: implement buildLeading
//    return IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
//      close(context, artisans);
//    });
//  }
//
//  @override
//  Widget buildResults(BuildContext context)  {
//    _updateList();
//    // TODO: implement buildResults
//    return Container(
//
//    );
//
//  }
//
//  @override
//  Widget buildSuggestions(BuildContext context) {
//    // TODO: implement buildSuggestions
//    return (query.length >= 2)? _buildResults() : Container(
//      child: Center(child: Text("No Results")),
//    );
//  }
//
//
//  Widget _buildResults (){
//    return ListView.builder(
//        itemCount: artisans.length,
//        physics: BouncingScrollPhysics(),
//        scrollDirection: Axis.vertical,
//        itemBuilder: (BuildContext context, int index) {
//
//          ///Extract Lists from Brands and Speciality lists and convert them to Strings for easy Searching
//          String tempSpecialty = "";
//          String brands = "";
//
//          artisans[index].specialties.forEach((specialty) {
//            tempSpecialty += specialty.area + ", ";
//          });
//          artisans[index].artisanBrands.forEach((brand) {
//            brands += brand.make + ", ";
//          });
//
//          artisans[index].addresses.forEach((address) {
//            brands += address.cty + ", ";
//          });
//
//
//          return artisans[index].firstName.toLowerCase().contains(query.toLowerCase())
//              ||
//              artisans[index].lastName.toLowerCase().contains(query.toLowerCase())
//              ||
//              brands.toLowerCase().contains(query.toLowerCase())
//              ||
//              tempSpecialty.toLowerCase().contains(query.toLowerCase())?
//          InkWell(
//              onTap: () {
//                Navigator.push(context, MaterialPageRoute(builder: (context) => ArtisanPage(artisans[index], searchList: artisans)));
//                close(context, artisans);
//              },
//              child: ArtisanCard(artisan: artisans[index])): Container(
//
//          );
//        }
//
//    );
//  }
//
//  void _updateList (){
//    updatedArtisans = artisans.where((artisan) {
//      ///Extract Lists from Brands and Speciality lists and convert them to Strings for easy Searching
//      String tempSpecialty = "";
//      String brands = "";
//
//      artisan.specialties.forEach((specialty) {
//        tempSpecialty += specialty.area + ", ";
//      });
//      artisan.artisanBrands.forEach((brand) {
//        brands += brand.make + ", ";
//      });
//
//      artisan.addresses.forEach((address) {
//        brands += address.cty + ", ";
//      });
//      return artisan.firstName.toLowerCase().contains(query.toLowerCase())
//          ||
//          artisan.lastName.toLowerCase().contains(query.toLowerCase())
//          ||
//          brands.toLowerCase().contains(query.toLowerCase())
//          ||
//          tempSpecialty.toLowerCase().contains(query.toLowerCase());
//    }).toList();
//  }
//
//  tempFunction(BuildContext context){
//    close(context, updatedArtisans);
//  }
//
//}
//
//class RequestSearch extends SearchDelegate {
//
//  @override
//  List<Widget> buildActions(BuildContext context) {
//    // TODO: implement buildActions
//    return [
//      IconButton(icon: Icon(Icons.clear), onPressed: (){
//        query = '';
//      })
//    ];
//  }
//
//  @override
//  Widget buildLeading(BuildContext context) {
//    // TODO: implement buildLeading
//    return IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
//      close(context, null);
//    });
//  }
//
//  @override
//  Widget buildResults(BuildContext context) {
//    // TODO: implement buildResults
//    return Container(
//
//    );
//  }
//
//  @override
//  Widget buildSuggestions(BuildContext context) {
//    // TODO: implement buildSuggestions
//    return Container(
//      child: Text(query),
//    );
//  }
//
//}
//
//class CreateRequestSearch extends SearchDelegate <UserModel> {
//  ///Todo Delete After for testing only
//  List<UserModel> artisans;
//  CreateRequestSearch(this.artisans);
//
//  @override
//  List<Widget> buildActions(BuildContext context) {
//    // TODO: implement buildActions
//    return [
//      IconButton(icon: Icon(Icons.clear), onPressed: (){
//        query = '';
//      })
//    ];
//  }
//
//  @override
//  Widget buildLeading(BuildContext context) {
//    // TODO: implement buildLeading
//    return IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
//      close(context, null);
//    });
//  }
//
//  @override
//  Widget buildResults(BuildContext context) {
//    // TODO: implement buildResults
//    return _buildResults();
//  }
//
//  @override
//  Widget buildSuggestions(BuildContext context) {
//    // TODO: implement buildSuggestions
//    return (query.length >= 2)? _buildResults() : ListTile(
//      title: Center(child: Text("No Suggestions !")),
//    ) ;
//  }
//
//  Widget _buildResults (){
//
//    return ListView.builder(
//        itemCount: artisans.length,
//        physics: BouncingScrollPhysics(),
//        scrollDirection: Axis.vertical,
//        itemBuilder: (BuildContext context, int index) {
//
//          ///Extract Lists from Brands and Speciality lists and convert them to Strings for easy Searching
//          String tempSpecialty = "";
//          String brands = "";
//
//          artisans[index].specialties.forEach((specialty) {
//            tempSpecialty += specialty.area + ", ";
//          });
//          artisans[index].artisanBrands.forEach((brand) {
//            brands += brand.make + ", ";
//          });
//
//          artisans[index].addresses.forEach((address) {
//            brands += address.cty + ", ";
//          });
//
//
//          return artisans[index].firstName.toLowerCase().contains(query.toLowerCase())
//              ||
//              artisans[index].lastName.toLowerCase().contains(query.toLowerCase())
//              ||
//              brands.toLowerCase().contains(query.toLowerCase())
//              ||
//              tempSpecialty.toLowerCase().contains(query.toLowerCase())?
//          InkWell(
//              onTap: () {
//                close(context, artisans[index]);
//              },
//              child: ArtisanCard(artisan: artisans[index])): Container(
//
//          );
//        }
//
//    );
//  }
//
//}