import 'package:flutter/material.dart';
import 'package:news_app/core/config/constants.dart';
import 'package:news_app/core/config/pages_name.dart';
import 'package:news_app/main.dart';

class CustomDrawer extends StatelessWidget {
  Function onCategoryDrawerTap;
   CustomDrawer({super.key,required this.onCategoryDrawerTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Constants.mediaQuery.width * 0.8,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: Constants.mediaQuery.width * 0.8,
            height: 160,
            color: Constants.theme.primaryColor,
            child: Text(
              "News App!",
              style: Constants.theme.textTheme.titleLarge,
            ),
          ),
          InkWell(
            onTap: () {
              onCategoryDrawerTap();

            },
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 25, bottom: 10),
              child: Row(
                children: [
                  const Icon(
                    Icons.list_outlined,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Categories",
                    style: Constants.theme.textTheme.titleLarge
                        ?.copyWith(color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            // onTap: () {
            //   navigatorKey.currentState!
            //       .pushReplacementNamed(PagesRouteName.settingsView);
            // },
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
              child: Row(
                children: [
                  const Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Settings",
                    style: Constants.theme.textTheme.titleLarge
                        ?.copyWith(color: Colors.black),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
