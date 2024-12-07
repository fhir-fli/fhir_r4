// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Preferred value set for AllergyIntolerance Clinical Status.
class AllergyIntoleranceClinicalStatusCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AllergyIntoleranceClinicalStatusCodes._(super.value, [super.element]);

  /// Factory constructor to create [AllergyIntoleranceClinicalStatusCodes] from JSON.
  factory AllergyIntoleranceClinicalStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceClinicalStatusCodes.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AllergyIntoleranceClinicalStatusCodes cannot be constructed from JSON.',
      );
    }
    return AllergyIntoleranceClinicalStatusCodes._(value, element);
  }

  /// active
  static final AllergyIntoleranceClinicalStatusCodes active =
      AllergyIntoleranceClinicalStatusCodes._(
    'active',
  );

  /// inactive
  static final AllergyIntoleranceClinicalStatusCodes inactive =
      AllergyIntoleranceClinicalStatusCodes._(
    'inactive',
  );

  /// resolved
  static final AllergyIntoleranceClinicalStatusCodes resolved =
      AllergyIntoleranceClinicalStatusCodes._(
    'resolved',
  );

  /// For instances where an Element is present but not value

  static final AllergyIntoleranceClinicalStatusCodes elementOnly =
      AllergyIntoleranceClinicalStatusCodes._('');

  /// List of all enum-like values
  static final List<AllergyIntoleranceClinicalStatusCodes> values = [
    active,
    inactive,
    resolved,
  ];

  /// Clones the current instance
  @override
  AllergyIntoleranceClinicalStatusCodes clone() =>
      AllergyIntoleranceClinicalStatusCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AllergyIntoleranceClinicalStatusCodes withElement(Element? newElement) {
    return AllergyIntoleranceClinicalStatusCodes._(value, newElement);
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
  AllergyIntoleranceClinicalStatusCodes copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return AllergyIntoleranceClinicalStatusCodes._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
