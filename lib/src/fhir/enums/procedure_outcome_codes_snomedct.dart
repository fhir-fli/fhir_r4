// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Procedure Outcome code: A selection of relevant SNOMED CT codes.
class ProcedureOutcomeCodesSNOMEDCT extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ProcedureOutcomeCodesSNOMEDCT._(super.value, [super.element]);

  /// Factory constructor to create [ProcedureOutcomeCodesSNOMEDCT] from JSON.
  factory ProcedureOutcomeCodesSNOMEDCT.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProcedureOutcomeCodesSNOMEDCT.elementOnly.withElement(element);
    }
    return ProcedureOutcomeCodesSNOMEDCT._(value, element);
  }

  /// value385669000
  static final ProcedureOutcomeCodesSNOMEDCT value385669000 =
      ProcedureOutcomeCodesSNOMEDCT._(
    '385669000',
  );

  /// value385671000
  static final ProcedureOutcomeCodesSNOMEDCT value385671000 =
      ProcedureOutcomeCodesSNOMEDCT._(
    '385671000',
  );

  /// value385670004
  static final ProcedureOutcomeCodesSNOMEDCT value385670004 =
      ProcedureOutcomeCodesSNOMEDCT._(
    '385670004',
  );

  /// For instances where an Element is present but not value

  static final ProcedureOutcomeCodesSNOMEDCT elementOnly =
      ProcedureOutcomeCodesSNOMEDCT._('');

  /// List of all enum-like values
  static final List<ProcedureOutcomeCodesSNOMEDCT> values = [
    value385669000,
    value385671000,
    value385670004,
  ];

  /// Clones the current instance
  @override
  ProcedureOutcomeCodesSNOMEDCT clone() =>
      ProcedureOutcomeCodesSNOMEDCT._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ProcedureOutcomeCodesSNOMEDCT setElement(String name, dynamic elementValue) {
    return ProcedureOutcomeCodesSNOMEDCT._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ProcedureOutcomeCodesSNOMEDCT withElement(Element? newElement) {
    return ProcedureOutcomeCodesSNOMEDCT._(value, newElement);
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
  ProcedureOutcomeCodesSNOMEDCT copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ProcedureOutcomeCodesSNOMEDCT._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
