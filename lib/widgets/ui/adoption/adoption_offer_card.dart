import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AdoptionOfferCard extends StatelessWidget {
  final String name;
  final String address;
  final String imageUrl;
  final List<Map<String, String>> socialMedia;
  final VoidCallback onTap;
  final VoidCallback onMorePressed;

  const AdoptionOfferCard({
    super.key,
    required this.name,
    required this.address,
    required this.imageUrl,
    required this.socialMedia,
    required this.onTap,
    required this.onMorePressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: const BorderSide(color: Colors.grey),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Gambar Hewan
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(imageUrl), // Load dari asset
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),

                  // Info Hewan
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/svg/alamat.svg',
                            ),
                            const SizedBox(width: 5),
                            Expanded(
                              child: Text(
                                address,
                                style: const TextStyle(fontSize: 10),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),

                        // Sosial Media Dinamis
                        Wrap(
                          spacing: 10,
                          runSpacing: 5,
                          children: socialMedia.map((item) {
                            return _socialMediaItem(
                                item['icon']!, item['label']!);
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),

                  // Tombol Aksi
                  IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/svg/option.svg',
                      color: Colors.black,
                    ),
                    onPressed: onMorePressed,
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget _socialMediaItem(String iconPath, String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(iconPath, height: 15, width: 15),
        const SizedBox(width: 5),
        Text(label, style: const TextStyle(fontSize: 10)),
      ],
    );
  }
}
