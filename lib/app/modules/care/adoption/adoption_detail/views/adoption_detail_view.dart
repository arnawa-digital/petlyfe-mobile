import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:petlyfe_mobile/widgets/ui/button_back.dart';
import 'package:petlyfe_mobile/widgets/ui/circular_button.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_button.dart';
import 'package:petlyfe_mobile/widgets/ui/home/info_row.dart';

import '../controllers/adoption_detail_controller.dart';

class AdoptionDetailView extends GetView<AdoptionDetailController> {
  const AdoptionDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomButton(
          onPressed: () {},
          backgroundColor: Colors.blue,
          child: Text(
            "Adopsi Sekarang!",
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 230,
            pinned: true,
            floating: false,
            leading: const Padding(
              padding: EdgeInsets.only(left: 16),
              child: ButtonBack(),
            ),
            actions: [
              CircularButton(
                backgroundColor: Colors.white,
                borderColor: Colors.transparent,
                onPressed: () {},
                child: const Icon(Icons.favorite, color: Colors.pink),
              ),
              CircularButton(
                backgroundColor: Colors.white,
                borderColor: Colors.transparent,
                onPressed: () {},
                child: const Icon(Icons.share, color: Colors.grey),
              ),
            ],
            flexibleSpace: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/kucing.png",
              ),
            ))),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(165),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Kucing Telon Domestik",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 16, // Jarak antar item dalam satu baris
                      runSpacing: 8, // Jarak antar baris jika wrap terjadi
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2 - 24,
                          child: InfoRow(
                            iconPath: "assets/icons/svg/umur.svg",
                            label: "Umur",
                            value: "1 Tahun",
                            labelColor: Colors.white,
                            valueColor: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2 - 24,
                          child: InfoRow(
                            iconPath: "assets/icons/svg/betina.svg",
                            label: "Kelamin",
                            value: "Betina",
                            labelColor: Colors.white,
                            valueColor: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2 - 24,
                          child: InfoRow(
                            iconPath: "assets/icons/svg/ras.svg",
                            label: "Ras",
                            value: "Domestic",
                            labelColor: Colors.white,
                            valueColor: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2 - 24,
                          child: InfoRow(
                            iconPath: "assets/icons/svg/berat.svg",
                            label: "Berat",
                            value: "3.42 Kg",
                            labelColor: Colors.white,
                            valueColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/svg/profile.svg",
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(width: 10),
                                Text("Pemilik Adopsi"),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 10,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Eny Lowti",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/svg/alamat.svg",
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(width: 10),
                                Text("Alamat Lengkap",
                                    style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Perumahan Permata Buah Batu Blok A 17, Bojongsoang, Kabupaten Bandung",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Deskripsi",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Obx(() {
                        final isExpanded =
                            controller.isDescriptionExpanded.value;
                        final text =
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              isExpanded
                                  ? text
                                  : '${text.substring(0, 500)}...',
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                            Center(
                              child: TextButton(
                                onPressed: () {
                                  controller.isDescriptionExpanded.toggle();
                                },
                                child: Text(
                                  isExpanded ? "Tutup" : "Baca Selengkapnya",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Keunikan",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Wrap(
                        children: [
                          SizedBox(
                            width: (MediaQuery.of(context).size.width / 2) - 24,
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.pink,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(Icons.check,
                                      color: Colors.white, size: 12),
                                ),
                                SizedBox(width: 5),
                                Expanded(child: Text("Aktif Banget dan Nakal"))
                              ],
                            ),
                          ),
                          SizedBox(
                            width: (MediaQuery.of(context).size.width / 2) - 24,
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.pink,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(Icons.check,
                                      color: Colors.white, size: 12),
                                ),
                                SizedBox(width: 5),
                                Expanded(child: Text("Rajin Bersihin Badan"))
                              ],
                            ),
                          ),
                          SizedBox(
                            width: (MediaQuery.of(context).size.width / 2) - 24,
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.pink,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(Icons.check,
                                      color: Colors.white, size: 12),
                                ),
                                SizedBox(width: 5),
                                Expanded(child: Text("Ga Bau"))
                              ],
                            ),
                          ),
                          SizedBox(
                            width: (MediaQuery.of(context).size.width / 2) - 24,
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.pink,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(Icons.check,
                                      color: Colors.white, size: 12),
                                ),
                                SizedBox(width: 5),
                                Expanded(child: Text("Pinter banget"))
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
