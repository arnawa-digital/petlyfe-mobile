import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:petlyfe_mobile/widgets/ui/circular_button.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_button.dart';
import 'package:petlyfe_mobile/widgets/ui/settings_option.dart';

import '../controllers/user_profile_controller.dart';

class UserProfileView extends GetView<UserProfileController> {
  const UserProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Obx(() {
      return controller.isLoading.value
          ? Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: () async {
                await controller.getProfile();
              },
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    pinned: false,
                    expandedHeight: 220,
                    actions: [
                      CircularButton(
                        onPressed: () {},
                        radius: 50,
                        backgroundColor: Colors.black.withOpacity(0.5),
                        borderColor: Colors.transparent,
                        borderWidth: 2,
                        padding: 12,
                        child: SvgPicture.asset(
                          "assets/icons/svg/pencil.svg",
                          width: 20,
                          height: 20,
                        ),
                      )
                    ],
                    flexibleSpace: Stack(
                      children: [
                        Positioned.fill(
                            bottom: 50,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 200,
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                              ),
                            )),
                        Positioned(
                          bottom: -10,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 60,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          left: 0,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Container(
                              width: 100, // Sesuaikan dengan minRadius * 2
                              height: 100, // Sesuaikan dengan minRadius * 2
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors
                                      .white, // Ganti dengan warna border yang diinginkan
                                  width: 4, // Ketebalan border
                                ),
                              ),
                              child: CircleAvatar(
                                minRadius: 50,
                                maxRadius: 50,
                                backgroundImage:
                                    controller.profile.value!.image != null
                                        ? NetworkImage(controller
                                            .profile.value!.image
                                            .toString())
                                        : null,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            children: [
                              Text(
                                controller.profile.value!.name,
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: Color(0xffECF4FE),
                                    border:
                                        Border.all(color: Color(0xff2B68AE)),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text("Premium"),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/icons/svg/email.svg",
                                width: 20,
                                height: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                controller.profile.value!.email,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              CircleAvatar(),
                              CircularButton(
                                onPressed: () {
                                  // Aksi ketika tombol ditekan
                                },
                                radius: 50,
                                backgroundColor: Colors.white,
                                borderColor: Colors.white,
                                borderWidth: 0,
                                padding: 12,
                                child: Icon(Icons.add, color: Colors.black),
                              ),
                              CustomButton(
                                  onPressed: () {},
                                  padding: EdgeInsetsDirectional.symmetric(
                                      horizontal: 10),
                                  backgroundColor: Colors.blue,
                                  child: Row(
                                    children: [
                                      Text("Lihat Profile ",
                                          style:
                                              TextStyle(color: Colors.white)),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      SvgPicture.asset(
                                        "assets/icons/svg/arrow_forward.svg",
                                        width: 15,
                                        height: 15,
                                        // ignore: deprecated_member_use
                                        color: Colors.white,
                                      )
                                    ],
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          // Menampilkan Settings menggunakan ListView.builder
                          Text("Settings",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                          ListView.builder(
                            shrinkWrap: true, // Menghindari overflow
                            physics:
                                NeverScrollableScrollPhysics(), // Agar tidak ada scroll
                            itemCount: controller.settingsOptions.length,
                            itemBuilder: (context, index) {
                              final setting = controller.settingsOptions[index];
                              return SettingsOption(
                                iconPath: setting['iconPath']!,
                                title: setting['title']!,
                                onPressed: () {
                                  // Aksi ketika tombol ditekan (misalnya navigasi)
                                },
                              );
                            },
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text("Informasi",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                          ListView.builder(
                            shrinkWrap: true, // Menghindari overflow
                            physics:
                                NeverScrollableScrollPhysics(), // Agar tidak ada scroll
                            itemCount: controller.information.length,
                            itemBuilder: (context, index) {
                              final setting = controller.information[index];
                              return SettingsOption(
                                iconPath: setting['iconPath']!,
                                title: setting['title']!,
                                onPressed: () {
                                  // Aksi ketika tombol ditekan (misalnya navigasi)
                                },
                              );
                            },
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          CustomButton(
                              onPressed: controller.logout,
                              backgroundColor: Colors.red,
                              child: Text("Keluar Akun",
                                  style: TextStyle(color: Colors.white)))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
    })));
  }
}
