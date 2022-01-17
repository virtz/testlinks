import 'package:ajeo/presentation/screens/auth/auth_view/auth_view.dart';
import 'package:ajeo/presentation/screens/auth/complete_account/complete_account.dart';
import 'package:ajeo/presentation/screens/auth/confirmation_page/confirmation_page.dart';
import 'package:ajeo/presentation/screens/auth/help_page-1/about_us.dart';
import 'package:ajeo/presentation/screens/auth/help_page-1/help_page.dart';
import 'package:ajeo/presentation/screens/auth/progress/progress.dart';
import 'package:ajeo/presentation/screens/auth/progress/progress2.dart';
import 'package:ajeo/presentation/screens/auth/register/register.dart';
import 'package:ajeo/presentation/screens/auth/sign_in/sign_in.dart';
import 'package:ajeo/presentation/screens/auth/sign_up/sign_up.dart';
import 'package:ajeo/presentation/screens/category/categories/category_view_none_premium.dart';
import 'package:ajeo/presentation/screens/category/categories/category_view_premium.dart';
import 'package:ajeo/presentation/screens/category/side_bar/discount_codes.dart';
import 'package:ajeo/presentation/screens/category/subcategories/subcategory_non_premium.dart';
import 'package:ajeo/presentation/screens/help/help.dart';
import 'package:ajeo/presentation/screens/help/subscriptions.dart';
import 'package:ajeo/presentation/screens/home/home_non_premium.dart';
import 'package:ajeo/presentation/screens/home/home_page_premium.dart';
import 'package:ajeo/presentation/screens/home/special_category_page.dart';
// import 'package:ajeo/presentation/screens/products/product_Page_unit_increase.dart';
import 'package:ajeo/presentation/screens/products/product_page.dart';
import 'package:ajeo/presentation/screens/products/product_page_2.dart';
import 'package:ajeo/presentation/screens/products/product_page_premium_2.dart';
import 'package:ajeo/presentation/screens/products/product_page_unit_increase_2.dart';
import 'package:ajeo/presentation/screens/search/search.dart';
import 'package:ajeo/presentation/screens/settings/main_settings_non_premium/settings_non_premium.dart';
import 'package:ajeo/presentation/screens/settings/main_settings_premium/settings.dart';
import 'package:ajeo/presentation/screens/splash_screen/splash_screen.dart';
import 'package:ajeo/presentation/screens/walkthrough/walkthrough.dart';
import 'package:ajeo/presentation/screens/wishlist/wish_list.dart';
import 'package:ajeo/presentation/widgets/please_subscribe.dart';
import 'package:ajeo/presentation/widgets/pop-ups/new_list.dart';
import 'package:ajeo/presentation/widgets/pop-ups/review.dart';
import 'package:ajeo/presentation/widgets/pop-ups/wish_list.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(page: SplashScreen, initial: true),
  AutoRoute(
    page: Register,
  ),
  AutoRoute(
    page: AuthView,
  ),
  AutoRoute(
    page: CompleteAccount,
  ),
  AutoRoute(
    page: ConfirmationPage,
  ),

  AutoRoute(
    page: T12SignUp_2,
  ),
  AutoRoute(
    page: T12SignUp_23,
  ),
  AutoRoute(
    page: T12SignIn_23,
  ),
  AutoRoute(
    page: T12SignIn_2,
  ),
  AutoRoute(
    page: SignIn,
  ),
  AutoRoute(
    page: SignUp,
  ),
  AutoRoute(
    page: HomeNonPremium,
  ),
  AutoRoute(
    page: Search,
  ),
  AutoRoute(
    page: SettingsNonPremium,
  ),
  AutoRoute(
    page: HomePagePremium,
  ),
  AutoRoute(
    page: Settings,
  ),
  AutoRoute(
    page: Review,
  ),
  AutoRoute(
    page: Barcodes,
  ),
  AutoRoute(
    page: WishListView,
  ),
  AutoRoute(
    page: WishList,
  ),
  AutoRoute(
    page: NewList,
  ),
  AutoRoute(
    page: CategoryViewNonPremium,
  ),
  AutoRoute(
    page: CategoryViewPremium,
  ),
  AutoRoute(
    page: ProductPage,
  ),
  AutoRoute(
    page: ProductPage2,
  ),
  AutoRoute(
    page: ProductPagePremium2,
  ),
  // AutoRoute(
  //   page: ProductPageUnitIncrease,
  // ),
  AutoRoute(
    page: ProductPageUnitIncrease2,
  ),
  AutoRoute(
    page: SubCategoryNonPremium,
  ),

  AutoRoute(
    page: DefaultSubscriptionPrompt,
  ),
   AutoRoute(
    page: HelpScreen,
  ),
    AutoRoute(
    page: Subscriptions,
  ),
      AutoRoute(
    page: Walkthrough,
  ),

      AutoRoute(
    page: HelpPage,
  ),
      AutoRoute(
    page: AboutUs,
  ),

        AutoRoute(
    page: SpecialCategoryPage,
  ),
  //
])
class $AppRouter {}
