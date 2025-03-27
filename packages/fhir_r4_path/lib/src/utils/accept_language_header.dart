// ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters

import 'package:collection/collection.dart';

class AcceptLanguageHeader {
  AcceptLanguageHeader(String? source, this.doWildcard)
      : source = source ?? '' {
    _process(this.source, langs, doWildcard);
  }

  final String source;
  final List<LanguagePreference> langs = [];
  final bool doWildcard;

  void _process(String src, List<LanguagePreference> list, bool doWildcard) {
    list.clear();
    var wildcard = false;
    final offset = langs.length;

    if (src.isNotEmpty) {
      final parts = src.split(',');
      for (var i = 0; i < parts.length; i++) {
        var lang = parts[i].trim();
        var weight = 1.0;

        if (lang.contains(';')) {
          var w = lang.substring(lang.indexOf(';') + 1);
          if (w.contains('=')) {
            w = w.substring(w.indexOf('=') + 1);
          }
          lang = lang.substring(0, lang.indexOf(';'));
          weight = double.tryParse(w) ?? 1.0;
        }

        if (lang.isNotEmpty) {
          list.add(LanguagePreference(i + offset, lang, weight, false));
          wildcard = wildcard || lang == '*';
        }
      }
    }

    if (!wildcard && doWildcard) {
      list.add(LanguagePreference(100, '*', 0.01, true));
    }

    list.sort(_compareLanguages);
  }

  int _compareLanguages(LanguagePreference o1, LanguagePreference o2) {
    if (o1.value == o2.value) {
      return o1.order - o2.order;
    } else if (o1.value > o2.value) {
      return -1;
    } else {
      return 1;
    }
  }

  bool hasChosen() {
    return langs.any((lang) => lang.value == 1.0);
  }

  String? getChosen() {
    return langs.firstWhereOrNull((lang) => lang.value == 1.0)?.lang;
  }

  void add(String language) {
    final tempList = <LanguagePreference>[];
    _process(language, tempList, false);

    for (final lang in tempList) {
      final existing = _getByLang(langs, lang.lang);
      if (existing == null) {
        langs.add(lang);
      } else {
        existing
          ..auto = false
          ..value = lang.value;
      }
    }

    langs.sort(_compareLanguages);
  }

  LanguagePreference? _getByLang(List<LanguagePreference> list, String lang) {
    return list.firstWhereOrNull((l) => l.lang == lang);
  }

  AcceptLanguageHeader copy() {
    return AcceptLanguageHeader(toString(), doWildcard);
  }

  @override
  String toString() {
    final buffer = StringBuffer();
    for (final lang in langs) {
      if (!lang.auto) {
        buffer
          ..write(lang.toString())
          ..write(', ');
      }
    }
    return buffer.toString().replaceAll(RegExp(r', $'), '');
  }
}

class LanguagePreference {
  LanguagePreference(this.order, this.lang, this.value, this.auto);

  final int order;
  final String lang;
  double value;
  bool auto;

  @override
  String toString() {
    if (value == 1.0) {
      return lang;
    } else {
      final formattedValue =
          value.toStringAsFixed(6).replaceAll(RegExp(r'(.\d+?)0*$'), r'$1');
      return '$lang; q=$formattedValue';
    }
  }
}
