// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a sample set of Forms codes.
enum FormCodes {
  /// Display: Form #1
  /// Definition: Example: The #1 form to be used when printing this information.
  value1('1'),

  /// Display: Form #1
  /// Definition: Example: The #2 form to be used when printing this information.
  value2('2'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const FormCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [FormCodes] instances.
  static FormCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FormCodes.elementOnly.withElement(element);
    }
    return FormCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  FormCodes withElement(Element? newElement) {
    return FormCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
