// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Procedure Category code: A selection of relevant SNOMED CT codes.
class ProcedureCategoryCodesSNOMEDCT extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ProcedureCategoryCodesSNOMEDCT._(super.value, [super.element]);

  /// Factory constructor to create [ProcedureCategoryCodesSNOMEDCT] from JSON.
  factory ProcedureCategoryCodesSNOMEDCT.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProcedureCategoryCodesSNOMEDCT.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ProcedureCategoryCodesSNOMEDCT cannot be constructed from JSON.',
      );
    }
    return ProcedureCategoryCodesSNOMEDCT._(value, element);
  }

  /// value24642003
  static final ProcedureCategoryCodesSNOMEDCT value24642003 =
      ProcedureCategoryCodesSNOMEDCT._(
    '24642003',
  );

  /// value409063005
  static final ProcedureCategoryCodesSNOMEDCT value409063005 =
      ProcedureCategoryCodesSNOMEDCT._(
    '409063005',
  );

  /// value409073007
  static final ProcedureCategoryCodesSNOMEDCT value409073007 =
      ProcedureCategoryCodesSNOMEDCT._(
    '409073007',
  );

  /// value387713003
  static final ProcedureCategoryCodesSNOMEDCT value387713003 =
      ProcedureCategoryCodesSNOMEDCT._(
    '387713003',
  );

  /// value103693007
  static final ProcedureCategoryCodesSNOMEDCT value103693007 =
      ProcedureCategoryCodesSNOMEDCT._(
    '103693007',
  );

  /// value46947000
  static final ProcedureCategoryCodesSNOMEDCT value46947000 =
      ProcedureCategoryCodesSNOMEDCT._(
    '46947000',
  );

  /// value410606002
  static final ProcedureCategoryCodesSNOMEDCT value410606002 =
      ProcedureCategoryCodesSNOMEDCT._(
    '410606002',
  );

  /// For instances where an Element is present but not value

  static final ProcedureCategoryCodesSNOMEDCT elementOnly =
      ProcedureCategoryCodesSNOMEDCT._('');

  /// List of all enum-like values
  static final List<ProcedureCategoryCodesSNOMEDCT> values = [
    value24642003,
    value409063005,
    value409073007,
    value387713003,
    value103693007,
    value46947000,
    value410606002,
  ];

  /// Clones the current instance
  @override
  ProcedureCategoryCodesSNOMEDCT clone() => ProcedureCategoryCodesSNOMEDCT._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ProcedureCategoryCodesSNOMEDCT setElement(
    String name,
    dynamic elementValue,
  ) {
    return ProcedureCategoryCodesSNOMEDCT._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ProcedureCategoryCodesSNOMEDCT withElement(Element? newElement) {
    return ProcedureCategoryCodesSNOMEDCT._(value, newElement);
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
  ProcedureCategoryCodesSNOMEDCT copyWith({
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
    return ProcedureCategoryCodesSNOMEDCT._(
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
