import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:petlyfe_mobile/app/modules/home/views/home_view.dart';
import 'package:petlyfe_mobile/app/modules/pet_profile/views/pet_profile_view.dart';
import 'package:petlyfe_mobile/app/modules/user_profile/views/user_profile_view.dart';

import '../controllers/landing_controller.dart';

class LandingView extends GetView<LandingController> {
  const LandingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        tabs: [
          PersistentTabConfig(
            screen: HomeView(),
            item: ItemConfig(
              icon: SvgPicture.asset(
                "assets/icons/svg/home.svg",
                color: Colors.blue,
              ),
              inactiveIcon: SvgPicture.asset(
                "assets/icons/svg/home.svg",
                color: Colors.grey,
              ),
              title: "Home",
            ),
          ),
          PersistentTabConfig(
            screen: Center(
              child: Text("Care"),
            ),
            item: ItemConfig(
              icon: SvgPicture.asset(
                "assets/icons/svg/care.svg",
                color: Colors.blue,
              ),
              inactiveIcon: SvgPicture.asset(
                "assets/icons/svg/care.svg",
                color: Colors.grey,
              ),
              title: "Care",
            ),
          ),
          PersistentTabConfig(
            screen: PetProfileView(),
            item: ItemConfig(
              icon: SvgPicture.asset(
                "assets/icons/svg/your pet.svg",
                color: Colors.blue,
              ),
              inactiveIcon: SvgPicture.asset(
                "assets/icons/svg/your pet.svg",
                color: Colors.grey,
              ),
              title: "Your Pet",
            ),
          ),
          PersistentTabConfig(
            screen: Center(
              child: Text("More"),
            ),
            item: ItemConfig(
              icon: SvgPicture.asset(
                "assets/icons/svg/more.svg",
                color: Colors.blue,
              ),
              inactiveIcon: SvgPicture.asset(
                "assets/icons/svg/more.svg",
                color: Colors.grey,
              ),
              title: "More",
            ),
          ),
          PersistentTabConfig(
            screen: UserProfileView(),
            item: ItemConfig(
              icon: SvgPicture.asset(
                "assets/icons/svg/profile.svg",
                color: Colors.blue,
              ),
              inactiveIcon: SvgPicture.asset(
                "assets/icons/svg/profile.svg",
                color: Colors.grey,
              ),
              title: "Profile",
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) => Style4BottomNavBar(
          navBarDecoration: NavBarDecoration(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 5),
          ),
          navBarConfig: navBarConfig,
        ),
      ),
    );
  }
}
