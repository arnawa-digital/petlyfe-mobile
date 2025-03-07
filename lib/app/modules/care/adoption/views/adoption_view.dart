import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:petlyfe_mobile/app/routes/app_pages.dart';
import 'package:petlyfe_mobile/widgets/ui/adoption/adoption_card.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_appbar.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_button.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_checkbox.dart';
import '../controllers/adoption_controller.dart';

class AdoptionView extends GetView<AdoptionController> {
  const AdoptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/svg/your pet.svg', height: 24),
            const SizedBox(width: 10),
            Text("Adopsi Peliharaan",
                style:
                    const TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
          ],
        ),
        actionIcon: 'assets/icons/svg/edit.svg',
        onActionPressed: () {
          Get.toNamed(Routes.ADOPTION_HISTORY);
        },
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Gimana kriteria calon teman baru kamu?',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        ),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                    ),
                  ),
                ),
                Builder(
                  builder: (context) => InkWell(
                    onTap: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    child: Container(
                      width: 48,
                      height: 48,
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/svg/filter.svg',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return AdoptionCard(
            imageUrl: "https://example.com/kucing.jpg",
            name: "Kucing Telon Domestic",
            address: "Perumahan Permata Buah Batu Blok A.17",
            owner: "Eny Lowti",
            age: "1 Tahun",
            gender: "Betina",
            breed: "Domestik",
            onActionPressed: () {
              print("Tombol opsi ditekan!");
            },
            onPressed: () {
              Get.toNamed(Routes.ADOPTION_DETAIL);
            },
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          height: 5,
        ),
        itemCount: 5,
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 100,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Filter',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.close, color: Colors.white),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Obx(() {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildFilterSection("Jenis Hewan Peliharaan", [
                      CustomCheckbox(
                        label: "Kucing",
                        value: controller.kucing.value,
                        onChanged: (value) => controller.kucing.value = value,
                      ),
                      CustomCheckbox(
                        label: "Anjing",
                        value: controller.anjing.value,
                        onChanged: (value) => controller.anjing.value = value,
                      ),
                    ]),
                    _buildFilterSection("Kelamin Hewan Peliharaan", [
                      CustomCheckbox(
                        label: "Jantan",
                        value: controller.jantan.value,
                        onChanged: (value) => controller.jantan.value = value,
                      ),
                      CustomCheckbox(
                        label: "Betina",
                        value: controller.betina.value,
                        onChanged: (value) => controller.betina.value = value,
                      ),
                    ]),
                    _buildFilterSection("Biaya Mengadopsi", [
                      RangeSlider(
                        values: controller.currentRangePriceValues.value,
                        max: 100,
                        divisions: 5,
                        labels: RangeLabels(
                          controller.currentRangePriceValues.value.start
                              .round()
                              .toString(),
                          controller.currentRangePriceValues.value.end
                              .round()
                              .toString(),
                        ),
                        onChanged: (values) {
                          controller.currentRangePriceValues.value = values;
                        },
                      ),
                    ]),
                    _buildFilterSection("Ras Hewan Peliharaan", [
                      CustomCheckbox(
                        label: "Domestik",
                        value: controller.domestik.value,
                        onChanged: (value) => controller.domestik.value = value,
                      ),
                      CustomCheckbox(
                        label: "British Shorthair",
                        value: controller.britishShorthair.value,
                        onChanged: (value) =>
                            controller.britishShorthair.value = value,
                      ),
                      CustomCheckbox(
                        label: "Scottish Fold",
                        value: controller.scottishFold.value,
                        onChanged: (value) =>
                            controller.scottishFold.value = value,
                      ),
                      CustomCheckbox(
                        label: "Anggora",
                        value: controller.anggora.value,
                        onChanged: (value) => controller.anggora.value = value,
                      ),
                      CustomCheckbox(
                        label: "Persian",
                        value: controller.persian.value,
                        onChanged: (value) => controller.persian.value = value,
                      ),
                      CustomCheckbox(
                        label: "Ragdoll",
                        value: controller.ragdoll.value,
                        onChanged: (value) => controller.ragdoll.value = value,
                      ),
                    ]),
                    _buildFilterSection("Warna Hewan Peliharaan", [
                      CustomCheckbox(
                        label: "1 Warna",
                        value: controller.warnaSatu.value,
                        onChanged: (value) =>
                            controller.warnaSatu.value = value,
                      ),
                      CustomCheckbox(
                        label: "2 Warna",
                        value: controller.warnaDua.value,
                        onChanged: (value) => controller.warnaDua.value = value,
                      ),
                      CustomCheckbox(
                        label: "3 Warna",
                        value: controller.warnaTiga.value,
                        onChanged: (value) =>
                            controller.warnaTiga.value = value,
                      ),
                      CustomCheckbox(
                        label: "Lebih Dari 3 Warna",
                        value: controller.warnaLebihTiga.value,
                        onChanged: (value) =>
                            controller.warnaLebihTiga.value = value,
                      ),
                    ]),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomButton(
                            onPressed: () {},
                            backgroundColor: Colors.blue,
                            child: Text("Terapkan Filter",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold))),
                        SizedBox(height: 10),
                        CustomButton(
                            onPressed: () {},
                            backgroundColor: Colors.white,
                            borderColor: Colors.grey,
                            child: Text("Reset Filter",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold))),
                      ],
                    )
                  ],
                );
              }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.blue,
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: CustomButton(
                  onPressed: () {},
                  borderColor: Colors.grey,
                  backgroundColor: Colors.white,
                  child: Text("Simpan",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.bold))),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomButton(
                  onPressed: () {},
                  backgroundColor: Colors.grey,
                  child: Text("Lanjutkan",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold))),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterSection(String title, List<Widget> children) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          Wrap(children: children),
        ],
      ),
    );
  }
}
