import 'package:ecomapp/mytheme.dart';
import 'package:ecomapp/wishlist/wishlistWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishlistScreen extends StatelessWidget {
  static const String routeName = 'wishlist-screen';
  List<WishlistItem> cartList = [
    WishlistItem(
        title: 'Nike Air Jordan',
        imagepath: '',
        color: 'Orange',
        newprice: 3500,
        oldprice: 3000),
    WishlistItem(
        title: 'Nike Air Jordan',
        imagepath: '',
        color: 'Orange',
        newprice: 3500,
        oldprice: 3000),
    WishlistItem(
        title: 'Nike Air Jordan',
        imagepath: '',
        color: 'Orange',
        newprice: 3500,
        oldprice: 3000),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/route_appbar.png',
            height: 22.h, width: 66.w),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w),
                child: Container(
                  width: 348.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.r),
                      border:
                          Border.all(width: 1.w, color: MyTheme.primaryLight)),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 24.w, right: 7.w),
                        child: Icon(Icons.search,
                            color: Theme.of(context).primaryColor, size: 24.h),
                      ),
                      Text(
                        'what do you search for?',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: MyTheme.greyColor),
                      )
                    ],
                  ),
                ),
              ),
              Icon(Icons.shopping_cart_outlined,
                  color: Theme.of(context).primaryColor),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => cartList[index],
              itemCount: cartList.length,
            ),
          ),
        ],
      ),
    );
  }
}
