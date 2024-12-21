// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes SNOMED CT codes for materials that specimen containers are made of
class ContainerMaterials extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ContainerMaterials._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ContainerMaterials] from JSON.
  factory ContainerMaterials.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContainerMaterials.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContainerMaterials cannot be constructed from JSON.',
      );
    }
    return ContainerMaterials._(value, element: element);
  }

  /// value32039001
  static final ContainerMaterials value32039001 = ContainerMaterials._(
    '32039001',
  );

  /// value61088005
  static final ContainerMaterials value61088005 = ContainerMaterials._(
    '61088005',
  );

  /// value425620007
  static final ContainerMaterials value425620007 = ContainerMaterials._(
    '425620007',
  );

  /// For instances where an Element is present but not value

  static final ContainerMaterials elementOnly = ContainerMaterials._('');

  /// List of all enum-like values
  static final List<ContainerMaterials> values = [
    value32039001,
    value61088005,
    value425620007,
  ];

  /// Clones the current instance
  @override
  ContainerMaterials clone() => ContainerMaterials._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ContainerMaterials withElement(Element? newElement) {
    return ContainerMaterials._(
      value,
      element: newElement,
    );
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
  ContainerMaterials copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ContainerMaterials._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
