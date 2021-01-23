import 'package:buynsell/db/about_us_dao.dart';
import 'package:buynsell/db/blocked_user_dao.dart';
import 'package:buynsell/db/chat_history_dao.dart';
import 'package:buynsell/db/deal_option_dao.dart';
import 'package:buynsell/db/follower_item_dao.dart';
import 'package:buynsell/db/item_condition_dao.dart';
import 'package:buynsell/db/item_currency_dao.dart';
import 'package:buynsell/db/item_loacation_dao.dart';
import 'package:buynsell/db/item_price_type_dao.dart';
import 'package:buynsell/db/item_type_dao.dart';
import 'package:buynsell/db/offer_dao.dart';
import 'package:buynsell/db/offline_payment_method_dao.dart';
import 'package:buynsell/db/paid_ad_item_dao.dart';
import 'package:buynsell/db/reported_item_dao.dart';
import 'package:buynsell/db/user_map_dao.dart';
import 'package:buynsell/db/user_unread_message_dao.dart';
import 'package:buynsell/repository/about_us_repository.dart';
import 'package:buynsell/repository/blocked_user_repository.dart';
import 'package:buynsell/repository/chat_history_repository.dart';
import 'package:buynsell/repository/delete_task_repository.dart';
import 'package:buynsell/repository/item_condition_repository.dart';
import 'package:buynsell/repository/item_currency_repository.dart';
import 'package:buynsell/repository/item_deal_option_repository.dart';
import 'package:buynsell/repository/item_location_repository.dart';
import 'package:buynsell/repository/item_paid_history_repository.dart';
import 'package:buynsell/repository/item_price_type_repository.dart';
import 'package:buynsell/repository/item_type_repository.dart';
import 'package:buynsell/repository/offer_repository.dart';
import 'package:buynsell/repository/offline_payment_method_repository.dart';
import 'package:buynsell/repository/paid_ad_item_repository.dart';
import 'package:buynsell/db/category_map_dao.dart';
import 'package:buynsell/db/favourite_product_dao.dart';
import 'package:buynsell/db/gallery_dao.dart';
import 'package:buynsell/db/history_dao.dart';
import 'package:buynsell/db/rating_dao.dart';
import 'package:buynsell/db/user_dao.dart';
import 'package:buynsell/db/related_product_dao.dart';
import 'package:buynsell/db/user_login_dao.dart';
import 'package:buynsell/repository/Common/notification_repository.dart';
import 'package:buynsell/repository/clear_all_data_repository.dart';
import 'package:buynsell/repository/contact_us_repository.dart';
import 'package:buynsell/repository/coupon_discount_repository.dart';
import 'package:buynsell/repository/gallery_repository.dart';
import 'package:buynsell/repository/history_repsitory.dart';
import 'package:buynsell/db/blog_dao.dart';
import 'package:buynsell/repository/blog_repository.dart';
import 'package:buynsell/repository/rating_repository.dart';
import 'package:buynsell/repository/reported_item_repository.dart';
import 'package:buynsell/repository/token_repository.dart';
import 'package:buynsell/repository/user_repository.dart';
import 'package:buynsell/repository/user_unread_message_repository.dart';
import 'package:buynsell/viewobject/common/ps_value_holder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:buynsell/api/ps_api_service.dart';
import 'package:buynsell/db/cateogry_dao.dart';
import 'package:buynsell/db/common/ps_shared_preferences.dart';
import 'package:buynsell/db/noti_dao.dart';
import 'package:buynsell/db/sub_category_dao.dart';
import 'package:buynsell/db/product_dao.dart';
import 'package:buynsell/db/product_map_dao.dart';
import 'package:buynsell/repository/app_info_repository.dart';
import 'package:buynsell/repository/category_repository.dart';
import 'package:buynsell/repository/language_repository.dart';
import 'package:buynsell/repository/noti_repository.dart';
import 'package:buynsell/repository/product_repository.dart';
import 'package:buynsell/repository/ps_theme_repository.dart';
import 'package:buynsell/repository/sub_category_repository.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = <SingleChildWidget>[
  ...independentProviders,
  ..._dependentProviders,
  ..._valueProviders,
];

