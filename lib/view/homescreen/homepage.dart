import 'package:flutter/material.dart';
import 'package:imagefeacthing/controller/imagecontroller.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<Imagecontroller>(context, listen: false).getallImages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Imagecontroller>(
        builder: (context, value, child) {
          if (value.isloading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: value.getAllimageDataToList.length,
            itemBuilder: (context, index) {
              final values = value.getAllimageDataToList[index];
              return Container(
                height: 200,
                width: 300,
                child: Image.network(values.url ?? 'no ImageFound'),
              );
            },
          );
        },
      ),
    );
  }
}
