import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlyfe_mobile/app/modules/pet_profile/controllers/pet_profile_controller.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ColumnChart extends StatelessWidget {
  const ColumnChart({super.key});

  @override
  Widget build(BuildContext context) {
    // Mengambil data dari controller
    var consultationData = Get.find<PetProfileController>().healthAndActivity;

    // Membuat data untuk chart berdasarkan data dari controller
    List<_ConsultationData> data = [
      _ConsultationData('Senin', consultationData["senin"] ?? 0),
      _ConsultationData('Selasa', consultationData["selasa"] ?? 0),
      _ConsultationData('Rabu', consultationData["rabu"] ?? 0),
      _ConsultationData('Kamis', consultationData["kamis"] ?? 0),
      _ConsultationData("Jum'at", consultationData["jumat"] ?? 0),
      _ConsultationData('Sabtu', consultationData["sabtu"] ?? 0),
      _ConsultationData('Minggu', consultationData["minggu"] ?? 0),
    ];

    return Column(
      children: [
        SizedBox(
          height: 150,
          child: SfCartesianChart(
            backgroundColor: Colors.transparent, // Menghapus background
            borderColor: Colors.transparent, // Menghapus border
            borderWidth: 0, // Set borderWidth ke 0
            plotAreaBorderWidth: 0, // Menghapus border area plot
            primaryXAxis: const CategoryAxis(
              axisLine: AxisLine(width: 0),
              majorGridLines: MajorGridLines(width: 0),
            ),
            primaryYAxis: const NumericAxis(
              isVisible: false, // Menyembunyikan label sumbu Y
            ),
            tooltipBehavior: TooltipBehavior(enable: true),
            series: <CartesianSeries<_ConsultationData, String>>[
              ColumnSeries<_ConsultationData, String>(
                dataSource: data,
                xValueMapper: (_ConsultationData activity, _) => activity.day,
                yValueMapper: (_ConsultationData activity, _) =>
                    activity.activity,
                name: 'Consultation',
                pointColorMapper: (_, __) => Colors.green,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
                animationDuration: 500,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ConsultationData {
  _ConsultationData(this.day, this.activity);

  final String day;
  final double activity;
}
