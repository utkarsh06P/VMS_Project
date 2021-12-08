import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'details.dart';

class otp extends StatelessWidget {
  const otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const OtpScreen();
  }
}



class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _pinPutController = TextEditingController();
  final _pinPutFocusNode = FocusNode();
  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: const Color.fromRGBO(43, 46, 66, 1),
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color: const Color.fromRGBO(126, 203, 224, 1),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phone verification"),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0 , 0, 0, 4),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text('verification' , style: TextStyle(fontSize: 18 , color: Colors.grey.shade900),)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0 , 0 , 0 ,2),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text('We sent you an SMS code ' , style: TextStyle(fontSize: 26 , color: Colors.blue.shade900 , fontWeight: FontWeight.bold),)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0 , 8, 0, 4),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text('on number +91 9845XXXXXX' , style: TextStyle(fontSize: 18 , color: Colors.grey.shade900 , fontWeight: FontWeight.bold),)),
          ),
      const SizedBox(height: 50,),
      Padding(
        padding: const EdgeInsets.all(30.0),
        child: PinPut(
          fieldsCount: 4,
          withCursor: true,
          textStyle: const TextStyle(fontSize: 25.0, color: Colors.white),
          eachFieldWidth: 55.0,
          eachFieldHeight: 55.0,
          focusNode: _pinPutFocusNode,
          controller: _pinPutController,
          submittedFieldDecoration: pinPutDecoration,
          selectedFieldDecoration: pinPutDecoration,
          followingFieldDecoration: pinPutDecoration,
          pinAnimationType: PinAnimationType.fade,
        ),
      ),

      TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            )
          ),
          child: const Text('Code not recieved?'),
      ),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const details()));
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
    );
  }
}
