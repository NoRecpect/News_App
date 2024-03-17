import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/config/constants.dart';
import 'package:news_app/core/widgets/custom_background_widget.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/network/api_manager.dart';

class CategoryView extends StatelessWidget {
  final CategoryModel categoryModel;

  const CategoryView({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    // ApiManager.fetchDataSource(categoryModel.id).then((value) {
    //   for (var e in value) {
    //     print(e.name);
    //   }
    // });
    return CustomBackgroundWidget(
      child: FutureBuilder(
        future: ApiManager.fetchDataSource(categoryModel.id),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text(
                'some thing went wrong',
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          var sourcesList = snapshot.data ?? [];
          return ListView.builder(
            itemCount: sourcesList.length,
            itemBuilder: (context, index) => Text(
              sourcesList[index].name,
              style: Constants.theme.textTheme.bodyLarge
                  ?.copyWith(color: Colors.black),
            ),
          );
        },
      ),
    );
  }
}
