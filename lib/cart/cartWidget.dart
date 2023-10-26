import 'package:ecomapp/mytheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItem extends StatelessWidget {
  String title;
  String imagepath;
  int price;
  String color;
  int size;
  int quantity;
  CartItem(
      {required this.title,
      required this.imagepath,
      required this.color,
      required this.size,
      required this.price,
      required this.quantity});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 16.w, right: 16.w, top: 24.h, bottom: 24.h),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(width: 1.w, color: MyTheme.lightGreyColor)),
        width: 398.w,
        height: 145.h,
        child: Row(children: [
          Container(
            height: 145.h,
            width: 130.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Image.asset(imagepath, fit: BoxFit.fill),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8.w, right: 8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(title,
                            style: Theme.of(context).textTheme.titleMedium),
                        InkWell(
                          onTap: () {
                            //logic here
                          },
                          child: Icon(
                            Icons.delete_outline,
                            color: MyTheme.blueColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 13.h, bottom: 13.h),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 8.w),
                          child: Icon(
                            Icons.circle,
                            color: MyTheme.redColor,
                            size: 15.w,
                          ),
                        ),
                        Text(color,
                            style: Theme.of(context).textTheme.titleSmall),
                        Padding(
                          padding: EdgeInsets.only(left: 1.w, right: 3.w),
                          child: Container(
                            width: 2.w,
                            height: 15.h,
                            color: MyTheme.greyColor,
                          ),
                        ),
                        Text('Size: $size',
                            style: Theme.of(context).textTheme.titleSmall),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 14.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('EGP $price',
                              style: Theme.of(context).textTheme.titleMedium),
                          Container(
                            height: 42.h,
                            width: 122.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                color: Theme.of(context).primaryColor),
                            child: Padding(
                              padding: EdgeInsets.only(top: 12.h, bottom: 12.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      //logic here
                                    },
                                    child: Icon(Icons.remove_circle_outline,
                                        size: 20.w, color: MyTheme.whiteColor),
                                  ),
                                  Text("$quantity",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium),
                                  InkWell(
                                    onTap: () {
                                      //logic here
                                    },
                                    child: Icon(Icons.add_circle_outline,
                                        size: 20.w, color: MyTheme.whiteColor),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
