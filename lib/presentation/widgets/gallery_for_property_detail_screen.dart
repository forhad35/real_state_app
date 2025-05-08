import 'package:flutter/material.dart';

class GallerySection extends StatelessWidget {
  final List<String> imageUrls=[
    'assets/images/house1.jpg',
    'assets/images/house2.jpg',
    'assets/images/house3.jpg',
    'assets/images/house4.jpg',
    'assets/images/house5.jpg',
    'assets/images/house7.jpg',
  ];

   GallerySection({super.key});
final size = 55.0;
  @override
  Widget build(BuildContext context) {
    int displayCount = 4;
    int extraCount = imageUrls.length - displayCount;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(displayCount, (index) {
        if (index == displayCount - 1 && extraCount > 0) {
          return Stack(
            children: [
              buildImage(imageUrls[index]),
              SizedBox(
                width: size,
                height: size,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => Dialog(
                          child: GridView.count(
                            padding: EdgeInsets.all(14),
                            crossAxisCount: 2,
                            children: imageUrls.map((url) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(url),
                            )).toList(),
                          ),
                        ),
                      );
                    },
                    child: Text(
                      '+$extraCount',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          );
        }
        return buildImage(imageUrls[index]);
      }),
    );
  }

  Widget buildImage(String url) {
    return Padding(
      padding: const EdgeInsets.only(right: 1.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          url,
          width: size,
          height: size,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
