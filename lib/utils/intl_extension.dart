import 'package:intl/intl.dart';

extension IntlEx on String {
  String  locale({required String fallback}) {
    return Intl.message(
      fallback, // use this word if not found any local
      name: this,
      desc: '',
      args: [],
    );
  }
}
