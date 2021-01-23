// Copyright (c) 2019, the Panacea-Soft.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// Panacea-Soft license that can be found in the LICENSE file.

import 'package:buynsell/viewobject/common/language.dart';

class PsConfig {
  PsConfig._();

  ///
  /// AppVersion
  /// For your app, you need to change according based on your app version
  ///
  static const String app_version = '2.1';

  ///
  /// API Key
  /// If you change here, you need to update in server.
  ///
  static const String ps_api_key = '0cc543f6-7f4f-491f-8142-267bd92e16e1';

  ///
  /// API URL
  /// Change your backend url
  ///
  static const String ps_core_url = 'https://admin.buynsell.bz';

  static const String ps_app_url = ps_core_url + '/index.php/';

  static const String ps_app_image_url = ps_core_url + '/uploads/';

  static const String ps_app_image_thumbs_url =
      ps_core_url + '/uploads/thumbnail/';

  ///
  /// Chat Setting
  ///

  static const String iosGoogleAppId =
      '1:775304850973:ios:c3da4ba40f75ad6e7020f4';
  static const String iosGcmSenderId = '775304850973';
  static const String iosProjectId = 'buynsell-e84bb';
  static const String iosDatabaseUrl = 'https://buynsell-e84bb.firebaseio.com';
  static const String iosApiKey = 'AIzaSyDZzk7uvWL9lwYO9iCa_oDmx167vYHNZyM';

  static const String androidGoogleAppId =
      '1:775304850973:android:07cb3c3f8ce3bb8a7020f4';
  static const String androidGcmSenderId = '775304850973';
  static const String androidProjectId = 'buynsell-e84bb';
  static const String androidApiKey = 'AIzaSyDP6sYMhdMT5J2bhBVPpXp8aHowT1Ig7Q4';
  static const String androidDatabaseUrl =
      'https://buynsell-e84bb.firebaseio.com';

  ///
  /// Facebook Key
  ///
  static const String fbKey = '823004171418795';

  ///
  ///Admob Setting
  ///
  static bool showAdMob = true;
  static String androidAdMobAdsIdKey = 'ca-app-pub-9497317358583649~7322249450';
  static String androidAdMobUnitIdApiKey =
      'ca-app-pub-9497317358583649/3838014600';
  static String iosAdMobAdsIdKey = 'ca-app-pub-9497317358583649~1479622189';
  static String iosAdMobUnitIdApiKey = 'ca-app-pub-9497317358583649/4696086113';

  ///
  /// Animation Duration
  ///
  static const Duration animation_duration = Duration(milliseconds: 500);

  ///
  /// Fonts Family Config
  /// Before you declare you here,
  /// 1) You need to add font under assets/fonts/
  /// 2) Declare at pubspec.yaml
  /// 3) Update your font family name at below
  ///
  static const String ps_default_font_family = 'Product Sans';

  /// Default Language
// static const ps_default_language = 'en';

// static const ps_language_list = [Locale('en', 'US'), Locale('ar', 'DZ')];
  static const String ps_app_db_name = 'ps_db.db';

  ///
  /// For default language change, please check
  /// LanguageFragment for language code and country code
  /// ..............................................................
  /// Language             | Language Code     | Country Code
  /// ..............................................................
  /// "English"            | "en"              | "US"
  /// "Arabic"             | "ar"              | "DZ"
  /// "India (Hindi)"      | "hi"              | "IN"
  /// "German"             | "de"              | "DE"
  /// "Spainish"           | "es"              | "ES"
  /// "French"             | "fr"              | "FR"
  /// "Indonesian"         | "id"              | "ID"
  /// "Italian"            | "it"              | "IT"
  /// "Japanese"           | "ja"              | "JP"
  /// "Korean"             | "ko"              | "KR"
  /// "Malay"              | "ms"              | "MY"
  /// "Portuguese"         | "pt"              | "PT"
  /// "Russian"            | "ru"              | "RU"
  /// "Thai"               | "th"              | "TH"
  /// "Turkish"            | "tr"              | "TR"
  /// "Chinese"            | "zh"              | "CN"
  /// ..............................................................
  ///
  static final Language defaultLanguage =
      Language(languageCode: 'en', countryCode: 'US', name: 'English US');

