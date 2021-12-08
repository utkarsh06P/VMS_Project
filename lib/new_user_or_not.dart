import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:vms/Models/visitor_first_page_class.dart';
class Welcome extends StatefulWidget {

   String phone;

   Welcome({required this.phone});

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  List visitorData = [];
  final baseURL = "https://vms-sunil.herokuapp.com/visitor/searchVisitorNumber/";
  bool visited = false;



    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: SafeArea(
          child: FutureBuilder(
            future: fetchUser(),
            builder: (BuildContext context , AsyncSnapshot snapshot)
            {
              return Text("Hello");
            },
          ),
        ),
      );
    }
  Future<void>  fetchUser() async
  {
    var phoneURL = baseURL + widget.phone;
    var response = await http.get(Uri.parse(phoneURL));
    if (response.statusCode == 200) {
      print("Data Found");

    }
    else{
      print("Something Wrong");
      throw Exception("Failed");
    }
  }

}
