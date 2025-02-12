import 'package:flutter/material.dart';
import 'package:petlyfe_mobile/app/models/onboard.dart';
import 'image_container.dart';

class SliderWidget extends StatelessWidget {
  final PageController pageController;
  final List<OnBoard> onboard;
  final int pageIndex;
  final double height;
  final double width;
  final Function(int index) onChange;

  const SliderWidget({
    super.key,
    required this.pageController,
    required this.onboard,
    required this.pageIndex,
    required this.height,
    required this.width,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.78, // Slider mengambil 60% dari tinggi layar
      child: PageView.builder(
        controller: pageController,
        itemCount: onboard.length,
        scrollDirection: Axis.horizontal,
        onPageChanged: onChange,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  onboard[index].title,
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                Text(
                  onboard[index].description,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ImageContainer(
                  imageUrl: onboard[index].image,
                  height:
                      height / 1.78, // Gambar mengambil 40% dari tinggi layar
                  width: width,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
