import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i9xp_commerce/models/product.model.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';
import 'package:i9xp_commerce/utils/formatters.dart';

class ItemProduct extends StatelessWidget {
  final double width;
  final double height;
  final ProductModel product;
  ItemProduct(this.width, this.height, this.product);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: RawMaterialButton(
        onPressed: () => Get.toNamed("/products/${this.product.id.value.toString()}"),
        padding: EdgeInsets.all(10),
        fillColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: width - 20,
              height: width - 20,
              decoration: BoxDecoration(
                image: this.product.imageUrl.value != null
                    ? DecorationImage(
                        image: CachedNetworkImageProvider(
                            this.product.imageUrl.value),
                        fit: BoxFit.contain,
                      )
                    : null,
              ),
            ),
            SizedBox(height: 5),
            Text(
              this.product.name.value,
              style: TextStyle(
                fontSize: 12,
                color: AppColors.marineDark,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 3),
            Text(
              Formatters.brl(this.product.price.value).symbolOnLeft,
              style: TextStyle(
                fontSize: 10,
                color: AppColors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
