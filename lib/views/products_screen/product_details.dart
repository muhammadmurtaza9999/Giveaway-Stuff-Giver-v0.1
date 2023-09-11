import 'package:flutter/material.dart';
import 'package:gas_giver/const/colors.dart';
import 'package:gas_giver/views/widgets/text_style.dart';
import 'package:get/get.dart';

import '../../const/const.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back, color: darkGrey)),
        title: boldText(text: "Product title", color: fontGrey, size: 16.0),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VxSwiper.builder(
                autoPlay: true,
                height: 350,
                itemCount: 3,
                aspectRatio: 16 / 9,
                viewportFraction: 1.0,
                itemBuilder: (context, index) {
                  return Image.asset(
                    imgProduct,
                    //data["p_imgs"][index],
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }),
            10.heightBox,
            //title and details section
            ///////////////////////////////
            // title!.text
            //     .size(16)
            //     .color(darkFontGrey)
            //     .fontFamily(semibold)
            //     .make(),
            ////////////////////////////////////
            // boldText(text: "Product title", color: fontGrey, size: 16.0),
            // 10.heightBox,
            // //rating
            // VxRating(
            //   isSelectable: false,
            //   // value: double.parse(data['p_rating']),
            //   // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
            //   value: 3.0,
            //   onRatingUpdate: (Value) {},
            //   normalColor: textfieldGrey,
            //   selectionColor: golden,
            //   count: 5,
            //   maxRating: 5,
            //   size: 25,
            //   // stepInt: true,
            // ),
            ///////////////////////////////

          ],
        ),
      ),
    );
  }
}
