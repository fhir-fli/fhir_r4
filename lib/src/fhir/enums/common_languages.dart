// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes common codes from BCP-47 (http://tools.ietf.org/html/bcp47)
class CommonLanguages {
  // Private constructor for internal use (like enum)
  CommonLanguages._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CommonLanguages values
  /// ar
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages ar = CommonLanguages._(
    'ar',
  );

  /// bn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages bn = CommonLanguages._(
    'bn',
  );

  /// cs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages cs = CommonLanguages._(
    'cs',
  );

  /// da
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages da = CommonLanguages._(
    'da',
  );

  /// de
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages de = CommonLanguages._(
    'de',
  );

  /// de_AT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages de_AT = CommonLanguages._(
    'de-AT',
  );

  /// de_CH
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages de_CH = CommonLanguages._(
    'de-CH',
  );

  /// de_DE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages de_DE = CommonLanguages._(
    'de-DE',
  );

  /// el
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages el = CommonLanguages._(
    'el',
  );

  /// en
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages en = CommonLanguages._(
    'en',
  );

  /// en_AU
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages en_AU = CommonLanguages._(
    'en-AU',
  );

  /// en_CA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages en_CA = CommonLanguages._(
    'en-CA',
  );

  /// en_GB
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages en_GB = CommonLanguages._(
    'en-GB',
  );

  /// en_IN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages en_IN = CommonLanguages._(
    'en-IN',
  );

  /// en_NZ
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages en_NZ = CommonLanguages._(
    'en-NZ',
  );

  /// en_SG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages en_SG = CommonLanguages._(
    'en-SG',
  );

  /// en_US
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages en_US = CommonLanguages._(
    'en-US',
  );

  /// es
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages es = CommonLanguages._(
    'es',
  );

  /// es_AR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages es_AR = CommonLanguages._(
    'es-AR',
  );

  /// es_ES
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages es_ES = CommonLanguages._(
    'es-ES',
  );

  /// es_UY
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages es_UY = CommonLanguages._(
    'es-UY',
  );

  /// fi
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages fi = CommonLanguages._(
    'fi',
  );

  /// fr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages fr = CommonLanguages._(
    'fr',
  );

  /// fr_BE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages fr_BE = CommonLanguages._(
    'fr-BE',
  );

  /// fr_CH
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages fr_CH = CommonLanguages._(
    'fr-CH',
  );

  /// fr_FR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages fr_FR = CommonLanguages._(
    'fr-FR',
  );

  /// fy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages fy = CommonLanguages._(
    'fy',
  );

  /// fy_NL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages fy_NL = CommonLanguages._(
    'fy-NL',
  );

  /// hi
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages hi = CommonLanguages._(
    'hi',
  );

  /// hr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages hr = CommonLanguages._(
    'hr',
  );

  /// it
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages it = CommonLanguages._(
    'it',
  );

  /// it_CH
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages it_CH = CommonLanguages._(
    'it-CH',
  );

  /// it_IT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages it_IT = CommonLanguages._(
    'it-IT',
  );

  /// ja
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages ja = CommonLanguages._(
    'ja',
  );

  /// ko
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages ko = CommonLanguages._(
    'ko',
  );

  /// nl
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages nl = CommonLanguages._(
    'nl',
  );

  /// nl_BE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages nl_BE = CommonLanguages._(
    'nl-BE',
  );

  /// nl_NL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages nl_NL = CommonLanguages._(
    'nl-NL',
  );

  /// no
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages no = CommonLanguages._(
    'no',
  );

  /// no_NO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages no_NO = CommonLanguages._(
    'no-NO',
  );

  /// pa
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages pa = CommonLanguages._(
    'pa',
  );

  /// pl
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages pl = CommonLanguages._(
    'pl',
  );

  /// pt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages pt = CommonLanguages._(
    'pt',
  );

  /// pt_BR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages pt_BR = CommonLanguages._(
    'pt-BR',
  );

  /// ru
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages ru = CommonLanguages._(
    'ru',
  );

  /// ru_RU
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages ru_RU = CommonLanguages._(
    'ru-RU',
  );

  /// sr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages sr = CommonLanguages._(
    'sr',
  );

  /// sr_RS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages sr_RS = CommonLanguages._(
    'sr-RS',
  );

  /// sv
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages sv = CommonLanguages._(
    'sv',
  );

  /// sv_SE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages sv_SE = CommonLanguages._(
    'sv-SE',
  );

  /// te
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages te = CommonLanguages._(
    'te',
  );

  /// zh
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages zh = CommonLanguages._(
    'zh',
  );

  /// zh_CN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages zh_CN = CommonLanguages._(
    'zh-CN',
  );

  /// zh_HK
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages zh_HK = CommonLanguages._(
    'zh-HK',
  );

  /// zh_SG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages zh_SG = CommonLanguages._(
    'zh-SG',
  );

  /// zh_TW
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages zh_TW = CommonLanguages._(
    'zh-TW',
  );

  /// For instances where an Element is present but not value

  static final CommonLanguages elementOnly = CommonLanguages._('');

  /// List of all enum-like values
  static final List<CommonLanguages> values = [
    ar,
    bn,
    cs,
    da,
    de,
    de_AT,
    de_CH,
    de_DE,
    el,
    en,
    en_AU,
    en_CA,
    en_GB,
    en_IN,
    en_NZ,
    en_SG,
    en_US,
    es,
    es_AR,
    es_ES,
    es_UY,
    fi,
    fr,
    fr_BE,
    fr_CH,
    fr_FR,
    fy,
    fy_NL,
    hi,
    hr,
    it,
    it_CH,
    it_IT,
    ja,
    ko,
    nl,
    nl_BE,
    nl_NL,
    no,
    no_NO,
    pa,
    pl,
    pt,
    pt_BR,
    ru,
    ru_RU,
    sr,
    sr_RS,
    sv,
    sv_SE,
    te,
    zh,
    zh_CN,
    zh_HK,
    zh_SG,
    zh_TW,
  ];

  /// Returns the enum value with an element attached
  CommonLanguages withElement(Element? newElement) {
    return CommonLanguages._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CommonLanguages] from JSON.
  static CommonLanguages fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonLanguages.elementOnly.withElement(element);
    }
    return CommonLanguages._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
