import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thongstore_users/consts/app_constants.dart';
import 'package:thongstore_users/providers/theme_provider.dart';
import 'package:thongstore_users/services/assets_manager.dart';
import 'package:thongstore_users/widgets/app_name_text.dart';
import 'package:thongstore_users/widgets/products/ctg_rounded_widget.dart';
import 'package:thongstore_users/widgets/products/latest_arrival.dart';
import 'package:thongstore_users/widgets/subtitle_text.dart';
import 'package:thongstore_users/widgets/title_text.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            AssetsManager.shoppingCart,
          ),
        ),
        title: const AppNameTextWidget(fontSize: 20),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: size.height * 0.25,
                child: ClipRRect(
                  // borderRadius: BorderRadius.circular(50),
                  child: Swiper(
                    autoplay: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(
                        AppConstants.bannersImages[index],
                        fit: BoxFit.fill,
                      );
                    },
                    itemCount: AppConstants.bannersImages.length,
                    pagination: const SwiperPagination(
                      // alignment: Alignment.center,
                      builder: DotSwiperPaginationBuilder(
                          activeColor: Colors.red, color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const TitlesTextWidget(label: "Latest arrival"),
              const SizedBox(
                height: 15.0,
              ),
              SizedBox(
                height: size.height * 0.2,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const LatestArrivalProductsWidget();
                    }),
              ),
              const TitlesTextWidget(label: "Categories"),
              const SizedBox(
                height: 15.0,
              ),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                children:
                    List.generate(AppConstants.categoriesList.length, (index) {
                  return CategoryRoundedWidget(
                    image: AppConstants.categoriesList[index].image,
                    name: AppConstants.categoriesList[index].name,
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
