import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:plant_disease_detection/app/common_widget/CustomRaisedButton.dart';

import 'package:plant_disease_detection/app/floatingbutton/speed_dialchild.dart';
import 'package:plant_disease_detection/app/floatingbutton/speeddial.dart';



class DetectImage extends StatefulWidget {

  final String title;
  DetectImage({String uid, this.title});

  @override
  _DetectImage createState() => _DetectImage();
}

class _DetectImage extends State<DetectImage> {
  File _image;
  Future getImagefromcamera() async {
    final image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  Future getImagefromGallery() async {
    final image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  void _detectImage() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildHomeScreen(),
    );
  }

  Widget buildHomeScreen() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Image"),
        centerTitle: true,
      ),
      body: Center(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: <Widget>[
               
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300.0,
                  child: Center(
                    child: _image == null
                        ? Text("Pick the image by tapping on the lower menu button", style: TextStyle(fontSize: 18))
                        : Image.file(_image),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 150.0,
                    width: 80.0,
                    child: SingleChildScrollView(
                      child: CustomRaisedButton(
                        color: Color(0xFFB2002D),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.image,
                              color: Colors.white,
                            ),
                            Text(
                              '  Detect Image',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        onPressed: _detectImage,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(color: Colors.white, size: 25),
        curve: Curves.bounceInOut,
        onOpen: () => print('OPENING DIAL'),
        onClose: () => print('DIAL CLOSED'),
        tooltip: 'Toggle',
        heroTag: 'toggele-hero-tag',
        backgroundColor: Color(0xFFB2002D),
        foregroundColor: Colors.white,
        overlayOpacity: 0.7,
        elevation: 10.0,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
              child: Icon(
                Icons.camera,
                size: 24,
              ),
              backgroundColor: Colors.redAccent,
              label: 'Camera',
              labelStyle: TextStyle(
                fontSize: 18.0,
              ),
              onTap: () => getImagefromcamera()),
          SpeedDialChild(
              child: Icon(
                Icons.image,
                size: 24,
              ),
              backgroundColor: Colors.blueAccent,
              label: 'Gallary',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () => getImagefromGallery()),
        ],
      ),
    );
  }
}
