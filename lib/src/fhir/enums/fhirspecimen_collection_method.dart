// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to indicate the method by which a specimen was collected.
enum FHIRSpecimenCollectionMethod {
  /// Display: Aspiration - action
  /// Definition:
  value129316008('129316008'),

  /// Display: Biopsy - action
  /// Definition:
  value129314006('129314006'),

  /// Display: Puncture - action
  /// Definition:
  value129300006('129300006'),

  /// Display: Excision - action
  /// Definition:
  value129304002('129304002'),

  /// Display: Scraping - action
  /// Definition:
  value129323009('129323009'),

  /// Display: Urine specimen collection, clean catch
  /// Definition:
  value73416001('73416001'),

  /// Display: Timed urine collection
  /// Definition:
  value225113003('225113003'),

  /// Display: Urine specimen collection, catheterized
  /// Definition:
  value70777001('70777001'),

  /// Display: Collection of coughed sputum
  /// Definition:
  value386089008('386089008'),

  /// Display: Finger-prick sampling
  /// Definition:
  value278450005('278450005'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const FHIRSpecimenCollectionMethod(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [FHIRSpecimenCollectionMethod] instances.
  static FHIRSpecimenCollectionMethod fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRSpecimenCollectionMethod.elementOnly.withElement(element);
    }
    return FHIRSpecimenCollectionMethod.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  FHIRSpecimenCollectionMethod withElement(Element? newElement) {
    return FHIRSpecimenCollectionMethod.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
