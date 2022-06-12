part of 'widget.dart';

class PopularCard extends StatelessWidget {
  PopularCard(this.city);

  final City city;


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 150,
        width: 120,
        color: AppColor.softColor,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageUrl,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                city.isPopular ? Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
                      color: AppColor.mainColor
                    ),
                    child: Icon(Icons.star, color: AppColor.secondColor,size: 21),
                  ),
                ) : Container()
              ],
            ),
            SizedBox(height: 11),
            Text(
              city.name,
              style: AppTextStyle.blackTextStyle.copyWith(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
