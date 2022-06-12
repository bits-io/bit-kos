part of '../home_screen.dart';

class TipsGuide extends StatelessWidget {
  const TipsGuide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text(
              'Tips & Guide',
              style: AppTextStyle.regularTextStyle.copyWith(fontSize: 16),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: edge),
            child: Column(
              children: [
                TipsCard(
                  Tips(
                    id: 1,
                    title: 'Kosan Guide',
                    imageUrl: 'assets/images/tips1.png',
                    updatedAt: '20 Mei 2022'
                  )
                ),
                SizedBox(height: 20),
                TipsCard(
                    Tips(
                        id: 2,
                        title: 'Cara Hemat Uang',
                        imageUrl: 'assets/images/tips2.png',
                        updatedAt: '20 Mei 2022'
                    )
                )
              ],
            ),
          )
        ]
    );
  }
}
