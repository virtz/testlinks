// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i34;
import 'package:flutter/material.dart' as _i35;

import '../core/models/category.dart' as _i36;
import '../core/models/product.dart' as _i37;
import '../core/models/subcategory.dart' as _i38;
import '../presentation/screens/auth/auth_view/auth_view.dart' as _i3;
import '../presentation/screens/auth/complete_account/complete_account.dart'
    as _i4;
import '../presentation/screens/auth/confirmation_page/confirmation_page.dart'
    as _i5;
import '../presentation/screens/auth/help_page-1/about_us.dart' as _i32;
import '../presentation/screens/auth/help_page-1/help_page.dart' as _i31;
import '../presentation/screens/auth/progress/progress.dart' as _i6;
import '../presentation/screens/auth/progress/progress2.dart' as _i7;
import '../presentation/screens/auth/register/register.dart' as _i2;
import '../presentation/screens/auth/sign_in/sign_in.dart' as _i8;
import '../presentation/screens/auth/sign_up/sign_up.dart' as _i9;
import '../presentation/screens/category/categories/category_view_none_premium.dart'
    as _i20;
import '../presentation/screens/category/categories/category_view_premium.dart'
    as _i21;
import '../presentation/screens/category/side_bar/discount_codes.dart' as _i16;
import '../presentation/screens/category/subcategories/subcategory_non_premium.dart'
    as _i26;
import '../presentation/screens/help/help.dart' as _i28;
import '../presentation/screens/help/subscriptions.dart' as _i29;
import '../presentation/screens/home/home_non_premium.dart' as _i10;
import '../presentation/screens/home/home_page_premium.dart' as _i13;
import '../presentation/screens/home/special_category_page.dart' as _i33;
import '../presentation/screens/products/product_page.dart' as _i22;
import '../presentation/screens/products/product_page_2.dart' as _i23;
import '../presentation/screens/products/product_page_premium_2.dart' as _i24;
import '../presentation/screens/products/product_page_unit_increase_2.dart'
    as _i25;
import '../presentation/screens/search/search.dart' as _i11;
import '../presentation/screens/settings/main_settings_non_premium/settings_non_premium.dart'
    as _i12;
import '../presentation/screens/settings/main_settings_premium/settings.dart'
    as _i14;
import '../presentation/screens/splash_screen/splash_screen.dart' as _i1;
import '../presentation/screens/walkthrough/walkthrough.dart' as _i30;
import '../presentation/screens/wishlist/wish_list.dart' as _i17;
import '../presentation/widgets/please_subscribe.dart' as _i27;
import '../presentation/widgets/pop-ups/new_list.dart' as _i19;
import '../presentation/widgets/pop-ups/review.dart' as _i15;
import '../presentation/widgets/pop-ups/wish_list.dart' as _i18;

