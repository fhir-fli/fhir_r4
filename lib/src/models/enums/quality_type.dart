// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Type for quality report.
class QualityType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  QualityType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [QualityType] from JSON.
  factory QualityType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QualityType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QualityType cannot be constructed from JSON.',
      );
    }
    return QualityType._(
      value,
      element: element,
    );
  }

  /// indel
  static final QualityType indel = QualityType._(
    'indel',
  );

  /// snp
  static final QualityType snp = QualityType._(
    'snp',
  );

  /// unknown
  static final QualityType unknown = QualityType._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final QualityType elementOnly = QualityType._('');

  /// List of all enum-like values
  static final List<QualityType> values = [
    indel,
    snp,
    unknown,
  ];

  /// Clones the current instance
  @override
  QualityType clone() => QualityType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  QualityType withElement(Element? newElement) {
    return QualityType._(
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
  QualityType copyWith({
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
    return QualityType._(
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
