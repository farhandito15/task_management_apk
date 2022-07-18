import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:task_management_apk/app/routes/app_pages.dart';

import '../styles/AppColors.dart';

class myFriends extends StatelessWidget {
  const myFriends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'My Friends',
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () => Get.toNamed(Routes.HOME),
                    child: Text(
                      'more',
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Icon(Icons.chevron_right_rounded,
                      color: AppColors.primaryText),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                  height: 300,
                  child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: context.isPhone ? 2 : 3,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(90),
                              child: const CircleAvatar(
                                backgroundColor: Colors.amber,
                                radius: 60,
                                foregroundImage: NetworkImage(
                                    'https://yt3.ggpht.com/a/AATXAJyUEgqkrx-_Vhz-cpHNMfONR22tfRaCScNzyg=s900-c-k-c0xffffffff-no-rj-mo'),
                              ),
                            ),
                            Text(
                              'Farhan Dito',
                              style: TextStyle(color: AppColors.primaryText),
                            ),
                          ],
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
