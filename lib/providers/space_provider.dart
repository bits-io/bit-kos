part of 'provider.dart';

class SpaceProvider extends ChangeNotifier{

  getRecommendedSpace() async {
    var result = await http.get(Uri.https('bwa-cozy.herokuapp.com', 'recommended-spaces'));
    print(result.statusCode);
    print(result.body);

    if(result.statusCode == 200){
      List data = jsonDecode(result.body);
      List<Space> spaces = data.map((item) => Space.fromJson(item)).toList();
      return spaces;
    } else {
      return <Space>[];
    }
  }

}