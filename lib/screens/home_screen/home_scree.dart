import 'package:book_apartment/routes/app_routing.dart';
import 'package:book_apartment/screens/home_screen/components/apartment_card.dart';
import 'package:book_apartment/screens/home_screen/components/home_appbar.dart';
import 'package:book_apartment/utils/constants.dart';
import 'package:book_apartment/utils/reusable_widgets.dart';
import 'package:book_apartment/utils/sample_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _activeIndex = 0;
  void _onIndexChange(index) {
    setState(() {
      _activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    const double padding = 24.0;
    const EdgeInsets sidePadding = EdgeInsets.symmetric(horizontal: padding);
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primary.withOpacity(0.95),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _activeIndex,
        onTap: _onIndexChange,
        type: BottomNavigationBarType.fixed,
        elevation: 20.0,
        selectedItemColor: secondary,
        unselectedItemColor: Colors.grey[400],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sms,
            ),
            label: 'text',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'user',
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: sidePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              addVerticalHeight(25.0),
              const HomeAppBar(),
              Text(
                '55 results in your area',
                style: GoogleFonts.montserrat(
                  color: Colors.grey[600],
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              addVerticalHeight(30.0),
              Expanded(
                child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => context.pushNamed(AppRoutes.apartment.name,
                          extra: list[index]),
                      child: ApartmentCard(
                        padding: padding,
                        size: size,
                        apartmentList: list,
                        index: index,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
