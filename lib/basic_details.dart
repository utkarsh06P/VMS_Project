import 'package:flutter/material.dart';
import 'package:vms/otp_page.dart';

class Basic_details extends StatefulWidget {
  const Basic_details({Key? key}) : super(key: key);

  @override
  _detailsState createState() => _detailsState();
}

class _detailsState extends State<Basic_details> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Basic Details'),
      ),
      body: Container(

        child: Column(
          children: <Widget>[
            const Padding(
              padding:  EdgeInsets.all(24.0),
              child:   Text('Enter the details below' , style: TextStyle(fontSize: 32 , fontWeight: FontWeight.w600),),
            ),
            const SizedBox(height: 70,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration:  InputDecoration(
                    hintText: "Enter your name",
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration:  InputDecoration(
                    hintText: "Enter your email",
                    prefixIcon: const Icon(Icons.email_rounded),
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
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
            ),
      ElevatedButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const otp()));
      },

        child: const Icon(Icons.arrow_forward_ios_rounded , color: Colors.white),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(20),
          primary: Colors.blue,
          onPrimary: Colors.red,
        ),
      )
          ],
        ),
      ),
    );
  }
}
