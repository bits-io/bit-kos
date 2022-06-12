part of '../home_screen.dart';

class Title extends StatelessWidget {
  const Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text(
              'Explore Now',
              style: AppTextStyle.blackTextStyle.copyWith(fontSize: 24),
            ),
          ),
          SizedBox(height: 2),
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text(
              'Cari kosan yang aman',
              style: AppTextStyle.greyTextStyle.copyWith(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
