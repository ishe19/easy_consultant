import 'dart:convert';


//final Registration _registration = Registration();
//Future<bool> authenticate (String username, String password) async {
//  bool _proceed = false;
//
//  Session _session;
//  _session = await _registration.requestLoginAPI(username, password);
//  if(_session != null){
//    saveCurrentSession(_session);
//    UserModel temp = await getCurrentUserFromSession(_session);
//    saveCurrentUser(temp);
//    Carnika.activeUser = temp;
//    _proceed = true;
//  }else{
//    print("Session is Null...");
//    return false;
//  }
//  ///Check if the user is allowed to login
//  ///then get user from API
//  if(_proceed){
//
//    ///Check if user is Artisan or Driver
//    if(Carnika.activeUser.userType == 1){
//      ApiRequests apiRequests = ApiRequests();
//      Carnika.requests = await apiRequests.getRequest();
//      Carnika.jobs = await apiRequests.getJobs();
//    }else{
//      ApiRequests apiRequests = ApiRequests();
//      Carnika.artisans = await apiRequests.getAllArtisans();
//      Carnika.requests = await apiRequests.getRequest();
//      Carnika.jobs = await apiRequests.getJobs();
//    }
//    Carnika.profileComplete = checkProfileCompleteness();
//
//
//    //Navigator.pushNamed(context, '/HomeScreen');
//
//    return true;
//  }else{
//
//    return false;
//  }
//
//}


///Gets the Home Screen ready after login / sign up or profile update
///Populates Artisans , Requests , Jobs
//Future<bool> prepHomeScreen () async {
//  bool _proceed = false;
//
////  setState(()  {
////    isLoading = true;
////  });
//
//  Session _session;
//  String rawSession = await getCurrentSession();
//  _session =  Session.fromJson(jsonDecode(rawSession));
//
//  if(_session != null){
//
//    //todo Remove This Active User Already Set
////    saveCurrentSession(_session);
//////    var temp = await getCurrentUserFromSession(_session);
//////    saveCurrentUser(temp);
//////    Carnika.activeUser = temp;
//
//
//    _proceed = true;
//  }else{
//    ///Run Login Logic
//    ///Push to Login Screen (maybe)
//    print("Session is Null...");
//    return false;
//  }
//  ///Check if the user is allowed to login
//  ///then get user from API
//  if(_proceed){
//
//    ///Check if user is Artisan or Driver
//    if(Carnika.activeUser.userType == 1){
//      ApiRequests apiRequests = ApiRequests();
//      Carnika.requests = await apiRequests.getRequest();
//      Carnika.jobs = await apiRequests.getJobs();
//    }else{
//      ApiRequests apiRequests = ApiRequests();
//      Carnika.artisans = await apiRequests.getAllArtisans();
//      Carnika.requests = await apiRequests.getRequest();
//      Carnika.jobs = await apiRequests.getJobs();
//    }
//    if(checkProfileCompleteness()){
//      Carnika.profileComplete = false;
//    }else{
//      Carnika.profileComplete = true;
//    }
//
//
//    //Navigator.pushNamed(context, '/HomeScreen');
//
//    return true;
//  }else{
//
//    return false;
//  }
//
//}

///Check to see if The User Profile is Complete
///Checks Firstname
///Checks Lastname
///Checks Idnumber
///checks Country
///Cars
///Specialities
///
//bool checkProfileCompleteness() {
//
//  if(checkPersonalDetails()){
//    return true;
//  }else{
//    return false;
//  }
//}

///Checks Personal Information First-name Last-name ID Number and Notes
//bool checkPersonalDetails(){
//
//  if(
//  ///Check Names
//  Carnika.activeUser.firstName == null || Carnika.activeUser.firstName == "") {
//    return false;
//    ///Check Last Name
//  }else if (Carnika.activeUser.lastName == null ||  Carnika.activeUser.lastName == ""){
//    return false;
//    ///Check national ID
//  }
////  else if(Carnika.activeUser.nationalId == null ||  Carnika.activeUser.nationalId == ""){
////    return false;
////  }
//  else{
//    ///Return true if all personal details are available
//    return true;
//  }
//
//}

///Check Address & Contact Details & Country
//bool checkAddressDetails(){
//
//  if(
//  ///Check Addresses
//  Carnika.activeUser.addresses == null || Carnika.activeUser.addresses == []) {
//    return false;
//    ///Check Contacts
//  }else if (Carnika.activeUser.contacts == null ||  Carnika.activeUser.contacts == []){
//    return false;
//    ///Check national ID
//  }else{
//    ///Return true if There is at least one address and contact
//    return true;
//  }
//
//}

///Check Cars
//bool checkVehicleDetails(){
//
//  if(
//  ///Check Cars
//  Carnika.activeUser.userCars== null || Carnika.activeUser.userCars == []) {
//    return false;
//    ///Check Contacts
//  }else{
//    ///Return true if There is at least one car
//    return true;
//  }
//
//}

///Check Specialities and Brands
//bool checkSpecialitiesDetails(){
//
//  if(
//  ///Check Artisan Specialities
//  Carnika.activeUser.specialties== null || Carnika.activeUser.specialties == []) {
//    return false;
//  }
//  else if (Carnika.activeUser.artisanBrands== null || Carnika.activeUser.artisanBrands == []){
//    return false;
//  }
//  else{
//    ///Return true if there is at least one speciality and brand
//    return true;
//  }
//
//}

