// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: camel_case_types

import 'package:auto_route/auto_route.dart' as _i28;
import 'package:flutter/material.dart' as _i29;

import '../presentation/screens/auth/auth_view/auth_view.dart' as _i3;
import '../presentation/screens/auth/complete_account/complete_account.dart'
    as _i4;
import '../presentation/screens/auth/confirmation_page/confirmation_page.dart'
    as _i5;
import '../presentation/screens/auth/help_page-1/help_page.dart' as _i6;
import '../presentation/screens/auth/progress/progress.dart' as _i7;
import '../presentation/screens/auth/progress/progress2.dart' as _i8;
import '../presentation/screens/auth/register/register.dart' as _i2;
import '../presentation/screens/auth/sign_in/sign_in.dart' as _i9;
import '../presentation/screens/auth/sign_up/sign_up.dart' as _i10;
import '../presentation/screens/category/categories/category_view_none_premium.dart'
    as _i21;
import '../presentation/screens/category/categories/category_view_premium.dart'
    as _i22;
import '../presentation/screens/category/side_bar/discount_codes.dart' as _i17;
import '../presentation/screens/category/subcategories/subcategory_non_premium.dart'
    as _i27;
import '../presentation/screens/home/home_non_premium.dart' as _i11;
import '../presentation/screens/home/home_page_premium.dart' as _i14;
import '../presentation/screens/products/product_page.dart' as _i23;
import '../presentation/screens/products/product_page_2.dart' as _i24;
import '../presentation/screens/products/product_page_premium_2.dart' as _i25;
import '../presentation/screens/products/product_page_unit_increase_2.dart'
    as _i26;
import '../presentation/screens/search/search.dart' as _i12;
import '../presentation/screens/settings/main_settings_non_premium/settings_non_premium.dart'
    as _i13;
import '../presentation/screens/settings/main_settings_premium/settings.dart'
    as _i15;
import '../presentation/screens/splash_screen/splash_screen.dart' as _i1;
import '../presentation/screens/wishlist/wish_list.dart' as _i18;
import '../presentation/widgets/pop-ups/new_list.dart' as _i20;
import '../presentation/widgets/pop-ups/review.dart' as _i16;
import '../presentation/widgets/pop-ups/wish_list.dart' as _i19;

class AppRouter extends _i28.RootStackRouter {
  AppRouter([_i29.GlobalKey<_i29.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i28.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    Register.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.Register());
    },
    AuthView.name: (routeData) {
      final args =
          routeData.argsAs<AuthViewArgs>(orElse: () => const AuthViewArgs());
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.AuthView(key: args.key, initialIndex: args.initialIndex));
    },
    CompleteAccount.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.CompleteAccount());
    },
    ConfirmationRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ConfirmationPage());
    },
    Subscription.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.Subscription());
    },
    T12SignUp_2.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.T12SignUp_2());
    },
    T12SignUp_23.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.T12SignUp_23());
    },
    T12SignIn_23.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: _i8.T12SignIn_23());
    },
    T12SignIn_2.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.T12SignIn_2());
    },
    SignIn.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.SignIn());
    },
    SignUp.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.SignUp());
    },
    HomeNonPremium.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.HomeNonPremium());
    },
    Search.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.Search());
    },
    SettingsNonPremium.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.SettingsNonPremium());
    },
    HomeRoutePremium.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.HomePagePremium());
    },
    Settings.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.Settings());
    },
    Review.name: (routeData) {
      final args =
          routeData.argsAs<ReviewArgs>(orElse: () => const ReviewArgs());
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: _i16.Review(key: args.key));
    },
    Barcodes.name: (routeData) {
      final args =
          routeData.argsAs<BarcodesArgs>(orElse: () => const BarcodesArgs());
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: _i17.Barcodes(key: args.key));
    },
    WishListView.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.WishListView());
    },
    WishList.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.WishList());
    },
    NewList.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.NewList());
    },
    CategoryViewNonPremium.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.CategoryViewNonPremium());
    },
    CategoryViewPremium.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i22.CategoryViewPremium());
    },
    ProductRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i23.ProductPage());
    },
    ProductRoute2.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i24.ProductPage2());
    },
    ProductRoutePremium2.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i25.ProductPagePremium2());
    },
    ProductRouteUnitIncrease2.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i26.ProductPageUnitIncrease2());
    },
    SubCategoryNonPremium.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i27.SubCategoryNonPremium());
    }
  };

  @override
  List<_i28.RouteConfig> get routes => [
        _i28.RouteConfig(SplashScreen.name, path: '/'),
        _i28.RouteConfig(Register.name, path: '/Register'),
        _i28.RouteConfig(AuthView.name, path: '/auth-view'),
        _i28.RouteConfig(CompleteAccount.name, path: '/complete-account'),
        _i28.RouteConfig(ConfirmationRoute.name, path: '/confirmation-page'),
        _i28.RouteConfig(Subscription.name, path: '/Subscription'),
        _i28.RouteConfig(T12SignUp_2.name, path: '/t12-sign-up_2'),
        _i28.RouteConfig(T12SignUp_23.name, path: '/t12-sign-up_23'),
        _i28.RouteConfig(T12SignIn_23.name, path: '/t12-sign-in_23'),
        _i28.RouteConfig(T12SignIn_2.name, path: '/t12-sign-in_2'),
        _i28.RouteConfig(SignIn.name, path: '/sign-in'),
        _i28.RouteConfig(SignUp.name, path: '/sign-up'),
        _i28.RouteConfig(HomeNonPremium.name, path: '/home-non-premium'),
        _i28.RouteConfig(Search.name, path: '/Search'),
        _i28.RouteConfig(SettingsNonPremium.name,
            path: '/settings-non-premium'),
        _i28.RouteConfig(HomeRoutePremium.name, path: '/home-page-premium'),
        _i28.RouteConfig(Settings.name, path: '/Settings'),
        _i28.RouteConfig(Review.name, path: '/Review'),
        _i28.RouteConfig(Barcodes.name, path: '/Barcodes'),
        _i28.RouteConfig(WishListView.name, path: '/wish-list-view'),
        _i28.RouteConfig(WishList.name, path: '/wish-list'),
        _i28.RouteConfig(NewList.name, path: '/new-list'),
        _i28.RouteConfig(CategoryViewNonPremium.name,
            path: '/category-view-non-premium'),
        _i28.RouteConfig(CategoryViewPremium.name,
            path: '/category-view-premium'),
        _i28.RouteConfig(ProductRoute.name, path: '/product-page'),
        _i28.RouteConfig(ProductRoute2.name, path: '/product-page2'),
        _i28.RouteConfig(ProductRoutePremium2.name,
            path: '/product-page-premium2'),
        _i28.RouteConfig(ProductRouteUnitIncrease2.name,
            path: '/product-page-unit-increase2'),
        _i28.RouteConfig(SubCategoryNonPremium.name,
            path: '/sub-category-non-premium')
      ];
}

