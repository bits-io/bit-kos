import 'package:bit_kos/models/model.dart';
import 'package:bit_kos/providers/provider.dart';
import 'package:bit_kos/theme/theme.dart';
import 'package:bit_kos/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


part 'body/navbar.dart';
part 'body/title.dart';
part 'body/popular.dart';
part 'body/recommended.dart';
part 'body/tips_guide.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var spaceProvider = Provider.of<SpaceProvider>(context);
    spaceProvider.getRecommendedSpace();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          bottom: false,
          child: ListView(
            children: [
              SizedBox(height: edge),
              Title(),
              SizedBox(height: 30),
              Popular(),
              SizedBox(height: 30),
              Recommended(),
              SizedBox(height: 30),
              TipsGuide(),
              SizedBox(height: 20),
            ],
          ),
      ),
      floatingActionButton: Navbar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
