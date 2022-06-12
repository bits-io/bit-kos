part of 'widget.dart';

class TipsCard extends StatelessWidget {
  TipsCard(this.tips);

  final Tips tips;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
            tips.imageUrl,
            width: 80,
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: AppTextStyle.blackTextStyle.copyWith(fontSize: 18),
            ),
            SizedBox(height: 4),
            Text(
              'Updated ${tips.updatedAt}',
              style: AppTextStyle.greyTextStyle,
            )
          ],
        ),
        Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.chevron_right), color: AppColor.greyColor
        ),

      ],
    );
  }
}
