import 'dart:io';
import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class driverAadhaarScreen extends StatefulWidget {
  const driverAadhaarScreen({super.key});

  @override
  State<driverAadhaarScreen> createState() => _driverAadhaarScreenState();
}

class _driverAadhaarScreenState extends State<driverAadhaarScreen> {
  Uint8List? _image;
  File? selectedIMage;
  final _controller = TextEditingController();
  //int aadhaarnumber = "" as int;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        toolbarHeight: 94,
        backgroundColor: const Color.fromRGBO(251, 212, 10, 1),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Container(
                child: const Text(
                  'Upload Aadhaar Images',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              // SizedBox(
              //   height: 30,
              // ),
              //Text(${aadhaarnumber} as String),
              AadhaarImage(context),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '   Enter Aadhaar Number',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              textAadhaar(),
              const SizedBox(
                height: 140,
              ),
              buttonAadhaar(),
            ],
          ),
        ),
      ),
    );
  }

  Widget AadhaarImage(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        height: 130,
        width: double.maxFinite,
        child: Row(
          children: [
            Expanded(
              child: DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(20),
                dashPattern: const [6, 6],
                color: Colors.grey,
                strokeWidth: 1,
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    showImagePickerOption(context);
                  },
                  child: Stack(children: [
                    _image != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(20.0), //or 15.0
                            child: const Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        //showing th image that user has choosen
                                        // Image(image: MemoryImage(_image!))
                                      ],
                                    )),
                              ],
                            ),
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(20.0), //or 15.0
                            child: const Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Icon(Icons.upload_file),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Choose Front Image',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                  ]),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(20),
                dashPattern: [6, 6],
                color: Colors.grey,
                strokeWidth: 1,
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    showImagePickerOption(context);
                  },
                  child: const Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Icon(Icons.upload_file),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Choose Back Image',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textAadhaar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: TextFormField(
        //controller: _controller,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(width: 1, color: Colors.grey),
          ),

          labelText: 'Aadhaar Number',
          labelStyle: TextStyle(color: Colors.grey),
          //hintText: 'hint text',
          helperText: 'eg: 1254 2365 8745 ',

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(8))),
        ),
      ),
    );
  }

  Widget buttonAadhaar() {
    return SizedBox(
      height: 60,
      width: 380,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(255, 211, 0, 0.8),
        ),
        onPressed: () {
          setState(() {
            //aadhaarnumber = _controller.hashCode;
          });
        },
        child: const Text(
          'Submit',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.white,
        context: context,
        builder: (builder) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 6,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromGallery();
                      },
                      child: const SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.image,
                              size: 70,
                            ),
                            Text("Gallery")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromCamera();
                      },
                      child: const SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.camera_alt,
                              size: 70,
                            ),
                            Text("Camera")
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

//Gallery
  Future _pickImageFromGallery() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;
    setState(() {
      selectedIMage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop(); //close the model sheet
  }

//Camera
  Future _pickImageFromCamera() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;
    setState(() {
      selectedIMage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }
}
