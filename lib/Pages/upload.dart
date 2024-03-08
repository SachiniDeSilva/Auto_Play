import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Add Firestore import

class Upload extends StatefulWidget {
  const Upload({Key? key}) : super(key: key);

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  TextEditingController songname = TextEditingController();
  TextEditingController artistname = TextEditingController();
  late File image, song;
  String imagepath = '', songpath = '';
  late UploadTask imageUploadTask, songUploadTask;
  final firestoreinstance = FirebaseFirestore.instance; // Change to FirebaseFirestore.instance

  Future<void> selectimage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        image = File(result.files.single.path!);
        imagepath = basename(image.path);
      });
      uploadimagefile();
    }
  }

  Future<void> uploadimagefile() async {
    FirebaseStorage storage = FirebaseStorage.instance;
    Reference ref = storage.ref().child(imagepath);

    imageUploadTask = ref.putFile(image);

    imageUploadTask.whenComplete(() async {
      String imageUrl = await ref.getDownloadURL();
      print('Image uploaded: $imageUrl');
    }).catchError((onError) {
      print('Upload failed: $onError');
    });
  }

  Future<void> selectsong() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        song = File(result.files.single.path!);
        songpath = basename(song.path);
      });
      uploadsongfile();
    }
  }

  Future<void> uploadsongfile() async {
    FirebaseStorage storage = FirebaseStorage.instance;
    Reference ref = storage.ref().child(songpath);

    songUploadTask = ref.putFile(song);

    songUploadTask.whenComplete(() async {
      String songUrl = await ref.getDownloadURL();
      print('Song uploaded: $songUrl');
    }).catchError((onError) {
      print('Upload failed: $onError');
    });
  }

  finalupload() {
    var data = {
      "song_name": songname.text,
      "artist_name": artistname.text,
      // Assuming song_down_url and image_down_url are obtained after upload
      "song_url": "", // Replace with actual URL
      "image_url": "", // Replace with actual URL
    };
    firestoreinstance.collection("songs").add(data); // Use add() to automatically generate document ID
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: selectimage,
                    child: Text("Select Image"),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: selectsong,
                    child: Text("Select Song"),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 10.0, 20.0, 10.0),
                    child: TextField(
                      controller: songname,
                      decoration: InputDecoration(
                        hintText: "Enter song name",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 10.0, 20.0, 10.0),
                    child: TextField(
                      controller: artistname,
                      decoration: InputDecoration(
                        hintText: "Enter Artist name",
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: finalupload,
                    child: Text("Upload"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
