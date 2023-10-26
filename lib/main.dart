import 'package:ecomapp/cart/cart_screen.dart';
import 'package:ecomapp/mytheme.dart';
import 'package:ecomapp/wishlist/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: MyTheme().lightTheme,
          initialRoute: WishlistScreen.routeName,
          routes: {
            CartScreen.routeName: (context) => CartScreen(),
            WishlistScreen.routeName: (context) => WishlistScreen(),
          },
        );
      },
      child: CartScreen(),
    );
  }
}
