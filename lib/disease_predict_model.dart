import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';

// ignore: camel_case_types
class ML_Model extends StatefulWidget {
  @override
  _ML_ModelState createState() => _ML_ModelState();
}

enum Answers{camera, gallery}

// ignore: camel_case_types
class _ML_ModelState extends State<ML_Model> {
  List _outputs;
  File _image;
  bool _loading = false;
  var image;

  @override
  void initState() {
    super.initState();
    _loading = true;

    loadModel().then((value) {
      setState(() {
        _loading = false;
      });
    });
  }

  loadModel() async {
    await Tflite.loadModel(
      model: "assets/model_unquant.tflite",
      labels: "assets/labels.txt",
      numThreads: 1,
    );
  }

  classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
        path: image.path,
        imageMean: 0.0,
        imageStd: 255.0,
        numResults: 2,
        threshold: 0.2,
        asynch: true);

    setState(() {
      _loading = false;
      _outputs = output;
    });
  }
  String _value = "";
  void _setValue(String value) => setState(() {
    if (_value == "camera")
      pickImageCamera();
    else if (_value == "gallery") pickImageGallery();
  }
  );

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }

  pickImageCamera() async {
    image = await ImagePicker.pickImage(source: ImageSource.camera);
    detectDisease();
  }

  pickImageGallery() async{
    image = await ImagePicker.pickImage(source: ImageSource.gallery);
    detectDisease();
  }

  detectDisease() async {
    // ignore: deprecated_member_use
    if (image == null) return null;
    setState(() {
      _loading = true;
      _image = image;
    });
    classifyImage(_image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Skin Disease predictor",
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
        backgroundColor: Color.fromRGBO(14, 49, 80, 1),
        elevation: 0,
      ),
      body: Container(
        // color: Colors.yellow[50],
        color: Color.fromRGBO(224, 140, 255, 0.2),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _loading
                    ? Container(
                        height: 300,
                        width: 300,
                      )
                    : Container(
                        margin: EdgeInsets.all(15),
                        // color: Colors.green,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _image == null
                                ? Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height *
                                  0.65,
                              alignment: Alignment.center,
                              child: Text(
                                "Choose an Image to predict Disease"
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.blueGrey,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            )
                                : Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height *
                                        0.65,
                                    decoration: BoxDecoration(
                                      //  Image.file(_image, fit: BoxFit.contain),
                                      image: DecorationImage(
                                        image: FileImage(_image),
                                        fit: BoxFit.contain,
                                      ),
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.blueGrey,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                            SizedBox(
                              height: 20,
                            ),
                            _image == null
                                ? Container()
                                : _outputs != null
                                    ? Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                            // color: Colors.yellow[200],
                                            color: Color.fromRGBO(
                                                235, 255, 250, 1),
                                            border: Border.all(
                                              color:
                                                  Color.fromRGBO(14, 49, 80, 1),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        padding: EdgeInsets.all(7),
                                        child: Center(
                                          child: Text(
                                            _outputs[0]["label"],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      )
                                    : Container(child: Text(""))
                          ],
                        ),
                      ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Pick Image',
        onPressed: () {pickImageGallery();},
        child: Icon(
          Icons.add_a_photo,
          size: 20,
          color: Colors.white,
        ),
        backgroundColor: Color.fromRGBO(14, 49, 80, 1),
      ),
    );
  }
}
