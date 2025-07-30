import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plantapp/core/locale_keys.g.dart';
import 'package:plantapp/features/home/blocs/home_bloc.dart';
import 'package:plantapp/features/home/blocs/home_event.dart';
import 'package:plantapp/shared/theme/color_schemes.dart';
import 'package:plantapp/shared/theme/custom_text_style.dart';
import 'package:plantapp/shared/utils/image_constant.dart';
import 'package:plantapp/shared/utils/size_utils.dart';
import 'package:plantapp/shared/widgets/custom_image_view.dart';
import 'package:plantapp/shared/widgets/gradient_text.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const _HomeView();
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _homeView(context),
    );
  }

  Widget _homeView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [_homeHeader(context), _paywallButton(context)],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _homeHeader(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: -20.v,
          bottom: -20.v,
          child: CustomImageView(imagePath: ImageConstant.imgHomeLeftLeaf),
        ),
        Positioned(
          right: -20.v,
          bottom: -20.v,
          child: CustomImageView(imagePath: ImageConstant.imgHomeRightLeaf),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.h, right: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.home_welcome.tr(),
                style: CustomTextStyle.titleMedium,
              ),
              Text(
                LocaleKeys.home_good_afternoon.tr(),
                style: CustomTextStyle.titleLarge?.copyWith(
                  color: Colors.black.withValues(alpha: 0.7),
                ),
              ),
              SizedBox(height: 16.v),
              TextFormField(
                decoration: InputDecoration(
                  hintText: LocaleKeys.home_search_plant.tr(),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFFABABAB),
                    size: 25.v,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 20,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Color(0xFF3C3C43).withValues(alpha: 0.25),
                      width: 0.2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  hintStyle: CustomTextStyle.bodyMedium?.copyWith(
                    fontSize: 14.v,
                    color: Color(0xFFAFAFAF),
                  ),
                ),
                style: CustomTextStyle.bodyMedium?.copyWith(
                  fontSize: 14.v,
                  color: ColorSchemes.primaryColorScheme.onSurface,
                ),
                cursorColor: ColorSchemes.primaryColorScheme.onSurface,
              ),
              SizedBox(height: 16.v),
            ],
          ),
        ),
      ],
    );
  }

  Widget _paywallButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<HomeBloc>().add(PaywallVisibilityToggled(true));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v),
        padding: EdgeInsets.symmetric(vertical: 12.v, horizontal: 16.h),
        decoration: BoxDecoration(
          color: Color(0xFF24201A),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomImageView(imagePath: ImageConstant.icMailNotification.tr()),
            SizedBox(width: 8.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GradientText(
                    LocaleKeys.home_free_premium.tr(),
                    style: CustomTextStyle.titleMedium.copyWith(
                      color: Colors.white,
                      fontSize: 16.v,
                      fontWeight : FontWeight.w700,
                    ),
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xFFE6C990), Color(0xFFE4B046)],
                      stops: [0.4935, 1.3092],
                    ),
                  ),
                  GradientText(
                    LocaleKeys.home_upgrade_account.tr(),
                    style: CustomTextStyle.bodyMedium.copyWith(
                      color: Colors.white,
                      fontSize: 13.v,
                    ),
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xFFFFDE9C), Color(0xFFF5C25B)],
                      stops: [0.4935, 1.3092],
                    ),
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.icRightArrow,
              height: 20.v,
              width: 20.v,
            ),
          ],
        ),
      ),
    );
  }
}
