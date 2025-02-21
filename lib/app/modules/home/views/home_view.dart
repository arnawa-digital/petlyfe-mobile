import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:petlyfe_mobile/widgets/layouts/home/progress_card.dart';
import 'package:petlyfe_mobile/widgets/layouts/home/header_home.dart';
import 'package:petlyfe_mobile/widgets/layouts/home/pet_card.dart';
import 'package:petlyfe_mobile/widgets/ui/home/donation_card.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Column(
                  children: [
                    HeaderHome(
                      userName: 'Eny Lowti',
                      message: 'How’s your today with your bestie Bocil?',
                      onNotificationPressed: () {},
                    ),
                    const SizedBox(height: 20),
                    ProgressCardWidget(
                      level: "Beginner",
                      progress: 0.5,
                      progressText: "460/2.000",
                      onPressed: () {
                        print("Button pressed");
                      },
                    ),
                    const SizedBox(height: 20),
                    PetCard(),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Donasi dan Penggalangan Dana",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Lihat Semua",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 220, // Sesuaikan tinggi agar pas
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 16),
                  itemCount: 3,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return DonationCard(
                      daysRemaining: "5",
                      shelterName: "Shelter Kucing Bandung",
                      fundraiserTitle: "Pengobatan Kucing Korban Tabrak Lari",
                      collectedAmount: "1.000.000",
                      progress: 0.5,
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Container(
                      width: width,
                      height: 187.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/home banner.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Rekomendasi Adopsi",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Lihat Semua",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200, // Sesuaikan tinggi agar pas
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 16),
                  itemCount: 5,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return DonationCard(
                      daysRemaining: "14",
                      shelterName: "14 hari lagi",
                      fundraiserTitle: "Donations Title",
                      collectedAmount: "9.000.000.000",
                      progress: 0.5,
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Layanan Kami",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Lihat Semua",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100, // Sesuaikan tinggi agar pas
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 16),
                  itemCount: controller.servicesList.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 58,
                      child: Column(
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.blue),
                            ),
                            child: SvgPicture.asset(
                              controller.servicesList[index]["imageUrl"]
                                  .toString(),
                              width: 10,
                              height: 10,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            controller.servicesList[index]["label"].toString(),
                            style: TextStyle(fontSize: 12, color: Colors.blue),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Container(
                      width: width,
                      height: 187.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/home banner.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("The end of the page, scrool up")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
