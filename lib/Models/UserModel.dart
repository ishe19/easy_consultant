class UserModel {

  int userId;
  List<Addresses> addresses;
  List<Contacts> contacts;
  String firstName;
  String lastName;
  String username;
  String country;
  String nationalId;
  int userProfile;
  int userType;
  List<CompanyUsers> companyUsers;
  List<UserCars> userCars;
  List<ArtisanBrands> artisanBrands;
  List<Specialties> specialties;
  String notes;
  String password;
  String dateJoined;
  String image;
  String lastLocation;
  String lastSeen;
  int rating;

  UserModel(
      {this.userId,
        this.addresses,
        this.contacts,
        this.firstName,
        this.lastName,
        this.username,
        this.country,
        this.nationalId,
        this.userProfile,
        this.userType,
        this.companyUsers,
        this.userCars,
        this.artisanBrands,
        this.specialties,
        this.notes,
        this.password,
        this.dateJoined,
        this.image,
        this.lastLocation,
        this.lastSeen,
        this.rating});

  UserModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    if (json['addresses'] != null) {
      addresses = new List<Addresses>();
      json['addresses'].forEach((v) {
        addresses.add(new Addresses.fromJson(v));
      });
    }
    if (json['contacts'] != null) {
      contacts = new List<Contacts>();
      json['contacts'].forEach((v) {
        contacts.add(new Contacts.fromJson(v));
      });
    }
    firstName = json['firstName'];
    lastName = json['lastName'];
    username = json['username'];
    country = json['country'];
    nationalId = json['nationalId'];
    userProfile = json['userProfile'];
    userType = json['userType'];
    if (json['companyUsers'] != null) {
      companyUsers = new List<CompanyUsers>();
      json['companyUsers'].forEach((v) {
        companyUsers.add(new CompanyUsers.fromJson(v));
      });
    }
    if (json['userCars'] != null) {
      userCars = new List<UserCars>();
      json['userCars'].forEach((v) {
        userCars.add(new UserCars.fromJson(v));
      });
    }
    if (json['artisanBrands'] != null) {
      artisanBrands = new List<ArtisanBrands>();
      json['artisanBrands'].forEach((v) {
        artisanBrands.add(new ArtisanBrands.fromJson(v));
      });
    }
    if (json['specialties'] != null) {
      specialties = new List<Specialties>();
      json['specialties'].forEach((v) {
        specialties.add(new Specialties.fromJson(v));
      });
    }
    notes = json['notes'];
    password = json['password'];
    dateJoined = json['dateJoined'];
    image = json['image'];
    lastLocation = json['lastLocation'];
    lastSeen = json['lastSeen'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    if (this.addresses != null) {
      data['addresses'] = this.addresses.map((v) => v.toJson()).toList();
    }
    if (this.contacts != null) {
      data['contacts'] = this.contacts.map((v) => v.toJson()).toList();
    }
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['username'] = this.username;
    data['country'] = this.country;
    data['nationalId'] = this.nationalId;
    data['userProfile'] = this.userProfile;
    data['userType'] = this.userType;
    if (this.companyUsers != null) {
      data['companyUsers'] = this.companyUsers.map((v) => v.toJson()).toList();
    }
    if (this.userCars != null) {
      data['userCars'] = this.userCars.map((v) => v.toJson()).toList();
    }
    if (this.artisanBrands != null) {
      data['artisanBrands'] =
          this.artisanBrands.map((v) => v.toJson()).toList();
    }
    if (this.specialties != null) {
      data['specialties'] = this.specialties.map((v) => v.toJson()).toList();
    }
    data['notes'] = this.notes;
    data['password'] = this.password;
    data['dateJoined'] = this.dateJoined;
    data['image'] = this.image;
    data['lastLocation'] = this.lastLocation;
    data['lastSeen'] = this.lastSeen;
    data['rating'] = this.rating;
    return data;
  }

  @override
  String toString() {
    return 'UserModel{userId: $userId, addresses: $addresses, contacts: $contacts, firstName: $firstName, lastName: $lastName, username: $username, country: $country, nationalId: $nationalId, userProfile: $userProfile, userType: $userType, companyUsers: $companyUsers, userCars: $userCars, artisanBrands: $artisanBrands, specialties: $specialties, notes: $notes, password: $password, dateJoined: $dateJoined, image: $image, lastLocation: $lastLocation, lastSeen: $lastSeen, rating: $rating}';
  }
}

class Addresses {
  int addressId;
  int addressType;
  String street;
  String postalCode;
  String cty;
  String countryCode;
  String country;
  String description;
  String gpsLocation;
  int userId;

  Addresses(
      {this.addressId,
        this.addressType,
        this.street,
        this.postalCode,
        this.cty,
        this.countryCode,
        this.country,
        this.description,
        this.gpsLocation,
        this.userId});

