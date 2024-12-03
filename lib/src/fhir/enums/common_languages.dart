// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes common codes from BCP-47 (http://tools.ietf.org/html/bcp47)
class CommonLanguages extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CommonLanguages._(super.value, [super.element]);

  /// Factory constructor to create [CommonLanguages] from JSON.
  factory CommonLanguages.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonLanguages.elementOnly.withElement(element);
    }
    return CommonLanguages._(value, element);
  }

  /// ar
  static final CommonLanguages ar = CommonLanguages._(
    'ar',
  );

  /// bn
  static final CommonLanguages bn = CommonLanguages._(
    'bn',
  );

  /// cs
  static final CommonLanguages cs = CommonLanguages._(
    'cs',
  );

  /// da
  static final CommonLanguages da = CommonLanguages._(
    'da',
  );

  /// de
  static final CommonLanguages de = CommonLanguages._(
    'de',
  );

  /// de_AT
  static final CommonLanguages de_AT = CommonLanguages._(
    'de-AT',
  );

  /// de_CH
  static final CommonLanguages de_CH = CommonLanguages._(
    'de-CH',
  );

  /// de_DE
  static final CommonLanguages de_DE = CommonLanguages._(
    'de-DE',
  );

  /// el
  static final CommonLanguages el = CommonLanguages._(
    'el',
  );

  /// en
  static final CommonLanguages en = CommonLanguages._(
    'en',
  );

  /// en_AU
  static final CommonLanguages en_AU = CommonLanguages._(
    'en-AU',
  );

  /// en_CA
  static final CommonLanguages en_CA = CommonLanguages._(
    'en-CA',
  );

  /// en_GB
  static final CommonLanguages en_GB = CommonLanguages._(
    'en-GB',
  );

  /// en_IN
  static final CommonLanguages en_IN = CommonLanguages._(
    'en-IN',
  );

  /// en_NZ
  static final CommonLanguages en_NZ = CommonLanguages._(
    'en-NZ',
  );

  /// en_SG
  static final CommonLanguages en_SG = CommonLanguages._(
    'en-SG',
  );

  /// en_US
  static final CommonLanguages en_US = CommonLanguages._(
    'en-US',
  );

  /// es
  static final CommonLanguages es = CommonLanguages._(
    'es',
  );

  /// es_AR
  static final CommonLanguages es_AR = CommonLanguages._(
    'es-AR',
  );

  /// es_ES
  static final CommonLanguages es_ES = CommonLanguages._(
    'es-ES',
  );

  /// es_UY
  static final CommonLanguages es_UY = CommonLanguages._(
    'es-UY',
  );

  /// fi
  static final CommonLanguages fi = CommonLanguages._(
    'fi',
  );

  /// fr
  static final CommonLanguages fr = CommonLanguages._(
    'fr',
  );

  /// fr_BE
  static final CommonLanguages fr_BE = CommonLanguages._(
    'fr-BE',
  );

  /// fr_CH
  static final CommonLanguages fr_CH = CommonLanguages._(
    'fr-CH',
  );

  /// fr_FR
  static final CommonLanguages fr_FR = CommonLanguages._(
    'fr-FR',
  );

  /// fy
  static final CommonLanguages fy = CommonLanguages._(
    'fy',
  );

  /// fy_NL
  static final CommonLanguages fy_NL = CommonLanguages._(
    'fy-NL',
  );

  /// hi
  static final CommonLanguages hi = CommonLanguages._(
    'hi',
  );

  /// hr
  static final CommonLanguages hr = CommonLanguages._(
    'hr',
  );

  /// it
  static final CommonLanguages it = CommonLanguages._(
    'it',
  );

  /// it_CH
  static final CommonLanguages it_CH = CommonLanguages._(
    'it-CH',
  );

  /// it_IT
  static final CommonLanguages it_IT = CommonLanguages._(
    'it-IT',
  );

  /// ja
  static final CommonLanguages ja = CommonLanguages._(
    'ja',
  );

  /// ko
  static final CommonLanguages ko = CommonLanguages._(
    'ko',
  );

  /// nl
  static final CommonLanguages nl = CommonLanguages._(
    'nl',
  );

  /// nl_BE
  static final CommonLanguages nl_BE = CommonLanguages._(
    'nl-BE',
  );

  /// nl_NL
  static final CommonLanguages nl_NL = CommonLanguages._(
    'nl-NL',
  );

  /// no
  static final CommonLanguages no = CommonLanguages._(
    'no',
  );

  /// no_NO
  static final CommonLanguages no_NO = CommonLanguages._(
    'no-NO',
  );

  /// pa
  static final CommonLanguages pa = CommonLanguages._(
    'pa',
  );

  /// pl
  static final CommonLanguages pl = CommonLanguages._(
    'pl',
  );

  /// pt
  static final CommonLanguages pt = CommonLanguages._(
    'pt',
  );

  /// pt_BR
  static final CommonLanguages pt_BR = CommonLanguages._(
    'pt-BR',
  );

  /// ru
  static final CommonLanguages ru = CommonLanguages._(
    'ru',
  );

  /// ru_RU
  static final CommonLanguages ru_RU = CommonLanguages._(
    'ru-RU',
  );

  /// sr
  static final CommonLanguages sr = CommonLanguages._(
    'sr',
  );

  /// sr_RS
  static final CommonLanguages sr_RS = CommonLanguages._(
    'sr-RS',
  );

  /// sv
  static final CommonLanguages sv = CommonLanguages._(
    'sv',
  );

  /// sv_SE
  static final CommonLanguages sv_SE = CommonLanguages._(
    'sv-SE',
  );

  /// te
  static final CommonLanguages te = CommonLanguages._(
    'te',
  );

  /// zh
  static final CommonLanguages zh = CommonLanguages._(
    'zh',
  );

  /// zh_CN
  static final CommonLanguages zh_CN = CommonLanguages._(
    'zh-CN',
  );

  /// zh_HK
  static final CommonLanguages zh_HK = CommonLanguages._(
    'zh-HK',
  );

  /// zh_SG
  static final CommonLanguages zh_SG = CommonLanguages._(
    'zh-SG',
  );

  /// zh_TW
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

  /// Clones the current instance
  @override
  CommonLanguages clone() => CommonLanguages._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  CommonLanguages setElement(
    String name,
    dynamic elementValue,
  ) {
    return CommonLanguages._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  CommonLanguages withElement(Element? newElement) {
    return CommonLanguages._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  CommonLanguages copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return CommonLanguages._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
