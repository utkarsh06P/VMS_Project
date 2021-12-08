import 'dart:io';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'employee_list_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
class collect_images extends StatefulWidget {
  const collect_images({Key? key}) : super(key: key);

  @override
  _collect_imagesState createState() => _collect_imagesState();
}

class _collect_imagesState extends State<collect_images> {

  final sugars = ['AadharCard', 'pancard', 'DrivingLicense'];
  String? _currentSugars = 'AadharCard';
  String imageUrl = '';
  String selfieUrl = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body:
          Column(
            children: [
              (imageUrl!= null)?Image.network(imageUrl):const Placeholder(fallbackHeight: 200, fallbackWidth: double.infinity,),
              Padding(
                padding: const EdgeInsets.fromLTRB(0 , 190 , 0 , 0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 70,
                    width: 150,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      UploadSelfie();
                    },
                    icon: const Icon(Icons.photo),
                    label: const Text('Upload Selfie'),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )
                        )
                    ),
                  ),
      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0 , 20 , 0 , 0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 70,
                    width: 200,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        uploadImage();
                      },
                      icon: const Icon(Icons.document_scanner),
                      label: const Text('Upload Document'),
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              )
                          ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 150,
                  width: 250,
                  child: DropdownButtonFormField<String>(
                    value: _currentSugars,
                    items: sugars.map((cards) {
                      return DropdownMenuItem(
                        value: cards,
                        child: Text('$cards'),
                      );
                    }).toList(),
                    onChanged: (val) => setState(() => _currentSugars = val),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0 , 8 ,14 ,8),
                child: Align(
                    alignment: Alignment.topRight,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const employee()));
                      }, child: const Text('Meet') , style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )
                        )
                    ),)),
              ),
            ],
          ),

    );
  }
  uploadImage() async
  {
    final _picker = ImagePicker();
     PickedFile? image;
    final _storage = FirebaseStorage.instance;
   await Permission.photos.request();

   var permissionStatus = await Permission.photos.status;
   if(permissionStatus.isGranted)
   {
            image = await _picker.getImage(source: ImageSource.gallery);
            var file = File(image!.path);

            if(image !=null)
              {
                var snapshot = await _storage.ref().child('fileName/imageName').putFile(file);

                var downloadUrl = snapshot.ref.getDownloadURL();

                setState(() {
                  imageUrl = downloadUrl as String;
                });
              }
            else
              {
                print('No Path Recieved');
              }
   }
   else
     {
       print('Grant Permissions and try again');
       return const AlertDialog(
         title: Text('Grant Permission and try again'),
       );
     }
  }
  UploadSelfie() async
  {
    final _picker = ImagePicker();
    PickedFile? image;
    final _storage = FirebaseStorage.instance;
    await Permission.photos.request();

    var permissionStatus = await Permission.photos.status;
    if(permissionStatus.isGranted)
    {
      image = await _picker.getImage(source: ImageSource.gallery);
      var file = File(image!.path);

      if(image !=null)
      {
        var snapshot = await _storage.ref().child('fileName/imageName').putFile(file);

        var downloadUrl = snapshot.ref.getDownloadURL();

        setState(() {
          selfieUrl = downloadUrl as String;
        });
      }
      else
      {
        print('No Path Recieved');
      }
    }
    else
    {
      print('Grant Permissions and try again');
      return const AlertDialog(
        title: Text('Grant Permission and try again'),
      );
    }
  }

}
