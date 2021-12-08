import 'package:flutter/material.dart';
import 'package:vms/collect_photos.dart';
import 'package:vms/employee_list_screen.dart';
import 'approval_screen.dart';
class details extends StatefulWidget {
  const details({Key? key}) : super(key: key);

  @override
  _detailsState createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Column(
        children: <Widget>[


          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding:  EdgeInsets.fromLTRB(10.0 , 10, 0, 0),
            child: Align(
                alignment: Alignment.topLeft,
                child:  Text('Get Started' , style: TextStyle(fontSize: 34 , fontWeight: FontWeight.bold , color: Colors.black87),)),
          ),
          const SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(11.0 , 0, 0, 0),
            child: Align(
                alignment: Alignment.topLeft,
                child:  Text('Enter your details' , style: TextStyle(fontSize: 16  , color: Colors.grey.shade600),)),
          ),
          const SizedBox(height: 12,),
           Padding(padding:const  EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 200,
              width: 320,
              child: Card(
                color: Colors.grey.shade300,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: <Widget>[
                    const Positioned(
                        top: 16,
                        left: 6,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Company Name' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold,color: Colors.black45),),
                        )),
                    const Positioned(
                        top: 54,
                        left: 7,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Please enter your company name' , style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.black45),),
                        )),
                    Positioned(
                    top: 70,
                    left: 245,
                     child: IconButton(
                       onPressed: () {},
                       icon: Icon(Icons.arrow_forward_ios_outlined , size: 30, color: Colors.grey.shade600,),
                     )
                    ),
                  ],
                ),
              ),
            ),
          ),
          ),
          const SizedBox(height: 12,),
          Padding(padding:const  EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 200,
                width: 320,
                child: Card(
                  color: Colors.grey.shade300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: <Widget>[
                      const Positioned(
                          top: 16,
                          left: 6,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Address' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold,color: Colors.black45),),
                          )),
                      const Positioned(
                          top: 54,
                          left: 7,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Please enter your address' , style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.black45),),
                          )),
                      Positioned(
                          top: 70,
                          left: 245,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios_outlined , size: 30, color: Colors.grey.shade600,),
                          ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0 , 12 ,180 ,8),
            child: Align(
                alignment: Alignment.topRight,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const  collect_images()));
                  }, child: const Text('Next') , style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                    )
                ),)),
          ),
        ],
      )
    );
  }
}