class AppRouter extends _i34.RootStackRouter {
  AppRouter([_i35.GlobalKey<_i35.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i34.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    Register.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.Register());
    },
    AuthView.name: (routeData) {
      final args =
          routeData.argsAs<AuthViewArgs>(orElse: () => const AuthViewArgs());
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.AuthView(key: args.key, initialIndex: args.initialIndex));
    },
    CompleteAccount.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.CompleteAccount());
    },
    ConfirmationRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ConfirmationPage());
    },
    T12SignUp_2.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.T12SignUp_2());
    },
    T12SignUp_23.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.T12SignUp_23());
    },
    T12SignIn_23.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.T12SignIn_23());
    },
    T12SignIn_2.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.T12SignIn_2());
    },
    SignIn.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.SignIn());
    },
    SignUp.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.SignUp());
    },
    HomeNonPremium.name: (routeData) {
      final args = routeData.argsAs<HomeNonPremiumArgs>(
          orElse: () => const HomeNonPremiumArgs());
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i10.HomeNonPremium(
              key: args.key,
              category: args.category,
              isFromSearch: args.isFromSearch));
    },
    Search.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.Search());
    },
    SettingsNonPremium.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.SettingsNonPremium());
    },
    HomeRoutePremium.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.HomePagePremium());
    },
    Settings.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.Settings());
    },
    Review.name: (routeData) {
      final args =
          routeData.argsAs<ReviewArgs>(orElse: () => const ReviewArgs());
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: _i15.Review(key: args.key));
    },
    Barcodes.name: (routeData) {
      final args =
          routeData.argsAs<BarcodesArgs>(orElse: () => const BarcodesArgs());
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: _i16.Barcodes(key: args.key));
    },
    WishListView.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.WishListView());
    },
    WishList.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.WishList());
    },
    NewList.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.NewList());
    },
    CategoryViewNonPremium.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.CategoryViewNonPremium());
    },
    CategoryViewPremium.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.CategoryViewPremium());
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>(
          orElse: () => const ProductRouteArgs());
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i22.ProductPage(
              key: args.key,
              product: args.product,
              categoryName: args.categoryName,
              subcaegoryName: args.subcaegoryName,
              isFromSearch: args.isFromSearch,
              products: args.products,
              productId: args.productId,
              subcategoryId: args.subcategoryId,
              isFromSpecialCat: args.isFromSpecialCat));
    },
    ProductRoute2.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i23.ProductPage2());
    },
    ProductRoutePremium2.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i24.ProductPagePremium2());
    },
    ProductRouteUnitIncrease2.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i25.ProductPageUnitIncrease2());
    },
    SubCategoryNonPremium.name: (routeData) {
      final args = routeData.argsAs<SubCategoryNonPremiumArgs>(
          orElse: () => const SubCategoryNonPremiumArgs());
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i26.SubCategoryNonPremium(
              key: args.key,
              subcategories: args.subcategories,
              category: args.category,
              isFromSearch: args.isFromSearch,
              subactegory: args.subactegory,
              intialIndex: args.intialIndex));
    },
    DefaultSubscriptionPrompt.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i27.DefaultSubscriptionPrompt());
    },
    HelpScreen.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i28.HelpScreen());
    },
    Subscriptions.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i29.Subscriptions());
    },
    Walkthrough.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i30.Walkthrough());
    },
    HelpRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i31.HelpPage());
    },
    AboutUs.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i32.AboutUs());
    },
    SpecialCategoryRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i33.SpecialCategoryPage());
    }
  };

  @override
  List<_i34.RouteConfig> get routes => [
        _i34.RouteConfig(SplashScreen.name, path: '/'),
        _i34.RouteConfig(Register.name, path: '/Register'),
        _i34.RouteConfig(AuthView.name, path: '/auth-view'),
        _i34.RouteConfig(CompleteAccount.name, path: '/complete-account'),
        _i34.RouteConfig(ConfirmationRoute.name, path: '/confirmation-page'),
        _i34.RouteConfig(T12SignUp_2.name, path: '/t12-sign-up_2'),
        _i34.RouteConfig(T12SignUp_23.name, path: '/t12-sign-up_23'),
        _i34.RouteConfig(T12SignIn_23.name, path: '/t12-sign-in_23'),
        _i34.RouteConfig(T12SignIn_2.name, path: '/t12-sign-in_2'),
        _i34.RouteConfig(SignIn.name, path: '/sign-in'),
        _i34.RouteConfig(SignUp.name, path: '/sign-up'),
        _i34.RouteConfig(HomeNonPremium.name, path: '/home-non-premium'),
        _i34.RouteConfig(Search.name, path: '/Search'),
        _i34.RouteConfig(SettingsNonPremium.name,
            path: '/settings-non-premium'),
        _i34.RouteConfig(HomeRoutePremium.name, path: '/home-page-premium'),
        _i34.RouteConfig(Settings.name, path: '/Settings'),
        _i34.RouteConfig(Review.name, path: '/Review'),
        _i34.RouteConfig(Barcodes.name, path: '/Barcodes'),
        _i34.RouteConfig(WishListView.name, path: '/wish-list-view'),
        _i34.RouteConfig(WishList.name, path: '/wish-list'),
        _i34.RouteConfig(NewList.name, path: '/new-list'),
        _i34.RouteConfig(CategoryViewNonPremium.name,
            path: '/category-view-non-premium'),
        _i34.RouteConfig(CategoryViewPremium.name,
            path: '/category-view-premium'),
        _i34.RouteConfig(ProductRoute.name, path: '/product-page'),
        _i34.RouteConfig(ProductRoute2.name, path: '/product-page2'),
        _i34.RouteConfig(ProductRoutePremium2.name,
            path: '/product-page-premium2'),
        _i34.RouteConfig(ProductRouteUnitIncrease2.name,
            path: '/product-page-unit-increase2'),
        _i34.RouteConfig(SubCategoryNonPremium.name,
            path: '/sub-category-non-premium'),
        _i34.RouteConfig(DefaultSubscriptionPrompt.name,
            path: '/default-subscription-prompt'),
        _i34.RouteConfig(HelpScreen.name, path: '/help-screen'),
        _i34.RouteConfig(Subscriptions.name, path: '/Subscriptions'),
        _i34.RouteConfig(Walkthrough.name, path: '/Walkthrough'),
        _i34.RouteConfig(HelpRoute.name, path: '/help-page'),
        _i34.RouteConfig(AboutUs.name, path: '/about-us'),
        _i34.RouteConfig(SpecialCategoryRoute.name,
            path: '/special-category-page')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i34.PageRouteInfo<void> {
  const SplashScreen() : super(SplashScreen.name, path: '/');

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.Register]
class Register extends _i34.PageRouteInfo<void> {
  const Register() : super(Register.name, path: '/Register');

  static const String name = 'Register';
}

/// generated route for
/// [_i3.AuthView]
class AuthView extends _i34.PageRouteInfo<AuthViewArgs> {
  AuthView({_i35.Key? key, int initialIndex = 0})
      : super(AuthView.name,
            path: '/auth-view',
            args: AuthViewArgs(key: key, initialIndex: initialIndex));

  static const String name = 'AuthView';
}

class AuthViewArgs {
  const AuthViewArgs({this.key, this.initialIndex = 0});

  final _i35.Key? key;

  final int initialIndex;

  @override
  String toString() {
    return 'AuthViewArgs{key: $key, initialIndex: $initialIndex}';
  }
}

/// generated route for
/// [_i4.CompleteAccount]
class CompleteAccount extends _i34.PageRouteInfo<void> {
  const CompleteAccount()
      : super(CompleteAccount.name, path: '/complete-account');

  static const String name = 'CompleteAccount';
}

/// generated route for
/// [_i5.ConfirmationPage]
class ConfirmationRoute extends _i34.PageRouteInfo<void> {
  const ConfirmationRoute()
      : super(ConfirmationRoute.name, path: '/confirmation-page');

  static const String name = 'ConfirmationRoute';
}

/// generated route for
/// [_i6.T12SignUp_2]
class T12SignUp_2 extends _i34.PageRouteInfo<void> {
  const T12SignUp_2() : super(T12SignUp_2.name, path: '/t12-sign-up_2');

  static const String name = 'T12SignUp_2';
}

/// generated route for
/// [_i6.T12SignUp_23]
class T12SignUp_23 extends _i34.PageRouteInfo<void> {
  const T12SignUp_23() : super(T12SignUp_23.name, path: '/t12-sign-up_23');

  static const String name = 'T12SignUp_23';
}

/// generated route for
/// [_i7.T12SignIn_23]
class T12SignIn_23 extends _i34.PageRouteInfo<void> {
  const T12SignIn_23() : super(T12SignIn_23.name, path: '/t12-sign-in_23');

  static const String name = 'T12SignIn_23';
}

/// generated route for
/// [_i7.T12SignIn_2]
class T12SignIn_2 extends _i34.PageRouteInfo<void> {
  const T12SignIn_2() : super(T12SignIn_2.name, path: '/t12-sign-in_2');

  static const String name = 'T12SignIn_2';
}

/// generated route for
/// [_i8.SignIn]
class SignIn extends _i34.PageRouteInfo<void> {
  const SignIn() : super(SignIn.name, path: '/sign-in');

  static const String name = 'SignIn';
}

/// generated route for
/// [_i9.SignUp]
class SignUp extends _i34.PageRouteInfo<void> {
  const SignUp() : super(SignUp.name, path: '/sign-up');

  static const String name = 'SignUp';
}

/// generated route for
/// [_i10.HomeNonPremium]
class HomeNonPremium extends _i34.PageRouteInfo<HomeNonPremiumArgs> {
  HomeNonPremium(
      {_i35.Key? key, _i36.CategoryModel? category, bool isFromSearch = false})
      : super(HomeNonPremium.name,
            path: '/home-non-premium',
            args: HomeNonPremiumArgs(
                key: key, category: category, isFromSearch: isFromSearch));

  static const String name = 'HomeNonPremium';
}

class HomeNonPremiumArgs {
  const HomeNonPremiumArgs(
      {this.key, this.category, this.isFromSearch = false});

  final _i35.Key? key;

  final _i36.CategoryModel? category;

  final bool isFromSearch;

  @override
  String toString() {
    return 'HomeNonPremiumArgs{key: $key, category: $category, isFromSearch: $isFromSearch}';
  }
}

/// generated route for
/// [_i11.Search]
class Search extends _i34.PageRouteInfo<void> {
  const Search() : super(Search.name, path: '/Search');

  static const String name = 'Search';
}

/// generated route for
/// [_i12.SettingsNonPremium]
class SettingsNonPremium extends _i34.PageRouteInfo<void> {
  const SettingsNonPremium()
      : super(SettingsNonPremium.name, path: '/settings-non-premium');

  static const String name = 'SettingsNonPremium';
}

/// generated route for
/// [_i13.HomePagePremium]
class HomeRoutePremium extends _i34.PageRouteInfo<void> {
  const HomeRoutePremium()
      : super(HomeRoutePremium.name, path: '/home-page-premium');

  static const String name = 'HomeRoutePremium';
}

/// generated route for
/// [_i14.Settings]
class Settings extends _i34.PageRouteInfo<void> {
  const Settings() : super(Settings.name, path: '/Settings');

  static const String name = 'Settings';
}

/// generated route for
/// [_i15.Review]
class Review extends _i34.PageRouteInfo<ReviewArgs> {
  Review({_i35.Key? key})
      : super(Review.name, path: '/Review', args: ReviewArgs(key: key));

  static const String name = 'Review';
}

class ReviewArgs {
  const ReviewArgs({this.key});

  final _i35.Key? key;

  @override
  String toString() {
    return 'ReviewArgs{key: $key}';
  }
}

/// generated route for
/// [_i16.Barcodes]
class Barcodes extends _i34.PageRouteInfo<BarcodesArgs> {
  Barcodes({_i35.Key? key})
      : super(Barcodes.name, path: '/Barcodes', args: BarcodesArgs(key: key));

  static const String name = 'Barcodes';
}

class BarcodesArgs {
  const BarcodesArgs({this.key});

  final _i35.Key? key;

  @override
  String toString() {
    return 'BarcodesArgs{key: $key}';
  }
}

/// generated route for
/// [_i17.WishListView]
class WishListView extends _i34.PageRouteInfo<void> {
  const WishListView() : super(WishListView.name, path: '/wish-list-view');

  static const String name = 'WishListView';
}

/// generated route for
/// [_i18.WishList]
class WishList extends _i34.PageRouteInfo<void> {
  const WishList() : super(WishList.name, path: '/wish-list');

  static const String name = 'WishList';
}

/// generated route for
/// [_i19.NewList]
class NewList extends _i34.PageRouteInfo<void> {
  const NewList() : super(NewList.name, path: '/new-list');

  static const String name = 'NewList';
}

/// generated route for
/// [_i20.CategoryViewNonPremium]
class CategoryViewNonPremium extends _i34.PageRouteInfo<void> {
  const CategoryViewNonPremium()
      : super(CategoryViewNonPremium.name, path: '/category-view-non-premium');

  static const String name = 'CategoryViewNonPremium';
}

/// generated route for
/// [_i21.CategoryViewPremium]
class CategoryViewPremium extends _i34.PageRouteInfo<void> {
  const CategoryViewPremium()
      : super(CategoryViewPremium.name, path: '/category-view-premium');

  static const String name = 'CategoryViewPremium';
}

/// generated route for
/// [_i22.ProductPage]
class ProductRoute extends _i34.PageRouteInfo<ProductRouteArgs> {
  ProductRoute(
      {_i35.Key? key,
      _i37.Product? product,
      String? categoryName,
      String? subcaegoryName,
      bool isFromSearch = false,
      List<_i37.Product>? products,
      String? productId,
      String? subcategoryId,
      bool isFromSpecialCat = false})
      : super(ProductRoute.name,
            path: '/product-page',
            args: ProductRouteArgs(
                key: key,
                product: product,
                categoryName: categoryName,
                subcaegoryName: subcaegoryName,
                isFromSearch: isFromSearch,
                products: products,
                productId: productId,
                subcategoryId: subcategoryId,
                isFromSpecialCat: isFromSpecialCat));

  static const String name = 'ProductRoute';
}

class ProductRouteArgs {
  const ProductRouteArgs(
      {this.key,
      this.product,
      this.categoryName,
      this.subcaegoryName,
      this.isFromSearch = false,
      this.products,
      this.productId,
      this.subcategoryId,
      this.isFromSpecialCat = false});

  final _i35.Key? key;

  final _i37.Product? product;

  final String? categoryName;

  final String? subcaegoryName;

  final bool isFromSearch;

  final List<_i37.Product>? products;

  final String? productId;

  final String? subcategoryId;

  final bool isFromSpecialCat;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, product: $product, categoryName: $categoryName, subcaegoryName: $subcaegoryName, isFromSearch: $isFromSearch, products: $products, productId: $productId, subcategoryId: $subcategoryId, isFromSpecialCat: $isFromSpecialCat}';
  }
}

