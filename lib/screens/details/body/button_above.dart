part of '../detail_screen.dart';

class ButtonAbove extends StatelessWidget {


  final Space space;

  ButtonAbove(this.space);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: edge),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              child: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              child: Icon(Icons.check, size: 20, color: Colors.black,),
            ),
          ),
        ],
      ),
    );
  }
}
