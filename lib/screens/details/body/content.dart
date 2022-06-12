part of '../detail_screen.dart';

class Content extends StatelessWidget {


  final Space space;

  Content(this.space);

  late String url;

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
      // Navigator.push( context,
      //   MaterialPageRoute(
      //       builder: (context) => ErrorScreen()
      //   )
      // );
    }
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 328),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20)
            ),
            color: Colors.white
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //NOTE: TITLE
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(space.name,
                          style: AppTextStyle.blackTextStyle.copyWith(fontSize: 22),
                        ),
                        SizedBox(height: 2),
                        Text.rich(
                            TextSpan(
                                text: '${space.price}',
                                style: AppTextStyle.greenTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                      text: ' / bulan',
                                      style: AppTextStyle.greyTextStyle.copyWith(fontSize: 16)
                                  )
                                ]
                            )
                        ),
                      ],
                    ),
                    //NOTE: STAR
                    Row(
                      children: [
                        Wrap(
                          spacing: 2,
                          children: List.generate(5, (index) => index < space.rating ?
                               AppRatingStar.filledStar : AppRatingStar.unfilledStar
                                //Icons.star,
                            ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //NOTE: Fasilitas
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Rekomendasi Kosan Asik',
                  style: AppTextStyle.regularTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FacilityItem(
                      name: 'dapur',
                      total: space.numberOfKitchens,
                      imageUrl: 'assets/images/kitchen.png'
                    ),
                    FacilityItem(
                        name: 'kasur',
                        total: space.numberOfBedrooms,
                        imageUrl: 'assets/images/bad.png'
                    ),
                    FacilityItem(
                        name: 'lemari',
                        total: space.numberOfCupboards,
                        imageUrl: 'assets/images/lemari.png'
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Foto',
                  style: AppTextStyle.regularTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(height: 12),
              Container(
                height: 88,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:
                    space.photos.map((item) {
                      return Container(
                        margin: EdgeInsets.only(left: 24),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            item,
                            width: 110,
                            height: 88,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }).toList(),
                ),
              ),
              //NOTE: location
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Lokasi',
                  style: AppTextStyle.regularTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(height: 6),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${space.address}\n${space.city}',
                      style: AppTextStyle.greyTextStyle.copyWith(fontSize: 16),
                    ),
                    InkWell(
                      onTap: () {
                        _launchURL(space.mapUrl);
                        //print('https://goo.gl/maps/2pbsFZWnsoo22GFA6');
                        },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        height: 40,
                        width: 40,
                        alignment: Alignment.center,
                        child: Icon(Icons.location_on, size: 20, color: Colors.white,),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: edge,
                ),
                height: 50,
                width: MediaQuery.of(context).size.width - (2 * edge),
                child: RaisedButton(
                  onPressed: () {
                    _launchURL('tel:${space.phone}');
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17)
                  ),
                  child: Text(
                    'Pesan Sekarang',
                    style: AppTextStyle.whiteTextStyle.copyWith(fontSize: 18),
                  ),
                  color: AppColor.mainColor,
                ),
              ),
              SizedBox(height: 40)
            ],
          ),
        )
      ],
    );
  }
}
