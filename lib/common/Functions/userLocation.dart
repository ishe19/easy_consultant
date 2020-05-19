import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class UserLocation{
  ///method for getting current device location
  ///it returns a model containing the complete address, latitude and longitude coordinates
  static Future<Location> getUserLocation() async {
    Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    await Geolocator().placemarkFromCoordinates(position.latitude, position.longitude);
    List<Placemark> placeMarks = await Geolocator().placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark placeMark = placeMarks[0];
    String completeAddress = '${placeMark.subThoroughfare} ${placeMark.thoroughfare}, ${placeMark.subLocality} ${placeMark.locality}, ${placeMark.subAdministrativeArea}, ${placeMark.administrativeArea} ${placeMark.postalCode}, ${placeMark.country}';
    ///lat coordinate as string
    String latCoordinate = position.latitude.toString();
    ///long coordinate as string
    String longCoordinate = position.longitude.toString();
    ///the below print methods are for testing purposes
    ///they print the complete address, latitude and longitude coordinates
    ///in the logcat
    debugPrint(completeAddress);
    debugPrint(latCoordinate);
    debugPrint(longCoordinate);
    var location = Location(completeAddress, latCoordinate, longCoordinate);
    return location;
  }
}

class Location{
  final String completeAddress;
  final String latCoordinate;
  final String longCoordinate;

  Location(this.completeAddress, this.latCoordinate, this.longCoordinate);
}