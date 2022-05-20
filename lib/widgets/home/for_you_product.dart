import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app_ui/data/example_data.dart';
import 'package:hotel_booking_app_ui/widgets/home/product.dart';

Column buildForYouProduct(Color defaultColor, Size size) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Para ti', //category name
            style: GoogleFonts.lato(
              color: defaultColor,
              fontSize: size.height * 0.025,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            //TODO: add view all action
            onTap: () => print('view all'),
            child: Text(
              'Ver todo',
              style: GoogleFonts.lato(
                color: defaultColor.withOpacity(0.4),
                fontSize: size.height * 0.02,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      Padding(
        padding: EdgeInsets.symmetric(
          vertical: size.height * 0.025,
        ),
        child: CarouselSlider.builder(
          itemCount: forYouProduct.length,
          itemBuilder: (context, i, ri) {
            Map product = forYouProduct[i];
            return buildProduct(product, defaultColor, size);
          },
          options: CarouselOptions(
            viewportFraction: 1,
            height: size.height * 0.38,
            enableInfiniteScroll: true,
            autoPlay: forYouProduct.length > 1 ? true : false,
            autoPlayInterval: const Duration(seconds: 8),
          ),
        ),
      ),
    ],
  );
}