/// generated route for [_i1.SplashScreen]
class SplashScreen extends _i28.PageRouteInfo<void> {
  const SplashScreen() : super(name, path: '/');

  static const String name = 'SplashScreen';
}

/// generated route for [_i2.Register]
class Register extends _i28.PageRouteInfo<void> {
  const Register() : super(name, path: '/Register');

  static const String name = 'Register';
}

/// generated route for [_i3.AuthView]
class AuthView extends _i28.PageRouteInfo<AuthViewArgs> {
  AuthView({_i29.Key? key, int initialIndex = 0})
      : super(name,
            path: '/auth-view',
            args: AuthViewArgs(key: key, initialIndex: initialIndex));

  static const String name = 'AuthView';
}

class AuthViewArgs {
  const AuthViewArgs({this.key, this.initialIndex = 0});

  final _i29.Key? key;

  final int initialIndex;

  @override
  String toString() {
    return 'AuthViewArgs{key: $key, initialIndex: $initialIndex}';
  }
}

/// generated route for [_i4.CompleteAccount]
class CompleteAccount extends _i28.PageRouteInfo<void> {
  const CompleteAccount() : super(name, path: '/complete-account');

  static const String name = 'CompleteAccount';
}

/// generated route for [_i5.ConfirmationPage]
class ConfirmationRoute extends _i28.PageRouteInfo<void> {
  const ConfirmationRoute() : super(name, path: '/confirmation-page');

  static const String name = 'ConfirmationRoute';
}

/// generated route for [_i6.Subscription]
class Subscription extends _i28.PageRouteInfo<void> {
  const Subscription() : super(name, path: '/Subscription');

  static const String name = 'Subscription';
}

/// generated route for [_i7.T12SignUp_2]
class T12SignUp_2 extends _i28.PageRouteInfo<void> {
  const T12SignUp_2() : super(name, path: '/t12-sign-up_2');

  static const String name = 'T12SignUp_2';
}

/// generated route for [_i7.T12SignUp_23]
class T12SignUp_23 extends _i28.PageRouteInfo<void> {
  const T12SignUp_23() : super(name, path: '/t12-sign-up_23');

  static const String name = 'T12SignUp_23';
}

/// generated route for [_i8.T12SignIn_23]
class T12SignIn_23 extends _i28.PageRouteInfo<void> {
  const T12SignIn_23() : super(name, path: '/t12-sign-in_23');

  static const String name = 'T12SignIn_23';
}

/// generated route for [_i8.T12SignIn_2]
class T12SignIn_2 extends _i28.PageRouteInfo<void> {
  const T12SignIn_2() : super(name, path: '/t12-sign-in_2');

  static const String name = 'T12SignIn_2';
}

