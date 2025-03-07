import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlyfe_mobile/app/routes/app_pages.dart';
import 'package:petlyfe_mobile/widgets/ui/adoption/adoption_card.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_button.dart';

class SavedHistoryView extends StatelessWidget {
  const SavedHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: CustomButton(
                  onPressed: () {},
                  borderColor: Colors.grey,
                  backgroundColor: Colors.white,
                  child: Text("Batal Simpan",
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
}
