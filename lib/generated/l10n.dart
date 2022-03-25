// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Search`
  String get homePageTabSearch {
    return Intl.message(
      'Search',
      name: 'homePageTabSearch',
      desc: '',
      args: [],
    );
  }

  /// `Bookmark`
  String get homePageTabBookmark {
    return Intl.message(
      'Bookmark',
      name: 'homePageTabBookmark',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get homePageSettingButton {
    return Intl.message(
      'Setting',
      name: 'homePageSettingButton',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get searchAlbumsPageTitle {
    return Intl.message(
      'Search',
      name: 'searchAlbumsPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Album name`
  String get searchAlbumsPageSearchBarName {
    return Intl.message(
      'Album name',
      name: 'searchAlbumsPageSearchBarName',
      desc: '',
      args: [],
    );
  }

  /// `Popular searches`
  String get searchAlbumsPagePopularSearches {
    return Intl.message(
      'Popular searches',
      name: 'searchAlbumsPagePopularSearches',
      desc: '',
      args: [],
    );
  }

  /// `Bookmark`
  String get bookmarkPageTitle {
    return Intl.message(
      'Bookmark',
      name: 'bookmarkPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get settingPageTitle {
    return Intl.message(
      'Setting',
      name: 'settingPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get settingPageGeneral {
    return Intl.message(
      'General',
      name: 'settingPageGeneral',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get settingPageLanguage {
    return Intl.message(
      'Language',
      name: 'settingPageLanguage',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
      Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
