import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes common codes from BCP-47 (http://tools.ietf.org/html/bcp47)
enum CommonLanguages {
  /// Display: Arabic
  /// Definition:
  ar('ar'),

  /// Display: Bengali
  /// Definition:
  bn('bn'),

  /// Display: Czech
  /// Definition:
  cs('cs'),

  /// Display: Danish
  /// Definition:
  da('da'),

  /// Display: German
  /// Definition:
  de('de'),

  /// Display: German (Austria)
  /// Definition:
  de_AT('de-AT'),

  /// Display: German (Switzerland)
  /// Definition:
  de_CH('de-CH'),

  /// Display: German (Germany)
  /// Definition:
  de_DE('de-DE'),

  /// Display: Greek
  /// Definition:
  el('el'),

  /// Display: English
  /// Definition:
  en('en'),

  /// Display: English (Australia)
  /// Definition:
  en_AU('en-AU'),

  /// Display: English (Canada)
  /// Definition:
  en_CA('en-CA'),

  /// Display: English (Great Britain)
  /// Definition:
  en_GB('en-GB'),

  /// Display: English (India)
  /// Definition:
  en_IN('en-IN'),

  /// Display: English (New Zeland)
  /// Definition:
  en_NZ('en-NZ'),

  /// Display: English (Singapore)
  /// Definition:
  en_SG('en-SG'),

  /// Display: English (United States)
  /// Definition:
  en_US('en-US'),

  /// Display: Spanish
  /// Definition:
  es('es'),

  /// Display: Spanish (Argentina)
  /// Definition:
  es_AR('es-AR'),

  /// Display: Spanish (Spain)
  /// Definition:
  es_ES('es-ES'),

  /// Display: Spanish (Uruguay)
  /// Definition:
  es_UY('es-UY'),

  /// Display: Finnish
  /// Definition:
  fi('fi'),

  /// Display: French
  /// Definition:
  fr('fr'),

  /// Display: French (Belgium)
  /// Definition:
  fr_BE('fr-BE'),

  /// Display: French (Switzerland)
  /// Definition:
  fr_CH('fr-CH'),

  /// Display: French (France)
  /// Definition:
  fr_FR('fr-FR'),

  /// Display: Frysian
  /// Definition:
  fy('fy'),

  /// Display: Frysian (Netherlands)
  /// Definition:
  fy_NL('fy-NL'),

  /// Display: Hindi
  /// Definition:
  hi('hi'),

  /// Display: Croatian
  /// Definition:
  hr('hr'),

  /// Display: Italian
  /// Definition:
  it('it'),

  /// Display: Italian (Switzerland)
  /// Definition:
  it_CH('it-CH'),

  /// Display: Italian (Italy)
  /// Definition:
  it_IT('it-IT'),

  /// Display: Japanese
  /// Definition:
  ja('ja'),

  /// Display: Korean
  /// Definition:
  ko('ko'),

  /// Display: Dutch
  /// Definition:
  nl('nl'),

  /// Display: Dutch (Belgium)
  /// Definition:
  nl_BE('nl-BE'),

  /// Display: Dutch (Netherlands)
  /// Definition:
  nl_NL('nl-NL'),

  /// Display: Norwegian
  /// Definition:
  no('no'),

  /// Display: Norwegian (Norway)
  /// Definition:
  no_NO('no-NO'),

  /// Display: Punjabi
  /// Definition:
  pa('pa'),

  /// Display: Polish
  /// Definition:
  pl('pl'),

  /// Display: Portuguese
  /// Definition:
  pt('pt'),

  /// Display: Portuguese (Brazil)
  /// Definition:
  pt_BR('pt-BR'),

  /// Display: Russian
  /// Definition:
  ru('ru'),

  /// Display: Russian (Russia)
  /// Definition:
  ru_RU('ru-RU'),

  /// Display: Serbian
  /// Definition:
  sr('sr'),

  /// Display: Serbian (Serbia)
  /// Definition:
  sr_RS('sr-RS'),

  /// Display: Swedish
  /// Definition:
  sv('sv'),

  /// Display: Swedish (Sweden)
  /// Definition:
  sv_SE('sv-SE'),

  /// Display: Telegu
  /// Definition:
  te('te'),

  /// Display: Chinese
  /// Definition:
  zh('zh'),

  /// Display: Chinese (China)
  /// Definition:
  zh_CN('zh-CN'),

  /// Display: Chinese (Hong Kong)
  /// Definition:
  zh_HK('zh-HK'),

  /// Display: Chinese (Singapore)
  /// Definition:
  zh_SG('zh-SG'),

  /// Display: Chinese (Taiwan)
  /// Definition:
  zh_TW('zh-TW'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CommonLanguages(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CommonLanguages fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonLanguages.elementOnly.withElement(element);
    }
    return CommonLanguages.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CommonLanguages withElement(Element? newElement) {
    return CommonLanguages.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
