// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the source of the data when the report of the immunization event is not based on information from the person, entity or organization who administered the vaccine. This value set is provided as a suggestive example.
class ImmunizationOriginCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ImmunizationOriginCodes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ImmunizationOriginCodes] from JSON.
  factory ImmunizationOriginCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationOriginCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImmunizationOriginCodes cannot be constructed from JSON.',
      );
    }
    return ImmunizationOriginCodes._(value, element: element);
  }

  /// provider
  static final ImmunizationOriginCodes provider = ImmunizationOriginCodes._(
    'provider',
  );

  /// record
  static final ImmunizationOriginCodes record = ImmunizationOriginCodes._(
    'record',
  );

  /// recall
  static final ImmunizationOriginCodes recall = ImmunizationOriginCodes._(
    'recall',
  );

  /// school
  static final ImmunizationOriginCodes school = ImmunizationOriginCodes._(
    'school',
  );

  /// jurisdiction
  static final ImmunizationOriginCodes jurisdiction = ImmunizationOriginCodes._(
    'jurisdiction',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationOriginCodes elementOnly =
      ImmunizationOriginCodes._('');

  /// List of all enum-like values
  static final List<ImmunizationOriginCodes> values = [
    provider,
    record,
    recall,
    school,
    jurisdiction,
  ];

  /// Clones the current instance
  @override
  ImmunizationOriginCodes clone() => ImmunizationOriginCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ImmunizationOriginCodes withElement(Element? newElement) {
    return ImmunizationOriginCodes._(
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
  ImmunizationOriginCodes copyWith({
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
    return ImmunizationOriginCodes._(
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
