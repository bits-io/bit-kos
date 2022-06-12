part of 'widget.dart';

class BottomNavbarItem extends StatelessWidget {
  BottomNavbarItem({required this.imageUrl, required this.isActive});

  final String imageUrl;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(imageUrl, width: 26),
        Spacer(),
        isActive ? Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: AppColor.mainColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(100)
            )
          ),
        ) : Container(),
      ],
    );
  }
}
