// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The method used to elucidate the structure or characterization of the drug substance.
class StructureTechnique extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  StructureTechnique._(super.value, [super.element]);

  /// Factory constructor to create [StructureTechnique] from JSON.
  factory StructureTechnique.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureTechnique.elementOnly.withElement(element);
    }
    return StructureTechnique._(value, element);
  }

  /// X_Ray
  static final StructureTechnique X_Ray = StructureTechnique._(
    'X-Ray',
  );

  /// HPLC
  static final StructureTechnique HPLC = StructureTechnique._(
    'HPLC',
  );

  /// NMR
  static final StructureTechnique NMR = StructureTechnique._(
    'NMR',
  );

  /// PeptideMapping
  static final StructureTechnique PeptideMapping = StructureTechnique._(
    'PeptideMapping',
  );

  /// LigandBindingAssay
  static final StructureTechnique LigandBindingAssay = StructureTechnique._(
    'LigandBindingAssay',
  );

  /// For instances where an Element is present but not value

  static final StructureTechnique elementOnly = StructureTechnique._('');

  /// List of all enum-like values
  static final List<StructureTechnique> values = [
    X_Ray,
    HPLC,
    NMR,
    PeptideMapping,
    LigandBindingAssay,
  ];

  /// Clones the current instance
  @override
  StructureTechnique clone() => StructureTechnique._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  StructureTechnique setElement(
    String name,
    dynamic elementValue,
  ) {
    return StructureTechnique._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  StructureTechnique withElement(Element? newElement) {
    return StructureTechnique._(value, newElement);
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
  StructureTechnique copyWith({
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
    return StructureTechnique._(
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
