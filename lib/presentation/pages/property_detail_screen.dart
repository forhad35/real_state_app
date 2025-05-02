import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import '../../core/theme.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../widgets/gallery_for_property_detail_screen.dart';

class PropertyDetailScreen extends StatelessWidget {
  PropertyDetailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          spacing: 3,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // -height 07%----
            SizedBox(height: screenHeight * 0.055),
            // ---------Top Image with Back & Favorite------------ height 33%
            Container(
              width: size.width * 0.92,
              height: size.height * 0.33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Color.fromRGBO(0, 0, 0, 0.4),
                    BlendMode.darken,
                  ),
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1564013799919-ab600027ffc6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: screenHeight * 0.025),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _iconButton(Icons.arrow_back_ios_new, () => Get.back(),Color.fromRGBO(0, 0, 0, 0.24)),
                        _iconButton(Icons.bookmark_border_sharp, () {},Color.fromRGBO(0, 0, 0, 0.24)),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.09),
                    Text(
                      'Dreamsville House',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: const [
                        Text(
                          'Jl. Sultan Iskandar Muda, Jakarta selatan',
                          style: TextStyle(color: AppTheme.smallTextColor1),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        _FeatureChip(
                          icon: "assets/icon/IC_Bed.png",
                          label: '6 Bedroom',
                        ),
                        SizedBox(width: 25),
                        _FeatureChip(
                          icon: "assets/icon/IC_Bath.png",
                          label: '4 Bathroom',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // -height 02%----
            // -----------  Details section --------- height 13%
            Container(
              width: screenWidth * 0.95,
              height: screenHeight * 0.14,
              // height: screenHeight*0.15,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const SizedBox(height: 16),
                    const Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontFamily: "Raleway",
                      ),
                    ),
                    const SizedBox(height: 8),
                    ReadMoreText(
                      'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars demo this is bla bla ',
                      trimLength: 99,
                      colorClickableText: Colors.blue,
                      trimMode: TrimMode.Length,
                      trimCollapsedText: 'See more',
                      trimExpandedText: 'See less',
                      style: TextStyle(
                        fontSize: 11,
                        color: AppTheme.smallTextColor,
                        height: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //------------profile section------ height 1%
            SizedBox(
              width: screenWidth*0.95,
              height: screenHeight*0.1,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/profile_photo.png",
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(width: screenWidth*0.36,
                    child: ListTile(
                      title: Text("Garry Allen"),
                      titleTextStyle: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500,fontFamily: "Raleway"),
                      subtitle: Text("Owner"),
                      subtitleTextStyle: TextStyle(color: AppTheme.smallTextColor,fontSize: 12,fontWeight: FontWeight.w400,fontFamily: "Raleway"),

                    ),
                  ),
              SizedBox(
                width: screenWidth*0.13,),
                  Row(
                    children: [
                      _profileIconButton("assets/icon/call.png"),
                      SizedBox(width: screenWidth*0.06,),
                      _profileIconButton("assets/icon/massage.png")
                    ],
                  )
                ],
              ),
            ),
            //-------- gallery section -------
            SizedBox(height: screenHeight*0.15,
              width: screenWidth*0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Gallery",style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Raleway",
                    color: Colors.black
                  ),),
                  SizedBox(
                    height:10 ,
                  ),
                  GallerySection(),
                  SizedBox(
                    height:10 ,
                  ),
                ],
              ),
            ),
            // ---------- Map and price & rent now button --------
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: screenHeight * 0.05),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  width: MediaQuery.sizeOf(context).width * 0.95,
                  height: MediaQuery.sizeOf(context).height * 0.2,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: map(context),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Price",
                            style: TextStyle(
                              color: AppTheme.smallTextColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Raleway",
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Rp. 2.500.000.000 / Year",
                            style: TextStyle(
                              color: AppTheme.titleTextColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25, bottom: 10),
                        decoration: BoxDecoration(
                          gradient: AppTheme.btnBgColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            padding: EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Rent Now',
                            style: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Book Now button
          ],
        ),
      ),
    );
  }
//-------------------------- profile icon section ------------------------ //
  Widget _profileIconButton(icon){
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Color.fromRGBO(10, 190, 217, 0.5),
      ),
      child: Image.asset(icon, height: 18, color: Colors.white),
    );
  }
  // ===============================arrow icon section=====================================//

  Widget _iconButton(IconData icon, VoidCallback onPressed,bgColor) {
    return CircleAvatar(
      backgroundColor: bgColor,
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        onPressed: onPressed,
      ),
    );
  }
}

// ------------------------------- map section ------------------------------------------- //
Widget map(BuildContext context) {
  LatLng houseLocation = LatLng(23.872011687009266, 90.27760328077898);

  return FlutterMap(
    options: MapOptions(
      initialCenter: houseLocation,
      initialZoom: 16, // Center the map over London
    ),
    children: [
      TileLayer(
        urlTemplate:
            'https://{s}.basemaps.cartocdn.com/light_all/{z}/{x}/{y}{r}.png',
        subdomains: ['a', 'b', 'c'],
        userAgentPackageName: 'com.example.app',
      ),
      MarkerLayer(
        markers: [
          Marker(
            width: 20.0,
            height: 20.0,
            point: houseLocation,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(33, 150, 243, 0.2),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

class _FeatureChip extends StatelessWidget {
  final String icon;
  final String label;

  const _FeatureChip({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: Color.fromRGBO(255, 255, 255, 0.2),
          ),
          child: Image.asset(icon, height: 18, color: Colors.white),
        ),
        SizedBox(width: 12),
        Text(label, style: TextStyle(color: AppTheme.smallTextColor1)),
      ],
    );
  }
}