  Addresses.fromJson(Map<String, dynamic> json) {
    addressId = json['addressId'];
    addressType = json['addressType'];
    street = json['street'];
    postalCode = json['postalCode'];
    cty = json['cty'];
    countryCode = json['countryCode'];
    country = json['country'];
    description = json['description'];
    gpsLocation = json['gpsLocation'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['addressId'] = this.addressId;
    data['addressType'] = this.addressType;
    data['street'] = this.street;
    data['postalCode'] = this.postalCode;
    data['cty'] = this.cty;
    data['countryCode'] = this.countryCode;
    data['country'] = this.country;
    data['description'] = this.description;
    data['gpsLocation'] = this.gpsLocation;
    data['userId'] = this.userId;
    return data;
  }
}

class Contacts {
  int contactId;
  String contactNumber;
  String notes;
  int userId;
  int contactType;

  Contacts(
      {this.contactId,
        this.contactNumber,
        this.notes,
        this.userId,
        this.contactType});

  Contacts.fromJson(Map<String, dynamic> json) {
    contactId = json['contactId'];
    contactNumber = json['contactNumber'];
    notes = json['notes'];
    userId = json['userId'];
    contactType = json['contactType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['contactId'] = this.contactId;
    data['contactNumber'] = this.contactNumber;
    data['notes'] = this.notes;
    data['userId'] = this.userId;
    data['contactType'] = this.contactType;
    return data;
  }
}

class CompanyUsers {
  int id;
  String firstName;
  String lastName;
  String phoneNumber;
  String emailAddress;
  String nationalId;
  int userType;

  CompanyUsers(
      {this.id,
        this.firstName,
        this.lastName,
        this.phoneNumber,
        this.emailAddress,
        this.nationalId,
        this.userType});

  CompanyUsers.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    phoneNumber = json['phoneNumber'];
    emailAddress = json['emailAddress'];
    nationalId = json['nationalId'];
    userType = json['userType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['phoneNumber'] = this.phoneNumber;
    data['emailAddress'] = this.emailAddress;
    data['nationalId'] = this.nationalId;
    data['userType'] = this.userType;
    return data;
  }
}

class UserCars {
  int id;
  String name;
  String notes;
  String make;
  String model;
  int year;
  String fuel;
  String bodyType;
  String transmission;
  String engineCapacity;
  String regNumber;
  String chasisNumber;
  String engineNumber;

  UserCars(
      {this.id,
        this.name,
        this.notes,
        this.make,
        this.model,
        this.year,
        this.fuel,
        this.bodyType,
        this.transmission,
        this.engineCapacity,
        this.regNumber,
        this.chasisNumber,
        this.engineNumber});

  UserCars.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    notes = json['notes'];
    make = json['make'];
    model = json['model'];
    year = json['year'];
    fuel = json['fuel'];
    bodyType = json['bodyType'];
    transmission = json['transmission'];
    engineCapacity = json['engineCapacity'];
    regNumber = json['regNumber'];
    chasisNumber = json['chasisNumber'];
    engineNumber = json['engineNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['notes'] = this.notes;
    data['make'] = this.make;
    data['model'] = this.model;
    data['year'] = this.year;
    data['fuel'] = this.fuel;
    data['bodyType'] = this.bodyType;
    data['transmission'] = this.transmission;
    data['engineCapacity'] = this.engineCapacity;
    data['regNumber'] = this.regNumber;
    data['chasisNumber'] = this.chasisNumber;
    data['engineNumber'] = this.engineNumber;
    return data;
  }
}

class ArtisanBrands {
  int artisanBrandId;
  String make;
  int vehicleSize;
  int rating;
  String notes;
  int userId;

  ArtisanBrands(
      {this.artisanBrandId,
        this.make,
        this.vehicleSize,
        this.rating,
        this.notes,
        this.userId});

  ArtisanBrands.fromJson(Map<String, dynamic> json) {
    artisanBrandId = json['artisanBrandId'];
    make = json['make'];
    vehicleSize = json['vehicleSize'];
    rating = json['rating'];
    notes = json['notes'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['artisanBrandId'] = this.artisanBrandId;
    data['make'] = this.make;
    data['vehicleSize'] = this.vehicleSize;
    data['rating'] = this.rating;
    data['notes'] = this.notes;
    data['userId'] = this.userId;
    return data;
  }
}

class Specialties {
  int artisanSpecialtyId;
  String area;
  int userId;

  Specialties({this.artisanSpecialtyId, this.area, this.userId});

  Specialties.fromJson(Map<String, dynamic> json) {
    artisanSpecialtyId = json['artisanSpecialtyId'];
    area = json['area'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['artisanSpecialtyId'] = this.artisanSpecialtyId;
    data['area'] = this.area;
    data['userId'] = this.userId;
    return data;
  }
}
