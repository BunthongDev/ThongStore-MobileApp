import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thongstore_users/consts/theme_data.dart';
import 'package:thongstore_users/providers/theme_provider.dart';
import 'package:thongstore_users/root_screen.dart';
import 'package:thongstore_users/screens/home_screen.dart';
import 'package:thongstore_users/screens/inner_screen/product_details.dart';
import 'package:thongstore_users/screens/inner_screen/viewed_recently.dart';
import 'package:thongstore_users/screens/inner_screen/wishlist.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) {
          return ThemeProvider();
        })
      ],
      child: Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'ShopSmart EN',
          theme: Styles.themeData(
              isDarkTheme: themeProvider.getIsDarkTheme, context: context),
          home: const RootScreen(),
          routes: {
            ProductDetailsScreen.routName: (context) =>
                const ProductDetailsScreen(),
            WishlistScreen.routName: (context) => const WishlistScreen(),
            ViewedRecentlyScreen.routName: (context) =>
                const ViewedRecentlyScreen(),
          },
        );
      }),
    );
  }
}
