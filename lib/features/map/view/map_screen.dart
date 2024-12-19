import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/utils/app_routes.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:abo_maged_app/features/home/basket/widgets/color_border_widget.dart';
import 'package:abo_maged_app/features/home/main_navigation/main_navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;
  final TextEditingController _searchController = TextEditingController();
  String _selectedLocation = "الرياض , المملكة العربية السعودية";

  final LatLng _initialPosition = const LatLng(24.7136, 46.6753);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Google Map
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _initialPosition,
              zoom: 10.0,
            ),
          ),
          // Search Bar
          Positioned(
            top: 60,
            left: 16,
            right: 16,
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                setState(() {
                  _selectedLocation = value.isNotEmpty ? value : "الرياض , المملكة العربية السعودية";
                });
              },
              decoration: InputDecoration(
                labelText: 'حدد موقعك',
                labelStyle: const TextStyle(color: AppColors.mainColor),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.yellow),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: AppColors.mainColor,
                  size: 22,
                ),
              ),
            ),
          ),
          // Always Visible Bottom Sheet
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 223.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22.0.r),
                  topRight: Radius.circular(22.0.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("line".getPngAsset),
                    Row(
                      children: [
                        const Icon(Icons.location_on, color: AppColors.yellowColor),
                        TextWidget.mediumText(
                          _selectedLocation,
                          color: AppColors.whiteColor,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                      child: const Divider(color: AppColors.babyMainColor),
                    ),
                    ColorBorderWidget(
                      child: InkWell(
                        onTap: () {
                          AppRoutes.routeTo(context, const MainNavigationScreen());
                        },
                        child: Container(
                          height: 60.h,
                          width: 368.w,
                          decoration: BoxDecoration(
                            color: AppColors.secondColor,
                            borderRadius: BorderRadius.circular(9.r),
                            border: Border.all(color: AppColors.mainColor),
                          ),
                          child: const Center(
                            child: TextWidget("تأكيد", color: AppColors.whiteColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:abo_maged_app/features/home/basket/widgets/color_border_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;
  final TextEditingController _searchController = TextEditingController();
  String _selectedLocation = "الرياض , المملكة العربية السعودية"; // Default location

  final LatLng _initialPosition = const LatLng(24.7136, 46.6753); // Riyadh, Saudi Arabia
  LatLng _currentPosition = const LatLng(24.7136, 46.6753);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Future<void> _updateMapLocation(String location) async {
    const apiKey = "AIzaSyBx10ci4eMaIGUs9BEe4wPzs2dZuclIeD0"; // Replace with your Google API key
    final url = "https://maps.googleapis.com/maps/api/geocode/json?address=$location&key=$apiKey";

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        if (data['status'] == 'OK') {
          final lat = data['results'][0]['geometry']['location']['lat'];
          final lng = data['results'][0]['geometry']['location']['lng'];
          setState(() {
            _currentPosition = LatLng(lat, lng);
            _selectedLocation = location;
          });

          // Move the map camera to the new location
          mapController.animateCamera(
            CameraUpdate.newLatLng(_currentPosition),
          );
        } else {
          print('Error response from API: ${data['status']}');
          _showError("Location not found. Please try again.");
        }
      } else {
        print('HTTP request failed with status: ${response.statusCode}');
        _showError("Failed to fetch location. Check your network.");
      }
    } catch (e) {
      print('Error during request: $e');
      _showError("An error occurred. Please try again.");
    }
  }


  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Google Map
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _initialPosition,
              zoom: 10.0,
            ),
            markers: {
              Marker(
                markerId: const MarkerId('currentLocation'),
                position: _currentPosition,
              ),
            },
          ),
          // Search Bar
          Positioned(
            top: 60,
            left: 16,
            right: 16,
            child: TextField(
              controller: _searchController,
              onSubmitted: (value) {
                if (value.isNotEmpty) {
                  _updateMapLocation(value);
                }
              },
              decoration: InputDecoration(
                labelText: 'حدد موقعك',
                labelStyle: const TextStyle(color: AppColors.mainColor),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.yellow),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: AppColors.mainColor,
                  size: 22,
                ),
              ),
            ),
          ),
          // Always Visible Bottom Sheet
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 223.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22.0.r),
                  topRight: Radius.circular(22.0.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("line".getPngAsset),
                    Row(
                      children: [
                        const Icon(Icons.location_on, color: AppColors.yellowColor),
                        TextWidget.mediumText(
                          _selectedLocation,
                          color: AppColors.whiteColor,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                      child: const Divider(color: AppColors.babyMainColor),
                    ),
                    ColorBorderWidget(
                      child: InkWell(
                        onTap: () {
                          // Add your navigation logic here
                        },
                        child: Container(
                          height: 60.h,
                          width: 368.w,
                          decoration: BoxDecoration(
                            color: AppColors.secondColor,
                            borderRadius: BorderRadius.circular(9.r),
                            border: Border.all(color: AppColors.mainColor),
                          ),
                          child: const Center(
                            child: TextWidget("تأكيد", color: AppColors.whiteColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/