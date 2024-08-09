import 'package:al_quran_digital/asset/home_screen.dart';
import 'package:al_quran_digital/tabs_bottom/bookmark.dart';
import 'package:al_quran_digital/tabs_bottom/doa.dart';
import 'package:al_quran_digital/tabs_bottom/shalat.dart';
import 'package:al_quran_digital/tabs_bottom/tips.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';

class bottemBar extends StatefulWidget {
  const bottemBar({super.key});

  @override
  State<bottemBar> createState() => _bottemBarState();
}

class _bottemBarState extends State<bottemBar> {
  int myIndex = 0;
  void selectedTabINdex(int index) {
    setState(() {
      myIndex = index;
    });
  }

  final List<Widget> _peges = [
    const HomeScreen(),
    const tips(),
    const shalat(),
    const doa(),
    const bookmark()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              'Al Quran Digital',
              style: GoogleFonts.poppins(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const Spacer(),
            IconButton(
                onPressed: (() => {}),
                icon: SvgPicture.asset('../assets/svg/serch-icon.svg')),
          ],
        ),
      ),
      body: _peges[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectedTabINdex,
        currentIndex: myIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                '../assets/svg/quran-icon.svg',
                color: Colors.blue,
              ),
              activeIcon: SvgPicture.asset(
                '../assets/svg/quran-icon.svg',
                color: Colors.blue[700],
              ),
              label: 'Quran'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                '../assets/svg/lampu-icon.svg',
                color: Colors.blue,
              ),
              activeIcon: SvgPicture.asset(
                '../assets/svg/lampu-icon.svg',
                color: Colors.blue[700],
              ),
              label: 'Tips'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                '../assets/svg/orang-icon.svg',
                color: Colors.blue,
              ),
              activeIcon: SvgPicture.asset(
                '../assets/svg/orang-icon.svg',
                color: Colors.blue[700],
              ),
              label: 'Player'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                '../assets/svg/doa-icon.svg',
                color: Colors.blue,
              ),
              activeIcon: SvgPicture.asset(
                '../assets/svg/doa-icon.svg',
                color: Colors.blue[700],
              ),
              label: 'doa'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                '../assets/svg/bookmark-icon.svg',
                color: Colors.blue,
              ),
              activeIcon: SvgPicture.asset(
                '../assets/svg/bookmark-icon.svg',
                color: Colors.blue[700],
              ),
              label: 'bookmark'),
        ],
      ),
    );
  }
}
