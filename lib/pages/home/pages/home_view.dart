import 'package:flutter/material.dart';
import 'package:news_app/core/config/constants.dart';
import 'package:news_app/core/widgets/custom_background_widget.dart';
import 'package:news_app/main.dart';
import 'package:news_app/pages/home/pages/category_view.dart';
import 'package:news_app/pages/home/widgets/custom_drawer.dart';

import '../../../models/category_model.dart';
import '../widgets/custom_item_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<CategoryModel> categoriesModel = [
    CategoryModel(
      id: "sports",
      title: "Sports",
      image: "assets/images/sports_icn.png",
      backgroundColor: const Color(0xffC91C22),
    ),
    CategoryModel(
      id: "general",
      title: "Politics",
      image: "assets/images/politics_icn.png",
      backgroundColor: const Color(0xff003E90),
    ),
    CategoryModel(
      id: "health",
      title: "Health",
      image: "assets/images/health_icn.png",
      backgroundColor: const Color(0xffeD1E79),
    ),
    CategoryModel(
      id: "business",
      title: "Business",
      image: "assets/images/business_icn.png",
      backgroundColor: const Color(0xffCF7E48),
    ),
    CategoryModel(
      id: "environment",
      title: "Environment",
      image: "assets/images/environment_icn.png",
      backgroundColor: const Color(0xff4882CF),
    ),
    CategoryModel(
      id: "science",
      title: "Science",
      image: "assets/images/science_icn.png",
      backgroundColor: const Color(0xffF2D352),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          title: Text(
            selectCategory == null ? "News App" : selectCategory!.title,
            style: Constants.theme.textTheme.titleLarge,
          ),
        ),
        drawer: CustomDrawer(onCategoryDrawerTap: onDrawerCategoryClicked),
        body: selectCategory == null
            ? Padding(
                padding: const EdgeInsets.all(35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Pick your category \n of interest",
                      textAlign: TextAlign.start,
                      style: Constants.theme.textTheme.bodyLarge?.copyWith(
                          color: const Color(0xff4F5A69), height: 1.2),
                    ),
                    Expanded(
                      child: GridView.builder(
                        padding: const EdgeInsets.symmetric(
                            vertical: 25, horizontal: 20),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 20.0,
                                crossAxisSpacing: 20.0,
                                childAspectRatio: 4 / 5),
                        itemBuilder: (context, index) => CustomItemWidget(
                          index: index,
                          categoryModel: categoriesModel[index],
                          onCategoryClicked: onCategoryClicked,
                        ),
                        itemCount: 6,
                      ),
                    ),
                  ],
                ),
              )
            : CategoryView(categoryModel: selectCategory!),
      ),
    );
  }

  CategoryModel? selectCategory;

  void onDrawerCategoryClicked() {
    setState(() {
      selectCategory = null;
    });
    navigatorKey.currentState!.pop();
  }

  void onCategoryClicked(CategoryModel categoryModel) {
    selectCategory = categoryModel;
    print(categoryModel.id);
    setState(() {});
  }
}
