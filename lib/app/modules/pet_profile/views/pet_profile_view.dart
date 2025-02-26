import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:petlyfe_mobile/widgets/layouts/pet_profile/header_pet_profile.dart';
import 'package:petlyfe_mobile/widgets/ui/pet_profile/column_chart.dart';

import 'package:petlyfe_mobile/widgets/ui/pet_profile/reminder_for_you.dart';
import 'package:petlyfe_mobile/widgets/ui/pet_profile/schedule_item.dart';
import 'package:petlyfe_mobile/widgets/ui/pet_profile/service_item.dart';
import '../controllers/pet_profile_controller.dart';

class PetProfileView extends GetView<PetProfileController> {
  const PetProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          HeaderPetProfile(
            petName: "Bocil Si Kecil",
            ownerName: "Pet of Eny Lowti",
            statusLabel: "Healthy",
            statusBgColor: Color(0xffEFFBF0),
            statusBorderColor: Color(0xff469B48),
            statusTextColor: Color(0xff469B48),
            statusIconColor: Color(0xff469B48),
            age: "1 Tahun",
            gender: "Betina",
            weight: "3.42 Kg",
            breed: "Domestic",
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        "Services",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 16),
                    itemCount: controller.servicesList.length,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ServiceItem(
                        imageUrl: controller.servicesList[index]["imageUrl"]
                            .toString(),
                        label:
                            controller.servicesList[index]["label"].toString(),
                        borderColor: Colors.blue,
                        textColor: Colors.blue,
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Health and Activity",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            icon: SvgPicture.asset(
                              "assets/icons/svg/option.svg",
                              width: 8,
                              height: 8,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      ColumnChart(),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Reminder For You",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                            child: Text(
                              "Lihat Semua",
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) => ReminderForYou(
                          leadingColor: Colors.blue,
                          title: "Sarapan Cemilan Whiskas",
                          subtitle: "Daily, Jam 07.15",
                          trailingColor: Colors.blue,
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Latest Medical Reports",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                            child: Text(
                              "Lihat Semua",
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (context, index) => ScheduleItem(
                                iconColor: Colors.blue,
                                title: "Vaksinasi Rabies",
                                clinicName: "Klinik Mutiara Pet Shop",
                                dateTime: "10 Januari 2025, Jam 21.00",
                                onTap: () {
                                  // Aksi ketika item ditekan
                                },
                              )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
