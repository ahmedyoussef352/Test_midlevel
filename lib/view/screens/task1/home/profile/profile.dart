import 'package:flutter/material.dart';

import '../../../../../core/constance/colors/colors.dart';
import '../../../../../core/constance/images/images_assets.dart';
import '../../../../components/componenets.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 250,
          child: Stack(
            children: [
              // Expanded(
              //child:
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  // height: 150,
                  child: Image.asset(
                    coverProfile,
                  ),
                ),
              ),
              // ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Profile',
                            style: TextStyle(
                              color: white,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            )),
                        InkWell(
                            onTap: () {},
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.edit,
                                  color: white,
                                ),
                                Text('Edit',
                                    style: TextStyle(
                                      color: white,
                                    )),
                              ],
                            )),
                      ],
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 42),
                      child: const Column(
                        children: [
                          CircleAvatar(
                            radius: 68,
                            backgroundColor: Color(0x1AFFFFFF),
                            backgroundImage: AssetImage(profile),
                          ),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              lable(label: "Name"),
              const SizedBox(
                height: 10,
              ),
              textformField(context, text: "Ahmed Youssef Abbas"),
              const SizedBox(
                height: 25,
              ),
              lable(label: 'Email'),
              const SizedBox(
                height: 10,
              ),
              textformField(context, text: "ay33220187@gmail.com"),
              const SizedBox(
                height: 25,
              ),
              lable(label: 'Phone'),
              const SizedBox(
                height: 10,
              ),
              textformField(context, text: "01144353231"),
              const SizedBox(
                height: 25,
              ),
              lable(label: 'Address'),
              const SizedBox(
                height: 12,
              ),
              textformField(
                context,
                text: "15 May, Helwan",
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
