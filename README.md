# GetX Architecture demo

## Architecture

<img src="https://cdn.jsdelivr.net/gh/WingCH/ImageHosting@master/uPic/image-20220324143954889.png" alt="image-20220324143954889" style="zoom:50%;" />

## Technical point

1. State Management
   - [get (GetX)](https://pub.dev/packages/get)
     - other option
       - [Bloc](https://pub.dev/packages/bloc)
2. Navigation
   - [get (GetX)](https://pub.dev/packages/get)
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
5. Model (Convert JSON to model)
   - [freezed](https://pub.dev/packages/freezed)
6. Theme
7. Localisation
   - [intl](https://pub.dev/packages/intl)
     - [Tutorial](https://wingch-apps.medium.com/flutter-intl-%E5%9C%8B%E9%9A%9B%E5%8C%96-%E6%9C%AC%E5%9C%B0%E5%8C%96-2775e6218c80)
8. Webview
   - [webview_flutter](https://pub.dev/packages/webview_flutter) (official)
   - [flutter_inappwebview](https://pub.dev/packages/flutter_inappwebview)

---

## Project Structure

### features base 

```
‣ lib
  ‣ src
    ‣ features
      ‣ account
      ‣ admin
      ‣ checkout
      ‣ leave_review_page
      ‣ orders_list
      ‣ product_page
      ‣ products_list
      ‣ shopping_cart
      ‣ sign_in
```

