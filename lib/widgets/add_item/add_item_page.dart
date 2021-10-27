
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import 'package:lofo_app/widgets/login/styled_widgets.dart';


class AddItemPageWidget extends StatefulWidget {
  const AddItemPageWidget({Key? key}) : super(key: key);

  @override
  _AddItemPageWidgetState createState() => _AddItemPageWidgetState();
}

class _AddItemPageWidgetState extends State<AddItemPageWidget> {

  String dropdownValue = 'Lost';
  File? _selectedFile;

  Widget getImageWidget(){
    if(null == _selectedFile){
      return Image.asset(
        "assets/image/add.png",
        width: 300,
        height: 105,
        fit: BoxFit.cover,
      );
    }
    else{
      return Image.file(
        _selectedFile!,
        width: 300,
        height: 105,
        fit: BoxFit.cover,
      );
    }
  }

  getImage(ImageSource imageSource) async {
    // File image = await ImagePicker.pickImage(source: ImageSource.camera);
    final ImagePicker _picker = ImagePicker();
    XFile? image = await _picker.pickImage(source: imageSource);
    if (image != null){
      File? cropped = await ImageCropper.cropImage(sourcePath: image.path,
          aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1),
          compressQuality: 100,
          maxWidth: 700,
          maxHeight: 700,
          compressFormat: ImageCompressFormat.jpg,
          androidUiSettings: const AndroidUiSettings(
            toolbarColor: Colors.blue,
            toolbarTitle: "RPS Cropper",
            statusBarColor: Colors.blue,
            backgroundColor: Colors.white,
          )
      );
      setState(() {
        _selectedFile = cropped;
      });
    }


  }

  List <String> spinnerItems = ['Lost', 'Found'] ;

  void changed(String data){
    setState(() {
      dropdownValue = data;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
        body: Container(color: Colors.blueAccent.withOpacity(0.1),
          child:
          SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    getImageWidget()
                    // Image.asset('assets/image/add.png')//assets/image/add.png
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {getImage(ImageSource.camera);
                    }, child:Text("from camera", style: TextStyle(color: Colors.white))),
                    ElevatedButton(onPressed:(){ getImage(ImageSource.gallery);
                    }, child:Text("from device", style: TextStyle(color: Colors.white),)),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10),),
                const Text("Description", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Padding(padding: EdgeInsets.only(top: 10),),
                const SizedBox(
                  width: 325,
                  height: 50,
                  child: TextField(
                    cursorColor: Color(0xffC19354),

                    // controller: _weightController,
                    decoration: InputDecoration(
                        hoverColor: Color(0xffC19354),
                        focusColor: Color(0xffC19354),
                        // hintText: "weight (kilograms)",
                        labelText: "Title",
                        // labelStyle:
                        border: OutlineInputBorder()),
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    // maxLines: 3,
                    // maxLines: 3,
                    // suffixIcon:
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20),),

                Padding(
                  padding: const EdgeInsets.only(left: 35,right: 35),
                  child: Container(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26, width: 1),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      dropdownColor: Colors.white,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      isExpanded: true,
                      underline: SizedBox(
                      ),
                      // elevation: 16,
                      // style: TextStyle(color: Colors.lightBlueAccent, fontSize: 14),
                      // underline: Container(
                      //   height: 2,
                      //   color: Colors.lightBlueAccent,
                      // ),
                      onChanged: (newValue){
                        setState((){
                          dropdownValue = newValue!;
                        });
                      },
                      items: spinnerItems.map((String value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20),),

                const SizedBox(
                  width: 325,
                  height: 50,
                  child: TextField(
                    cursorColor: Color(0xffC19354),

                    // controller: _weightController,
                    decoration: InputDecoration(
                        hoverColor: Color(0xffC19354),
                        focusColor: Color(0xffC19354),
                        // hintText: "weight (kilograms)",
                        labelText: "Time",
                        // labelStyle:
                        border: OutlineInputBorder()),
                    keyboardType: TextInputType.datetime,
                    obscureText: false,
                    // maxLines: 3,
                    // maxLines: 3,
                    // suffixIcon:
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20),),
                const SizedBox(
                  width: 325,
                  height: 50,
                  child: TextField(
                    cursorColor: Color(0xffC19354),

                    // controller: _weightController,
                    decoration: InputDecoration(
                        hoverColor: Color(0xffC19354),
                        focusColor: Color(0xffC19354),
                        // hintText: "weight (kilograms)",
                        labelText: "Place",
                        // labelStyle:
                        border: OutlineInputBorder()),
                    keyboardType: TextInputType.streetAddress,
                    obscureText: false,
                    // maxLines: 3,
                    // maxLines: 3,
                    // suffixIcon:
                  ),
                ),

                Padding(padding: EdgeInsets.only(top: 20),),
                const SizedBox(
                  width: 325,
                  height: 50,
                  child: TextField(
                    cursorColor: Color(0xffC19354),

                    // controller: _weightController,
                    decoration: InputDecoration(
                        hoverColor: Color(0xffC19354),
                        focusColor: Color(0xffC19354),
                        // hintText: "weight (kilograms)",
                        labelText: "Additional description",
                        // labelStyle:
                        border: OutlineInputBorder()),
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    obscureText: false,
                    // maxLines: 3,
                    // maxLines: 3,
                    // suffixIcon:
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 15),),
                ElevatedButton(onPressed:(){
                }, child:Text("submit", style: TextStyle(color: Colors.white),)),
                Padding(padding: EdgeInsets.only(top: 8),),

              ],
            ),
          )
      )
    );
  }
}
