import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_test/presentation/widgets/custom_dropdown.dart';
import '../../core/theme.dart';
import '../controllers/home_controller.dart';
import '../widgets/feature_chip.dart';
import '../widgets/property_card.dart';
import '../widgets/search_field.dart';
import '../widgets/category_selector.dart';

class HomePage extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Location",style: TextStyle(fontSize: 16,color: AppTheme.smallTextColor),),
              // Location and Notification
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomDropdown(),
                  Image.asset("assets/icon/IC_Notification.png",color: Colors.black,),
                ],
              ),
              SizedBox(height: 16),
              // Search + Filter
              Row(
                children: [
                  Expanded(child: SearchField()),
                  SizedBox(width: 12),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset("assets/icon/filter.png")
                  ),
                ],
              ),
              SizedBox(height: 16),
              // Categories
              CategorySelector(),
              SizedBox(height: 16),
              // Near from you section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text(
                    "Near from you",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: (){}, child: Text("See More",style: TextStyle(color: AppTheme.smallTextColor),))

                ],
              ),
              SizedBox(height: 8),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    PropertyCard(
                      title: "Dreamsville House",
                      location: "Jl. Sultan Iskandar Muda",
                      distance: "1.8 km",
                    ),
                    PropertyCard(
                      title: "Ascot House",
                      location: "Jl. Cilandak Tengah",
                      distance: "2.0 km",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              // Best for you section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best for you",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: (){}, child: Text("See More",style: TextStyle(color: AppTheme.smallTextColor),))

                ],
              ),
              SizedBox(height: 8),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      onTap: () {
                        Get.toNamed('/property-detail');
                      },
                      leading: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                        ),
                        child: Image.asset(
                          "assets/images/house1.jpg",
                          width: 60,
                        ),
                      ),
                      title: Text("Orchard House"),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rp. 2.500.000.000 / Year",
                            style: TextStyle(color: AppTheme.primaryColor),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              FeatureChip(
                                icon: "assets/icon/IC_Bed.png",
                                label: '6 Bedroom',
                                gap: 5,
                                iconColor: Colors.grey,
                                size: 15,
                                textColor: AppTheme.smallTextColor,
                              ),
                              SizedBox(width: 25),
                              FeatureChip(
                                icon: "assets/icon/IC_Bath.png",
                                label: '4 Bathroom',
                                gap: 5,
                                iconColor: Colors.grey,
                                size: 15,
                                textColor: AppTheme.smallTextColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                        ),
                        child: Image.asset(
                          "assets/images/house2.jpg",
                          width: 60,
                        ),
                      ),
                      title: Text("The Hollies House"),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rp. 2.500.000.000 / Year",
                            style: TextStyle(color: AppTheme.primaryColor),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              FeatureChip(
                                icon: "assets/icon/IC_Bed.png",
                                label: '6 Bedroom',
                                gap: 5,
                                iconColor: Colors.grey,
                                size: 15,
                                textColor: AppTheme.smallTextColor,
                              ),
                              SizedBox(width: 25),
                              FeatureChip(
                                icon: "assets/icon/IC_Bath.png",
                                label: '4 Bathroom',
                                gap: 5,
                                iconColor: Colors.grey,
                                size: 15,
                                textColor: AppTheme.smallTextColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Get.toNamed('/property-detail');
                      },
                      leading: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                        ),
                        child: Image.asset(
                          "assets/images/house3.jpg",
                          width: 60,
                        ),
                      ),
                        title: Text("Sea Breezes  HouseSea Breezes  House"),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rp. 900.000.000 / Year",
                            style: TextStyle(color: AppTheme.primaryColor),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              FeatureChip(
                                icon: "assets/icon/IC_Bed.png",
                                label: '2 Bedroom',
                                gap: 5,
                                iconColor: Colors.grey,
                                size: 15,
                                textColor: AppTheme.smallTextColor,
                              ),
                              SizedBox(width: 25),
                              FeatureChip(
                                icon: "assets/icon/IC_Bath.png",
                                label: '2 Bathroom',
                                gap: 5,
                                iconColor: Colors.grey,
                                size: 15,
                                textColor: AppTheme.smallTextColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Get.toNamed('/property-detail');
                      },
                      leading: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                        ),
                        child: Image.asset(
                          "assets/images/house4.jpg",
                          width: 60,
                        ),
                      ),
                      title: Text("Orchard House"),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rp. 8.500.000.000 / Year",
                            style: TextStyle(color: AppTheme.primaryColor),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              FeatureChip(
                                icon: "assets/icon/IC_Bed.png",
                                label: '2 Bedroom',
                                gap: 5,
                                iconColor: Colors.grey,
                                size: 15,
                                textColor: AppTheme.smallTextColor,
                              ),
                              SizedBox(width: 25),
                              FeatureChip(
                                icon: "assets/icon/IC_Bath.png",
                                label: '2 Bathroom',
                                gap: 5,
                                iconColor: Colors.grey,
                                size: 15,
                                textColor: AppTheme.smallTextColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
