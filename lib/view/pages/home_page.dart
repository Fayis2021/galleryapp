import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_page_controller.dart';
import 'zoom_in_out_images_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  HomePageController homePageController = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.center,
          runSpacing: MediaQuery.sizeOf(context).width * 0.05,
          spacing: MediaQuery.sizeOf(context).width * 0.02,
          children: List.generate(
              homePageController.images.length,
              (index) => GestureDetector(
                  child: getMyImageWidget(context,
                      homePageController.images[index]["img"], index))),
        ),
      ),
    );
  }
}

Widget getMyImageWidget(context, url, index) {
  HomePageController homePageController = Get.put(HomePageController());
  return Obx(
    () => GestureDetector(
      onDoubleTap: () async {
        homePageController.ondoubleTapClicked.value = true;
        homePageController.disable();
        homePageController.images[index]["showurl"] = true;
        await Future.delayed(const Duration(seconds: 3));
        homePageController.images[index]["showurl"] = false;
      },
      onTap: () {
        Get.to(() => ZoomPage(url: url));
      },
      onLongPress: () {
        showDialog(
            context: context,
            builder: (n) => AlertDialog(
                  title: Image.network(url),
                ));
      },
      child: Stack(
        children: [
          SizedBox(
            height: 100,
            width: 150,
            // width: MediaQuery.sizeOf(context).width * 0.4,
            child: Image.network(
              "$url",
              fit: BoxFit.fill,
            ),
          ),
          homePageController.ondoubleTapClicked.value &&
                  homePageController.images[index]["showurl"]
              ? SizedBox(
                  height: 80,
                  width: 150,
                  // width: MediaQuery.sizeOf(context).width * 0.38,
                  child: Text("$url"))
              : const SizedBox()
        ],
      ),
    ),
  );
}






//backup


/*import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_page_controller.dart';
import 'zoom_in_out_images_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> images = <String>[
    "https://static.vecteezy.com/system/resources/previews/019/520/923/original/payment-success-paid-bill-concept-illustration-flat-design-eps10-modern-graphic-element-for-landing-page-empty-state-ui-infographic-icon-vector.jpg",
    "https://static.vecteezy.com/system/resources/previews/005/337/799/original/icon-image-not-found-free-vector.jpg",
    "https://static.vecteezy.com/system/resources/previews/005/337/799/original/icon-image-not-found-free-vector.jpg",
    "https://static.vecteezy.com/system/resources/previews/019/520/923/original/payment-success-paid-bill-concept-illustration-flat-design-eps10-modern-graphic-element-for-landing-page-empty-state-ui-infographic-icon-vector.jpg",
    "https://static.vecteezy.com/system/resources/previews/019/520/923/original/payment-success-paid-bill-concept-illustration-flat-design-eps10-modern-graphic-element-for-landing-page-empty-state-ui-infographic-icon-vector.jpg",
    "https://static.vecteezy.com/system/resources/previews/019/520/923/original/payment-success-paid-bill-concept-illustration-flat-design-eps10-modern-graphic-element-for-landing-page-empty-state-ui-infographic-icon-vector.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 12,
          spacing: 12,
          children: List.generate(
              images.length,
              (index) => GestureDetector(
                  child: getMyImageWidget(context, images[index]))),
        ),
      ),
    );
  }
}

Widget getMyImageWidget(context, url) {
  HomePageController homePageController = Get.put(HomePageController());
  return Obx(
    () => GestureDetector(
      onDoubleTap: () {
        homePageController.ondoubleTapClicked.value = true;
        homePageController.disable();
      },
      onTap: () {
        Get.to(() => ZoomPage(url: url));
      },
      onLongPress: () {
        showDialog(
            context: context,
            builder: (n) => AlertDialog(
                  title: Image.network(url),
                ));
      },
      child: Stack(
        children: [
          SizedBox(
            height: 100,
            width: MediaQuery.sizeOf(context).width * 0.4,
            child: Image.network(
              "$url",
              fit: BoxFit.fill,
            ),
          ),
          homePageController.ondoubleTapClicked.value
              ? SizedBox(
                  height: 80,
                  width: MediaQuery.sizeOf(context).width * 0.38,
                  child: Text("$url"))
              : const SizedBox()
        ],
      ),
    ),
  );
}
*/