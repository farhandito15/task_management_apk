import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_apk/app/utils/styles/AppColors.dart';
import 'package:task_management_apk/app/utils/widget/header.dart';
import 'package:task_management_apk/app/utils/widget/sidebar.dart';

import '../controllers/task_controller.dart';

class TaskView extends GetView<TaskController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _drawerKey,
        drawer: SideBar(),
        backgroundColor: AppColors.primaryBg,
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
                      ? const header()
                      : Container(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    _drawerKey.currentState!.openDrawer();
                                  },
                                  icon: const Icon(Icons.menu,
                                      color: AppColors.primaryText)),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Task Management',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: AppColors.primaryText),
                                  ),
                                  Text('Menjadi mudah dengan Task Management',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: AppColors.primaryText))
                                ],
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.notifications,
                                color: AppColors.primaryText,
                                size: 30,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 25,
                                  foregroundImage: NetworkImage(
                                      "https://yt3.ggpht.com/a/AATXAJyUEgqkrx-_Vhz-cpHNMfONR22tfRaCScNzyg=s900-c-k-c0xffffffff-no-rj-mo"),
                                ),
                              )
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'My Task',
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Expanded(
                            child: ListView.builder(
                              itemCount: 8,
                              clipBehavior: Clip.antiAlias,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: const EdgeInsets.all(10),
                                  padding: const EdgeInsets.all(15),
                                  height: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.cardBg,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            child: const CircleAvatar(
                                              backgroundColor: Colors.amber,
                                              radius: 20,
                                              foregroundImage: NetworkImage(
                                                  'https://th.bing.com/th/id/R.b8766cd53b5e1529712ed7e49365b7d4?rik=TsjlPG7zn3aD0w&riu=http%3a%2f%2fvignette2.wikia.nocookie.net%2fminions%2fimages%2fd%2fd5%2fKevin_Minion.jpg%2frevision%2flatest%3fcb%3d20150814124849%26path-prefix%3dde&ehk=wupXpg9U446Wa517LmNwMjETMELA31Kf3CqpfYJG1rc%3d&risl=&pid=ImgRaw&r=0'),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            child: const CircleAvatar(
                                              backgroundColor: Colors.amber,
                                              radius: 20,
                                              foregroundImage: NetworkImage(
                                                  'https://th.bing.com/th/id/R.b8766cd53b5e1529712ed7e49365b7d4?rik=TsjlPG7zn3aD0w&riu=http%3a%2f%2fvignette2.wikia.nocookie.net%2fminions%2fimages%2fd%2fd5%2fKevin_Minion.jpg%2frevision%2flatest%3fcb%3d20150814124849%26path-prefix%3dde&ehk=wupXpg9U446Wa517LmNwMjETMELA31Kf3CqpfYJG1rc%3d&risl=&pid=ImgRaw&r=0'),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            child: const CircleAvatar(
                                              backgroundColor: Colors.amber,
                                              radius: 20,
                                              foregroundImage: NetworkImage(
                                                  'https://th.bing.com/th/id/R.b8766cd53b5e1529712ed7e49365b7d4?rik=TsjlPG7zn3aD0w&riu=http%3a%2f%2fvignette2.wikia.nocookie.net%2fminions%2fimages%2fd%2fd5%2fKevin_Minion.jpg%2frevision%2flatest%3fcb%3d20150814124849%26path-prefix%3dde&ehk=wupXpg9U446Wa517LmNwMjETMELA31Kf3CqpfYJG1rc%3d&risl=&pid=ImgRaw&r=0'),
                                            ),
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 25,
                                            width: 80,
                                            color: AppColors.primaryBg,
                                            child: const Center(
                                                child: Text(
                                              '100%',
                                              style: TextStyle(
                                                color: AppColors.primaryText,
                                              ),
                                            )),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Container(
                                        height: 25,
                                        width: 80,
                                        color: AppColors.primaryBg,
                                        child: const Center(
                                            child: Text(
                                          '10/10 Task',
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                          ),
                                        )),
                                      ),
                                      const Text(
                                        'Pemrograman Mobile - Flutter',
                                        style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontSize: 20),
                                      ),
                                      const Text(
                                        'Deadline 3 Hari lagi',
                                        style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        floatingActionButton: Align(
          alignment: const Alignment(0.95, 0.95),
          child: FloatingActionButton.extended(
            onPressed: () {
              Get.bottomSheet(
                Container(
                    margin: context.isPhone
                        ? EdgeInsets.zero
                        : EdgeInsets.only(left: 150, right: 150),
                    height: Get.height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.white,
                    )),
              );
            },
            label: const Text("Tambah Task"),
            icon: const Icon(Icons.add),
          ),
        ));
  }
}
