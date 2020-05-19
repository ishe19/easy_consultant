import 'dart:core';
import 'dart:io';

//Class for Registration

//final url = "https://192.168.100.30:44313/api";
//final url = "http://102.130.112.83/carnikaweb1/api";
//class Registration {
//  Registration();
//
////  final url = "http://192.168.100.30/CarnikaWeb/api";
//
//  RegisterModel newRegistration;
//  LoginModel newLogin;
//  String cookie;
//
//  static bool trustSelfSigned = true;
//  static HttpClient httpClient = new HttpClient()
//    ..badCertificateCallback =
//    ((X509Certificate cert, String host, int port) => trustSelfSigned);
//  IOClient ioClient = new IOClient(httpClient);
//
////  static VersionNumber versionNumber = VersionNumber(
//
////    id: 23,
////    major: 10,
////    minor: 1,
////    build: 12,
////    revision: 1,
////    majorRevision: 1,
////    minorRevision: 2,
//
////  );
//
//  static Country country = Country(
//    name: "Zimbabwe",
//    code: "263",
//  );
//
////  static Device device = Device(
////      manufacturer: "Huawei",
////      deviceName: "P9",
////      deviceId: '123456',
////      model: "EVA L09",
////      version: "7.0",
////      platform: "Android",
////      versionNumber: versionNumber,
////      appVersion: "1.0",
////      appBuild: "1.0",
////      idiom: "something",
////      isDevice: true,
////      deviceType: 1,
////      pnsToken: "dummy",
////      userId: 0 ,
////
////  );
//
//
//  Device device;
//  DeviceInfo _deviceInfo = DeviceInfo();
//
//
//  Future<bool> requestRegistration(String username, String password,) async{
//
//    //todo DEBUGGING ONLY
//    print("Testing Inside Registration");
//    device =  await  _deviceInfo.getDeviceInfo();
//    print(device.toString());
//
//
//    Map<String, String> body = {
//      "phoneNumber": "$username",
//      "password": "$password",
//    };
//
//    Map<String, String> requestHeaders = {
//      "Content-type": "application/json",
//    };
//
//    newRegistration = RegisterModel(device: device, country: country ,phoneNumber: username, password: password);
//
//    final response = await ioClient.post(
//      url+"/users/register",
//      body: jsonEncode(newRegistration.toJson()),
//      headers: requestHeaders,
//    );
//
//    //todo for debugging ONLY
//    print(response.statusCode);
//    print(response.body);
//
//    if (response.statusCode == 200 || response.statusCode == 204) {
//      print("Success");
//      final responseJson = json.decode(response.body);
//
//      saveCurrentLogin(responseJson);
//      return true;
//
//    } else if(response.statusCode == 500){
//      print("Registration Previously attempted");
//      return true;
//    } else {
//      print("Failed");
//
////      final responseJson = json.decode(response.headers.toString());
////      final responseBody = json.decode(response.body);
//
//      //todo for debugging only
//        //print(responseJson.toString());
//        print(response.body.toString());
////      saveCurrentLogin(responseJson);
//
//
////      SDSB.showDialogSingleButton(context, "Unable to Login", "You may have supplied an invalid 'Username' / 'Password' combination. Please try again or contact your support representative.", "OK");
//      return false;
//    }
//  }
//
//  ///Authenticate New Users
//  Future<Session> requestVerification(String username, String verificationCode) async {
//     device = await _deviceInfo.getDeviceInfo();
//
//     //todo Testing only
//     print(device.deviceId);
//     print("CODE: $verificationCode");
//     print("Veryfing....input");
//     Session currentSession;
//
//    Map<String, String> body = {
//      "phoneNumber": "263$username",
//      "verificationCode": "$verificationCode",
//      "deviceId" : device.deviceId,
//    };
//
//    Map<String, String> requestHeaders = {
//      "Content-type": "application/json",
//    };
//
//
//    final response = await ioClient.post(
//      url+"/users/verify",
//      body: jsonEncode(body),
//      headers: requestHeaders,
//    );
//
//    print(response.statusCode);
//     print(response.body);
//
//    if (response.statusCode == 200 || response.statusCode == 204) {
//      print("Success");
//      final responseJson = json.decode(response.body);
//      String cookie = response.headers['set-cookie'];
//      cookie = cookie.replaceFirst("APISESSION=", '').substring(0 ,cookie.indexOf(';'));
//      cookie = cookie.replaceAll('; path=/; s', '');
//      print(cookie);
//
//      currentSession = Session.fromJson(responseJson);
//      if(currentSession==null){
//
//        return null;
//      }
//
//
//      (cookie != null) ?
//      saveCurrentCookie(cookie) :
//      print("Error: Cookie Not Available");
//      saveCurrentSession(currentSession);
//      return currentSession;
//
//    } else {
//      print("Failed");
//      final responseJson = json.decode(response.headers.toString());
//      //todo for debugging only
////      print(responseJson.toString());
////      print(jsonEncode(body));
//      print(responseJson.toString());
////      saveCurrentLogin(responseJson);
//      return null;
//    }
//
//
//  }
//
//  ///Request Login From Session
//  Future<Session> requestLoginAPI( String phoneNumber, String password) async {
//    device = await _deviceInfo.getDeviceInfo();
//
//    newLogin = LoginModel(device: device, phoneNumber: "263"+phoneNumber, password: password);
//    debugPrint("Sending login model : $newLogin");
//    Session session = Session();
//    BuildContext _context;
//    print("Loggin in .....");
//
//    Map<String, String> requestHeaders = {
//      "Content-type": "application/json",
//      "Accept": "application/json",
//    };
//
//    //todo DELETE AFTER FOR TESTING ONLY
////    return JsonData.session;
//
//
//
//
//
//
//
//
//    final response = await ioClient.post(
//      url+"/Users/Authenticate",
//      body: json.encode(newLogin.toJson()),
//      headers: requestHeaders,
//    );
//
//
//    print(response.statusCode);
//    print(response.body);
//    //TODO UNCOMMENT AFTER TESTING IS COMPLETE
//    if (response.statusCode == 200 || response.statusCode == 204) {
//
//      debugPrint("Login Success:  ");
////      print(response.statusCode);
//      String cookie = response.headers['set-cookie'];
//      cookie = cookie.replaceFirst("APISESSION=", '').substring(0 ,cookie.indexOf(';'));
//      cookie = cookie.replaceAll('; path=/; s', '');
//      var responseBody = jsonDecode(response.body);
//      session = Session.fromJson(responseBody);
//
//
//      //For Testing
//      debugPrint(cookie);
//
//
//      (cookie != null) ?
//      saveCurrentCookie(cookie) :
//      print("Error: Session Not Available");
//
//      return session;
//
//    } else {
//      print(response.statusCode);
//
//      //todo for debugging only
////
//     print("Login Failed");
//
//      return null;
//    }
//
//  }
//
//  ///Reset Password
//  Future<String> requestResetCode(String phoneNumber) async {
//    device = await _deviceInfo.getDeviceInfo();
//
//
//    Map<String, String> body = {
//      "phoneNumber": "263$phoneNumber",
//    };
//
//    Map<String, String> requestHeaders = {
//      "Content-type": "application/json",
//    };
//
//
//    final response = await ioClient.post(
//      url+"/Users/ResetPassword",
//      body: body,
//      headers: requestHeaders,
//    );
//
//    print(response.statusCode);
//    print(response.body);
//
//    if (response.statusCode == 200 || response.statusCode == 204) {
//
//      debugPrint("Reset Success:  ");
//      debugPrint("Verification Code Sent:  ");
//      return "Verification code sent";
//
//    } else {
//      print(response.statusCode);
//
//      //todo for debugging only
////
//      debugPrint("Verification Code failed");
//
//      return null;
//    }
//
//
//  }
//
//  ///Reset Password
//  Future<bool> changePassword({String verificationCode, String oldPassword, String newPassword, UserModel user}) async {
//    device = await _deviceInfo.getDeviceInfo();
//
//
//    Map<String, String> body = {
//      "userId": user.userId.toString(),
//      "verificationCode": "$verificationCode",
//      "oldPassword": "$oldPassword",
//      "newPassword": "$newPassword"
//    };
//
//    Map<String, String> requestHeaders = {
//      "Content-type": "application/json",
//    };
//
//
//    final response = await ioClient.post(
//      url+"/Users/ChangePassword",
//      body: body,
//      headers: requestHeaders,
//    );
//
//    print(response.statusCode);
//    print(response.body);
//
//    if (response.statusCode == 200 || response.statusCode == 204) {
//
//      debugPrint("Password Changed successfully :  ");
//      return true;
//
//    } else {
//      print(response.statusCode);
//
//      //todo for debugging only
////
//      debugPrint("Password Change failed");
//
//      return false;
//    }
//
//
//  }
//
//
//
//}
//
////Class for API Requests
//class ApiRequests{
////  final _url = "https://192.168.100.30:44322/api";
//
//  static bool _trustSelfSigned = true;
//  static HttpClient _httpClient = new HttpClient()
//    ..badCertificateCallback =
//    ((X509Certificate cert, String host, int port) => _trustSelfSigned);
//   IOClient _ioClient = new IOClient(_httpClient);
//
//
//  IOClient get ioClient => _ioClient;
//
//  set ioClient(IOClient value) {
//    _ioClient = value;
//  } // Return a list of all Users
//  /// Get ALl Users from the API
//  Future<List<UserModel>> getAllUsers  ()async{
//
//    List<UserModel> users;
//    String cookie = await getCookie();
//    print("Api Session is"+cookie);
//
//
//
//    Map<String, String> requestHeaders = {
//      "Content-type": "application/json",
//      "Cookie" : "APISESSION=$cookie",
//    };
//
//
//    final response = await ioClient.get(
//      url+"/users",
//      headers: requestHeaders,
//    );
//
//
//    if (response.statusCode == 200) {
//      print("Success");
//      final responseJson = (json.decode(response.body) as List);
//      //print(responseJson);
//       users = responseJson.map((i) => UserModel.fromJson(i)).toList();
//      print(users);
//      // print each user
//
//      return users;
//
//
//
//
//    } else {
//      print("No Users");
//      print("Failed with Status code : ${response.statusCode}");
//      //todo for debugging only
//
//
//      return null;
//
//    }
//
//
//  }
//
//
//  /// Returns a list of Artisans only
//  Future<List<UserModel>> getAllArtisans () async {
//    final List<UserModel> testArtisans = [];
//
//    //todo for testing only
//    return testArtisans;
//    return TestData.allArtisans;
//
//    List artisans = List();
//    List<UserModel> temp = await getAllUsers();
//    if(temp==null){
//      return artisans;
//    }
//
//    if(temp.isEmpty){
//      return artisans;
//    }
//
//    temp.forEach((user) {
//      //if user is an Artisan or both artisan and driver
//      if(user.userType == 3 || user.userType == 1){
//        artisans.add(user);
//      }
//    });
//
//    return artisans;
//
//  }
//
//  ///Returns a list of Drivers only
//  Future<List<UserModel>> getAllDrivers () async {
//
//    List drivers = List();
//    List<UserModel> temp = await getAllUsers();
//
//    temp.forEach((user) {
//      //if user is an Artisan or both artisan and driver
//      if(user.userType == 2){
//        drivers.add(user);
//      }
//    });
//
//    return drivers;
//
//  }
//
//  ///Get Single User from API
//  Future<UserModel> getUser (int userID) async {
//
//    //TODO : COMMENT AFTER TESTING LOCALLY
////    return JsonData.currentUser;
//
//    //todo uncomment after testing is complete
//   // String id = user.id.toString();
//    String id = userID.toString();
//    String cookie = await getCookie();
//    UserModel currentUser;
//
//    Map<String, String> requestHeaders = {
//      "Content-type": "application/json",
//      "Cookie" : "APISESSION=$cookie",
//    };
//
//
//
//    final response = await ioClient.get(
//      url+"/users/$id",
//      headers: requestHeaders,
//    );
//    print(response.statusCode);
//    print(response.body);
//
//    if (response.statusCode == 200) {
//      print("UserFound");
//      var responseJson = json.decode(response.body);
//       currentUser = UserModel.fromJson(responseJson) ;
//      return currentUser;
//    } else {
//      print("User not Found");
//      print("Failed with Status code : ${response.statusCode}");
//      return null;
//
//    }
//
//
//  }
//
//  ///Get Active User from API
//  Future<UserModel> getCurrentUser () async {
//
////    return JsonData.currentUser;
//
//    //todo uncomment after testing is complete
//    // String id = user.id.toString();
//    String id = Carnika.activeUser.userId.toString();
//    String cookie = await getCookie();
//    UserModel currentUser;
//
//    Map<String, String> requestHeaders = {
//      "Content-type": "application/json",
//      "Cookie" : "APISESSION=$cookie",
//    };
//
//
//
//    final response = await ioClient.get(
//      url+"/users/$id",
//      headers: requestHeaders,
//    );
//    print(response.statusCode);
//    print(response.body);
//
//    if (response.statusCode == 200) {
//      print("UserFound");
//      var responseJson = json.decode(response.body);
//      currentUser = UserModel.fromJson(responseJson) ;
//      return currentUser;
//    } else {
//      print("User not Found");
//      print("Failed with Status code : ${response.statusCode}");
//      return null;
//
//    }
//
//
//  }
//
//  ///Get Single UserCar from API
//  Future<UserCars> getUserCar (int userCarID) async {
//
//    // String id = user.id.toString();
//    String id = userCarID.toString();
//    String cookie = await getCookie();
//    UserCars currentCar;
//
//    Map<String, String> requestHeaders = {
//      "Content-type": "application/json",
//      "Cookie" : "APISESSION=$cookie",
//    };
//
//    final response = await ioClient.get(
//      ///Todo Change this when api is ready
//      url+"/users/$id",
//      headers: requestHeaders,
//    );
//
//    if (response.statusCode == 200) {
//      print("Car Found");
//      var responseJson = json.decode(response.body);
//      currentCar = UserCars.fromJson(responseJson) ;
//      return currentCar;
//    } else {
//      print("Car not Found");
//      print("Failed with Status code : ${response.statusCode}");
//      return null;
//
//    }
//
//
//  }
//
//
//  ///Update The user
//  Future<UserModel> updateUser (UserModel user) async {
//    debugPrint("Updating User With Values: ${user.toString()}");
//
//    String id = user.userId.toString();
//    String cookie = await getCookie();
//    UserModel currentUser;
//
//    Map<String, String> requestHeaders = {
//      "Content-type": "application/json",
//      "set-cookie" : "$cookie",
//    };
//
//    final response = await ioClient.put(
//      url+"/users/$id",
//      body: jsonEncode(user.toJson()),
//      headers: requestHeaders,
//    );
//    print(response.statusCode);
//    print(response.body);
//
//    if (response.statusCode == 200) {
//      print("User Updated");
//      final responseJson = json.decode(response.body);
//
//      currentUser = UserModel.fromJson(responseJson);
//      saveCurrentUser(currentUser);
//      Carnika.activeUser = currentUser;
//      return currentUser;
//
//    } else {
//
//      print("Failed with Status code : ${response.statusCode}");
//      print("User not Updated");
//
//
//      return null;
//
//    }
//
//  }
//
//  ///Searches the API
//  Future<List<UserModel>> searchArtisans (Search search) async {
//    List<UserModel> users = List();
//    String cookie = await getCookie();
//
//
//    Map<String, String> requestHeaders = {
//      "Content-type": "application/json",
//      "set-cookie" : "$cookie",
//    };
//
//    final response = await ioClient.post(
//      url+"/users",
//      headers: requestHeaders,
//      body: jsonEncode(search),
//
//    );
//
//    if (response.statusCode == 200) {
//      print("Success");
//      final responseJson = json.decode(response.body);
//
//      users = responseJson;
//      // print each user
//      users.forEach((user)=> print(user.lastName));
//
//      return users;
//
//
//
//
//    } else {
//      print("No Users Found");
//      print("Failed with Status code : ${response.statusCode}");
//      //todo for debugging only
//
//      return List();
//
//    }
//  }
///// Get Vehicle Makes
//  Future<List<VehicleMake>> getVehicleMakes() async {
//    print("This is running");
//    List<VehicleMake> makes = List();
//    //String cookie = await getCookie();
//    //print("Api Session is"+cookie);
//
//
//
//    Map<String, String> requestHeaders = {
//      "Content-type": "application/json",
//      //"Cookie" : "APISESSION=$cookie",
//    };
//
//
//    final response = await ioClient.get(
//      url+"/vehiclemakes",
//      headers: requestHeaders,
//    );
//
//    if (response.statusCode == 200) {
//      print("Success");
//      final responseJson = (json.decode(response.body) as List);
//      makes = responseJson.map((i) => VehicleMake.fromJson(i)).toList();
//
//      // print each user
//
//      return makes;
//
//
//
//
//    } else {
//      print("No Makes");
//      print("Failed with Status code : ${response.statusCode}");
//      //todo for debugging only
//
//
//      return null;
//
//    }
//  }
//
//  ///Get list of all Requests with  responses inside
//  Future<List<Request>> getRequest () async {
//    //Todo For testing only Delete After
//     final List<Request> testRequests = [];
//     return testRequests;
//
//
//    return TestData.artisanRequests;
//    print("Getting Respones.....");
//    List<Request> requests = List();
//    //String cookie = await getCookie();
//    //print("Api Session is"+cookie);
//
//
//
//    Map<String, String> requestHeaders = {
//      "Content-type": "application/json",
//      //"Cookie" : "APISESSION=$cookie",
//    };
//
//    final response = await ioClient.get(
//      url+"/Requests/Respond",
//      headers: requestHeaders,
//    );
//
//    if (response.statusCode == 200) {
//      print("Success");
//      final responseJson = (json.decode(response.body) as List);
////      requests = responseJson.map((i) => Request.fromJson(i)).toList();
//
//      // print each user
//
//      return requests;
//
//
//
//
//    } else {
//      print("No Makes");
//      print("Failed with Status code : ${response.statusCode}");
//      //todo for debugging only
//
//
//      return null;
//
//    }
//  }
//
//  ///Create Requests
//  Future<bool> createRequest (Request request) async {
//    print("Creating Request.....");
//
//    //String cookie = await getCookie();
//    //print("Api Session is"+cookie);
//
//
//
//    Map<String, String> requestHeaders = {
//      "Content-type": "application/json",
//      //"Cookie" : "APISESSION=$cookie",
//    };
//
//    final response = await ioClient.post(
//      url+"/Requests/",
//      headers: requestHeaders,
////      body: jsonEncode(request.toJson)
//    );
//
//    if (response.statusCode == 200) {
//      print("Success");
//      final responseJson = (json.decode(response.body) as List);
////      requests = responseJson.map((i) => Request.fromJson(i)).toList();
//
//      // print each user
//
//      return true;
//
//
//
//
//    } else {
//      print("Request not created");
//      print("Failed with Status code : ${response.statusCode}");
//      //todo for debugging only
//
//
//      return false;
//
//    }
//  }
//
//  ///Create Job from Scratch
//  Future<bool> createJob () async {
//
//  }
//
//  ///Create Job from request
//  Future<bool> createJobFromRequest () async {
//
//  }
//
//  ///Get All Jobs
//  Future<List<Job>> getJobs() async {
//    final List <Job> testJobs = [];
//    //todo for testing only
//    return testJobs;
//      return TestData.jobs;
//  }
//
//  ///Get Single Job
////  Future<Job> getJob(int jobID) async {
////
////  }
//}
//
//Future<UserModel> getCurrentUserFromSession(Session session) async {
//  print("Getting Current User from Session....");
//  ApiRequests apiRequests = ApiRequests();
//
//  //todo uncomment after testing
//  UserModel _user;
//  int userId = session.userId;
//  print("Before user Returned");
//  _user = await apiRequests.getUser(userId);
//
//  print("User Returned.....");
//  return _user;
//}