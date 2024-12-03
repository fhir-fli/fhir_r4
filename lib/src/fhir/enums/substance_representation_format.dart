// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A format of a substance representation.
class SubstanceRepresentationFormat extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SubstanceRepresentationFormat._(super.value, [super.element]);

  /// Factory constructor to create [SubstanceRepresentationFormat] from JSON.
  factory SubstanceRepresentationFormat.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceRepresentationFormat.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'SubstanceRepresentationFormat cannot be constructed from JSON.');
    }
    return SubstanceRepresentationFormat._(value, element);
  }

  /// InChI
  static final SubstanceRepresentationFormat InChI =
      SubstanceRepresentationFormat._(
    'InChI',
  );

  /// SMILES
  static final SubstanceRepresentationFormat SMILES =
      SubstanceRepresentationFormat._(
    'SMILES',
  );

  /// MOLFILE
  static final SubstanceRepresentationFormat MOLFILE =
      SubstanceRepresentationFormat._(
    'MOLFILE',
  );

  /// CDX
  static final SubstanceRepresentationFormat CDX =
      SubstanceRepresentationFormat._(
    'CDX',
  );

  /// SDF
  static final SubstanceRepresentationFormat SDF =
      SubstanceRepresentationFormat._(
    'SDF',
  );

  /// PDB
  static final SubstanceRepresentationFormat PDB =
      SubstanceRepresentationFormat._(
    'PDB',
  );

  /// mmCIF
  static final SubstanceRepresentationFormat mmCIF =
      SubstanceRepresentationFormat._(
    'mmCIF',
  );

  /// For instances where an Element is present but not value

  static final SubstanceRepresentationFormat elementOnly =
      SubstanceRepresentationFormat._('');

  /// List of all enum-like values
  static final List<SubstanceRepresentationFormat> values = [
    InChI,
    SMILES,
    MOLFILE,
    CDX,
    SDF,
    PDB,
    mmCIF,
  ];

  /// Clones the current instance
  @override
  SubstanceRepresentationFormat clone() => SubstanceRepresentationFormat._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  SubstanceRepresentationFormat setElement(
    String name,
    dynamic elementValue,
  ) {
    return SubstanceRepresentationFormat._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  SubstanceRepresentationFormat withElement(Element? newElement) {
    return SubstanceRepresentationFormat._(value, newElement);
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
  SubstanceRepresentationFormat copyWith({
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
    return SubstanceRepresentationFormat._(
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
