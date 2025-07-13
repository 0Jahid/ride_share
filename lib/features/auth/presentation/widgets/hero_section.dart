import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  final String imageUrl;

  const HeroSection({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
      child: AspectRatio(
        aspectRatio: 1.595,
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey[300],
                      child: const Icon(Icons.image, size: 50),
                    );
                  },
                ),
              ),
            ),
            Positioned(
              left: 14,
              right: 14,
              bottom: 14,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Find Your Nearest Ride',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFFFFFFF),
                      height: 1.4,
                      fontFamily: 'SF Pro Text',
                      letterSpacing: 1,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: const Color(0xFFFFFFFF),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 64,
                      vertical: 17,
                    ),
                    child: const Text(
                      'EXPLORE',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF41689D),
                        fontFamily: 'SF Pro Text',
                        letterSpacing: 1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
