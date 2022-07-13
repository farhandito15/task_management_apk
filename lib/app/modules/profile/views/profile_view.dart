import 'package:task_management_apk/app/utils/widget/myTask.dart';
import 'package:task_management_apk/app/utils/widget/ProfilWidget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_apk/app/utils/style/AppColors.dart';
import 'package:task_management_apk/app/utils/widget/header.dart';
import 'package:task_management_apk/app/utils/widget/sideBar.dart';

import '../controllers/friends_controller.dart';

final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:_drawerKey,
      drawer: SideBar(),
      backgroundColor: appColors.primaryBg,
      body: Row(
        children: [
         !context.isPhone 
         ? const Expanded( 
            flex: 2,
            child: const SideBar(), 
            )
          : const SizedBox(),

         Expanded(
            flex: 15,
            child: Column(
              children: [
                !context.isPhone 
                ? const Header()
                : Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                  children: [IconButton(onPressed: () {
                    _drawerKey.currentState!.openDrawer();
                  }, 
                  icon: Icon(Icons.menu, 
                  color: appColors.primaryText)
            ),

             const SizedBox(
              width: 15, 
           ),
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Task Management',
                  style: TextStyle(fontSize: 20, color: appColors.primaryText),
                ),
                Text('Menjadi mudah dengan Task Management',
                    style: TextStyle(fontSize: 14, color: appColors.primaryText)
                )
              ],
            ),
            const Spacer(),
            
            GestureDetector(
              onTap: () {
                Get.defaultDialog(
                  title: 'Log Out',
                  content: const Text('Apakah yakin akan keluar?'),
                  cancel: ElevatedButton(
                    onPressed: () => Get.back(),
                    child: const Text('Batal'),
                  ),
                  confirm: ElevatedButton(
                      onPressed: () => Get.toNamed(Routes.LOGIN),
                      child: const Text('Ya')),
                );
              },
              child: Row(
                children: const [
                  Text('Log Out',
                      style: TextStyle(fontSize: 15, color: appColors.primaryText)),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.logout,
                    color: appColors.primaryText,
                    size: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
            //content / isipage /screen
                Expanded(
                  child: Container(
                    padding: !context.isPhone
                        ? const EdgeInsets.all(30)
                        : const EdgeInsets.all(10),
                    margin:
                        !context.isPhone ? const EdgeInsets.all(10) : null,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: !context.isPhone
                        ? BorderRadius.circular(50)
                        : BorderRadius.circular(30)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                    ProfilWidget(),
                      Text(
                          'My Task',
                            style: TextStyle(
                            color: appColors.primaryText,
                            fontSize: 15,
                           ),
                        ),
                      SizedBox(
                            height: 5,
                          ),
                      SizedBox(
                        height: 200,
                        child: MyTask(),
                      ),
                    ],),
                ),
              )
              ],
            ),
         ),
        ],
      ),
    );
  }
}