/// generated route for [_i9.SignIn]
class SignIn extends _i28.PageRouteInfo<void> {
  const SignIn() : super(name, path: '/sign-in');

  static const String name = 'SignIn';
}

/// generated route for [_i10.SignUp]
class SignUp extends _i28.PageRouteInfo<void> {
  const SignUp() : super(name, path: '/sign-up');

  static const String name = 'SignUp';
}

/// generated route for [_i11.HomeNonPremium]
class HomeNonPremium extends _i28.PageRouteInfo<void> {
  const HomeNonPremium() : super(name, path: '/home-non-premium');

  static const String name = 'HomeNonPremium';
}

/// generated route for [_i12.Search]
class Search extends _i28.PageRouteInfo<void> {
  const Search() : super(name, path: '/Search');

  static const String name = 'Search';
}

/// generated route for [_i13.SettingsNonPremium]
class SettingsNonPremium extends _i28.PageRouteInfo<void> {
  const SettingsNonPremium() : super(name, path: '/settings-non-premium');

  static const String name = 'SettingsNonPremium';
}

/// generated route for [_i14.HomePagePremium]
class HomeRoutePremium extends _i28.PageRouteInfo<void> {
  const HomeRoutePremium() : super(name, path: '/home-page-premium');

  static const String name = 'HomeRoutePremium';
}

/// generated route for [_i15.Settings]
class Settings extends _i28.PageRouteInfo<void> {
  const Settings() : super(name, path: '/Settings');

  static const String name = 'Settings';
}

/// generated route for [_i16.Review]
class Review extends _i28.PageRouteInfo<ReviewArgs> {
  Review({_i29.Key? key})
      : super(name, path: '/Review', args: ReviewArgs(key: key));

  static const String name = 'Review';
}

class ReviewArgs {
  const ReviewArgs({this.key});

  final _i29.Key? key;

  @override
  String toString() {
    return 'ReviewArgs{key: $key}';
  }
}

/// generated route for [_i17.Barcodes]
class Barcodes extends _i28.PageRouteInfo<BarcodesArgs> {
  Barcodes({_i29.Key? key})
      : super(name, path: '/Barcodes', args: BarcodesArgs(key: key));

  static const String name = 'Barcodes';
}

class BarcodesArgs {
  const BarcodesArgs({this.key});

  final _i29.Key? key;

  @override
  String toString() {
    return 'BarcodesArgs{key: $key}';
  }
}

/// generated route for [_i18.WishListView]
class WishListView extends _i28.PageRouteInfo<void> {
  const WishListView() : super(name, path: '/wish-list-view');

  static const String name = 'WishListView';
}

/// generated route for [_i19.WishList]
class WishList extends _i28.PageRouteInfo<void> {
  const WishList() : super(name, path: '/wish-list');

  static const String name = 'WishList';
}

/// generated route for [_i20.NewList]
class NewList extends _i28.PageRouteInfo<void> {
  const NewList() : super(name, path: '/new-list');

  static const String name = 'NewList';
}

/// generated route for [_i21.CategoryViewNonPremium]
class CategoryViewNonPremium extends _i28.PageRouteInfo<void> {
  const CategoryViewNonPremium()
      : super(name, path: '/category-view-non-premium');

  static const String name = 'CategoryViewNonPremium';
}

/// generated route for [_i22.CategoryViewPremium]
class CategoryViewPremium extends _i28.PageRouteInfo<void> {
  const CategoryViewPremium() : super(name, path: '/category-view-premium');

  static const String name = 'CategoryViewPremium';
}

/// generated route for [_i23.ProductPage]
class ProductRoute extends _i28.PageRouteInfo<void> {
  const ProductRoute() : super(name, path: '/product-page');

  static const String name = 'ProductRoute';
}

/// generated route for [_i24.ProductPage2]
class ProductRoute2 extends _i28.PageRouteInfo<void> {
  const ProductRoute2() : super(name, path: '/product-page2');

  static const String name = 'ProductRoute2';
}

/// generated route for [_i25.ProductPagePremium2]
class ProductRoutePremium2 extends _i28.PageRouteInfo<void> {
  const ProductRoutePremium2() : super(name, path: '/product-page-premium2');

  static const String name = 'ProductRoutePremium2';
}

/// generated route for [_i26.ProductPageUnitIncrease2]
class ProductRouteUnitIncrease2 extends _i28.PageRouteInfo<void> {
  const ProductRouteUnitIncrease2()
      : super(name, path: '/product-page-unit-increase2');

  static const String name = 'ProductRouteUnitIncrease2';
}

/// generated route for [_i27.SubCategoryNonPremium]
class SubCategoryNonPremium extends _i28.PageRouteInfo<void> {
  const SubCategoryNonPremium()
      : super(name, path: '/sub-category-non-premium');

  static const String name = 'SubCategoryNonPremium';
}