/// generated route for
/// [_i23.ProductPage2]
class ProductRoute2 extends _i34.PageRouteInfo<void> {
  const ProductRoute2() : super(ProductRoute2.name, path: '/product-page2');

  static const String name = 'ProductRoute2';
}

/// generated route for
/// [_i24.ProductPagePremium2]
class ProductRoutePremium2 extends _i34.PageRouteInfo<void> {
  const ProductRoutePremium2()
      : super(ProductRoutePremium2.name, path: '/product-page-premium2');

  static const String name = 'ProductRoutePremium2';
}

/// generated route for
/// [_i25.ProductPageUnitIncrease2]
class ProductRouteUnitIncrease2 extends _i34.PageRouteInfo<void> {
  const ProductRouteUnitIncrease2()
      : super(ProductRouteUnitIncrease2.name,
            path: '/product-page-unit-increase2');

  static const String name = 'ProductRouteUnitIncrease2';
}

/// generated route for
/// [_i26.SubCategoryNonPremium]
class SubCategoryNonPremium
    extends _i34.PageRouteInfo<SubCategoryNonPremiumArgs> {
  SubCategoryNonPremium(
      {_i35.Key? key,
      List<_i38.SubcategoryModel>? subcategories,
      _i36.CategoryModel? category,
      bool isFromSearch = false,
      _i38.SubcategoryModel? subactegory,
      int? intialIndex})
      : super(SubCategoryNonPremium.name,
            path: '/sub-category-non-premium',
            args: SubCategoryNonPremiumArgs(
                key: key,
                subcategories: subcategories,
                category: category,
                isFromSearch: isFromSearch,
                subactegory: subactegory,
                intialIndex: intialIndex));

  static const String name = 'SubCategoryNonPremium';
}

