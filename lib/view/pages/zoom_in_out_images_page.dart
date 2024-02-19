import 'package:flutter/material.dart';

import 'package:easy_image_viewer/easy_image_viewer.dart';

class ZoomPage extends StatelessWidget {
  ZoomPage({super.key, required this.url});
  String url;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Zoom Image"),
      ),
      body: Column(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.sizeOf(context).height * 0.6,
              child: EasyImageView(
                  doubleTapZoomable: true,
                  imageProvider: Image.network(url).image)),
        ],
      ),
    );
  }
}
