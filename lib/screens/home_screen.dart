import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thongstore_users/providers/theme_provider.dart';
import 'package:thongstore_users/widgets/subtitle_text.dart';
import 'package:thongstore_users/widgets/title_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO text
            const SubtitleTextWidget(
              label: "Hello World ###",
            ),

            TitlesTextWidget(
              label: "This is title",
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Hello World")),
            SwitchListTile(
                title: Text(
                    themeProvider.getIsDarkTheme ? "Dark Mode" : "Light Mode"),
                value: themeProvider.getIsDarkTheme,
                onChanged: (value) {
                  themeProvider.setDarkTheme(themeValue: value);
                }),
          ],
        ),
      ),
    );
  }
}
