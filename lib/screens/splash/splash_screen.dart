import 'package:bit_kos/screens/home/home_screen.dart';
import 'package:bit_kos/theme/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/images/image_splash.png'
                )
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 50),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/logo.png')
                        )
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Cari Kos Disini AJa',
                    style: AppTextStyle.blackTextStyle.copyWith(
                        fontSize: 24
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Tempat kos yang aman dan nyaman\nAkses wifi kenceng',
                    style: AppTextStyle.greyTextStyle.copyWith(
                        fontSize: 16
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //Button
                  Container(
                    width: 210,
                    height: 50,
                    child: RaisedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                        },
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                        color: AppColor.mainColor,
                        child: Text(
                            'Explore Now',
                          style: AppTextStyle.whiteTextStyle.copyWith(fontSize: 18),
                        ),
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
