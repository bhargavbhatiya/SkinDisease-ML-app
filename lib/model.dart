import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
import 'package:skin_ML/main.dart';

// ignore: camel_case_types
class ML_Model extends StatefulWidget {
  @override
  _ML_ModelState createState() => _ML_ModelState();
}

// ignore: camel_case_types
class _ML_ModelState extends State<ML_Model> {
  List _outputs;
  File _image;
  bool _loading = false;

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

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }

  pickImage() async {
    // ignore: deprecated_member_use
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
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
        backgroundColor: Color.fromRGBO(79, 0, 107, 1.0),
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
                            // _image == null ? Container() : Image.file(_image),
                            // _image == null
                            //     ? Container()
                            //     : Container(
                            //         width: MediaQuery.of(context).size.width,
                            //         height: MediaQuery.of(context).size.height *
                            //             0.65,
                            //         child:
                            //             Image.file(_image, fit: BoxFit.contain),
                            //       ),
                            _image == null
                                ? Container()
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
                                                169, 73, 243, 0.4),
                                            border: Border.all(
                                              color: Colors.deepPurpleAccent,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        padding: EdgeInsets.all(5),
                                        child: Center(
                                          child: Text(
                                            _outputs[0]["label"],
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 22,
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
                FloatingActionButton(
                  tooltip: 'Pick Image',
                  onPressed: pickImage,
                  child: Icon(
                    Icons.add_a_photo,
                    size: 20,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.deepPurpleAccent,
                ),
              Container(
                  height: 470,
                  width: 360,
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                  heroTag: '1',
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                    child: Center(
                      child: Icon(Icons.chat, color: Colors.white),
                    ),
                    elevation: 4.0,
                   backgroundColor: Colors.deepPurpleAccent,
                    onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => new SecondScreen())),
                   )
                   ),
              ],

            ),

          ),

        ),
      ),
    );
  }
}
