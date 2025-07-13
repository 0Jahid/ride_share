import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'search_input.dart';
import 'hero_section.dart';
import 'ride_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 480),
            margin: const EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              children: [
                const SizedBox(height: 60),
                const Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF323437),
                    fontFamily: 'SF Pro Text',
                    letterSpacing: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 41),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SearchInput(),
                      const SizedBox(height: 30),
                      const HeroSection(
                        imageUrl:
                            'https://cdn.builder.io/api/v1/image/assets/af984660a3844fd683c3d2a6efc189d2/45b750f07f8a0cc104d7bdc461c2802341ccc264?placeholderIfAbsent=true',
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Last Traveled With',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF323437),
                          fontFamily: 'SF Pro Text',
                          letterSpacing: 1,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const RideCard(
                        driverName: 'Dominic Ement',
                        vehicleInfo: 'Mercedes (ET YL421)',
                        date: '17 March, 2022',
                        isOnline: true,
                      ),
                      const SizedBox(height: 14),
                      const RideCard(
                        driverName: 'Theodore Handle',
                        vehicleInfo: 'Honda (RY 1532)',
                        date: '10 March, 2022',
                        isOnline: false,
                      ),
                      const SizedBox(height: 14),
                      const RideCard(
                        driverName: 'Wisteria Ravenclaw',
                        vehicleInfo: 'Volvo (TY 5831)',
                        date: '24 February, 2022',
                        isOnline: true,
                      ),
                      const SizedBox(height: 14),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color(0xFFFFFFFF),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x0A000000),
                              offset: Offset(0, 2),
                              blurRadius: 48,
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.fromLTRB(77, 14, 77, 7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Hugh Saturation',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF323437),
                                fontFamily: 'SF Pro Text',
                                letterSpacing: 1,
                              ),
                            ),
                            const SizedBox(height: 7),
                            const Text(
                              'Tesla (TS 4218)',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF828589),
                                fontFamily: 'SF Pro Text',
                                letterSpacing: 1,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              '16 February, 2022',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFC7CACE),
                                fontFamily: 'SF Pro Text',
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
