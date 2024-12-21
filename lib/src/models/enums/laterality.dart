// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Laterality: SNOMED-CT concepts for 'left', 'right', and 'bilateral'
class Laterality extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  Laterality._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [Laterality] from JSON.
  factory Laterality.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Laterality.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'Laterality cannot be constructed from JSON.',
      );
    }
    return Laterality._(value, element: element);
  }

  /// value419161000
  static final Laterality value419161000 = Laterality._(
    '419161000',
  );

  /// value419465000
  static final Laterality value419465000 = Laterality._(
    '419465000',
  );

  /// value51440002
  static final Laterality value51440002 = Laterality._(
    '51440002',
  );

  /// For instances where an Element is present but not value

  static final Laterality elementOnly = Laterality._('');

  /// List of all enum-like values
  static final List<Laterality> values = [
    value419161000,
    value419465000,
    value51440002,
  ];

  /// Clones the current instance
  @override
  Laterality clone() => Laterality._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  Laterality withElement(Element? newElement) {
    return Laterality._(
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
  Laterality copyWith({
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
    return Laterality._(
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