List<SingleChildWidget> independentProviders = <SingleChildWidget>[
  Provider<PsSharedPreferences>.value(value: PsSharedPreferences.instance),
  Provider<PsApiService>.value(value: PsApiService()),
  Provider<CategoryDao>.value(value: CategoryDao()),
  Provider<CategoryMapDao>.value(value: CategoryMapDao.instance),
  Provider<UserMapDao>.value(value: UserMapDao.instance),
  Provider<SubCategoryDao>.value(
      value: SubCategoryDao()), //wrong type not contain instance
  Provider<ProductDao>.value(
      value: ProductDao.instance), //correct type with instance
  Provider<ProductMapDao>.value(value: ProductMapDao.instance),
  Provider<NotiDao>.value(value: NotiDao.instance),
  Provider<OfflinePaymentMethodDao>.value(
      value: OfflinePaymentMethodDao.instance),
  Provider<AboutUsDao>.value(value: AboutUsDao.instance),
  Provider<BlogDao>.value(value: BlogDao.instance),
  Provider<UserDao>.value(value: UserDao.instance),
  Provider<UserLoginDao>.value(value: UserLoginDao.instance),
  Provider<RelatedProductDao>.value(value: RelatedProductDao.instance),
  Provider<RatingDao>.value(value: RatingDao.instance),
  Provider<ItemLocationDao>.value(value: ItemLocationDao.instance),
  Provider<PaidAdItemDao>.value(value: PaidAdItemDao.instance),
  Provider<HistoryDao>.value(value: HistoryDao.instance),
  Provider<GalleryDao>.value(value: GalleryDao.instance),
  Provider<FavouriteProductDao>.value(value: FavouriteProductDao.instance),
  Provider<ChatHistoryDao>.value(value: ChatHistoryDao.instance),
  Provider<OfferDao>.value(value: OfferDao.instance),
  Provider<FollowerItemDao>.value(value: FollowerItemDao.instance),
  Provider<ItemTypeDao>.value(value: ItemTypeDao()),
  Provider<ItemConditionDao>.value(value: ItemConditionDao()),
  Provider<ItemPriceTypeDao>.value(value: ItemPriceTypeDao()),
  Provider<ItemCurrencyDao>.value(value: ItemCurrencyDao()),
  Provider<ItemDealOptionDao>.value(value: ItemDealOptionDao()),
  Provider<UserUnreadMessageDao>.value(value: UserUnreadMessageDao.instance),
  Provider<BlockedUserDao>.value(value: BlockedUserDao.instance),
  Provider<ReportedItemDao>.value(value: ReportedItemDao.instance),
];

