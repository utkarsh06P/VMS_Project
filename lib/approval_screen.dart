import 'package:flutter/material.dart';

class approval extends StatefulWidget {
  const approval({Key? key}) : super(key: key);

  @override
  _approvalState createState() => _approvalState();
}

class _approvalState extends State<approval> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pending Approval'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 100 , 0, 0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 200,
                width: 200,
                child: Image.asset('images/loading.gif'),
              ),
            ),
          ),
         const Padding(
           padding:  EdgeInsets.all(30.0),
           child:   Text('We are evaluating your profile' , style: TextStyle(fontSize: 32 , fontWeight: FontWeight.w600),),
         ),
          const Padding(
            padding:  EdgeInsets.all(30.0),
            child:   Text('In order to make sure our community holds a standard, we do not allow any profiles to get in' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w600),),
          ),
          
        ],
      ),
    );
  }
}
