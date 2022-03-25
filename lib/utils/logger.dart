import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class LoggerService {
  late Logger logger;

  static LoggerService? _instance;

  factory LoggerService() {
    _instance ??= LoggerService._();
    // since you are sure you will return non-null value, add '!' operator
    return _instance!;
  }

  LoggerService._() {
    // add initialization logic if needed example: Logger(printer: PrettyPrinter(methodCount: 0));
    logger = Logger(printer: PrettyPrinter(colors: false, methodCount: 2));
    if (!kReleaseMode) {
      Logger.level = Level.verbose;
    } else {
      Logger.level = Level.nothing;
    }
  }

  /// 詳細
  // void v(dynamic message) {
  //   logger.v(message);
  // }

  /// 調試
  void d(dynamic message) {
    try {
      logger.d(message);
    } catch (e, s) {
      logger.e(e.toString(), e, s);
    }
  }

  // info
  void i(dynamic message) {
    logger.i(message);
  }

  /// 警告
  // void w(dynamic message) {
  //   logger.w(message);
  // }

  /// 錯誤
  void e(
    dynamic message, {
    dynamic error,
    StackTrace? stackTrace,
  }) async {
    try {
      logger.e(message, error, stackTrace);
    } catch (e, s) {
      logger.e(e.toString(), e, s);
    }
  }

  /// wtf
  void wtf(dynamic message) {
    logger.w(message);
  }
}
