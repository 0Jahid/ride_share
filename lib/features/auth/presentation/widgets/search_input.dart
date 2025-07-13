import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: const Color(0xFFFFFFFF),
        border: Border.all(color: const Color(0xFFEAEBEC), width: 1),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 46, vertical: 16),
      child: const Text(
        'Where to go?',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color(0xFFC7CACE),
          fontFamily: 'SF Pro Text',
          letterSpacing: 1,
        ),
      ),
    );
  }
}
