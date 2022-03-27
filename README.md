# GetX Architecture demo

[demo apk](https://raw.githubusercontent.com/WingCH/getx_demo/main/doc/app-release.apk)



# Content

[ScreenShort](#ScreenShort)

[Sitemap](#Sitemap)

## ScreenShort

| <img src="https://cdn.jsdelivr.net/gh/WingCH/ImageHosting@master/uPic/Screenshot_20220327_105214.png" alt="Screenshot_20220327_105214" style="zoom:25%;" /> | <img src="https://cdn.jsdelivr.net/gh/WingCH/ImageHosting@master/uPic/Screenshot_20220327_105033.png" alt="Screenshot_20220327_105033" style="zoom:25%;" /> | <img src="https://cdn.jsdelivr.net/gh/WingCH/ImageHosting@master/uPic/Screenshot_20220327_105042.png" alt="Screenshot_20220327_105042" style="zoom:25%;" /> | <img src="https://cdn.jsdelivr.net/gh/WingCH/ImageHosting@master/uPic/Screenshot_20220327_105051.png" alt="Screenshot_20220327_105051" style="zoom:25%;" /> |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| <img src="https://cdn.jsdelivr.net/gh/WingCH/ImageHosting@master/uPic/Screenshot_20220327_105201.png" alt="Screenshot_20220327_105201" style="zoom:25%;" /> | <img src="https://cdn.jsdelivr.net/gh/WingCH/ImageHosting@master/uPic/Screenshot_20220327_105114.png" alt="Screenshot_20220327_105114" style="zoom:25%;" /> | <img src="https://cdn.jsdelivr.net/gh/WingCH/ImageHosting@master/uPic/Screenshot_20220327_105108.png" alt="Screenshot_20220327_105108" style="zoom:25%;" /> | <img src="https://cdn.jsdelivr.net/gh/WingCH/ImageHosting@master/uPic/Screenshot_20220327_105058.png" alt="Screenshot_20220327_105058" style="zoom:25%;" /> |

## Sitemap

<img src="https://cdn.jsdelivr.net/gh/WingCH/ImageHosting@master/uPic/image-20220327103058996.png" alt="image-20220327103058996" style="zoom: 20%;" />

## Architecture (GetX)

### Overall structure

<img src="https://cdn.jsdelivr.net/gh/WingCH/ImageHosting@master/uPic/image-20220324143954889.png" alt="image-20220324143954889" style="zoom:20%;" />

### Search Albums Page

<img src="https://cdn.jsdelivr.net/gh/WingCH/ImageHosting@master/uPic/image-20220327103215623.png" alt="image-20220327103215623" style="zoom:20%;" />

### Bookmarked Albums Page

<img src="https://cdn.jsdelivr.net/gh/WingCH/ImageHosting@master/uPic/image-20220327103417730.png" alt="image-20220327103417730" style="zoom:20%;" />

### Setting Page

<img src="https://cdn.jsdelivr.net/gh/WingCH/ImageHosting@master/uPic/image-20220327103634722.png" alt="image-20220327103634722" style="zoom:20%;" />

## Technical point

1. State Management
   - [get (GetX)](https://pub.dev/packages/get)
     - reference
       - [getx/documentation/en_US/state_management](getx/documentation/en_US/state_management)
       - [Flutter GetX使用---简洁的魅力！](https://juejin.cn/post/6924104248275763208)
   - other option
     - [Bloc](https://pub.dev/packages/bloc)

2. Navigation
   - [get (GetX)](https://pub.dev/packages/get)

     - reference
       - [getx/documentation/en_US/route_management.md](getx/documentation/en_US/route_management.md)

     ```dart
     class Routes {
       static const home = '/home';
       static const setting = '/setting';
     
       static List<GetPage> get pages {
         return [
           GetPage(
             name: Routes.home,
             page: () => HomePage(),
           ),
           GetPage(
             name: Routes.setting,
             page: () => SettingPage(
               appSettingRepository: Get.find<AppSettingRepository>(),
             ),
           ),
         ];
       }
     }
     ```

     ```dart
     Get.toNamed(Routes.setting);
     ```

   - other option
     - [go_router](https://pub.dev/packages/go_router)

3. Persistent local storage
   - [get_storage](https://pub.dev/packages/get_storage)
     - other option
       - [hydrated_bloc](https://pub.dev/packages/hydrated_bloc) (if use bloc)
         - [hive](https://pub.dev/packages/hive)
       - [shared_preferences](https://pub.dev/packages/shared_preferences)
       - [sqflite](https://pub.dev/packages/sqflite)
   - [flutter_secure_storage](https://pub.dev/packages/flutter_secure_storage)

4. Network
   - [dio](https://pub.dev/packages/dio)
     - other option
       - API layer generator
         - [chopper](https://pub.dev/packages/chopper)
         - [retrofit](https://pub.dev/packages/retrofit)

5. Model (Convert JSON to model)
   - [freezed](https://pub.dev/packages/freezed)
     - reference
       - [Youtube: Freezed (Package of the Week)](https://www.youtube.com/watch?v=RaThk0fiphA)
       - [The Best Way generates models in Flutter | freezed](https://wingch-apps.medium.com/the-best-way-generates-models-in-flutter-freezed-4ee33994f76d)

6. Image
   - [cached_network_image](https://pub.dev/packages/cached_network_image), A flutter library to show images from the internet and keep them in the cache directory.

7. Theme

   - Follow material design

     - https://docs.flutter.dev/cookbook/design/themes

   - Custom color (use getx)

     ```dart
     class CustomColor {
       static Color get color1 {
         return Get.context!.theme.brightness == Brightness.light
             ? Colors.deepOrange
             : Colors.green;
       }
     }
     ```

     ```dart
     Icon(Icons.bookmark_outlined, color: CustomColor.color1)
     ```

     https://github.com/WingCH/getx_demo/blob/68dc8b80b1e32c15e3729396100462d7338f4d60/lib/common_widgets/albums_list_widget.dart#L53

8. Localisation
   - [intl](https://pub.dev/packages/intl)
     - [jetbrains Flutter Intl](https://plugins.jetbrains.com/plugin/13666-flutter-intl)
     - [Flutter intl 國際化](https://wingch-apps.medium.com/flutter-intl-%E5%9C%8B%E9%9A%9B%E5%8C%96-%E6%9C%AC%E5%9C%B0%E5%8C%96-2775e6218c80)
   - other option
     - [easy_localization](https://pub.dev/packages/easy_localization)

9. Webview
   - [webview_flutter](https://pub.dev/packages/webview_flutter) (official)
   - [flutter_inappwebview](https://pub.dev/packages/flutter_inappwebview)

---

## Project Structure

### features base 

```
lib
 ├── main.dart
 ├── theme
 │   ├── custom_theme.dart
 │   └── custom_colors.dart
 ├── l10n # Localization
 │   ├── intl_zh_Hans.arb
 │   ├── intl_zh_Hant.arb
 │   └── intl_en.arb
 ├── generated # generated by Flutter i10n plugin, DO NOT MODIFY
 │   ├── l10n.dart
 │   └── intl
 │       ├── messages_zh_Hans.dart
 │       ├── messages_en.dart
 │       ├── messages_zh_Hant.dart
 │       └── messages_all.dart
 ├── repositories
 │   ├── app_setting_repository
 │   │   ├── local_app_setting_repository.dart
 │   │   └── app_setting_repository.dart
 │   ├── bookmark_repository
 │   │   ├── local_bookmark_repository.dart
 │   │   └── bookmark_repository.dart
 │   └── itunes_repository
 │       ├── real_itunes_repository.dart
 │       ├── itunes_repository_exception.dart
 │       ├── models
 │       └── itunes_repository.dart
 ├── app
 │   ├── app.dart
 │   └── routes.dart
 ├── utils # helper function
 │   ├── intl_extension.dart
 │   └── logger.dart
 ├── features
 │   ├── setting
 │   │   ├── view.dart
 │   │   ├── state.dart
 │   │   └── logic.dart
 │   ├── bookmarked_albums
 │   │   ├── view.dart
 │   │   ├── logic.dart
 │   │   └── state.dart
 │   ├── home
 │   │   ├── view.dart
 │   │   ├── logic.dart
 │   │   ├── state.dart
 │   │   └── models
 │   └── search_albums
 │       ├── view.dart
 │       ├── logic.dart
 │       ├── state.dart
 │       ├── widgets
 │       └── models
 └── common_widgets
     ├── albums_list_widget.dart
     ├── empty_widget.dart
     ├── shimmer_loading.dart
     └── error_message_widget.dart
```

