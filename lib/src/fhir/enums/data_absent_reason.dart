// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Used to specify why the normally expected content of the data element is missing.
class DataAbsentReason extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  DataAbsentReason._(super.value, [super.element]);

  /// Factory constructor to create [DataAbsentReason] from JSON.
  factory DataAbsentReason.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DataAbsentReason.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError('DataAbsentReason cannot be constructed from JSON.');
    }
    return DataAbsentReason._(value, element);
  }

  /// unknown
  static final DataAbsentReason unknown = DataAbsentReason._(
    'unknown',
  );

  /// asked_unknown
  static final DataAbsentReason asked_unknown = DataAbsentReason._(
    'asked-unknown',
  );

  /// temp_unknown
  static final DataAbsentReason temp_unknown = DataAbsentReason._(
    'temp-unknown',
  );

  /// not_asked
  static final DataAbsentReason not_asked = DataAbsentReason._(
    'not-asked',
  );

  /// asked_declined
  static final DataAbsentReason asked_declined = DataAbsentReason._(
    'asked-declined',
  );

  /// masked
  static final DataAbsentReason masked = DataAbsentReason._(
    'masked',
  );

  /// not_applicable
  static final DataAbsentReason not_applicable = DataAbsentReason._(
    'not-applicable',
  );

  /// unsupported
  static final DataAbsentReason unsupported = DataAbsentReason._(
    'unsupported',
  );

  /// as_text
  static final DataAbsentReason as_text = DataAbsentReason._(
    'as-text',
  );

  /// error
  static final DataAbsentReason error = DataAbsentReason._(
    'error',
  );

  /// not_a_number
  static final DataAbsentReason not_a_number = DataAbsentReason._(
    'not-a-number',
  );

  /// negative_infinity
  static final DataAbsentReason negative_infinity = DataAbsentReason._(
    'negative-infinity',
  );

  /// positive_infinity
  static final DataAbsentReason positive_infinity = DataAbsentReason._(
    'positive-infinity',
  );

  /// not_performed
  static final DataAbsentReason not_performed = DataAbsentReason._(
    'not-performed',
  );

  /// not_permitted
  static final DataAbsentReason not_permitted = DataAbsentReason._(
    'not-permitted',
  );

  /// For instances where an Element is present but not value

  static final DataAbsentReason elementOnly = DataAbsentReason._('');

  /// List of all enum-like values
  static final List<DataAbsentReason> values = [
    unknown,
    asked_unknown,
    temp_unknown,
    not_asked,
    asked_declined,
    masked,
    not_applicable,
    unsupported,
    as_text,
    error,
    not_a_number,
    negative_infinity,
    positive_infinity,
    not_performed,
    not_permitted,
  ];

  /// Clones the current instance
  @override
  DataAbsentReason clone() => DataAbsentReason._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  DataAbsentReason setElement(
    String name,
    dynamic elementValue,
  ) {
    return DataAbsentReason._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  DataAbsentReason withElement(Element? newElement) {
    return DataAbsentReason._(value, newElement);
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
  DataAbsentReason copyWith({
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
    return DataAbsentReason._(
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
