// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The quality of how direct the match is.
class EvidenceDirectness extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EvidenceDirectness._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [EvidenceDirectness] from JSON.
  factory EvidenceDirectness.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceDirectness.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EvidenceDirectness cannot be constructed from JSON.',
      );
    }
    return EvidenceDirectness._(value: value, element: element);
  }

  /// low
  static final EvidenceDirectness low = EvidenceDirectness._(
    value: 'low',
  );

  /// moderate
  static final EvidenceDirectness moderate = EvidenceDirectness._(
    value: 'moderate',
  );

  /// high
  static final EvidenceDirectness high = EvidenceDirectness._(
    value: 'high',
  );

  /// exact
  static final EvidenceDirectness exact = EvidenceDirectness._(
    value: 'exact',
  );

  /// For instances where an Element is present but not value

  static final EvidenceDirectness elementOnly = EvidenceDirectness._(value: '');

  /// List of all enum-like values
  static final List<EvidenceDirectness> values = [
    low,
    moderate,
    high,
    exact,
  ];

  /// Clones the current instance
  @override
  EvidenceDirectness clone() => EvidenceDirectness._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EvidenceDirectness withElement(Element? newElement) {
    return EvidenceDirectness._(value: value, element: newElement);
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
  EvidenceDirectness copyWith({
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
    return EvidenceDirectness._(
      value: newValue ?? value,
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
