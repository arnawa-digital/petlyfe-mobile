import 'package:flutter/material.dart';

class CustomStepper extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool status;
  final bool isLastStep;
  final Function()? onTap;

  const CustomStepper({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onTap,
    required this.status,
    required this.isLastStep,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: status ? Colors.blue : Colors.grey,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: status
                            ? Colors.black
                            : Colors.grey, // Ubah warna sesuai status
                      ),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!isLastStep)
                    Row(
                      children: [
                        Container(
                          height: 50.0,
                          width: 1.0,
                          color: status
                              ? Colors.blue
                              : Colors.grey, // Ubah warna sesuai status
                          margin: const EdgeInsets.only(
                              left: 10.0, top: 5.0, bottom: 5.0),
                        ),
                      ],
                    ),
                  SizedBox(width: isLastStep ? 30 : 20),
                  Expanded(
                    child: Text(
                      subTitle,
                      style: TextStyle(
                        fontSize: 10,
                        color: status
                            ? Colors.grey
                            : Colors.grey
                                .shade600, // Abu-abu lebih tua jika status false
                      ),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        InkWell(
          onTap: status ? onTap : null, // Disable tap jika status false
          child: Text(
            "Lihat Detail",
            style: TextStyle(
              color: status
                  ? Colors.blue
                  : Colors.grey, // Ubah warna sesuai status
            ),
          ),
        ),
      ],
    );
  }
}
