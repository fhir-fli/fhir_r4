// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Procedure follow up codes: A selection of SNOMED CT codes relevant to procedure follow up.
class ProcedureFollowUpCodesSNOMEDCT extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ProcedureFollowUpCodesSNOMEDCT._(super.value, [super.element]);

  /// Factory constructor to create [ProcedureFollowUpCodesSNOMEDCT] from JSON.
  factory ProcedureFollowUpCodesSNOMEDCT.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProcedureFollowUpCodesSNOMEDCT.elementOnly.withElement(element);
    }
    return ProcedureFollowUpCodesSNOMEDCT._(value, element);
  }

  /// value18949003
  static final ProcedureFollowUpCodesSNOMEDCT value18949003 =
      ProcedureFollowUpCodesSNOMEDCT._(
    '18949003',
  );

  /// value30549001
  static final ProcedureFollowUpCodesSNOMEDCT value30549001 =
      ProcedureFollowUpCodesSNOMEDCT._(
    '30549001',
  );

  /// value241031001
  static final ProcedureFollowUpCodesSNOMEDCT value241031001 =
      ProcedureFollowUpCodesSNOMEDCT._(
    '241031001',
  );

  /// value35963001
  static final ProcedureFollowUpCodesSNOMEDCT value35963001 =
      ProcedureFollowUpCodesSNOMEDCT._(
    '35963001',
  );

  /// value225164002
  static final ProcedureFollowUpCodesSNOMEDCT value225164002 =
      ProcedureFollowUpCodesSNOMEDCT._(
    '225164002',
  );

  /// value447346005
  static final ProcedureFollowUpCodesSNOMEDCT value447346005 =
      ProcedureFollowUpCodesSNOMEDCT._(
    '447346005',
  );

  /// value229506003
  static final ProcedureFollowUpCodesSNOMEDCT value229506003 =
      ProcedureFollowUpCodesSNOMEDCT._(
    '229506003',
  );

  /// value274441001
  static final ProcedureFollowUpCodesSNOMEDCT value274441001 =
      ProcedureFollowUpCodesSNOMEDCT._(
    '274441001',
  );

  /// value394725008
  static final ProcedureFollowUpCodesSNOMEDCT value394725008 =
      ProcedureFollowUpCodesSNOMEDCT._(
    '394725008',
  );

  /// value359825008
  static final ProcedureFollowUpCodesSNOMEDCT value359825008 =
      ProcedureFollowUpCodesSNOMEDCT._(
    '359825008',
  );

  /// For instances where an Element is present but not value

  static final ProcedureFollowUpCodesSNOMEDCT elementOnly =
      ProcedureFollowUpCodesSNOMEDCT._('');

  /// List of all enum-like values
  static final List<ProcedureFollowUpCodesSNOMEDCT> values = [
    value18949003,
    value30549001,
    value241031001,
    value35963001,
    value225164002,
    value447346005,
    value229506003,
    value274441001,
    value394725008,
    value359825008,
  ];

  /// Clones the current instance
  @override
  ProcedureFollowUpCodesSNOMEDCT clone() => ProcedureFollowUpCodesSNOMEDCT._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ProcedureFollowUpCodesSNOMEDCT setElement(
    String name,
    dynamic elementValue,
  ) {
    return ProcedureFollowUpCodesSNOMEDCT._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ProcedureFollowUpCodesSNOMEDCT withElement(Element? newElement) {
    return ProcedureFollowUpCodesSNOMEDCT._(value, newElement);
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
  ProcedureFollowUpCodesSNOMEDCT copyWith({
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
    return ProcedureFollowUpCodesSNOMEDCT._(
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
