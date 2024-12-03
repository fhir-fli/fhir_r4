// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A species of origin a substance raw material.
class SourceMaterialSpecies extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SourceMaterialSpecies._(super.value, [super.element]);

  /// Factory constructor to create [SourceMaterialSpecies] from JSON.
  factory SourceMaterialSpecies.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SourceMaterialSpecies.elementOnly.withElement(element);
    }
    return SourceMaterialSpecies._(value, element);
  }

  /// GinkgoBiloba
  static final SourceMaterialSpecies GinkgoBiloba = SourceMaterialSpecies._(
    'GinkgoBiloba',
  );

  /// OleaEuropaea
  static final SourceMaterialSpecies OleaEuropaea = SourceMaterialSpecies._(
    'OleaEuropaea',
  );

  /// For instances where an Element is present but not value

  static final SourceMaterialSpecies elementOnly = SourceMaterialSpecies._('');

  /// List of all enum-like values
  static final List<SourceMaterialSpecies> values = [
    GinkgoBiloba,
    OleaEuropaea,
  ];

  /// Clones the current instance
  @override
  SourceMaterialSpecies clone() => SourceMaterialSpecies._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  SourceMaterialSpecies setElement(
    String name,
    dynamic elementValue,
  ) {
    return SourceMaterialSpecies._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  SourceMaterialSpecies withElement(Element? newElement) {
    return SourceMaterialSpecies._(value, newElement);
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
  SourceMaterialSpecies copyWith({
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
    return SourceMaterialSpecies._(
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
