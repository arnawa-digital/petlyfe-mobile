import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:petlyfe_mobile/app/routes/app_pages.dart';
import 'package:petlyfe_mobile/widgets/ui/adoption/adoption_offer_card.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_appbar.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_button.dart';
import '../controllers/adoption_offer_controller.dart';

class AdoptionOfferView extends GetView<AdoptionOfferController> {
  const AdoptionOfferView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/svg/your pet.svg', height: 24),
            const SizedBox(width: 10),
            const Text(
              "Tawaran Adopsi",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return AdoptionOfferCard(
            name: "Enny Lowti",
            address: "Jl. Kebon Jeruk No. 12, Jakarta Barat",
            imageUrl: "assets/images/dog.jpg",
            socialMedia: [
              {"icon": "assets/icons/svg/whatsapp.svg", "label": "WhatsApp"},
              {"icon": "assets/icons/svg/telegram.svg", "label": "Telegram"},
              {"icon": "assets/icons/svg/instagram.svg", "label": "Instagram"},
            ],
            onTap: () {
              print("Card ${index + 1} ditekan");
            },
            onMorePressed: () {
              print("More options untuk card ${index + 1}");
            },
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 5),
        itemCount: 3,
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
                  child: Text("Tolak Adopsi",
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
                  child: Text("Lihat Profil",
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
