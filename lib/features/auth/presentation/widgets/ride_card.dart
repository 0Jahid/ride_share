import 'package:flutter/material.dart';

class RideCard extends StatelessWidget {
  final String driverName;
  final String vehicleInfo;
  final String date;
  final bool isOnline;

  const RideCard({
    Key? key,
    required this.driverName,
    required this.vehicleInfo,
    required this.date,
    this.isOnline = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      padding: isOnline
          ? const EdgeInsets.fromLTRB(68, 14, 68, 14)
          : const EdgeInsets.fromLTRB(77, 14, 77, 14),
      child: Row(
        children: [
          if (isOnline) ...[
            Column(
              children: [
                const SizedBox(height: 45),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: const Color(0xFF14B25C),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: const Color(0xFFFFFFFF),
                      width: 1,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 19),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  driverName,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF323437),
                    fontFamily: 'SF Pro Text',
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  vehicleInfo,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF828589),
                    fontFamily: 'SF Pro Text',
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  date,
                  style: const TextStyle(
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
        ],
      ),
    );
  }
}
