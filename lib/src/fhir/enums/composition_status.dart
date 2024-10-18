// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The workflow/clinical status of the composition.
enum CompositionStatus {
  /// Display: Preliminary
  /// Definition: This is a preliminary composition or document (also known as initial or interim). The content may be incomplete or unverified.
  preliminary('preliminary'),

  /// Display: Final
  /// Definition: This version of the composition is complete and verified by an appropriate person and no further work is planned. Any subsequent updates would be on a new version of the composition.
  final_('final'),

  /// Display: Amended
  /// Definition: The composition content or the referenced resources have been modified (edited or added to) subsequent to being released as "final" and the composition is complete and verified by an authorized person.
  amended('amended'),

  /// Display: Entered in Error
  /// Definition: The composition or document was originally created/issued in error, and this is an amendment that marks that the entire series should not be considered as valid.
  entered_in_error('entered-in-error'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CompositionStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CompositionStatus] instances.
  static CompositionStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositionStatus.elementOnly.withElement(element);
    }
    return CompositionStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  CompositionStatus withElement(Element? newElement) {
    return CompositionStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
