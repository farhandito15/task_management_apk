import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app2/app/utils/style/AppColors.dart';

class ProfileW extends StatelessWidget {
  const ProfileW({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: !context.isPhone
          ? Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 90,
                      foregroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSibTMP3266859JrPVaoYmIXXinEtq9Bn_hfg&usqp=CAU'),
                    ),
                  ),
                ),
                // SizedBox( width: 10,),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Marcellia Nara.B',
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        'marcellia@gmail.com',
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Center(
              child: Column(
                children: const [
                  //SizedBox(
                  //height: 40,
                  //),
                  ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 80,
                      foregroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSibTMP3266859JrPVaoYmIXXinEtq9Bn_hfg&usqp=CAU'),
                    ),
                  ),
                  // SizedBox(
                  //  height: 20,
                  // ),
                  Text(
                    'Marcellia Nara.B',
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    'marcellia@gmail.com',
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}