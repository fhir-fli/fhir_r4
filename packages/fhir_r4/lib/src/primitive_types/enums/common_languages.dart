// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// This value set includes common codes from BCP-47
/// (http://tools.ietf.org/html/bcp47)
class CommonLanguages extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  CommonLanguages._({
    required super.validatedValue,
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
  factory CommonLanguages(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return CommonLanguages._(
      validatedValue: validated,
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

  /// Create empty [CommonLanguages] with element only
  factory CommonLanguages.empty() => CommonLanguages._(validatedValue: '');

  /// Factory constructor to create [CommonLanguages] from JSON.
  factory CommonLanguages.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonLanguages.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CommonLanguages cannot be constructed from JSON.',
      );
    }
    return CommonLanguages._(
      validatedValue: value,
      element: element,
    );
  }

  /// ar
  static final CommonLanguages ar = CommonLanguages._(
    validatedValue: 'ar',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Arabic'.toFhirString,
  );

  /// bn
  static final CommonLanguages bn = CommonLanguages._(
    validatedValue: 'bn',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Bengali'.toFhirString,
  );

  /// cs
  static final CommonLanguages cs = CommonLanguages._(
    validatedValue: 'cs',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Czech'.toFhirString,
  );

  /// da
  static final CommonLanguages da = CommonLanguages._(
    validatedValue: 'da',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Danish'.toFhirString,
  );

  /// de
  static final CommonLanguages de = CommonLanguages._(
    validatedValue: 'de',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'German'.toFhirString,
  );

  /// de_AT
  static final CommonLanguages de_AT = CommonLanguages._(
    validatedValue: 'de-AT',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'German (Austria)'.toFhirString,
  );

  /// de_CH
  static final CommonLanguages de_CH = CommonLanguages._(
    validatedValue: 'de-CH',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'German (Switzerland)'.toFhirString,
  );

  /// de_DE
  static final CommonLanguages de_DE = CommonLanguages._(
    validatedValue: 'de-DE',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'German (Germany)'.toFhirString,
  );

  /// el
  static final CommonLanguages el = CommonLanguages._(
    validatedValue: 'el',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Greek'.toFhirString,
  );

  /// en
  static final CommonLanguages en = CommonLanguages._(
    validatedValue: 'en',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'English'.toFhirString,
  );

  /// en_AU
  static final CommonLanguages en_AU = CommonLanguages._(
    validatedValue: 'en-AU',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'English (Australia)'.toFhirString,
  );

  /// en_CA
  static final CommonLanguages en_CA = CommonLanguages._(
    validatedValue: 'en-CA',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'English (Canada)'.toFhirString,
  );

  /// en_GB
  static final CommonLanguages en_GB = CommonLanguages._(
    validatedValue: 'en-GB',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'English (Great Britain)'.toFhirString,
  );

  /// en_IN
  static final CommonLanguages en_IN = CommonLanguages._(
    validatedValue: 'en-IN',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'English (India)'.toFhirString,
  );

  /// en_NZ
  static final CommonLanguages en_NZ = CommonLanguages._(
    validatedValue: 'en-NZ',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'English (New Zeland)'.toFhirString,
  );

  /// en_SG
  static final CommonLanguages en_SG = CommonLanguages._(
    validatedValue: 'en-SG',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'English (Singapore)'.toFhirString,
  );

  /// en_US
  static final CommonLanguages en_US = CommonLanguages._(
    validatedValue: 'en-US',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'English (United States)'.toFhirString,
  );

  /// es
  static final CommonLanguages es = CommonLanguages._(
    validatedValue: 'es',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Spanish'.toFhirString,
  );

  /// es_AR
  static final CommonLanguages es_AR = CommonLanguages._(
    validatedValue: 'es-AR',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Spanish (Argentina)'.toFhirString,
  );

  /// es_ES
  static final CommonLanguages es_ES = CommonLanguages._(
    validatedValue: 'es-ES',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Spanish (Spain)'.toFhirString,
  );

  /// es_UY
  static final CommonLanguages es_UY = CommonLanguages._(
    validatedValue: 'es-UY',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Spanish (Uruguay)'.toFhirString,
  );

  /// fi
  static final CommonLanguages fi = CommonLanguages._(
    validatedValue: 'fi',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Finnish'.toFhirString,
  );

  /// fr
  static final CommonLanguages fr = CommonLanguages._(
    validatedValue: 'fr',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'French'.toFhirString,
  );

  /// fr_BE
  static final CommonLanguages fr_BE = CommonLanguages._(
    validatedValue: 'fr-BE',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'French (Belgium)'.toFhirString,
  );

  /// fr_CH
  static final CommonLanguages fr_CH = CommonLanguages._(
    validatedValue: 'fr-CH',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'French (Switzerland)'.toFhirString,
  );

  /// fr_FR
  static final CommonLanguages fr_FR = CommonLanguages._(
    validatedValue: 'fr-FR',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'French (France)'.toFhirString,
  );

  /// fy
  static final CommonLanguages fy = CommonLanguages._(
    validatedValue: 'fy',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Frysian'.toFhirString,
  );

  /// fy_NL
  static final CommonLanguages fy_NL = CommonLanguages._(
    validatedValue: 'fy-NL',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Frysian (Netherlands)'.toFhirString,
  );

  /// hi
  static final CommonLanguages hi = CommonLanguages._(
    validatedValue: 'hi',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Hindi'.toFhirString,
  );

  /// hr
  static final CommonLanguages hr = CommonLanguages._(
    validatedValue: 'hr',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Croatian'.toFhirString,
  );

  /// it
  static final CommonLanguages it = CommonLanguages._(
    validatedValue: 'it',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Italian'.toFhirString,
  );

  /// it_CH
  static final CommonLanguages it_CH = CommonLanguages._(
    validatedValue: 'it-CH',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Italian (Switzerland)'.toFhirString,
  );

  /// it_IT
  static final CommonLanguages it_IT = CommonLanguages._(
    validatedValue: 'it-IT',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Italian (Italy)'.toFhirString,
  );

  /// ja
  static final CommonLanguages ja = CommonLanguages._(
    validatedValue: 'ja',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Japanese'.toFhirString,
  );

  /// ko
  static final CommonLanguages ko = CommonLanguages._(
    validatedValue: 'ko',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Korean'.toFhirString,
  );

  /// nl
  static final CommonLanguages nl = CommonLanguages._(
    validatedValue: 'nl',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Dutch'.toFhirString,
  );

  /// nl_BE
  static final CommonLanguages nl_BE = CommonLanguages._(
    validatedValue: 'nl-BE',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Dutch (Belgium)'.toFhirString,
  );

  /// nl_NL
  static final CommonLanguages nl_NL = CommonLanguages._(
    validatedValue: 'nl-NL',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Dutch (Netherlands)'.toFhirString,
  );

  /// no
  static final CommonLanguages no = CommonLanguages._(
    validatedValue: 'no',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Norwegian'.toFhirString,
  );

  /// no_NO
  static final CommonLanguages no_NO = CommonLanguages._(
    validatedValue: 'no-NO',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Norwegian (Norway)'.toFhirString,
  );

  /// pa
  static final CommonLanguages pa = CommonLanguages._(
    validatedValue: 'pa',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Punjabi'.toFhirString,
  );

  /// pl
  static final CommonLanguages pl = CommonLanguages._(
    validatedValue: 'pl',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Polish'.toFhirString,
  );

  /// pt
  static final CommonLanguages pt = CommonLanguages._(
    validatedValue: 'pt',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Portuguese'.toFhirString,
  );

  /// pt_BR
  static final CommonLanguages pt_BR = CommonLanguages._(
    validatedValue: 'pt-BR',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Portuguese (Brazil)'.toFhirString,
  );

  /// ru
  static final CommonLanguages ru = CommonLanguages._(
    validatedValue: 'ru',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Russian'.toFhirString,
  );

  /// ru_RU
  static final CommonLanguages ru_RU = CommonLanguages._(
    validatedValue: 'ru-RU',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Russian (Russia)'.toFhirString,
  );

  /// sr
  static final CommonLanguages sr = CommonLanguages._(
    validatedValue: 'sr',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Serbian'.toFhirString,
  );

  /// sr_RS
  static final CommonLanguages sr_RS = CommonLanguages._(
    validatedValue: 'sr-RS',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Serbian (Serbia)'.toFhirString,
  );

  /// sv
  static final CommonLanguages sv = CommonLanguages._(
    validatedValue: 'sv',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Swedish'.toFhirString,
  );

  /// sv_SE
  static final CommonLanguages sv_SE = CommonLanguages._(
    validatedValue: 'sv-SE',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Swedish (Sweden)'.toFhirString,
  );

  /// te
  static final CommonLanguages te = CommonLanguages._(
    validatedValue: 'te',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Telegu'.toFhirString,
  );

  /// zh
  static final CommonLanguages zh = CommonLanguages._(
    validatedValue: 'zh',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Chinese'.toFhirString,
  );

  /// zh_CN
  static final CommonLanguages zh_CN = CommonLanguages._(
    validatedValue: 'zh-CN',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Chinese (China)'.toFhirString,
  );

  /// zh_HK
  static final CommonLanguages zh_HK = CommonLanguages._(
    validatedValue: 'zh-HK',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Chinese (Hong Kong)'.toFhirString,
  );

  /// zh_SG
  static final CommonLanguages zh_SG = CommonLanguages._(
    validatedValue: 'zh-SG',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Chinese (Singapore)'.toFhirString,
  );

  /// zh_TW
  static final CommonLanguages zh_TW = CommonLanguages._(
    validatedValue: 'zh-TW',
    system: 'http://hl7.org/fhir/ValueSet/languages'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Chinese (Taiwan)'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final CommonLanguages elementOnly =
      CommonLanguages._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CommonLanguages withElement(Element? newElement) {
    return CommonLanguages._(validatedValue: value, element: newElement);
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
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return CommonLanguages._(
      validatedValue: newValue ?? value,
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
