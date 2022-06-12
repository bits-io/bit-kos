part of '../home_screen.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: MediaQuery.of(context).size.width - ( 2 * edge),
      margin: EdgeInsets.symmetric(horizontal: edge),
      decoration: BoxDecoration(
        color: AppColor.softColor,
        borderRadius: BorderRadius.circular(23)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavbarItem(
            imageUrl: 'assets/icons/icon_home_solid_color.png',
            isActive: true,
          ),
          BottomNavbarItem(
            imageUrl: 'assets/icons/icon_mail_solid.png',
            isActive: false,
          ),
          BottomNavbarItem(
            imageUrl: 'assets/icons/icon_card_solid.png',
            isActive: false,
          ),
          BottomNavbarItem(
            imageUrl: 'assets/icons/icon_love_solid.png',
            isActive: false,
          ),
        ],
      ),
    );
  }
}
