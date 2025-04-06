// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// This value set includes common codes from BCP-47
/// (http://tools.ietf.org/html/bcp47)
class CommonLanguagesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CommonLanguagesBuilder._({
    required super.valueString,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory CommonLanguagesBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    return CommonLanguagesBuilder._(
      valueString: valueString,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [CommonLanguagesBuilder] with element only
  factory CommonLanguagesBuilder.empty() =>
      CommonLanguagesBuilder._(valueString: '');

  /// Factory constructor to create [CommonLanguagesBuilder]
  /// from JSON.
  factory CommonLanguagesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonLanguagesBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CommonLanguagesBuilder cannot be constructed from JSON.',
      );
    }
    return CommonLanguagesBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// ar
  static CommonLanguagesBuilder ar = CommonLanguagesBuilder._(
    valueString: 'ar',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Arabic'.toFhirStringBuilder,
  );

  /// bn
  static CommonLanguagesBuilder bn = CommonLanguagesBuilder._(
    valueString: 'bn',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Bengali'.toFhirStringBuilder,
  );

  /// cs
  static CommonLanguagesBuilder cs = CommonLanguagesBuilder._(
    valueString: 'cs',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Czech'.toFhirStringBuilder,
  );

  /// da
  static CommonLanguagesBuilder da = CommonLanguagesBuilder._(
    valueString: 'da',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Danish'.toFhirStringBuilder,
  );

  /// de
  static CommonLanguagesBuilder de = CommonLanguagesBuilder._(
    valueString: 'de',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'German'.toFhirStringBuilder,
  );

  /// de_AT
  static CommonLanguagesBuilder de_AT = CommonLanguagesBuilder._(
    valueString: 'de-AT',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'German (Austria)'.toFhirStringBuilder,
  );

  /// de_CH
  static CommonLanguagesBuilder de_CH = CommonLanguagesBuilder._(
    valueString: 'de-CH',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'German (Switzerland)'.toFhirStringBuilder,
  );

  /// de_DE
  static CommonLanguagesBuilder de_DE = CommonLanguagesBuilder._(
    valueString: 'de-DE',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'German (Germany)'.toFhirStringBuilder,
  );

  /// el
  static CommonLanguagesBuilder el = CommonLanguagesBuilder._(
    valueString: 'el',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Greek'.toFhirStringBuilder,
  );

  /// en
  static CommonLanguagesBuilder en = CommonLanguagesBuilder._(
    valueString: 'en',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'English'.toFhirStringBuilder,
  );

  /// en_AU
  static CommonLanguagesBuilder en_AU = CommonLanguagesBuilder._(
    valueString: 'en-AU',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'English (Australia)'.toFhirStringBuilder,
  );

  /// en_CA
  static CommonLanguagesBuilder en_CA = CommonLanguagesBuilder._(
    valueString: 'en-CA',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'English (Canada)'.toFhirStringBuilder,
  );

  /// en_GB
  static CommonLanguagesBuilder en_GB = CommonLanguagesBuilder._(
    valueString: 'en-GB',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'English (Great Britain)'.toFhirStringBuilder,
  );

  /// en_IN
  static CommonLanguagesBuilder en_IN = CommonLanguagesBuilder._(
    valueString: 'en-IN',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'English (India)'.toFhirStringBuilder,
  );

  /// en_NZ
  static CommonLanguagesBuilder en_NZ = CommonLanguagesBuilder._(
    valueString: 'en-NZ',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'English (New Zeland)'.toFhirStringBuilder,
  );

  /// en_SG
  static CommonLanguagesBuilder en_SG = CommonLanguagesBuilder._(
    valueString: 'en-SG',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'English (Singapore)'.toFhirStringBuilder,
  );

  /// en_US
  static CommonLanguagesBuilder en_US = CommonLanguagesBuilder._(
    valueString: 'en-US',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'English (United States)'.toFhirStringBuilder,
  );

  /// es
  static CommonLanguagesBuilder es = CommonLanguagesBuilder._(
    valueString: 'es',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Spanish'.toFhirStringBuilder,
  );

  /// es_AR
  static CommonLanguagesBuilder es_AR = CommonLanguagesBuilder._(
    valueString: 'es-AR',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Spanish (Argentina)'.toFhirStringBuilder,
  );

  /// es_ES
  static CommonLanguagesBuilder es_ES = CommonLanguagesBuilder._(
    valueString: 'es-ES',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Spanish (Spain)'.toFhirStringBuilder,
  );

  /// es_UY
  static CommonLanguagesBuilder es_UY = CommonLanguagesBuilder._(
    valueString: 'es-UY',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Spanish (Uruguay)'.toFhirStringBuilder,
  );

  /// fi
  static CommonLanguagesBuilder fi = CommonLanguagesBuilder._(
    valueString: 'fi',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Finnish'.toFhirStringBuilder,
  );

  /// fr
  static CommonLanguagesBuilder fr = CommonLanguagesBuilder._(
    valueString: 'fr',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'French'.toFhirStringBuilder,
  );

  /// fr_BE
  static CommonLanguagesBuilder fr_BE = CommonLanguagesBuilder._(
    valueString: 'fr-BE',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'French (Belgium)'.toFhirStringBuilder,
  );

  /// fr_CH
  static CommonLanguagesBuilder fr_CH = CommonLanguagesBuilder._(
    valueString: 'fr-CH',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'French (Switzerland)'.toFhirStringBuilder,
  );

  /// fr_FR
  static CommonLanguagesBuilder fr_FR = CommonLanguagesBuilder._(
    valueString: 'fr-FR',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'French (France)'.toFhirStringBuilder,
  );

  /// fy
  static CommonLanguagesBuilder fy = CommonLanguagesBuilder._(
    valueString: 'fy',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Frysian'.toFhirStringBuilder,
  );

  /// fy_NL
  static CommonLanguagesBuilder fy_NL = CommonLanguagesBuilder._(
    valueString: 'fy-NL',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Frysian (Netherlands)'.toFhirStringBuilder,
  );

  /// hi
  static CommonLanguagesBuilder hi = CommonLanguagesBuilder._(
    valueString: 'hi',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Hindi'.toFhirStringBuilder,
  );

  /// hr
  static CommonLanguagesBuilder hr = CommonLanguagesBuilder._(
    valueString: 'hr',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Croatian'.toFhirStringBuilder,
  );

  /// it
  static CommonLanguagesBuilder it = CommonLanguagesBuilder._(
    valueString: 'it',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Italian'.toFhirStringBuilder,
  );

  /// it_CH
  static CommonLanguagesBuilder it_CH = CommonLanguagesBuilder._(
    valueString: 'it-CH',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Italian (Switzerland)'.toFhirStringBuilder,
  );

  /// it_IT
  static CommonLanguagesBuilder it_IT = CommonLanguagesBuilder._(
    valueString: 'it-IT',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Italian (Italy)'.toFhirStringBuilder,
  );

  /// ja
  static CommonLanguagesBuilder ja = CommonLanguagesBuilder._(
    valueString: 'ja',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Japanese'.toFhirStringBuilder,
  );

  /// ko
  static CommonLanguagesBuilder ko = CommonLanguagesBuilder._(
    valueString: 'ko',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Korean'.toFhirStringBuilder,
  );

  /// nl
  static CommonLanguagesBuilder nl = CommonLanguagesBuilder._(
    valueString: 'nl',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Dutch'.toFhirStringBuilder,
  );

  /// nl_BE
  static CommonLanguagesBuilder nl_BE = CommonLanguagesBuilder._(
    valueString: 'nl-BE',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Dutch (Belgium)'.toFhirStringBuilder,
  );

  /// nl_NL
  static CommonLanguagesBuilder nl_NL = CommonLanguagesBuilder._(
    valueString: 'nl-NL',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Dutch (Netherlands)'.toFhirStringBuilder,
  );

  /// no
  static CommonLanguagesBuilder no = CommonLanguagesBuilder._(
    valueString: 'no',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Norwegian'.toFhirStringBuilder,
  );

  /// no_NO
  static CommonLanguagesBuilder no_NO = CommonLanguagesBuilder._(
    valueString: 'no-NO',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Norwegian (Norway)'.toFhirStringBuilder,
  );

  /// pa
  static CommonLanguagesBuilder pa = CommonLanguagesBuilder._(
    valueString: 'pa',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Punjabi'.toFhirStringBuilder,
  );

  /// pl
  static CommonLanguagesBuilder pl = CommonLanguagesBuilder._(
    valueString: 'pl',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Polish'.toFhirStringBuilder,
  );

  /// pt
  static CommonLanguagesBuilder pt = CommonLanguagesBuilder._(
    valueString: 'pt',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Portuguese'.toFhirStringBuilder,
  );

  /// pt_BR
  static CommonLanguagesBuilder pt_BR = CommonLanguagesBuilder._(
    valueString: 'pt-BR',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Portuguese (Brazil)'.toFhirStringBuilder,
  );

  /// ru
  static CommonLanguagesBuilder ru = CommonLanguagesBuilder._(
    valueString: 'ru',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Russian'.toFhirStringBuilder,
  );

  /// ru_RU
  static CommonLanguagesBuilder ru_RU = CommonLanguagesBuilder._(
    valueString: 'ru-RU',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Russian (Russia)'.toFhirStringBuilder,
  );

  /// sr
  static CommonLanguagesBuilder sr = CommonLanguagesBuilder._(
    valueString: 'sr',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Serbian'.toFhirStringBuilder,
  );

  /// sr_RS
  static CommonLanguagesBuilder sr_RS = CommonLanguagesBuilder._(
    valueString: 'sr-RS',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Serbian (Serbia)'.toFhirStringBuilder,
  );

  /// sv
  static CommonLanguagesBuilder sv = CommonLanguagesBuilder._(
    valueString: 'sv',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Swedish'.toFhirStringBuilder,
  );

  /// sv_SE
  static CommonLanguagesBuilder sv_SE = CommonLanguagesBuilder._(
    valueString: 'sv-SE',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Swedish (Sweden)'.toFhirStringBuilder,
  );

  /// te
  static CommonLanguagesBuilder te = CommonLanguagesBuilder._(
    valueString: 'te',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Telegu'.toFhirStringBuilder,
  );

  /// zh
  static CommonLanguagesBuilder zh = CommonLanguagesBuilder._(
    valueString: 'zh',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Chinese'.toFhirStringBuilder,
  );

  /// zh_CN
  static CommonLanguagesBuilder zh_CN = CommonLanguagesBuilder._(
    valueString: 'zh-CN',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Chinese (China)'.toFhirStringBuilder,
  );

  /// zh_HK
  static CommonLanguagesBuilder zh_HK = CommonLanguagesBuilder._(
    valueString: 'zh-HK',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Chinese (Hong Kong)'.toFhirStringBuilder,
  );

  /// zh_SG
  static CommonLanguagesBuilder zh_SG = CommonLanguagesBuilder._(
    valueString: 'zh-SG',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Chinese (Singapore)'.toFhirStringBuilder,
  );

  /// zh_TW
  static CommonLanguagesBuilder zh_TW = CommonLanguagesBuilder._(
    valueString: 'zh-TW',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Chinese (Taiwan)'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static CommonLanguagesBuilder elementOnly =
      CommonLanguagesBuilder._(valueString: '');

  /// List of all enum-like values
  static List<CommonLanguagesBuilder> values = [
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
  CommonLanguagesBuilder clone() => CommonLanguagesBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  CommonLanguagesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return CommonLanguagesBuilder._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  /// Creates a modified copy with updated properties.
  @override
  CommonLanguagesBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError(
        'Invalid input for CommonLanguages: $newValue',
      );
    }
    return CommonLanguagesBuilder._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
