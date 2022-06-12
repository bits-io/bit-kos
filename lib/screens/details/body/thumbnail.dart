part of '../detail_screen.dart';

class Thumbnail extends StatelessWidget {


  final Space space;

  Thumbnail(this.space);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(space.imageUrl,
          width: MediaQuery.of(context).size.width,
          height: 350,
          fit: BoxFit.cover,
        )
      ],
    );
  }
}
