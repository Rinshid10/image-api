import 'package:flutter/material.dart';

class ImageFecthing {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;
  ImageFecthing({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });
  factory ImageFecthing.fromJson(Map<String, dynamic> json) {
    return ImageFecthing(
        albumId: json['albumId'],
        id: json['id'],
        title: json['title'],
        url: json['url'],
        thumbnailUrl: json['thumbnailUrl']);
  }
}
