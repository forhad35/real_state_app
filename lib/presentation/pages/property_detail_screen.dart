import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import 'package:skill_test/presentation/widgets/drawer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../core/theme.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
class PropertyDetailScreen extends StatelessWidget {
   PropertyDetailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenHeight= MediaQuery.sizeOf(context).height;
    final screenWidth= MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight*0.05,),
            // Top Image with Back & Favorite
            Container(
              width: size.width*0.92,
              height: size.height * 0.35,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(Color.fromRGBO(0, 0, 0, 0.4), BlendMode.darken),
                  image: NetworkImage(

                    'https://images.unsplash.com/photo-1564013799919-ab600027ffc6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child:
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: screenHeight*0.025,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _iconButton(Icons.arrow_back, () => Get.back()),
                        _iconButton(Icons.favorite_border, () {}),
                      ],
                    ),
                    SizedBox(height: screenHeight*0.09,),
                    Text(
                      'Dreamsville House',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600,color: Colors.white),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: const [
                        Text('Jl. Sultan Iskandar Muda, Jakarta selatan', style: TextStyle(color:AppTheme.smallTextColor1 )),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        _FeatureChip(icon: Icons.king_bed, label: '6 Bedroom'),
                        SizedBox(width: 25,),
                        _FeatureChip(icon: Icons.bathtub, label: '4 Bathroom'),
                      ],
                    ),
                  ],
                ),
              ),
            ),


            // Details section
            Expanded(
              child: Container(
                width: screenWidth,
                // height: screenHeight*0.15,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView(
                  children: [

                    // const SizedBox(height: 16),
                    const Text(
                      'Description',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Colors.black,fontFamily: "Raleway"),
                    ),
                    const SizedBox(height: 8),
                    ReadMoreText(
                      'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars demo shdjsd',
                      trimLength: 99,
                      colorClickableText: Colors.blue,
                      trimMode: TrimMode.Length,
                      trimCollapsedText: 'See more',
                      trimExpandedText: 'See less',
                      style:  TextStyle(fontSize: 11, color: AppTheme.smallTextColor,height: 2),

                    ),


                  ],
                ),

              ),
            ),
            Row(
              children: [
                SizedBox(height: screenHeight*0.1,)
              ],
            ),
            Row(
              children: [
                SizedBox(height: screenHeight*0.1,)

              ],
            ),
            Stack(
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40)
                    ),
                    width:MediaQuery.sizeOf(context).width*0.95,
                    height: MediaQuery.sizeOf(context).height*0.15,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child:map(context)
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text("Price" ,style: TextStyle(color: AppTheme.smallTextColor,fontSize: 12,fontWeight: FontWeight.w400,fontFamily: "Raleway"),),
                        Text("Rp. 2.500.000.000 / Year",style: TextStyle(color: AppTheme.titleTextColor,fontSize: 16,fontWeight: FontWeight.w500),)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: ElevatedButton(
                          onPressed: () {
                          },
                          child: const Text('Rent Now'),
                        ),
                      ),
                    ),
                  ],
                ),


              ],
            ),


            // Book Now button


          ],
        ),
      ),
    );
  }

  Widget _iconButton(IconData icon, VoidCallback onPressed) {
    return CircleAvatar(
      backgroundColor: Color.fromRGBO(0, 0, 0, 0.24),
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        onPressed: onPressed,
      ),
    );
  }
}


Widget map(BuildContext context) {

  LatLng houseLocation = LatLng(23.872011687009266, 90.27760328077898);

  return FlutterMap(
    options: MapOptions(
      initialCenter: houseLocation,
      initialZoom: 16// Center the map over London
    ),
    children: [
      TileLayer(
        urlTemplate: 'https://{s}.basemaps.cartocdn.com/light_all/{z}/{x}/{y}{r}.png',
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
  final IconData icon;
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
            color: Color.fromRGBO(255, 255, 255, 0.2)
          ),
            child: Icon(icon, size: 18, color: Colors.white)),
        SizedBox(width: 12,),
        Text(label,style: TextStyle(color: AppTheme.smallTextColor1),),
      ],
    );
  }
}
