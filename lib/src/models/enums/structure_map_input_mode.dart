// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Mode for this instance of data.
class StructureMapInputMode extends FhirCode {
  // Private constructor for internal use (like enum)
  StructureMapInputMode._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [StructureMapInputMode] from JSON.
  factory StructureMapInputMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapInputMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapInputMode cannot be constructed from JSON.',
      );
    }
    return StructureMapInputMode._(
      value,
      element: element,
    );
  }

  /// source
  static final StructureMapInputMode source = StructureMapInputMode._(
    'source',
  );

  /// target
  static final StructureMapInputMode target = StructureMapInputMode._(
    'target',
  );

  /// For instances where an Element is present but not value

  static final StructureMapInputMode elementOnly = StructureMapInputMode._('');

  /// List of all enum-like values
  static final List<StructureMapInputMode> values = [
    source,
    target,
  ];

  /// Clones the current instance
  @override
  StructureMapInputMode clone() => StructureMapInputMode._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  StructureMapInputMode withElement(Element? newElement) {
    return StructureMapInputMode._(
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
  StructureMapInputMode copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return StructureMapInputMode._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
