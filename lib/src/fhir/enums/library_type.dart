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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const LibraryType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static LibraryType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LibraryType.elementOnly.withElement(element);
    }
    return LibraryType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  LibraryType withElement(Element? newElement) {
    return LibraryType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
