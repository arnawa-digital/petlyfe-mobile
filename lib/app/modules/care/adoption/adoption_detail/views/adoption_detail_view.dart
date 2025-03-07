import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:petlyfe_mobile/widgets/layouts/adoption/header_adoption_detail.dart';
import 'package:petlyfe_mobile/widgets/layouts/adoption/owner_adoption_info.dart';
import 'package:petlyfe_mobile/widgets/ui/adoption/uniqueness.dart';
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
        padding: const EdgeInsets.all(
          16,
        ),
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
                child: const Icon(Icons.favorite, color: Color(0xffE5638B)),
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
                  child: HeaderAdoptionDetail(
                    name: "Kucing Telon Domestik",
                    age: "1 Tahun",
                    gender: "Betina",
                    breed: "Domestic",
                    weight: "3.42 Kg",
                  )),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OwnerAdoptionInfo(
                        ownerName: "Eny Lowti",
                        address:
                            "Perumahan Permata Buah Batu Blok A 17, Bojongsoang, Kabupaten Bandung",
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
                                      isExpanded
                                          ? "Tutup"
                                          : "Baca Selengkapnya",
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
                          SizedBox(height: 10),
                          Wrap(
                            children: [
                              SizedBox(
                                  width:
                                      (MediaQuery.of(context).size.width / 2) -
                                          24,
                                  child: Uniqueness(
                                      text: "Aktif Banget dan Nakal")),
                              SizedBox(
                                  width:
                                      (MediaQuery.of(context).size.width / 2) -
                                          24,
                                  child:
                                      Uniqueness(text: "Rajin Bersihin Badan")),
                              SizedBox(
                                width: (MediaQuery.of(context).size.width / 2) -
                                    24,
                                child: Uniqueness(text: "Ga Bau"),
                              ),
                              SizedBox(
                                  width:
                                      (MediaQuery.of(context).size.width / 2) -
                                          24,
                                  child: Uniqueness(text: "Pinter Banget"))
                            ],
                          ),
                          SizedBox(height: 25),
                          Text(
                            "Galeri",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/images/kucing.png",
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 10);
                      },
                      itemCount: 5),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
