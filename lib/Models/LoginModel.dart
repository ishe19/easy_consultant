

import 'package:easy_consult/Models/RegisterModel.dart';

class LoginModel {

  Device device;
  String phoneNumber;
  String password;

  LoginModel({this.device, this.phoneNumber, this.password});

  LoginModel.fromJson(Map<String, dynamic> json) {
    device =
    json['device'] != null ? new Device.fromJson(json['device']) : null;
    phoneNumber = json['phoneNumber'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.device != null) {
      data['device'] = this.device.toJson();
    }
    data['phoneNumber'] = this.phoneNumber;
    data['password'] = this.password;
    return data;
  }

  @override
  String toString() {
    return 'LoginModel{device: $device, phoneNumber: $phoneNumber, password: $password}';
  }
}

