import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:test_app/home/soon.dart';

class LogIn extends StatelessWidget {
  static const String routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  child: Image.asset(
                    'assets/images/family.jpg',
                    width: 300.w,
                    height: 400.h,
                    fit: BoxFit.fill,
                  )),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'our aim is to create manual system for',textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
            Text(
              'finding a missing person or for someone   ',textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
            ),
            Text(
              'Who wants to find their family, to reduce',textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
            ),
            Text(
              'the amount of time in this process we come ',textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
            ),
            Text(
              'ub with th esolution of using technology.',textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 110,
        width: double.infinity,
        color: Colors.white,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          isScrollControlled: false,
                          context: context,
                          shape: RoundedRectangleBorder(
                              borderRadius: (BorderRadius.vertical(
                                  top: Radius.circular(30)))),
                          builder: (_) => Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 12.h),
                                    Lottie.asset('assets/images/log.json',
                                        height: 70.h, width: 105.w),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text(
                                      'Enter Your account',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 27.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 20.h),
                                    Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: ('E-mail or mobile phone'),
                                          labelText: 'E-mail or mobile phone',
                                          suffixIcon: Icon(Icons.email),
                                          border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                            borderRadius:
                                                BorderRadius.circular(16.r),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: (BorderSide(
                                                  color: Colors.black))),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: ('Password'),
                                          labelText: 'Password',
                                          suffixIcon: Icon(Icons.password,),
                                          border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                            borderRadius:
                                                BorderRadius.circular(16.r),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: (BorderSide(
                                                  color: Colors.black))),
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, Soon.routeName,
                                              );
                                        },
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.white)),
                                        child: Text(
                                          'login',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.sp),
                                        )),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Dont have an account?',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14.sp),
                                        ),
                                        SizedBox(
                                          width: 20.h,
                                        ),
                                        Text(
                                          'Sign up',
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10.sp),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Icon(Icons.g_mobiledata,color: Colors.green,),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Icon(Icons.facebook,color: Colors.blue,),
                                      ],
                                    ),
                                  ],
                                ),
                              ));
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.white)),
                    child: Text(
                      'login',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 23.sp,
                          fontWeight: FontWeight.w500,decoration: TextDecoration.underline),
                    )),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont have an account?',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp),
                    ),
                    SizedBox(
                      width: 20.h,
                    ),
                    Text(
                      'Sign up',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 10.sp),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
