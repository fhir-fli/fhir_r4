// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Details of how a designation would be used
class DesignationUse extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  DesignationUse._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [DesignationUse] from JSON.
  factory DesignationUse.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DesignationUse.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DesignationUse cannot be constructed from JSON.',
      );
    }
    return DesignationUse._(value, element: element);
  }

  /// value900000000000003001
  static final DesignationUse value900000000000003001 = DesignationUse._(
    '900000000000003001',
  );

  /// value900000000000013009
  static final DesignationUse value900000000000013009 = DesignationUse._(
    '900000000000013009',
  );

  /// For instances where an Element is present but not value

  static final DesignationUse elementOnly = DesignationUse._('');

  /// List of all enum-like values
  static final List<DesignationUse> values = [
    value900000000000003001,
    value900000000000013009,
  ];

  /// Clones the current instance
  @override
  DesignationUse clone() => DesignationUse._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DesignationUse withElement(Element? newElement) {
    return DesignationUse._(value, element: newElement);
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
  DesignationUse copyWith({
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
    return DesignationUse._(
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
