// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How data is copied/created.
enum StructureMapTransform {
  /// Display: create
  /// Definition: create(type : string) - type is passed through to the application on the standard API, and must be known by it.
  create('create'),

  /// Display: copy
  /// Definition: copy(source).
  copy('copy'),

  /// Display: truncate
  /// Definition: truncate(source, length) - source must be stringy type.
  truncate('truncate'),

  /// Display: escape
  /// Definition: escape(source, fmt1, fmt2) - change source from one kind of escaping to another (plain, java, xml, json). note that this is for when the string itself is escaped.
  escape('escape'),

  /// Display: cast
  /// Definition: cast(source, type?) - case source from one type to another. target type can be left as implicit if there is one and only one target type known.
  cast('cast'),

  /// Display: append
  /// Definition: append(source...) - source is element or string.
  append('append'),

  /// Display: translate
  /// Definition: translate(source, uri_of_map) - use the translate operation.
  translate('translate'),

  /// Display: reference
  /// Definition: reference(source : object) - return a string that references the provided tree properly.
  reference('reference'),

  /// Display: dateOp
  /// Definition: Perform a date operation. *Parameters to be documented*.
  dateOp('dateOp'),

  /// Display: uuid
  /// Definition: Generate a random UUID (in lowercase). No Parameters.
  uuid('uuid'),

  /// Display: pointer
  /// Definition: Return the appropriate string to put in a reference that refers to the resource provided as a parameter.
  pointer('pointer'),

  /// Display: evaluate
  /// Definition: Execute the supplied FHIRPath expression and use the value returned by that.
  evaluate('evaluate'),

  /// Display: cc
  /// Definition: Create a CodeableConcept. Parameters = (text) or (system. Code[, display]).
  cc('cc'),

  /// Display: c
  /// Definition: Create a Coding. Parameters = (system. Code[, display]).
  c('c'),

  /// Display: qty
  /// Definition: Create a quantity. Parameters = (text) or (value, unit, [system, code]) where text is the natural representation e.g. [comparator]value[space]unit.
  qty('qty'),

  /// Display: id
  /// Definition: Create an identifier. Parameters = (system, value[, type]) where type is a code from the identifier type value set.
  id('id'),

  /// Display: cp
  /// Definition: Create a contact details. Parameters = (value) or (system, value). If no system is provided, the system should be inferred from the content of the value.
  cp('cp'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const StructureMapTransform(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [StructureMapTransform] instances.
  static StructureMapTransform fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapTransform.elementOnly.withElement(
        element,
      );
    }
    return StructureMapTransform.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  StructureMapTransform withElement(Element? newElement) {
    return StructureMapTransform.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
