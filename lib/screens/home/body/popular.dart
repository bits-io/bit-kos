part of '../home_screen.dart';

class Popular extends StatelessWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: edge),
          child: Text(
            'Popular Kos',
            style: AppTextStyle.regularTextStyle.copyWith(fontSize: 16),
          ),
        ),
        SizedBox(height: 18),
        Container(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(
                width: 24,
              ),
              PopularCard(
                City(
                  id: 1,
                  name: 'Tasikmalaya',
                  imageUrl: 'assets/images/city1.png',
                  isPopular: true,
                ),
              ),
              SizedBox(
                width: 24,
              ),
              PopularCard(
                City(
                    id: 2,
                    name: 'Ciamis',
                    imageUrl: 'assets/images/city2.png',
                    isPopular: false,
                ),
              ),
              SizedBox(
                width: 24,
              ),
              PopularCard(
                City(
                    id: 3,
                    name: 'Jakarta',
                    imageUrl: 'assets/images/city3.png',
                    isPopular: false,
                ),
              ),
              SizedBox(
                width: 24,
              ),
              PopularCard(
                City(
                    id: 4,
                    name: 'Garut',
                    imageUrl: 'assets/images/city1.png',
                    isPopular: false,
                ),
              ),
              SizedBox(
                width: 24,
              ),
            ],
          ),
        )
      ],
    );
  }
}
