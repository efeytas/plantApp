import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plantapp/core/app_state.dart';
import 'package:plantapp/core/locale_keys.g.dart';
import 'package:plantapp/features/home/blocs/home_bloc.dart';
import 'package:plantapp/features/home/blocs/home_event.dart';
import 'package:plantapp/features/home/blocs/home_state.dart';
import 'package:plantapp/features/home/ui/widgets/categories_widget.dart';
import 'package:plantapp/features/home/ui/widgets/questions_widget.dart';
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

class _HomeView extends StatefulWidget {
  const _HomeView();

  @override
  State<_HomeView> createState() => _HomeViewStateInner();
}

class _HomeViewStateInner extends State<_HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: true, backgroundColor: Colors.white, body: _homeView(context));
  }

  Widget _homeView(BuildContext context) {
    final state = context.watch<HomeBloc>().state;
    final currentPage = state.categories?.meta.pagination.page ?? 1;
    final pageSize = state.categories?.meta.pagination.pageSize ?? 25;
    final focusNode = FocusNode();

    return state.status == ServiceStatus.loading
        ? const Center(child: CircularProgressIndicator.adaptive())
        : GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => FocusScope.of(context).unfocus(),
          child: NotificationListener<ScrollNotification>(
            onNotification: (scrollInfo) {
              final isBottom = scrollInfo.metrics.axis == Axis.vertical && scrollInfo.metrics.pixels >= scrollInfo.metrics.maxScrollExtent - 200;
              if (isBottom && state.categoriesStatus != ServiceStatus.fetchingMore) {
                context.read<HomeBloc>().add(FetchMoreCategories(currentPage: currentPage, pageSize: pageSize));
              }
              return false;
            },
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top, bottom: MediaQuery.of(context).padding.bottom),
                child: Column(
                  children: [
                    _homeHeader(context, focusNode),
                    SizedBox(height: 24.v),
                    _paywallButton(context),
                    SizedBox(height: 24.v),
                    _questionWidget(context),
                    SizedBox(height: 24.v),
                    _buildCategories(),
                    if (state.categoriesStatus == ServiceStatus.fetchingMore)
                      const Padding(padding: EdgeInsets.all(16), child: CircularProgressIndicator.adaptive()),
                  ],
                ),
              ),
            ),
          ),
        );
  }

  Widget _homeHeader(BuildContext context, FocusNode focusNode) {
    return Stack(
      children: [
        Positioned(left: -20.v, bottom: -20.v, child: CustomImageView(imagePath: ImageConstant.imgHomeLeftLeaf)),
        Positioned(right: -20.v, bottom: -20.v, child: CustomImageView(imagePath: ImageConstant.imgHomeRightLeaf)),
        Padding(
          padding: EdgeInsets.only(left: 20.h, right: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(LocaleKeys.home_welcome.tr(), style: CustomTextStyle.titleMedium),
              Text(LocaleKeys.home_good_afternoon.tr(), style: CustomTextStyle.titleLarge?.copyWith(color: Colors.black.withValues(alpha: 0.7))),
              SizedBox(height: 16.v),
              TextFormField(
                focusNode: focusNode,
                decoration: InputDecoration(
                  hintText: LocaleKeys.home_search_plant.tr(),
                  prefixIcon: Icon(Icons.search, color: Color(0xFFABABAB), size: 25.v),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Color(0xFF3C3C43).withValues(alpha: 0.25), width: 0.2),
                  ),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide(color: Colors.grey, width: 1.5)),
                  hintStyle: CustomTextStyle.bodyMedium?.copyWith(fontSize: 14.v, color: Color(0xFFAFAFAF)),
                ),
                style: CustomTextStyle.bodyMedium?.copyWith(fontSize: 14.v, color: ColorSchemes.primaryColorScheme.onSurface),
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
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        padding: EdgeInsets.symmetric(vertical: 12.v, horizontal: 16.h),
        decoration: BoxDecoration(color: Color(0xFF24201A), borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomImageView(imagePath: ImageConstant.icMailNotification.tr(), height: 40.v, width: 40.h),
            SizedBox(width: 8.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GradientText(
                    LocaleKeys.home_free_premium.tr(),
                    style: CustomTextStyle.titleMedium.copyWith(color: Colors.white, fontSize: 16.v, fontWeight: FontWeight.w700),
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xFFE6C990), Color(0xFFE4B046)],
                      stops: [0.4935, 1.3092],
                    ),
                  ),
                  GradientText(
                    LocaleKeys.home_upgrade_account.tr(),
                    style: CustomTextStyle.bodyMedium.copyWith(color: Colors.white, fontSize: 13.v),
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
            CustomImageView(imagePath: ImageConstant.icRightArrow, height: 20.v, width: 20.v),
          ],
        ),
      ),
    );
  }

  Widget _questionWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.questions.isEmpty) {
                return SizedBox.shrink();
              }
              return SizedBox(
                height: 170.v,
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: state.questions.length,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(width: 10.h),
                  itemBuilder: (context, index) {
                    final question = state.questions[index];
                    return QuestionsWidget(questionsResponse: question);
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCategories() {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.categories?.data.isEmpty ?? true) {
          return SizedBox.shrink();
        }
        return Container(
          padding: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 16.v),
          child: GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 16.h, mainAxisSpacing: 16.v),
            itemCount: state.categories?.data.length ?? 0,
            itemBuilder: (context, index) {
              final category = state.categories!.data[index];
              if (index <= state.categories!.data.length) {
                return CategoriesWidget(category: category);
              } else {
                return Visibility(
                  visible: state.categoriesStatus == ServiceStatus.fetchingMore,
                  child: const Center(child: CircularProgressIndicator.adaptive()),
                );
              }
            },
          ),
        );
      },
    );
  }
}
