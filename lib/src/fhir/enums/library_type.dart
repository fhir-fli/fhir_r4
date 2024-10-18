// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of knowledge asset this library contains.
enum LibraryType {
  /// Display: Logic Library
  /// Definition: The resource is a shareable library of formalized knowledge.
  logic_library('logic-library'),

  /// Display: Model Definition
  /// Definition: The resource is a definition of an information model.
  model_definition('model-definition'),

  /// Display: Asset Collection
  /// Definition: The resource is a collection of knowledge assets.
  asset_collection('asset-collection'),

  /// Display: Module Definition
  /// Definition: The resource defines the dependencies, parameters, and data requirements for a particular module or evaluation context.
  module_definition('module-definition'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const LibraryType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [LibraryType] instances.
  static LibraryType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LibraryType.elementOnly.withElement(element);
    }
    return LibraryType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  LibraryType withElement(Element? newElement) {
    return LibraryType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
