import 'package:flutter/material.dart';
import 'package:buynsell/constant/route_paths.dart';
import 'package:buynsell/ui/item/entry/custom_camera_view.dart';
import 'package:buynsell/ui/item/promote/InAppPurchaseView.dart';
import 'package:buynsell/ui/item/promote/choose_payment_view.dart';
import 'package:buynsell/ui/item/paid_ad_product/paid_ad_product_list_container.dart';
import 'package:buynsell/ui/setting/camera/camera_setting_view.dart';
import 'package:buynsell/ui/user/More/more_container_view.dart';
import 'package:buynsell/ui/app_info/app_info_view.dart';
import 'package:buynsell/ui/app_loading/app_loading_view.dart';
import 'package:buynsell/ui/blog/detail/blog_view.dart';
import 'package:buynsell/ui/blog/list/blog_list_container.dart';
import 'package:buynsell/ui/category/filter_list/category_filter_list_view.dart';
import 'package:buynsell/ui/category/list/category_list_view_container.dart';
import 'package:buynsell/ui/chat/detail/chat_view.dart';
import 'package:buynsell/ui/chat/image/chat_image_detail_view.dart';
import 'package:buynsell/ui/dashboard/core/dashboard_view.dart';
import 'package:buynsell/ui/force_update/force_update_view.dart';
import 'package:buynsell/ui/gallery/detail/gallery_view.dart';
import 'package:buynsell/ui/gallery/grid/gallery_grid_view.dart';
import 'package:buynsell/ui/history/list/history_list_container.dart';
import 'package:buynsell/ui/item/condition/item_condition_view.dart';
import 'package:buynsell/ui/item/currency/item_currency_view.dart';
import 'package:buynsell/ui/item/deal_option/item_deal_option_view.dart';
import 'package:buynsell/ui/item/detail/product_detail_view.dart';
import 'package:buynsell/ui/item/entry/item_entry_container.dart';
import 'package:buynsell/ui/item/favourite/favourite_product_list_container.dart';
import 'package:buynsell/ui/item/item/user_item_follower_list_view.dart';
import 'package:buynsell/ui/item/item/user_item_list_for_profile_view.dart';
import 'package:buynsell/ui/item/item/user_item_list_view.dart';
import 'package:buynsell/ui/item/list_with_filter/filter/category/filter_list_view.dart';
import 'package:buynsell/ui/item/list_with_filter/filter/filter/item_search_view.dart';
import 'package:buynsell/ui/item/list_with_filter/product_list_with_filter_container.dart';
import 'package:buynsell/ui/item/paid_ad/paid_ad_item_list_container.dart';
import 'package:buynsell/ui/item/price_type/item_price_type_view.dart';
import 'package:buynsell/ui/item/promote/CreditCardView.dart';
import 'package:buynsell/ui/item/promote/ItemPromoteView.dart';
import 'package:buynsell/ui/item/promote/pay_stack_view.dart';
import 'package:buynsell/ui/item/reported_item/reported_item_container_view.dart';
import 'package:buynsell/ui/item/type/type_list_view.dart';
import 'package:buynsell/ui/language/list/language_list_view.dart';
import 'package:buynsell/ui/location/entry_location/item_entry_location_view.dart';
import 'package:buynsell/ui/location/filter_location_view.dart';
import 'package:buynsell/ui/location/item_location_container.dart';
import 'package:buynsell/ui/map/map_filter_view.dart';
import 'package:buynsell/ui/map/map_pin_view.dart';
import 'package:buynsell/ui/noti/detail/noti_view.dart';
import 'package:buynsell/ui/noti/list/noti_list_view.dart';
import 'package:buynsell/ui/noti/notification_setting/notification_setting_view.dart';
import 'package:buynsell/ui/offer/list/offer_container_view.dart';
import 'package:buynsell/ui/offline_payment/offline_payment_view.dart';
import 'package:buynsell/ui/rating/list/rating_list_view.dart';
import 'package:buynsell/ui/safety_tips/safety_tips_view.dart';
import 'package:buynsell/ui/setting/setting_container_view.dart';
import 'package:buynsell/ui/setting/setting_privacy_policy_view.dart';
import 'package:buynsell/ui/subcategory/filter/sub_category_search_list_view.dart';
import 'package:buynsell/ui/subcategory/list/sub_category_grid_view.dart';
import 'package:buynsell/ui/user/blocked_user/block_user_container_view.dart';
import 'package:buynsell/ui/user/edit_profile/edit_profile_view.dart';
import 'package:buynsell/ui/user/forgot_password/forgot_password_container_view.dart';
import 'package:buynsell/ui/user/list/follower_user_list_view.dart';
import 'package:buynsell/ui/user/list/following_user_list_view.dart';
import 'package:buynsell/ui/user/login/login_container_view.dart';
import 'package:buynsell/ui/user/password_update/change_password_view.dart';
import 'package:buynsell/ui/user/phone/sign_in/phone_sign_in_container_view.dart';
import 'package:buynsell/ui/user/phone/verify_phone/verify_phone_container_view.dart';
import 'package:buynsell/ui/user/register/register_container_view.dart';
import 'package:buynsell/ui/user/user_detail/user_detail_view.dart';
import 'package:buynsell/ui/user/verify/verify_email_container_view.dart';
import 'package:buynsell/utils/utils.dart';
import 'package:buynsell/viewobject/blog.dart';
import 'package:buynsell/viewobject/category.dart';
import 'package:buynsell/viewobject/default_photo.dart';
import 'package:buynsell/viewobject/holder/intent_holder/chat_history_intent_holder.dart';
import 'package:buynsell/viewobject/holder/intent_holder/item_entry_intent_holder.dart';
import 'package:buynsell/viewobject/holder/intent_holder/item_list_intent_holder.dart';
import 'package:buynsell/viewobject/holder/intent_holder/map_pin_intent_holder.dart';
import 'package:buynsell/viewobject/holder/intent_holder/product_detail_intent_holder.dart';
import 'package:buynsell/viewobject/holder/intent_holder/product_list_intent_holder.dart';
import 'package:buynsell/viewobject/holder/intent_holder/safety_tips_intent_holder.dart';
import 'package:buynsell/viewobject/holder/intent_holder/user_intent_holder.dart';
import 'package:buynsell/viewobject/holder/intent_holder/verify_phone_internt_holder.dart';
import 'package:buynsell/viewobject/holder/location_parameter_holder.dart';
import 'package:buynsell/viewobject/holder/paid_history_holder.dart';
import 'package:buynsell/viewobject/holder/paystack_intent_holder.dart';
import 'package:buynsell/viewobject/holder/product_parameter_holder.dart';
import 'package:buynsell/viewobject/message.dart';
import 'package:buynsell/viewobject/noti.dart';
import 'package:buynsell/viewobject/product.dart';
import 'package:buynsell/viewobject/ps_app_info.dart';
import 'package:buynsell/viewobject/ps_app_version.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        return AppLoadingView();
      });

    case '${RoutePaths.home}':
      //   return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
      //     return DashboardView();
      //   });

      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.home),
          builder: (BuildContext context) {
            return DashboardView();
          });

    case '${RoutePaths.force_update}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Object args = settings.arguments;
        final PSAppVersion psAppVersion = args ?? PSAppVersion;
        return ForceUpdateView(psAppVersion: psAppVersion);
      });

    case '${RoutePaths.user_register_container}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => RegisterContainerView());

    case '${RoutePaths.login_container}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => LoginContainerView());

    case '${RoutePaths.user_verify_email_container}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Object args = settings.arguments;
        final String userId = args ?? String;
        return VerifyEmailContainerView(userId: userId);
      });

    case '${RoutePaths.user_forgot_password_container}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => ForgotPasswordContainerView());

    case '${RoutePaths.user_phone_signin_container}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => PhoneSignInContainerView());

    case '${RoutePaths.user_phone_verify_container}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Object args = settings.arguments;

        final VerifyPhoneIntentHolder verifyPhoneIntentParameterHolder =
            args ?? VerifyPhoneIntentHolder;
        return VerifyPhoneContainerView(
          userName: verifyPhoneIntentParameterHolder.userName,
          phoneNumber: verifyPhoneIntentParameterHolder.phoneNumber,
          phoneId: verifyPhoneIntentParameterHolder.phoneId,
        );
      });

    case '${RoutePaths.user_update_password}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => ChangePasswordView());

    // case '${RoutePaths.profile_container}':
    //   return MaterialPageRoute<dynamic>(builder: (BuildContext context) => ProfileContainerView());

    case '${RoutePaths.languageList}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        return LanguageListView();
      });

    case '${RoutePaths.categoryList}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        return CategoryListViewContainerView(
            appBarTitle: Utils.getString(context, 'dashboard__category_list'));
      });

    case '${RoutePaths.notiList}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => NotiListView());

    case '${RoutePaths.offerList}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => OfferContainerView());

    case '${RoutePaths.blockUserList}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => BlockUserContainerView());

    case '${RoutePaths.reportItemList}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => ReportItemContainerView());

    case '${RoutePaths.followingUserList}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => FollowingUserListView());

    case '${RoutePaths.followerUserList}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => FollowerUserListView());

    case '${RoutePaths.chatView}':
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.chatView),
          builder: (BuildContext context) {
            final Object args = settings.arguments;
            final ChatHistoryIntentHolder chatHistoryIntentHolder =
                args ?? ChatHistoryIntentHolder;
            return ChatView(
              chatFlag: chatHistoryIntentHolder.chatFlag,
              itemId: chatHistoryIntentHolder.itemId,
              buyerUserId: chatHistoryIntentHolder.buyerUserId,
              sellerUserId: chatHistoryIntentHolder.sellerUserId,
            );
          });
    case '${RoutePaths.notiSetting}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => NotificationSettingView());

    case '${RoutePaths.setting}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => SettingContainerView());

    case '${RoutePaths.more}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Object args = settings.arguments;
        final String userName = args ?? String;
        return MoreContainerView(userName: userName);
      });

    // case '${RoutePaths.subCategoryList}':
    //   return MaterialPageRoute<Category>(builder: (BuildContext context) {
    //     final Object args = settings.arguments;
    //     final Category category = args ?? Category;
    //     return SubCategoryListView(category: category);
    //   });

    case '${RoutePaths.noti}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Object args = settings.arguments;
        final Noti noti = args ?? Noti;
        return NotiView(noti: noti);
      });

    case '${RoutePaths.cameraSetting}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => CameraSettingView());

    case '${RoutePaths.cameraView}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => CustomCameraView());

    case '${RoutePaths.filterProductList}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Object args = settings.arguments;
        final ProductListIntentHolder productListIntentHolder =
            args ?? ProductListIntentHolder;
        return ProductListWithFilterContainerView(
            appBarTitle: productListIntentHolder.appBarTitle,
            productParameterHolder:
                productListIntentHolder.productParameterHolder);
      });

    case '${RoutePaths.filterLocationList}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Object args = settings.arguments;
        final LocationParameterHolder locationParameterHolder =
            args ?? LocationParameterHolder;
        return FilterLocationView(
            locationParameterHolder: locationParameterHolder);
      });

    case '${RoutePaths.privacyPolicy}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Object args = settings.arguments;
        final int checkPolicyType = args ?? int;
        return SettingPrivacyPolicyView(
          checkPolicyType: checkPolicyType,
        );
      });

    case '${RoutePaths.blogList}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => BlogListContainerView());

    case '${RoutePaths.appinfo}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => AppInfoView());

    case '${RoutePaths.blogDetail}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Object args = settings.arguments;
        final Blog blog = args ?? Blog;
        return BlogView(
          blog: blog,
          heroTagImage: blog.id,
        );
      });

    case '${RoutePaths.paidAdItemList}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => PaidItemListContainerView());

    case '${RoutePaths.userItemList}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Object args = settings.arguments;
        final ItemListIntentHolder itemEntryIntentHolder =
            args ?? ItemListIntentHolder;
        return UserItemListView(
          addedUserId: itemEntryIntentHolder.userId,
          status: itemEntryIntentHolder.status,
          title: itemEntryIntentHolder.title,
        );
      });
    case '${RoutePaths.userItemListForProfile}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Object args = settings.arguments;
        final ItemListIntentHolder itemEntryIntentHolder =
            args ?? ItemListIntentHolder;
        return UserItemListForProfileView(
          addedUserId: itemEntryIntentHolder.userId,
          status: itemEntryIntentHolder.status,
          title: itemEntryIntentHolder.title,
        );
      });
    // case '${RoutePaths.transactionList}':
    //   return MaterialPageRoute<dynamic>(builder: (BuildContext context) => TransactionListContainerView());
    case '${RoutePaths.historyList}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        return HistoryListContainerView();
      });
    // case '${RoutePaths.transactionDetail}':
    //   return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
    //     final Object args = settings.arguments;
    //     final TransactionHeader transaction = args ?? TransactionHeader;
    //     return TransactionItemListView(
    //       transaction: transaction,
    //     );
    //   });
    case '${RoutePaths.productDetail}':
      final Object args = settings.arguments;
      final ProductDetailIntentHolder holder =
          args ?? ProductDetailIntentHolder;

      // return MaterialPageRoute<Widget>(builder: (BuildContext context) {
      //   return ProductDetailView(
      //     productId: holder.productId,
      //     heroTagImage: holder.heroTagImage,
      //     heroTagTitle: holder.heroTagTitle,
      //   );
      // });

      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.productDetail),
          builder: (BuildContext context) {
            return ProductDetailView(
              productId: holder.productId,
              heroTagImage: holder.heroTagImage,
              heroTagTitle: holder.heroTagTitle,
            );
          });

    case '${RoutePaths.filterExpantion}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final dynamic args = settings.arguments;

        return FilterListView(selectedData: args);
      });
    // case '${RoutePaths.commentList}':
    //   return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
    //     final Object args = settings.arguments;
    //     final Product product = args ?? Product;
    //     return CommentListView(product: product);
    //   });
    case '${RoutePaths.itemSearch}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Object args = settings.arguments;
        final ProductParameterHolder productParameterHolder =
            args ?? ProductParameterHolder;
        return ItemSearchView(productParameterHolder: productParameterHolder);
      });

    case '${RoutePaths.mapFilter}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Object args = settings.arguments;
        final ProductParameterHolder productParameterHolder =
            args ?? ProductParameterHolder;
        return MapFilterView(productParameterHolder: productParameterHolder);
      });

    case '${RoutePaths.mapPin}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Object args = settings.arguments;
        final MapPinIntentHolder mapPinIntentHolder =
            args ?? MapPinIntentHolder;
        return MapPinView(
          flag: mapPinIntentHolder.flag,
          maplat: mapPinIntentHolder.mapLat,
          maplng: mapPinIntentHolder.mapLng,
        );
      });

    // case '${RoutePaths.commentDetail}':
    //   return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
    //     final Object args = settings.arguments;
    //     final CommentHeader commentHeader = args ?? CommentHeader;
    //     return CommentDetailListView(
    //       commentHeader: commentHeader,
    //     );
    //   });

    case '${RoutePaths.favouriteProductList}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) =>
              FavouriteProductListContainerView());

    case '${RoutePaths.paidAdProductList}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => PaidAdProductListContainerView());

    case '${RoutePaths.ratingList}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Object args = settings.arguments;
        final String itemUserId = args ?? Product;
        return RatingListView(
          itemUserId: itemUserId,
        );
      });

    case '${RoutePaths.editProfile}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        return EditProfileView();
      });

    case '${RoutePaths.galleryGrid}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Object args = settings.arguments;
        final Product product = args ?? Product;
        return GalleryGridView(product: product);
      });

    case '${RoutePaths.galleryDetail}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Object args = settings.arguments;
        final DefaultPhoto selectedDefaultImage = args ?? DefaultPhoto;
        return GalleryView(selectedDefaultImage: selectedDefaultImage);
      });

    case '${RoutePaths.chatImageDetailView}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Object args = settings.arguments;
        final Message message = args ?? Message;
        return ChatImageDetailView(messageObj: message);
      });

    case '${RoutePaths.searchCategory}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => CategoryFilterListView());

    case '${RoutePaths.searchSubCategory}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Object args = settings.arguments;
        final String category = args ?? String;
        return SubCategorySearchListView(categoryId: category);
      });

    // case '${RoutePaths.trendingCategoryList}':
    //   return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
    //     return TrendingCategoryListView();
    //   });
    case '${RoutePaths.userDetail}':
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.userDetail),
          builder: (BuildContext context) {
            final Object args = settings.arguments;

            final UserIntentHolder userIntentHolder = args ?? UserIntentHolder;
            return UserDetailView(
              userName: userIntentHolder.userName,
              userId: userIntentHolder.userId,
            );
          });

    case '${RoutePaths.safetyTips}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Object args = settings.arguments;
        final SafetyTipsIntentHolder safetyTipsIntentHolder =
            args ?? SafetyTipsIntentHolder;
        return SafetyTipsView(
          animationController: safetyTipsIntentHolder.animationController,
          safetyTips: safetyTipsIntentHolder.safetyTips,
        );
      });

    case '${RoutePaths.itemLocationList}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        return ItemLocationContainerView();
      });
    case '${RoutePaths.itemEntry}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Object args = settings.arguments;
        final ItemEntryIntentHolder itemEntryIntentHolder =
            args ?? ItemEntryIntentHolder;
        return ItemEntryContainerView(
          flag: itemEntryIntentHolder.flag,
          item: itemEntryIntentHolder.item,
        );
      });

    case '${RoutePaths.itemType}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => TypeListView());

    case '${RoutePaths.itemCondition}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => ItemConditionView());

    case '${RoutePaths.itemPriceType}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => ItemPriceTypeView());

    case '${RoutePaths.itemCurrencySymbol}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => ItemCurrencyView());

    case '${RoutePaths.itemDealOption}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => ItemDealOptionView());

    case '${RoutePaths.itemLocation}':
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => ItemEntryLocationView());

    case '${RoutePaths.itemPromote}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Object args = settings.arguments;
        final Product product = args ?? Product;
        return ItemPromoteView(product: product);
      });

    case '${RoutePaths.choosePayment}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Map<String, dynamic> args = settings.arguments;
        final Product product = args['product'];
        final PSAppInfo appInfo = args['appInfo'];
        Utils.psPrint(appInfo.inAppPurchasedPrdIdAndroid);
        // final Product product = args ?? Product;
        return ChoosePaymentVIew(product: product, appInfo: appInfo);
      });

    case '${RoutePaths.subCategoryGrid}':
      return MaterialPageRoute<Category>(builder: (BuildContext context) {
        final Object args = settings.arguments;
        final Category category = args ?? Category;
        return SubCategoryGridView(category: category);
      });

    case '${RoutePaths.itemListFromFollower}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Object args = settings.arguments;
        final String loginUserId = args ?? String;

        return UserItemFollowerListView(
          loginUserId: loginUserId,
        );
      });

    case '${RoutePaths.inAppPurchase}':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        final Map<String, dynamic> args = settings.arguments;
        // final String itemId = args ?? String;
        final String itemId = args['productId'];
        final PSAppInfo appInfo = args['appInfo'];

        return InAppPurchaseView(itemId, appInfo);
      });

    case '${RoutePaths.creditCard}':
      final Object args = settings.arguments;

      final PaidHistoryHolder paidHistoryHolder = args ?? PaidHistoryHolder;
      return PageRouteBuilder<dynamic>(
          pageBuilder: (_, Animation<double> a1, Animation<double> a2) =>
              CreditCardView(
                product: paidHistoryHolder.product,
                amount: paidHistoryHolder.amount,
                howManyDay: paidHistoryHolder.howManyDay,
                paymentMethod: paidHistoryHolder.paymentMethod,
                stripePublishableKey: paidHistoryHolder.stripePublishableKey,
                startDate: paidHistoryHolder.startDate,
                startTimeStamp: paidHistoryHolder.startTimeStamp,
                itemPaidHistoryProvider:
                    paidHistoryHolder.itemPaidHistoryProvider,
              ));
    case '${RoutePaths.payStackPayment}':
      final Object args = settings.arguments;

      final PayStackInterntHolder payStackInterntHolder =
          args ?? PayStackInterntHolder;
      return PageRouteBuilder<dynamic>(
          pageBuilder: (_, Animation<double> a1, Animation<double> a2) =>
              PayStackView(
                product: payStackInterntHolder.product,
                amount: payStackInterntHolder.amount,
                howManyDay: payStackInterntHolder.howManyDay,
                paymentMethod: payStackInterntHolder.paymentMethod,
                stripePublishableKey:
                    payStackInterntHolder.stripePublishableKey,
                startDate: payStackInterntHolder.startDate,
                startTimeStamp: payStackInterntHolder.startTimeStamp,
                itemPaidHistoryProvider:
                    payStackInterntHolder.itemPaidHistoryProvider,
                userProvider: payStackInterntHolder.userProvider,
                payStackKey: payStackInterntHolder.payStackKey,
              ));
    case '${RoutePaths.offlinePayment}':
      final Object args = settings.arguments;

      final PaidHistoryHolder paidHistoryHolder = args ?? PaidHistoryHolder;
      return PageRouteBuilder<dynamic>(
          pageBuilder: (_, Animation<double> a1, Animation<double> a2) =>
              OfflinePaymentView(
                product: paidHistoryHolder.product,
                amount: paidHistoryHolder.amount,
                howManyDay: paidHistoryHolder.howManyDay,
                paymentMethod: paidHistoryHolder.paymentMethod,
                stripePublishableKey: paidHistoryHolder.stripePublishableKey,
                startDate: paidHistoryHolder.startDate,
                startTimeStamp: paidHistoryHolder.startTimeStamp,
                itemPaidHistoryProvider:
                    paidHistoryHolder.itemPaidHistoryProvider,
              ));

    default:
      return PageRouteBuilder<dynamic>(
          pageBuilder: (_, Animation<double> a1, Animation<double> a2) =>
              AppLoadingView());
  }
}
