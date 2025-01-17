import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:thongstore_users/widgets/title_text.dart';

class AppNameTextWidget extends StatelessWidget {
  const AppNameTextWidget({super.key, required int fontSize});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(seconds: 10),
      baseColor: Colors.purple,
      highlightColor: Colors.red,
      child: const TitlesTextWidget(
        label: "ThongStore",
      ),
    );
  }
}
