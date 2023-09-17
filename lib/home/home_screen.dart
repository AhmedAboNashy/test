import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/home/nextPage.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.all(8.0).r,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    'assets/images/boy.jpg',
                    width: 300.w,
                    height: 400.h,
                    fit: BoxFit.fill,
                  )),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Theres no Home without Family',textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
            ),
            Text(
              'is here to help you find your ',textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
            ),
            Text(
              'beloved missing ones ',textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 100.h,
        width: double.infinity,
        color: Colors.white,
        child: Center(
          child: Row(
            children: [
              SizedBox(
                width: 75.w,
              ),
              Text(
                'skip',
                style: TextStyle(color: Colors.grey,decoration: TextDecoration.underline,fontSize: 16.sp),
              ),
              SizedBox(
                width: 115.w,
              ),
              TextButton(
                  onPressed: () {
                   Navigator.pushNamed(context, NextPage.routeName);
                    setState(() {});
                  },
                  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.brown,),
                      alignment: Alignment.center,

                      height: 35.h,
                      width: 65.w,
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.sp,
                        ),
                        textAlign: TextAlign.center,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
