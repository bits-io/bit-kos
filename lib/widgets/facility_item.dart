part of 'widget.dart';

class FacilityItem extends StatelessWidget {
  FacilityItem({required this.name, required this.imageUrl, required this.total});

  final String name;
  final String imageUrl;
  final int total;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imageUrl, width: 32),
        SizedBox(height: 8),
        Text.rich(
            TextSpan(
                text: '$total',
                style: AppTextStyle.greenTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                      text: ' $name',
                      style: AppTextStyle.greyTextStyle.copyWith(fontSize: 14)
                  )
                ]
            )
        ),
      ],
    );
  }
}