class SubCategoryNonPremiumArgs {
  const SubCategoryNonPremiumArgs(
      {this.key,
      this.subcategories,
      this.category,
      this.isFromSearch = false,
      this.subactegory,
      this.intialIndex});

  final _i35.Key? key;

  final List<_i38.SubcategoryModel>? subcategories;

  final _i36.CategoryModel? category;

  final bool isFromSearch;

  final _i38.SubcategoryModel? subactegory;

  final int? intialIndex;

  @override
  String toString() {
    return 'SubCategoryNonPremiumArgs{key: $key, subcategories: $subcategories, category: $category, isFromSearch: $isFromSearch, subactegory: $subactegory, intialIndex: $intialIndex}';
  }
}

/// generated route for
/// [_i27.DefaultSubscriptionPrompt]
class DefaultSubscriptionPrompt extends _i34.PageRouteInfo<void> {
  const DefaultSubscriptionPrompt()
      : super(DefaultSubscriptionPrompt.name,
            path: '/default-subscription-prompt');

  static const String name = 'DefaultSubscriptionPrompt';
}

/// generated route for
/// [_i28.HelpScreen]
class HelpScreen extends _i34.PageRouteInfo<void> {
  const HelpScreen() : super(HelpScreen.name, path: '/help-screen');

  static const String name = 'HelpScreen';
}

/// generated route for
/// [_i29.Subscriptions]
class Subscriptions extends _i34.PageRouteInfo<void> {
  const Subscriptions() : super(Subscriptions.name, path: '/Subscriptions');

  static const String name = 'Subscriptions';
}

/// generated route for
/// [_i30.Walkthrough]
class Walkthrough extends _i34.PageRouteInfo<void> {
  const Walkthrough() : super(Walkthrough.name, path: '/Walkthrough');

  static const String name = 'Walkthrough';
}

/// generated route for
/// [_i31.HelpPage]
class HelpRoute extends _i34.PageRouteInfo<void> {
  const HelpRoute() : super(HelpRoute.name, path: '/help-page');

  static const String name = 'HelpRoute';
}

/// generated route for
/// [_i32.AboutUs]
class AboutUs extends _i34.PageRouteInfo<void> {
  const AboutUs() : super(AboutUs.name, path: '/about-us');

  static const String name = 'AboutUs';
}

/// generated route for
/// [_i33.SpecialCategoryPage]
class SpecialCategoryRoute extends _i34.PageRouteInfo<void> {
  const SpecialCategoryRoute()
      : super(SpecialCategoryRoute.name, path: '/special-category-page');

  static const String name = 'SpecialCategoryRoute';
}
