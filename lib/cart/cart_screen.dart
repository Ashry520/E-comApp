import 'package:ecomapp/cart/cartWidget.dart';
import 'package:ecomapp/mytheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = 'cart-screen';
  List<CartItem> cartList = [
    CartItem(
        title: 'Nike Air Jordan',
        imagepath: '',
        color: 'Orange',
        size: 40,
        price: 3500,
        quantity: 1),
  ];
  int totalprice = 3500;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            // Button logic here
          },
          icon: Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
        ),
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Button logic here
            },
            icon: Icon(Icons.search, color: Theme.of(context).primaryColor),
          ),
          IconButton(
            onPressed: () {
              // Button logic here
            },
            icon: Icon(Icons.shopping_cart_outlined,
                color: Theme.of(context).primaryColor),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => cartList[index],
              itemCount: cartList.length,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 98.h, left: 16.w, right: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 12.h),
                      child: Text('Total Price',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: MyTheme.greyColor)),
                    ),
                    Text('EGP $totalprice',
                        style: Theme.of(context).textTheme.titleMedium),
                  ],
                ),
                InkWell(
                  onTap: () {
                    //logic here
                  },
                  child: Container(
                    height: 48.h,
                    width: 270.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Theme.of(context).primaryColor),
                    child: Padding(
                      padding: EdgeInsets.only(top: 12.h, bottom: 12.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 83.w),
                            child: Text('Check out',
                                style: Theme.of(context).textTheme.labelMedium),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 27.w, right: 32.w),
                            child: Icon(Icons.arrow_forward,
                                size: 20.w, color: MyTheme.whiteColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
