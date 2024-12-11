import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:imagefeacthing/modal/model.dart';
import 'package:imagefeacthing/services/imageserivces.dart';

class Imagecontroller extends ChangeNotifier {
  bool isloading = false;
  List<ImageFecthing> getAllimageDataToList = [];
  Imageserivces serviecesOfImaages = Imageserivces();

  Future<void> getallImages() async {
    isloading = true;
    notifyListeners();
    try {
      List<ImageFecthing> data = await serviecesOfImaages.getAll();
      log("Fetched data: ${data.length} items");
      getAllimageDataToList = data;
    } catch (e) {
      log("Error fetching images: $e");
      throw Exception("Error fetching images: $e");
    } finally {
      isloading = false;
      notifyListeners();
    }
  }
}
