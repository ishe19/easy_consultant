
import 'package:easy_consult/Models/UserModel.dart';

class Search {
  List<String> filters;
  String searchText;
  String searchTime;
  UserModel user;

  Search({this.filters, this.searchText, this.searchTime, this.user});

}