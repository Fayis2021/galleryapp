import 'package:get/get.dart';

class HomePageController extends GetxController {
  RxBool ondoubleTapClicked = false.obs;
  // disable after 3 seconds
  Future disable() async {
    await Future.delayed(Duration(seconds: 3));
    ondoubleTapClicked.value = false;
  }

  List<Map> images = <Map>[
    {
      "img":
          "https://static.vecteezy.com/system/resources/previews/019/520/923/original/payment-success-paid-bill-concept-illustration-flat-design-eps10-modern-graphic-element-for-landing-page-empty-state-ui-infographic-icon-vector.jpg",
      "showurl": false
    },
    {
      "img":
          "https://static.vecteezy.com/system/resources/previews/005/337/799/original/icon-image-not-found-free-vector.jpg",
      "showurl": false
    },
    {
      "img":
          "https://static.vecteezy.com/system/resources/previews/005/337/799/original/icon-image-not-found-free-vector.jpg",
      "showurl": false
    },
    {
      "img":
          "https://static.vecteezy.com/system/resources/previews/019/520/923/original/payment-success-paid-bill-concept-illustration-flat-design-eps10-modern-graphic-element-for-landing-page-empty-state-ui-infographic-icon-vector.jpg",
      "showurl": false
    },
    {
      "img":
          "https://static.vecteezy.com/system/resources/previews/005/337/799/original/icon-image-not-found-free-vector.jpg",
      "showurl": false
    },
    {
      "img":
          "https://static.vecteezy.com/system/resources/previews/005/337/799/original/icon-image-not-found-free-vector.jpg",
      "showurl": false
    },
    {
      "img":
          "https://static.vecteezy.com/system/resources/previews/019/520/923/original/payment-success-paid-bill-concept-illustration-flat-design-eps10-modern-graphic-element-for-landing-page-empty-state-ui-infographic-icon-vector.jpg",
      "showurl": false
    },
  ];
}
