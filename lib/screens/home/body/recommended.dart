part of '../home_screen.dart';

class Recommended extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    var spaceProvider = Provider.of<SpaceProvider>(context);

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text(
              'Rekomendasi Kosan Asik',
              style: AppTextStyle.regularTextStyle.copyWith(fontSize: 16),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: edge),
            child: FutureBuilder(
                future: spaceProvider.getRecommendedSpace(),
                builder: (context,snapshot) {
                  if(snapshot.hasData){

                    //List<Space> data = snapshot.data; //ERROR A value of type 'Object?' can't be assigned to a variable of type 'List<Space>'.

                    var data = (snapshot.data as List<Space>);

                    int index = 0;

                    return Column(
                      children: data.map((item) {
                        index++;
                        return Container(
                          margin: EdgeInsets.only(
                            top: index == 1 ? 0 : 30,
                          ),
                          child: RecommendedCard(item),
                        );
                      }).toList(),
                    );

                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
            ),
          )
        ]
    );
  }
}
