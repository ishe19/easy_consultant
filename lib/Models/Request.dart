//class Request {
//
//  String id;
//  String artisan;
//  String date;
//  String status;
//  String reply;
//  String message;
//
//  Request(this.artisan, this.status,{this.message,this.date,this.id,this.reply});
//
//
//}




class Charges {
  int requestResponseChargeId;
  String charge;
  String chargeDescription;
  double price;
  String currency;
  int requestResponseId;

  Charges(
      {this.requestResponseChargeId,
        this.charge,
        this.chargeDescription,
        this.price,
        this.currency,
        this.requestResponseId});

  Charges.fromJson(Map<String, dynamic> json) {
    requestResponseChargeId = json['requestResponseChargeId'];
    charge = json['charge'];
    chargeDescription = json['chargeDescription'];
    price = json['price'];
    currency = json['currency'];
    requestResponseId = json['requestResponseId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['requestResponseChargeId'] = this.requestResponseChargeId;
    data['charge'] = this.charge;
    data['chargeDescription'] = this.chargeDescription;
    data['price'] = this.price;
    data['currency'] = this.currency;
    data['requestResponseId'] = this.requestResponseId;
    return data;
  }
}




//class RequestResponse {
//  int requestResponseId;
//  int artisanId;
//  String remark;
//  int estimatedTime;
//  String dateResponded;
//  List<Charges> charges;
//  int requestId;
//
//  RequestResponse(
//      {this.requestResponseId,
//        this.artisanId,
//        this.remark,
//        this.estimatedTime,
//        this.dateResponded,
//        this.charges,
//        this.requestId});
//
//  RequestResponse.fromJson(Map<String, dynamic> json) {
//    requestResponseId = json['requestResponseId'];
//    artisanId = json['artisanId'];
//    remark = json['remark'];
//    estimatedTime = json['estimatedTime'];
//    dateResponded = json['dateResponded'];
//    if (json['charges'] != null) {
//      charges = new List<Charges>();
//      json['charges'].forEach((v) {
//        charges.add(new Charges.fromJson(v));
//      });
//    }
//    requestId = json['requestId'];
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['requestResponseId'] = this.requestResponseId;
//    data['artisanId'] = this.artisanId;
//    data['remark'] = this.remark;
//    data['estimatedTime'] = this.estimatedTime;
//    data['dateResponded'] = this.dateResponded;
//    if (this.charges != null) {
//      data['charges'] = this.charges.map((v) => v.toJson()).toList();
//    }
//    data['requestId'] = this.requestId;
//    return data;
//  }
//}

// To parse this JSON data, do
//
//     final request = requestFromJson(jsonString);

class RequestResponse {
  int requestResponseId;
  int artisanId;
  String artisanShortName;
  String remark;
  int estimatedTime;
  String dateResponded;
  List<Charges> charges;
  int requestId;

  RequestResponse(
      {this.requestResponseId,
        this.artisanId,
        this.artisanShortName,
        this.remark,
        this.estimatedTime,
        this.dateResponded,
        this.charges,
        this.requestId});

  RequestResponse.fromJson(Map<String, dynamic> json) {
    requestResponseId = json['requestResponseId'];
    artisanId = json['artisanId'];
    artisanShortName = json['artisanShortName'];
    remark = json['remark'];
    estimatedTime = json['estimatedTime'];
    dateResponded = json['dateResponded'];
    if (json['charges'] != null) {
      charges = new List<Charges>();
      json['charges'].forEach((v) {
        charges.add(new Charges.fromJson(v));
      });
    }
    requestId = json['requestId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['requestResponseId'] = this.requestResponseId;
    data['artisanId'] = this.artisanId;
    data['artisanShortName'] = this.artisanShortName;
    data['remark'] = this.remark;
    data['estimatedTime'] = this.estimatedTime;
    data['dateResponded'] = this.dateResponded;
    if (this.charges != null) {
      data['charges'] = this.charges.map((v) => v.toJson()).toList();
    }
    data['requestId'] = this.requestId;
    return data;
  }
}





class Request {
  int requestId;
  String reference;
  int requestType;
  int userId;
  String userShortName;
  int userCarId;
  String userCarShortName;
  String remarks;
  String faultyAreas;
  List<Artisan> artisans;
  DateTime dateAdded;
  int status;
  String location;
  int driverDefectId; //todo i dont know this is
  List<RequestResponse> responses;

  Request({
    this.requestId,
    this.reference,
    this.requestType,
    this.userId,
    this.userShortName,
    this.userCarId,
    this.userCarShortName,
    this.remarks,
    this.faultyAreas,
    this.artisans,
    this.dateAdded,
    this.status,
    this.location,
    this.driverDefectId,
    this.responses,
  });

  factory Request.fromJson(Map<String, dynamic> json) => Request(
    requestId: json["requestId"],
    reference: json["reference"],
    requestType: json["requestType"],
    userId: json["userId"],
    userShortName: json["userShortName"],
    userCarId: json["userCarId"],
    userCarShortName: json["userCarShortName"],
    remarks: json["remarks"],
    faultyAreas: json["faultyAreas"],
    artisans: List<Artisan>.from(json["artisans"].map((x) => Artisan.fromJson(x))),
    dateAdded: DateTime.parse(json["dateAdded"]),
    status: json["status"],
    location: json["location"],
    driverDefectId: json["driverDefectId"],
    responses: List<RequestResponse>.from(json["responses"].map((x) => RequestResponse.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "requestId": requestId,
    "reference": reference,
    "requestType": requestType,
    "userId": userId,
    "userShortName": userShortName,
    "userCarId": userCarId,
    "userCarShortName": userCarShortName,
    "remarks": remarks,
    "faultyAreas": faultyAreas,
    "artisans": List<dynamic>.from(artisans.map((x) => x.toJson())),
    "dateAdded": dateAdded.toIso8601String(),
    "status": status,
    "location": location,
    "driverDefectId": driverDefectId,
    "responses": List<dynamic>.from(responses.map((x) => x.toJson())),
  };
}

class Artisan {
  int requestArtisanId;
  int artisanId;
  String artisanShortName;
  int requestId;

  Artisan({
    this.requestArtisanId,
    this.artisanId,
    this.artisanShortName,
    this.requestId,
  });

  factory Artisan.fromJson(Map<String, dynamic> json) => Artisan(
    requestArtisanId: json["requestArtisanId"],
    artisanId: json["artisanId"],
    artisanShortName: json["artisanShortName"],
    requestId: json["requestId"],
  );

  Map<String, dynamic> toJson() => {
    "requestArtisanId": requestArtisanId,
    "artisanId": artisanId,
    "artisanShortName": artisanShortName,
    "requestId": requestId,
  };
}





