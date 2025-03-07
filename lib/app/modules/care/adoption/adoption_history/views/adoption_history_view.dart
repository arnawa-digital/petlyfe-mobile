import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:petlyfe_mobile/widgets/layouts/adoption/adoption_history/history_view.dart';
import 'package:petlyfe_mobile/widgets/layouts/adoption/adoption_history/saved_history_view.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_appbar.dart';

import '../controllers/adoption_history_controller.dart';

class AdoptionHistoryView extends GetView<AdoptionHistoryController> {
  const AdoptionHistoryView({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: CustomAppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/svg/your pet.svg', height: 24),
              const SizedBox(width: 10),
              Text("Riwayat Adopsi",
                  style: const TextStyle(
                      fontSize: 21, fontWeight: FontWeight.bold)),
            ],
          ),
          bottom: TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: <Widget>[
              Tab(
                child: Text(
                  "Riwayat",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "Tersimpan",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            HistoryView(),
            SavedHistoryView(),
          ],
        ),
      ),
    );
  }
}
