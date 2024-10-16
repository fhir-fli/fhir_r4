import 'package:fhir_r4/fhir_r4.dart';

/// The type of a property value.
enum PropertyTypeEnum {
  /// Display: code (internal reference)
  /// Definition: The property value is a code that identifies a concept defined in the code system.
  code('code'),

  /// Display: Coding (external reference)
  /// Definition: The property value is a code defined in an external code system. This may be used for translations, but is not the intent.
  Coding('Coding'),

  /// Display: string
  /// Definition: The property value is a string.
  string('string'),

  /// Display: integer
  /// Definition: The property value is a string (often used to assign ranking values to concepts for supporting score assessments).
  integer('integer'),

  /// Display: boolean
  /// Definition: The property value is a boolean true | false.
  boolean('boolean'),

  /// Display: dateTime
  /// Definition: The property is a date or a date + time.
  dateTime('dateTime'),

  /// Display: decimal
  /// Definition: The property value is a decimal number.
  decimal('decimal'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const PropertyTypeEnum(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static PropertyTypeEnum fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PropertyTypeEnum.elementOnly.withElement(element);
    }
    return PropertyTypeEnum.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  PropertyTypeEnum withElement(Element? newElement) {
    return PropertyTypeEnum.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