  static final List<Language> psSupportedLanguageList = <Language>[
    Language(languageCode: 'en', countryCode: 'US', name: 'English'),
    Language(languageCode: 'ar', countryCode: 'DZ', name: 'Arabic'),
    Language(languageCode: 'hi', countryCode: 'IN', name: 'Hindi'),
    Language(languageCode: 'de', countryCode: 'DE', name: 'German'),
    Language(languageCode: 'es', countryCode: 'ES', name: 'Spainish'),
    Language(languageCode: 'fr', countryCode: 'FR', name: 'French'),
    Language(languageCode: 'id', countryCode: 'ID', name: 'Indonesian'),
    Language(languageCode: 'it', countryCode: 'IT', name: 'Italian'),
    Language(languageCode: 'ja', countryCode: 'JP', name: 'Japanese'),
    Language(languageCode: 'ko', countryCode: 'KR', name: 'Korean'),
    Language(languageCode: 'ms', countryCode: 'MY', name: 'Malay'),
    Language(languageCode: 'pt', countryCode: 'PT', name: 'Portuguese'),
    Language(languageCode: 'ru', countryCode: 'RU', name: 'Russian'),
    Language(languageCode: 'th', countryCode: 'TH', name: 'Thai'),
    Language(languageCode: 'tr', countryCode: 'TR', name: 'Turkish'),
    Language(languageCode: 'zh', countryCode: 'CN', name: 'Chinese'),
  ];

  ///
  /// Price Format
  /// Need to change according to your format that you need
  /// E.g.
  /// ",##0.00"   => 2,555.00
  /// "##0.00"    => 2555.00
  /// ".00"       => 2555.00
  /// ",##0"      => 2555
  /// ",##0.0"    => 2555.0
  ///
  static const String priceFormat = ',##0.00';

  ///
  /// Date Time Format
  ///
  static const String dateFormat = 'dd-MM-yyyy hh:mm:ss';

  ///
  /// iOS App No
  ///
  static const String iOSAppStoreId = '1524091569';

  ///
  /// Tmp Image Folder Name
  ///
  static const String tmpImageFolderName = 'Buynsell';

  ///
  /// Image Loading
  ///
  /// - If you set "true", it will load thumbnail image first and later it will
  ///   load full image
  /// - If you set "false", it will load full image directly and for the
  ///   placeholder image it will use default placeholder Image.
  ///
  static const bool USE_THUMBNAIL_AS_PLACEHOLDER = false;

  ///
  /// Token Id
  ///
  /// "true" = it will show token id under setting
  static const bool isShowTokenId = true;

  ///
  /// ShowSubCategory
  ///
  static const bool isShowSubCategory = true;

  ///
  /// Promote Item
  ///
  static const String PROMOTE_FIRST_CHOICE_DAY_OR_DEFAULT_DAY = '7 ';
  static const String PROMOTE_SECOND_CHOICE_DAY = '14 ';
  static const String PROMOTE_THIRD_CHOICE_DAY = '30 ';
  static const String PROMOTE_FOURTH_CHOICE_DAY = '60 ';

  ///
  /// Image Size
  ///
  static const int uploadImageSize = 1024;
  static const int profileImageSize = 512;
  static const int chatImageSize = 650;

  ///
  /// Default Limit
  ///
  static const int DEFAULT_LOADING_LIMIT = 30;
  static const int CATEGORY_LOADING_LIMIT = 10;
  static const int RECENT_ITEM_LOADING_LIMIT = 10;
  static const int POPULAR_ITEM_LOADING_LIMIT = 10;
  static const int FEATURE_ITEM_LOADING_LIMIT = 10;
  static const int BLOCK_SLIDER_LOADING_LIMIT = 10;
  static const int FOLLOWER_ITEM_LOADING_LIMIT = 10;

  ///
  ///Login Setting
  ///
  static bool showFacebookLogin = true;
  static bool showGoogleLogin = true;
  static bool showPhoneLogin = true;

  ///
  /// Map Filter Setting
  ///
  static bool noFilterWithLocationOnMap = false;

  ///
  /// Razor Currency
  ///
  /// If you set true, your razor account must support multi-currency.
  static bool isRazorSupportMultiCurrency = false;
  static String defaultRazorCurrency = 'INR'; // Don't change
}
