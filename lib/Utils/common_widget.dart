import 'package:e_commerce/Utils/colors.dart';
import 'package:e_commerce/Utils/font_family.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

mediumText(text, color, double size, [align]) => Text(
      text,
      textAlign: align,
      style: TextStyle(
          fontFamily: TextFontFamily.ROBOTO_MEDIUM,
          fontSize: size,
          color: color),
    );

boldText(text, color, double size, [align]) => Text(
      text,
      textAlign: align,
      style: TextStyle(
          fontFamily: TextFontFamily.ROBOTO_BOLD, fontSize: size, color: color),
    );

blackText(text, color, double size, [align]) => Text(
      text,
      textAlign: align,
      style: TextStyle(
          fontFamily: TextFontFamily.ROBOTO_BLACK,
          fontSize: size,
          color: color),
    );

lightText(text, color, double size, [align]) => Text(
      text,
      textAlign: align,
      style: TextStyle(
          fontFamily: TextFontFamily.ROBOTO_LIGHT,
          fontSize: size,
          color: color),
    );

regularText(text, color, double size, [align]) => Text(
      text,
      textAlign: align,
      style: TextStyle(
          fontFamily: TextFontFamily.ROBOTO_REGULAR,
          fontSize: size,
          color: color),
    );

containerButton(onTap, text) => InkWell(
      onTap: onTap,
      child: Container(
        height: 52,
        width: Get.width,
        decoration: BoxDecoration(
          color: ColorResources.pre45,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: boldText(text, ColorResources.white, 16),
        ),
      ),
    );
containerWithTextsButton(onTap, price, text) => InkWell(
      onTap: onTap,
      child: Container(
          height: 52,
          width: Get.width,
          decoration: BoxDecoration(
            color: ColorResources.pre45,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: boldText(price, ColorResources.white, 16),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: boldText(text, ColorResources.white, 16),
              )
            ],
          )),
    );

horizontalContainerWithImageAndTitle(
        onTap, String imagePath, String title, String subtitle) =>
    InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xffF4F4F4),
            borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.only(right: 15, left: 20, top: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Image.asset(imagePath),
              title: Text(title),
              subtitle: Text(subtitle),
            ),
          ],
        ),
      ),
    );

containerForAddress(onTap, String fullAddress) => InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: Get.width,
          height: 60,
          decoration: BoxDecoration(
              color: const Color(0xffF4F4F4),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 250,
                child: Text(
                    style: TextStyle(fontSize: 16),
                    softWrap: true,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    fullAddress),
              ),
              const Text(
                "Edit",
                style: TextStyle(color: ColorResources.pre45),
              )
            ],
          ),
        ),
      ),
    );
horizontalContainerWithNotifications(onTap, String imagePath, String title) =>
    InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xffF4F4F4),
            borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.only(right: 15, left: 20, top: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Image.asset(imagePath),
              title: Text(title),
            ),

            // ListTile(
            //   leading: Image.asset(imagePath),
            //   subtitle: Text(subtitle),
            // ),
          ],
        ),
      ),
    );
horizontalContainerWithTextAndIcon(
        onTap, String imagePath, String title, String subTitle) =>
    InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xffF4F4F4),
            borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.only(right: 15, left: 20, top: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: [
                ListTile(
                  leading: Image.asset(imagePath),
                  title: Text(title),
                  subtitle: Text(subTitle),
                ),
              ],
            ),
          ],
        ),
      ),
    );
// containerWithTextAndItocon(),
cardImageAandText(onTap, String imagePath) => InkWell(
      onTap: onTap,
      child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffF4F4F4),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 190.0,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage(imagePath), fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          lightText("Men's Harrington Jacket",
                              ColorResources.grey777, 12),
                          const SizedBox(
                            height: 10,
                          ),
                          boldText('\$148.00', ColorResources.black, 12)
                        ]),
                  ),
                ],
              ))),
    );
containerSpcialImageAandText(onTap, text, String imagepath) => InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Container(
            height: 52,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 20.0,
                  backgroundImage:
                      AssetImage(imagepath), // Replace with your image path
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: boldText(text, ColorResources.black, 12),
                ),
              ],
            )),
      ),
    );
containerBtnPrimary(onTap, text, Color color) => InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 52,
          width: Get.width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: boldText(text, ColorResources.white, 16),
          ),
        ),
      ),
    );

optionSmallSizeBtnPrimary(onTap, text, Color color) => InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 52,
          width: 150,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: boldText(text, ColorResources.white, 16),
          ),
        ),
      ),
    );
containerBtnApple(onTap, text, Color color) => InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            height: 52,
            width: Get.width,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.apple, size: 25, color: Colors.black),
                ),
                const SizedBox(
                  width: 50,
                ),
                boldText(text, ColorResources.black, 16)
              ],
            )),
      ),
    );
containerBtnFacebook(onTap, text, Color color) => InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            height: 52,
            width: Get.width,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.facebook, size: 25, color: Colors.black),
                ),
                const SizedBox(
                  width: 50,
                ),
                boldText(text, ColorResources.black, 16)
              ],
            )),
      ),
    );
containerBtnGoogle(onTap, text, Color color) => InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            height: 52,
            width: Get.width,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.golf_course, size: 25, color: Colors.black),
                ),
                const SizedBox(
                  width: 50,
                ),
                boldText(text, ColorResources.black, 16)
              ],
            )),
      ),
    );

textField(hintText) => TextFormField(
      cursorColor: ColorResources.black,
      style: TextStyle(
        color: ColorResources.black,
        fontSize: 16,
        fontFamily: TextFontFamily.ROBOTO_REGULAR,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: ColorResources.grey9CA,
          fontSize: 16,
          fontFamily: TextFontFamily.ROBOTO_REGULAR,
        ),
        filled: true,
        fillColor: ColorResources.greyF4,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorResources.greyF9F, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorResources.greyF9F, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorResources.greyF9F, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );

textField1(hintText) => TextFormField(
      cursorColor: ColorResources.black,
      style: TextStyle(
        color: ColorResources.black,
        fontSize: 16,
        fontFamily: TextFontFamily.ROBOTO_REGULAR,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: ColorResources.grey9CA,
          fontSize: 16,
          fontFamily: TextFontFamily.ROBOTO_REGULAR,
        ),
        filled: true,
        fillColor: ColorResources.greyF9F,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorResources.greyF9F, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorResources.greyF9F, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorResources.greyF9F, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );

commonColumn(image, text, onTap) => Column(
      children: [
        Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: ColorResources.blue1D3,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: InkWell(
              onTap: onTap,
              child: SvgPicture.asset(image),
            ),
          ),
        ),
        const SizedBox(height: 5),
        regularText(text, ColorResources.grey6B7, 13, TextAlign.center),
      ],
    );
