part of 'widget.dart';

class RecommendedCard extends StatelessWidget {
  RecommendedCard(this.space);

  final Space space;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(space)));
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.network(space.imageUrl, height: 110, width: 130, fit: BoxFit.cover,),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
                          color: AppColor.mainColor
                      ),
                      child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                    Icons.star,
                                    color: AppColor.secondColor,
                                    size: 21
                                ),
                                Text(
                                    '${space.rating}/5',
                                    style: AppTextStyle.whiteTextStyle.copyWith(fontSize: 13),
                                )
                              ]
                          )
                      ),
                    ),
                ],
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  space.name,
                  style: AppTextStyle.blackTextStyle.copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 2,
              ),
              Text.rich(
                TextSpan(
                  text: 'Rp${space.price}k',
                  style: AppTextStyle.greenTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: ' / bulan',
                      style: AppTextStyle.greyTextStyle.copyWith(fontSize: 16)
                    )
                  ]
                )
              ),
              SizedBox(height: 16),
              Text(
                  '${space.city}, ${space.country}',
                  style: AppTextStyle.greyTextStyle.copyWith(fontSize: 14),
              )
            ],
          ),
        ],
      ),
    );
  }
}
