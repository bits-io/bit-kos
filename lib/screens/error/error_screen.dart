import 'package:bit_kos/screens/home/home_screen.dart';
import 'package:bit_kos/theme/theme.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/404.png',
                width: 300,
              ),
              SizedBox(height: 70),
              Text(
                'Where are you going body?',
                style: AppTextStyle.blackTextStyle.copyWith(fontSize: 24),
              ),
              SizedBox(height: 14),
              Text(
                'Seems like the page that you were\n requested is already gone',
                style: AppTextStyle.greyTextStyle.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
              Container(
                height: 50,
                width: 210,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                      ), (route) => false
                    );
                  },
                  color: AppColor.mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17)
                  ),
                  child: Text(
                    'Kembali',
                    style: AppTextStyle.whiteTextStyle.copyWith(fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
