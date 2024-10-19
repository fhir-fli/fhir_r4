// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes common codes from BCP-47 (http://tools.ietf.org/html/bcp47)
@collection
class CommonLanguages {
  /// Constructor for internal use (like enum)
  CommonLanguages({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CommonLanguages values
  /// ar
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages ar = CommonLanguages(
    fhirCode: 'ar',
  );

  /// bn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages bn = CommonLanguages(
    fhirCode: 'bn',
  );

  /// cs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages cs = CommonLanguages(
    fhirCode: 'cs',
  );

  /// da
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages da = CommonLanguages(
    fhirCode: 'da',
  );

  /// de
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages de = CommonLanguages(
    fhirCode: 'de',
  );

  /// de_AT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages de_AT = CommonLanguages(
    fhirCode: 'de-AT',
  );

  /// de_CH
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages de_CH = CommonLanguages(
    fhirCode: 'de-CH',
  );

  /// de_DE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages de_DE = CommonLanguages(
    fhirCode: 'de-DE',
  );

  /// el
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages el = CommonLanguages(
    fhirCode: 'el',
  );

  /// en
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages en = CommonLanguages(
    fhirCode: 'en',
  );

  /// en_AU
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages en_AU = CommonLanguages(
    fhirCode: 'en-AU',
  );

  /// en_CA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages en_CA = CommonLanguages(
    fhirCode: 'en-CA',
  );

  /// en_GB
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages en_GB = CommonLanguages(
    fhirCode: 'en-GB',
  );

  /// en_IN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages en_IN = CommonLanguages(
    fhirCode: 'en-IN',
  );

  /// en_NZ
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages en_NZ = CommonLanguages(
    fhirCode: 'en-NZ',
  );

  /// en_SG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages en_SG = CommonLanguages(
    fhirCode: 'en-SG',
  );

  /// en_US
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages en_US = CommonLanguages(
    fhirCode: 'en-US',
  );

  /// es
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages es = CommonLanguages(
    fhirCode: 'es',
  );

  /// es_AR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages es_AR = CommonLanguages(
    fhirCode: 'es-AR',
  );

  /// es_ES
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages es_ES = CommonLanguages(
    fhirCode: 'es-ES',
  );

  /// es_UY
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages es_UY = CommonLanguages(
    fhirCode: 'es-UY',
  );

  /// fi
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages fi = CommonLanguages(
    fhirCode: 'fi',
  );

  /// fr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages fr = CommonLanguages(
    fhirCode: 'fr',
  );

  /// fr_BE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages fr_BE = CommonLanguages(
    fhirCode: 'fr-BE',
  );

  /// fr_CH
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages fr_CH = CommonLanguages(
    fhirCode: 'fr-CH',
  );

  /// fr_FR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages fr_FR = CommonLanguages(
    fhirCode: 'fr-FR',
  );

  /// fy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages fy = CommonLanguages(
    fhirCode: 'fy',
  );

  /// fy_NL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages fy_NL = CommonLanguages(
    fhirCode: 'fy-NL',
  );

  /// hi
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages hi = CommonLanguages(
    fhirCode: 'hi',
  );

  /// hr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages hr = CommonLanguages(
    fhirCode: 'hr',
  );

  /// it
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages it = CommonLanguages(
    fhirCode: 'it',
  );

  /// it_CH
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages it_CH = CommonLanguages(
    fhirCode: 'it-CH',
  );

  /// it_IT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages it_IT = CommonLanguages(
    fhirCode: 'it-IT',
  );

  /// ja
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages ja = CommonLanguages(
    fhirCode: 'ja',
  );

  /// ko
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages ko = CommonLanguages(
    fhirCode: 'ko',
  );

  /// nl
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages nl = CommonLanguages(
    fhirCode: 'nl',
  );

  /// nl_BE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages nl_BE = CommonLanguages(
    fhirCode: 'nl-BE',
  );

  /// nl_NL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages nl_NL = CommonLanguages(
    fhirCode: 'nl-NL',
  );

  /// no
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages no = CommonLanguages(
    fhirCode: 'no',
  );

  /// no_NO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages no_NO = CommonLanguages(
    fhirCode: 'no-NO',
  );

  /// pa
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages pa = CommonLanguages(
    fhirCode: 'pa',
  );

  /// pl
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages pl = CommonLanguages(
    fhirCode: 'pl',
  );

  /// pt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages pt = CommonLanguages(
    fhirCode: 'pt',
  );

  /// pt_BR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages pt_BR = CommonLanguages(
    fhirCode: 'pt-BR',
  );

  /// ru
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages ru = CommonLanguages(
    fhirCode: 'ru',
  );

  /// ru_RU
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages ru_RU = CommonLanguages(
    fhirCode: 'ru-RU',
  );

  /// sr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages sr = CommonLanguages(
    fhirCode: 'sr',
  );

  /// sr_RS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages sr_RS = CommonLanguages(
    fhirCode: 'sr-RS',
  );

  /// sv
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages sv = CommonLanguages(
    fhirCode: 'sv',
  );

  /// sv_SE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages sv_SE = CommonLanguages(
    fhirCode: 'sv-SE',
  );

  /// te
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages te = CommonLanguages(
    fhirCode: 'te',
  );

  /// zh
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages zh = CommonLanguages(
    fhirCode: 'zh',
  );

  /// zh_CN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages zh_CN = CommonLanguages(
    fhirCode: 'zh-CN',
  );

  /// zh_HK
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages zh_HK = CommonLanguages(
    fhirCode: 'zh-HK',
  );

  /// zh_SG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages zh_SG = CommonLanguages(
    fhirCode: 'zh-SG',
  );

  /// zh_TW
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonLanguages zh_TW = CommonLanguages(
    fhirCode: 'zh-TW',
  );

  /// For instances where an Element is present but not value

  static final CommonLanguages elementOnly = CommonLanguages();

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
    return CommonLanguages(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return CommonLanguages.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CommonLanguages.$fhirCode';
}
