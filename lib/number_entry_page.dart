import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:vms/Services/number_entry_page_services.dart';
import 'package:vms/new_user_or_not.dart';
import 'package:vms/otp_page.dart';
import 'details.dart';
import 'basic_details.dart';
//import 'Services/number_entry_page_services.dart';
import 'package:http/http.dart' as http;

class numberentry extends StatefulWidget {
  const numberentry({Key? key}) : super(key: key);

  @override
  _numberentryState createState() => _numberentryState();
}

class _numberentryState extends State<numberentry> {
  final _formkey = GlobalKey<FormState>();
  //


  TextEditingController phoneNumber = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('Visitor tab'),
      ),
      body: Form(
        key: _formkey,
        child: Column(
          children: <Widget>[
            const SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0 , 0, 0, 4),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Welcome' , style: TextStyle(fontSize: 18 , color: Colors.grey.shade900),)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0 , 0 , 0 ,2),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Fill the form to become ' , style: TextStyle(fontSize: 26 , color: Colors.blue.shade900 , fontWeight: FontWeight.bold),)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0 , 0 , 0 ,2),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('our guest' , style: TextStyle(fontSize: 26 , color: Colors.blue.shade900 , fontWeight: FontWeight.bold),)),
            ),
            const SizedBox(height: 70,),
            TextFormField(
              controller: phoneNumber,
              decoration:  InputDecoration(
                  hintText: "Enter Mobile Number",
                  prefixText: "+91",
                  prefixIcon: const Icon(Icons.phone),
                  hintStyle: const  TextStyle(
                    fontFamily: 'Cairo',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                    borderSide: const  BorderSide(width: 2),
                    borderRadius:  BorderRadius.circular(10),
                  )
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {



                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  Basic_details()));

            },

              child: const Icon(Icons.arrow_forward_ios_rounded , color: Colors.white),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                primary: Colors.blue,
                onPrimary: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
  // Future Get_Visitor_Result(String phone)  async
  // {
  //   final baseURL = "https://vms-sunil.herokuapp.com/visitor/searchVisitorNumber/";
  //
  //   fetchUser()  async
  //   {
  //     var phoneURL = baseURL + phone;
  //     var response = await http.get(Uri.parse(phoneURL));
  //     if(response.statusCode==200)
  //       {
  //         var items = json.decode(response.body)['result'];
  //         setState(() {
  //           visitorData = items;
  //         });
  //       }
  //     else
  //       {
  //         setState(() {
  //           visitorData = [];
  //         });
  //       }
  //   }
  //
  // }
}
