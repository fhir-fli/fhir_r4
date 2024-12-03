// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Preferred value set for AllergyIntolerance Verification Status.
class AllergyIntoleranceVerificationStatusCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AllergyIntoleranceVerificationStatusCodes._(super.value, [super.element]);

  /// Factory constructor to create [AllergyIntoleranceVerificationStatusCodes] from JSON.
  factory AllergyIntoleranceVerificationStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceVerificationStatusCodes.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AllergyIntoleranceVerificationStatusCodes cannot be constructed from JSON.',
      );
    }
    return AllergyIntoleranceVerificationStatusCodes._(value, element);
  }

  /// unconfirmed
  static final AllergyIntoleranceVerificationStatusCodes unconfirmed =
      AllergyIntoleranceVerificationStatusCodes._(
    'unconfirmed',
  );

  /// confirmed
  static final AllergyIntoleranceVerificationStatusCodes confirmed =
      AllergyIntoleranceVerificationStatusCodes._(
    'confirmed',
  );

  /// refuted
  static final AllergyIntoleranceVerificationStatusCodes refuted =
      AllergyIntoleranceVerificationStatusCodes._(
    'refuted',
  );

  /// entered_in_error
  static final AllergyIntoleranceVerificationStatusCodes entered_in_error =
      AllergyIntoleranceVerificationStatusCodes._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final AllergyIntoleranceVerificationStatusCodes elementOnly =
      AllergyIntoleranceVerificationStatusCodes._('');

  /// List of all enum-like values
  static final List<AllergyIntoleranceVerificationStatusCodes> values = [
    unconfirmed,
    confirmed,
    refuted,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  AllergyIntoleranceVerificationStatusCodes clone() =>
      AllergyIntoleranceVerificationStatusCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  AllergyIntoleranceVerificationStatusCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return AllergyIntoleranceVerificationStatusCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  AllergyIntoleranceVerificationStatusCodes withElement(Element? newElement) {
    return AllergyIntoleranceVerificationStatusCodes._(value, newElement);
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
  AllergyIntoleranceVerificationStatusCodes copyWith({
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
    return AllergyIntoleranceVerificationStatusCodes._(
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
