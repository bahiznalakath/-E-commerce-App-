import 'package:e_commerce_app/UI/cartpage.dart';
import 'package:e_commerce_app/UI/homepage.dart';
import 'package:e_commerce_app/UI/product_by_cart.dart';
import 'package:e_commerce_app/UI/profile.dart';
import 'package:e_commerce_app/UI/searchpage.dart';
import 'package:e_commerce_app/controllers/mainscreen_provider.dart';
import 'package:e_commerce_app/shared/BottomNav.dart';
import 'package:e_commerce_app/shared/BottomNavWidget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = const [
    HomePage(),
    SearchPage(),
    ProductByCat(tabIndex: null,),
    CartPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, child) {
      return Scaffold(
        backgroundColor: const Color(0xFFE2E2E2),
        body: pageList[mainScreenNotifier.pageIndex],
        bottomNavigationBar: const BottomNav(),
      );
    });
  }
}
