import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:thongstore_users/services/assets_manager.dart';
import 'package:thongstore_users/widgets/empty_bag.dart';

import '../widgets/title_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EmptyBagWidget(
        imagePath: AssetsManager.shoppingBasket,
        title: "កន្ត្រក់គឺទទេរ ស្ញេញ 🥹!!",
        subtitle: "អ្នកមិនទាន់បានទិញអ្វីនោះទេ !! ",
        buttonText: "Shop now",
      ),
    );
  }
}
