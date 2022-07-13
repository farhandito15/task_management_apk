import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_apk/app/utils/style/AppColors.dart';
import 'package:task_management_apk/app/utils/widget/header.dart';
import 'package:task_management_apk/app/utils/widget/sidebar.dart';

import '../controllers/friends_controller.dart';

class FriendsView extends GetView<FriendsController> {

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
            const Icon(Icons.notifications, 
            color: appColors.primaryText, 
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
                              : BorderRadius.circular(30)
                  ),
                  child:  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                      'People You May Know',
                    style: TextStyle(
                      fontSize: 10, 
                      color: appColors.primaryText,
                      ),
                    ),
                    SizedBox(
                      height: 160,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        clipBehavior: Clip.antiAlias,
                        itemCount: 8,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Stack(
                              children:[
                            ClipRRect(
                                  borderRadius:BorderRadius.circular(50),
                                  child: const Image(
                                    image: NetworkImage(
                                        'https://th.bing.com/th/id/OIP.LAsTdvNl0MnzSP3DKPvb1gHaEo?pid=ImgDet&w=683&h=427&rs=1'
                                    ),
                                  ),
                                ),
                            Positioned(
                              bottom: 10,
                              left: 35,
                              child: Text(
                                'Farhan Dito', 
                              style: TextStyle(color: Colors.white), 
                            ),
                            ),
                            Positioned(
                            bottom: 0,
                            right: 0,
                            child: SizedBox(
                              height: 30,
                              width: 30,
                              child: ElevatedButton(
                                onPressed: () {}, 
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: 
                                      BorderRadius.circular(40),
                                  ),
                                ),
                                child: 
                                Icon(Icons.add_circle_outline),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                },
              ),
                      ),
                  myFriends(),
                  ]
                ),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}