List<SingleChildWidget> _dependentProviders = <SingleChildWidget>[
  ProxyProvider<PsSharedPreferences, PsThemeRepository>(
    update: (_, PsSharedPreferences ssSharedPreferences,
            PsThemeRepository psThemeRepository) =>
        PsThemeRepository(psSharedPreferences: ssSharedPreferences),
  ),
  ProxyProvider<PsApiService, AppInfoRepository>(
    update:
        (_, PsApiService psApiService, AppInfoRepository appInfoRepository) =>
            AppInfoRepository(psApiService: psApiService),
  ),
  ProxyProvider<PsSharedPreferences, LanguageRepository>(
    update: (_, PsSharedPreferences ssSharedPreferences,
            LanguageRepository languageRepository) =>
        LanguageRepository(psSharedPreferences: ssSharedPreferences),
  ),
  ProxyProvider<PsApiService, NotificationRepository>(
    update:
        (_, PsApiService psApiService, NotificationRepository userRepository) =>
            NotificationRepository(
      psApiService: psApiService,
    ),
  ),
  ProxyProvider<PsApiService, ItemPaidHistoryRepository>(
    update: (_, PsApiService psApiService,
            ItemPaidHistoryRepository itemPaidHistoryRepository) =>
        ItemPaidHistoryRepository(psApiService: psApiService),
  ),
  ProxyProvider2<PsApiService, CategoryDao, ClearAllDataRepository>(
    update: (_, PsApiService psApiService, CategoryDao categoryDao,
            ClearAllDataRepository clearAllDataRepository) =>
        ClearAllDataRepository(),
  ),
  ProxyProvider<PsApiService, DeleteTaskRepository>(
    update: (_, PsApiService psApiService,
            DeleteTaskRepository deleteTaskRepository) =>
        DeleteTaskRepository(),
  ),
  ProxyProvider<PsApiService, ContactUsRepository>(
    update: (_, PsApiService psApiService,
            ContactUsRepository apiStatusRepository) =>
        ContactUsRepository(psApiService: psApiService),
  ),
  ProxyProvider<PsApiService, CouponDiscountRepository>(
    update: (_, PsApiService psApiService,
            CouponDiscountRepository couponDiscountRepository) =>
        CouponDiscountRepository(psApiService: psApiService),
  ),
  ProxyProvider<PsApiService, TokenRepository>(
    update: (_, PsApiService psApiService, TokenRepository tokenRepository) =>
        TokenRepository(psApiService: psApiService),
  ),
  ProxyProvider2<PsApiService, CategoryDao, CategoryRepository>(
    update: (_, PsApiService psApiService, CategoryDao categoryDao,
            CategoryRepository categoryRepository2) =>
        CategoryRepository(
            psApiService: psApiService, categoryDao: categoryDao),
  ),
  ProxyProvider2<PsApiService, OfflinePaymentMethodDao,
      OfflinePaymentMethodRepository>(
    update: (_,
            PsApiService psApiService,
            OfflinePaymentMethodDao offlinePaymentMethodDao,
            OfflinePaymentMethodRepository categoryRepository2) =>
        OfflinePaymentMethodRepository(
            psApiService: psApiService,
            offlinePaymentMethodDao: offlinePaymentMethodDao),
  ),
  ProxyProvider2<PsApiService, SubCategoryDao, SubCategoryRepository>(
    update: (_, PsApiService psApiService, SubCategoryDao subCategoryDao,
            SubCategoryRepository subCategoryRepository) =>
        SubCategoryRepository(
            psApiService: psApiService, subCategoryDao: subCategoryDao),
  ),
  ProxyProvider2<PsApiService, ProductDao, ProductRepository>(
    update: (_, PsApiService psApiService, ProductDao productDao,
            ProductRepository categoryRepository2) =>
        ProductRepository(psApiService: psApiService, productDao: productDao),
  ),
  ProxyProvider2<PsApiService, NotiDao, NotiRepository>(
    update: (_, PsApiService psApiService, NotiDao notiDao,
            NotiRepository notiRepository) =>
        NotiRepository(psApiService: psApiService, notiDao: notiDao),
  ),
  ProxyProvider2<PsApiService, AboutUsDao, AboutUsRepository>(
    update: (_, PsApiService psApiService, AboutUsDao aboutUsDao,
            AboutUsRepository aboutUsRepository) =>
        AboutUsRepository(psApiService: psApiService, aboutUsDao: aboutUsDao),
  ),
  ProxyProvider2<PsApiService, BlogDao, BlogRepository>(
    update: (_, PsApiService psApiService, BlogDao blogDao,
            BlogRepository blogRepository) =>
        BlogRepository(psApiService: psApiService, blogDao: blogDao),
  ),
  ProxyProvider2<PsApiService, BlockedUserDao, BlockedUserRepository>(
    update: (_, PsApiService psApiService, BlockedUserDao blockedUserDao,
            BlockedUserRepository blockedUserRepository) =>
        BlockedUserRepository(
            psApiService: psApiService, blockedUserDao: blockedUserDao),
  ),
  ProxyProvider2<PsApiService, ItemLocationDao, ItemLocationRepository>(
    update: (_, PsApiService psApiService, ItemLocationDao itemLocationDao,
            ItemLocationRepository itemLocationRepository) =>
        ItemLocationRepository(
            psApiService: psApiService, itemLocationDao: itemLocationDao),
  ),
  ProxyProvider2<PsApiService, ItemTypeDao, ItemTypeRepository>(
    update: (_, PsApiService psApiService, ItemTypeDao itemTypeDao,
            ItemTypeRepository itemTypeRepository) =>
        ItemTypeRepository(
            psApiService: psApiService, itemTypeDao: itemTypeDao),
  ),
  ProxyProvider2<PsApiService, ReportedItemDao, ReportedItemRepository>(
    update: (_, PsApiService psApiService, ReportedItemDao reportedItemDao,
            ReportedItemRepository itemTypeRepository) =>
        ReportedItemRepository(
            psApiService: psApiService, reportedItemDao: reportedItemDao),
  ),
  ProxyProvider2<PsApiService, ItemConditionDao, ItemConditionRepository>(
    update: (_, PsApiService psApiService, ItemConditionDao itemConditionDao,
            ItemConditionRepository itemConditionRepository) =>
        ItemConditionRepository(
            psApiService: psApiService, itemConditionDao: itemConditionDao),
  ),
  ProxyProvider2<PsApiService, ItemPriceTypeDao, ItemPriceTypeRepository>(
    update: (_, PsApiService psApiService, ItemPriceTypeDao itemPriceTypeDao,
            ItemPriceTypeRepository itemPriceTypeRepository) =>
        ItemPriceTypeRepository(
            psApiService: psApiService, itemPriceTypeDao: itemPriceTypeDao),
  ),
  ProxyProvider2<PsApiService, ItemCurrencyDao, ItemCurrencyRepository>(
    update: (_, PsApiService psApiService, ItemCurrencyDao itemCurrencyDao,
            ItemCurrencyRepository itemCurrencyRepository) =>
        ItemCurrencyRepository(
            psApiService: psApiService, itemCurrencyDao: itemCurrencyDao),
  ),
  ProxyProvider2<PsApiService, ItemDealOptionDao, ItemDealOptionRepository>(
    update: (_, PsApiService psApiService, ItemDealOptionDao itemDealOptionDao,
            ItemDealOptionRepository itemCurrencyRepository) =>
        ItemDealOptionRepository(
            psApiService: psApiService, itemDealOptionDao: itemDealOptionDao),
  ),
  ProxyProvider2<PsApiService, ChatHistoryDao, ChatHistoryRepository>(
    update: (_, PsApiService psApiService, ChatHistoryDao chatHistoryDao,
            ChatHistoryRepository chatHistoryRepository) =>
        ChatHistoryRepository(
            psApiService: psApiService, chatHistoryDao: chatHistoryDao),
  ),
  ProxyProvider2<PsApiService, OfferDao, OfferRepository>(
    update: (_, PsApiService psApiService, OfferDao offerDao,
            OfferRepository offerRepository) =>
        OfferRepository(psApiService: psApiService, offerDao: offerDao),
  ),
  ProxyProvider2<PsApiService, UserUnreadMessageDao,
      UserUnreadMessageRepository>(
    update: (_,
            PsApiService psApiService,
            UserUnreadMessageDao userUnreadMessageDao,
            UserUnreadMessageRepository userUnreadMessageRepository) =>
        UserUnreadMessageRepository(
            psApiService: psApiService,
            userUnreadMessageDao: userUnreadMessageDao),
  ),
  ProxyProvider2<PsApiService, RatingDao, RatingRepository>(
    update: (_, PsApiService psApiService, RatingDao ratingDao,
            RatingRepository ratingRepository) =>
        RatingRepository(psApiService: psApiService, ratingDao: ratingDao),
  ),
  ProxyProvider2<PsApiService, PaidAdItemDao, PaidAdItemRepository>(
    update: (_, PsApiService psApiService, PaidAdItemDao paidAdItemDao,
            PaidAdItemRepository paidAdItemRepository) =>
        PaidAdItemRepository(
            psApiService: psApiService, paidAdItemDao: paidAdItemDao),
  ),
  ProxyProvider2<PsApiService, HistoryDao, HistoryRepository>(
    update: (_, PsApiService psApiService, HistoryDao historyDao,
            HistoryRepository historyRepository) =>
        HistoryRepository(historyDao: historyDao),
  ),
  ProxyProvider2<PsApiService, GalleryDao, GalleryRepository>(
    update: (_, PsApiService psApiService, GalleryDao galleryDao,
            GalleryRepository galleryRepository) =>
        GalleryRepository(galleryDao: galleryDao, psApiService: psApiService),
  ),
  ProxyProvider3<PsApiService, UserDao, UserLoginDao, UserRepository>(
    update: (_, PsApiService psApiService, UserDao userDao,
            UserLoginDao userLoginDao, UserRepository userRepository) =>
        UserRepository(
            psApiService: psApiService,
            userDao: userDao,
            userLoginDao: userLoginDao),
  ),
];

List<SingleChildWidget> _valueProviders = <SingleChildWidget>[
  StreamProvider<PsValueHolder>(
    create: (BuildContext context) =>
        Provider.of<PsSharedPreferences>(context, listen: false).psValueHolder,
  )
];
