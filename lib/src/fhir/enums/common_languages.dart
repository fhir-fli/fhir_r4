// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes common codes from BCP-47 (http://tools.ietf.org/html/bcp47)
@Entity()
class CommonLanguages extends FhirCode {
  /// Factory constructor to create [CommonLanguages] from JSON.
  factory CommonLanguages.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonLanguages.elementOnly(element);
    }
    if (values.contains(value)) {
      return CommonLanguages._(value, element);
    }
    throw ArgumentError(
      'CommonLanguages.fromJson: JSON value is not a valid value',
    );
  }

  /// ar
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.ar([this.element])
      : dbValue = 'ar',
        super('ar', element);

  /// bn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.bn([this.element])
      : dbValue = 'bn',
        super('bn', element);

  /// cs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.cs([this.element])
      : dbValue = 'cs',
        super('cs', element);

  /// da
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.da([this.element])
      : dbValue = 'da',
        super('da', element);

  /// de
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.de([this.element])
      : dbValue = 'de',
        super('de', element);

  /// de_AT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.de_AT([this.element])
      : dbValue = 'de-AT',
        super('de-AT', element);

  /// de_CH
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.de_CH([this.element])
      : dbValue = 'de-CH',
        super('de-CH', element);

  /// de_DE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.de_DE([this.element])
      : dbValue = 'de-DE',
        super('de-DE', element);

  /// el
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.el([this.element])
      : dbValue = 'el',
        super('el', element);

  /// en
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.en([this.element])
      : dbValue = 'en',
        super('en', element);

  /// en_AU
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.en_AU([this.element])
      : dbValue = 'en-AU',
        super('en-AU', element);

  /// en_CA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.en_CA([this.element])
      : dbValue = 'en-CA',
        super('en-CA', element);

  /// en_GB
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.en_GB([this.element])
      : dbValue = 'en-GB',
        super('en-GB', element);

  /// en_IN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.en_IN([this.element])
      : dbValue = 'en-IN',
        super('en-IN', element);

  /// en_NZ
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.en_NZ([this.element])
      : dbValue = 'en-NZ',
        super('en-NZ', element);

  /// en_SG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.en_SG([this.element])
      : dbValue = 'en-SG',
        super('en-SG', element);

  /// en_US
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.en_US([this.element])
      : dbValue = 'en-US',
        super('en-US', element);

  /// es
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.es([this.element])
      : dbValue = 'es',
        super('es', element);

  /// es_AR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.es_AR([this.element])
      : dbValue = 'es-AR',
        super('es-AR', element);

  /// es_ES
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.es_ES([this.element])
      : dbValue = 'es-ES',
        super('es-ES', element);

  /// es_UY
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.es_UY([this.element])
      : dbValue = 'es-UY',
        super('es-UY', element);

  /// fi
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.fi([this.element])
      : dbValue = 'fi',
        super('fi', element);

  /// fr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.fr([this.element])
      : dbValue = 'fr',
        super('fr', element);

  /// fr_BE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.fr_BE([this.element])
      : dbValue = 'fr-BE',
        super('fr-BE', element);

  /// fr_CH
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.fr_CH([this.element])
      : dbValue = 'fr-CH',
        super('fr-CH', element);

  /// fr_FR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.fr_FR([this.element])
      : dbValue = 'fr-FR',
        super('fr-FR', element);

  /// fy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.fy([this.element])
      : dbValue = 'fy',
        super('fy', element);

  /// fy_NL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.fy_NL([this.element])
      : dbValue = 'fy-NL',
        super('fy-NL', element);

  /// hi
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.hi([this.element])
      : dbValue = 'hi',
        super('hi', element);

  /// hr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.hr([this.element])
      : dbValue = 'hr',
        super('hr', element);

  /// it
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.it([this.element])
      : dbValue = 'it',
        super('it', element);

  /// it_CH
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.it_CH([this.element])
      : dbValue = 'it-CH',
        super('it-CH', element);

  /// it_IT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.it_IT([this.element])
      : dbValue = 'it-IT',
        super('it-IT', element);

  /// ja
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.ja([this.element])
      : dbValue = 'ja',
        super('ja', element);

  /// ko
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.ko([this.element])
      : dbValue = 'ko',
        super('ko', element);

  /// nl
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.nl([this.element])
      : dbValue = 'nl',
        super('nl', element);

  /// nl_BE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.nl_BE([this.element])
      : dbValue = 'nl-BE',
        super('nl-BE', element);

  /// nl_NL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.nl_NL([this.element])
      : dbValue = 'nl-NL',
        super('nl-NL', element);

  /// no
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.no([this.element])
      : dbValue = 'no',
        super('no', element);

  /// no_NO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.no_NO([this.element])
      : dbValue = 'no-NO',
        super('no-NO', element);

  /// pa
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.pa([this.element])
      : dbValue = 'pa',
        super('pa', element);

  /// pl
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.pl([this.element])
      : dbValue = 'pl',
        super('pl', element);

  /// pt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.pt([this.element])
      : dbValue = 'pt',
        super('pt', element);

  /// pt_BR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.pt_BR([this.element])
      : dbValue = 'pt-BR',
        super('pt-BR', element);

  /// ru
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.ru([this.element])
      : dbValue = 'ru',
        super('ru', element);

  /// ru_RU
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.ru_RU([this.element])
      : dbValue = 'ru-RU',
        super('ru-RU', element);

  /// sr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.sr([this.element])
      : dbValue = 'sr',
        super('sr', element);

  /// sr_RS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.sr_RS([this.element])
      : dbValue = 'sr-RS',
        super('sr-RS', element);

  /// sv
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.sv([this.element])
      : dbValue = 'sv',
        super('sv', element);

  /// sv_SE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.sv_SE([this.element])
      : dbValue = 'sv-SE',
        super('sv-SE', element);

  /// te
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.te([this.element])
      : dbValue = 'te',
        super('te', element);

  /// zh
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.zh([this.element])
      : dbValue = 'zh',
        super('zh', element);

  /// zh_CN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.zh_CN([this.element])
      : dbValue = 'zh-CN',
        super('zh-CN', element);

  /// zh_HK
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.zh_HK([this.element])
      : dbValue = 'zh-HK',
        super('zh-HK', element);

  /// zh_SG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.zh_SG([this.element])
      : dbValue = 'zh-SG',
        super('zh-SG', element);

  /// zh_TW
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonLanguages.zh_TW([this.element])
      : dbValue = 'zh-TW',
        super('zh-TW', element);

  /// For instances where an Element is present but not value

  CommonLanguages.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CommonLanguages._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'ar',
    'bn',
    'cs',
    'da',
    'de',
    'de-AT',
    'de-CH',
    'de-DE',
    'el',
    'en',
    'en-AU',
    'en-CA',
    'en-GB',
    'en-IN',
    'en-NZ',
    'en-SG',
    'en-US',
    'es',
    'es-AR',
    'es-ES',
    'es-UY',
    'fi',
    'fr',
    'fr-BE',
    'fr-CH',
    'fr-FR',
    'fy',
    'fy-NL',
    'hi',
    'hr',
    'it',
    'it-CH',
    'it-IT',
    'ja',
    'ko',
    'nl',
    'nl-BE',
    'nl-NL',
    'no',
    'no-NO',
    'pa',
    'pl',
    'pt',
    'pt-BR',
    'ru',
    'ru-RU',
    'sr',
    'sr-RS',
    'sv',
    'sv-SE',
    'te',
    'zh',
    'zh-CN',
    'zh-HK',
    'zh-SG',
    'zh-TW',
  ];

  /// Returns the enum value with an element attached
  CommonLanguages withElement(Element? newElement) {
    return CommonLanguages._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CommonLanguages.$value';
}
