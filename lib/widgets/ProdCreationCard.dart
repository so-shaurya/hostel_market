import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hostel_market/data/constants.dart';
import 'package:image_picker/image_picker.dart';

class ProdCreationBox extends StatefulWidget {
  const ProdCreationBox({super.key});

  @override
  State<ProdCreationBox> createState() => _ProdCreationBoxState();
}

class _ProdCreationBoxState extends State<ProdCreationBox> {
  String selectedTag = 'Hostel';
  File? _image;
  final ImagePicker _picker = ImagePicker();
  Future<void> _pickImage(ImageSource source) async {
    final XFile? pickedFile = await _picker.pickImage(
      source: source,
      imageQuality: 70,
    );

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      margin: EdgeInsetsGeometry.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[700],
      ),
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.card,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.all(5),

            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.all(7),
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                            ),
                            builder: (_) => Padding(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: Icon(Icons.camera_alt),
                                    title: Text('Camera'),
                                    onTap: () {
                                      Navigator.pop(context);
                                      _pickImage(ImageSource.camera);
                                    },
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.photo),
                                    title: Text('Gallery'),
                                    onTap: () {
                                      Navigator.pop(context);
                                      _pickImage(ImageSource.gallery);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        child: _image == null
                            ? Image.asset(
                                'lib/data/images/AddImage.jpg',
                                fit: BoxFit.cover,
                              )
                            : Image.file(_image!, fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          cursorColor: AppColor.primary,

                          decoration: InputDecoration(
                            hintText: 'Name of Product',
                          ),
                          style: kCardName,
                        ),

                        SizedBox(height: 5),
                        Row(
                          children: [
                            ChoiceChip(
                              label: Text(
                                'Hostel',
                                style: TextStyle(color: Colors.white),
                              ),
                              selected: selectedTag == 'Hostel',
                              onSelected: (_) {
                                setState(() {
                                  selectedTag = 'Hostel';
                                });
                              },
                              selectedColor: AppColor.primary,
                              backgroundColor: AppColor.card,
                              checkmarkColor: Colors.white,
                            ),
                            ChoiceChip(
                              label: Text(
                                'College',
                                style: TextStyle(color: Colors.white),
                              ),
                              selected: selectedTag == 'College',
                              onSelected: (_) {
                                setState(() {
                                  selectedTag = 'College';
                                });
                              },
                              selectedColor: AppColor.primary,
                              backgroundColor: AppColor.card,
                              checkmarkColor: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text('₹ ', style: kCardPrice),
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.number,
                                cursorColor: AppColor.primary,
                                decoration: InputDecoration(hintText: 'Price'),

                                style: kCardPrice,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsetsGeometry.all(15),

              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.primary,
              ),
              child: Center(child: Text('ADD', style: kTextHeadline)),
            ),
          ),
        ],
      ),
    );
  }
}
