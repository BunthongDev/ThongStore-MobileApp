import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../widgets/title_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TitlesTextWidget(label: "ProfileScreen"),
      ),
    );
  }
}
