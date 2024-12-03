// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The genus of an organism, typically referring to the Latin epithet of the genus element of the plant/animal scientific name.
class SourceMaterialGenus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SourceMaterialGenus._(super.value, [super.element]);

  /// Factory constructor to create [SourceMaterialGenus] from JSON.
  factory SourceMaterialGenus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SourceMaterialGenus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'SourceMaterialGenus cannot be constructed from JSON.');
    }
    return SourceMaterialGenus._(value, element);
  }

  /// Mycobacterium
  static final SourceMaterialGenus Mycobacterium = SourceMaterialGenus._(
    'Mycobacterium',
  );

  /// InfluenzavirusA
  static final SourceMaterialGenus InfluenzavirusA = SourceMaterialGenus._(
    'InfluenzavirusA',
  );

  /// Ginkgo
  static final SourceMaterialGenus Ginkgo = SourceMaterialGenus._(
    'Ginkgo',
  );

  /// For instances where an Element is present but not value

  static final SourceMaterialGenus elementOnly = SourceMaterialGenus._('');

  /// List of all enum-like values
  static final List<SourceMaterialGenus> values = [
    Mycobacterium,
    InfluenzavirusA,
    Ginkgo,
  ];

  /// Clones the current instance
  @override
  SourceMaterialGenus clone() => SourceMaterialGenus._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  SourceMaterialGenus setElement(
    String name,
    dynamic elementValue,
  ) {
    return SourceMaterialGenus._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  SourceMaterialGenus withElement(Element? newElement) {
    return SourceMaterialGenus._(value, newElement);
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
  SourceMaterialGenus copyWith({
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
    return SourceMaterialGenus._(
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
