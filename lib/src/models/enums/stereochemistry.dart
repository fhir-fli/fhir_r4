// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The optical rotation type of a substance.
class Stereochemistry extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  Stereochemistry._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [Stereochemistry] from JSON.
  factory Stereochemistry.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Stereochemistry.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'Stereochemistry cannot be constructed from JSON.',
      );
    }
    return Stereochemistry._(value: value, element: element);
  }

  /// ConstitutionalIsomer
  static final Stereochemistry ConstitutionalIsomer = Stereochemistry._(
    value: 'ConstitutionalIsomer',
  );

  /// Stereoisomer
  static final Stereochemistry Stereoisomer = Stereochemistry._(
    value: 'Stereoisomer',
  );

  /// Enantiomer
  static final Stereochemistry Enantiomer = Stereochemistry._(
    value: 'Enantiomer',
  );

  /// For instances where an Element is present but not value

  static final Stereochemistry elementOnly = Stereochemistry._(value: '');

  /// List of all enum-like values
  static final List<Stereochemistry> values = [
    ConstitutionalIsomer,
    Stereoisomer,
    Enantiomer,
  ];

  /// Clones the current instance
  @override
  Stereochemistry clone() => Stereochemistry._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  Stereochemistry withElement(Element? newElement) {
    return Stereochemistry._(value: value, element: newElement);
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
  Stereochemistry copyWith({
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
    return Stereochemistry._(
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
