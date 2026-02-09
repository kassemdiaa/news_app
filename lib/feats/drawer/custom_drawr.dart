import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/colors_manegar.dart';

class CustomDrawr extends StatelessWidget {
  const CustomDrawr({super.key,required this.goToHome});
  final void Function() goToHome;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorsManegar.black,
      child: Column(
        children: [
          Container(
            color: ColorsManegar.white,
            height: 200.h,
            width: double.infinity,
            child: Center(
              child: Text(
                'News App',
                style: TextStyle(
                  color: ColorsManegar.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 24.sp,
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          InkWell(
            onTap: () {goToHome();},
            child: Row(
              children: [
                SizedBox(width: 10.w),
                Icon(
                  Icons.home_outlined,
                  color: ColorsManegar.white,
                  size: 30.sp,
                ),
                SizedBox(width: 10.w),
                Text(
                  'Go To Home',
                  style: TextStyle(color: ColorsManegar.white, fontSize: 25.sp),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
