import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:plantapp/core/locale_keys.g.dart';
import 'package:plantapp/shared/utils/image_constant.dart';
import 'package:plantapp/shared/utils/size_utils.dart';
import 'package:plantapp/shared/widgets/home_tab/home_tab_item.dart';

class HomeTabWidget extends StatefulWidget {
    final Function(int value)? onTap;
  final int? currentIndex;
  const HomeTabWidget({super.key, this.onTap, this.currentIndex = 0});

  @override
  State<HomeTabWidget> createState() => _HomeTabWidgetState();
}

class _HomeTabWidgetState extends State<HomeTabWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kBottomNavigationBarHeight + (MediaQuery.of(context).padding.bottom + 8.v),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: .9),
        border: Border(
          top: BorderSide(
            color: Color(0xFF13231B).withValues(alpha: .1),
            width: 1.adaptSize,
          ),
        ),
      ),
      child: Stack(
        children: [
          // Blur effect
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: kBottomNavigationBarHeight + (MediaQuery.of(context).padding.bottom + 8.v),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom == 0 ? 8.v : MediaQuery.of(context).padding.bottom),
            child: Row(
              children: [
                Expanded(
                  child: HomeTabItem(
                    onTap: () => widget.onTap!(0),
                    label: LocaleKeys.tabs_home.tr(),
                    imagePath: ImageConstant.icTabHome,
                    isSelected: widget.currentIndex == 0,
                  ),
                ),
                SizedBox(width: 10.h),
                Expanded(
                  child: HomeTabItem(
                    onTap: () => widget.onTap!(1),
                    label: LocaleKeys.tabs_diagnose.tr(),
                    imagePath: ImageConstant.icTabDiagnose,
                    isSelected: widget.currentIndex == 1,
                  ),
                ),
                SizedBox(width: 10.h),
                Expanded(
                  child: HomeTabItem(
                    onTap: () {
                      widget.onTap!(2);
                    },
                    label: LocaleKeys.tabs_my_garden.tr(),
                    imagePath: ImageConstant.icTabMyGarden,
                    isSelected: widget.currentIndex == 2,
                  ),
                ),
                SizedBox(width: 10.h),
                Expanded(
                  child: HomeTabItem(
                    onTap: () => widget.onTap!(3),
                    label: LocaleKeys.tabs_profile.tr(),
                    imagePath: ImageConstant.icTabProfile,
                    isSelected: widget.currentIndex == 3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}