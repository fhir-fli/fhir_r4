// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Missing Tooth Reason codes.
class MissingToothReasonCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MissingToothReasonCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [MissingToothReasonCodes] from JSON.
  factory MissingToothReasonCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MissingToothReasonCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MissingToothReasonCodes cannot be constructed from JSON.',
      );
    }
    return MissingToothReasonCodes._(value: value, element: element);
  }

  /// e
  static final MissingToothReasonCodes e = MissingToothReasonCodes._(
    value: 'e',
  );

  /// c
  static final MissingToothReasonCodes c = MissingToothReasonCodes._(
    value: 'c',
  );

  /// u
  static final MissingToothReasonCodes u = MissingToothReasonCodes._(
    value: 'u',
  );

  /// o
  static final MissingToothReasonCodes o = MissingToothReasonCodes._(
    value: 'o',
  );

  /// For instances where an Element is present but not value

  static final MissingToothReasonCodes elementOnly =
      MissingToothReasonCodes._(value: '');

  /// List of all enum-like values
  static final List<MissingToothReasonCodes> values = [
    e,
    c,
    u,
    o,
  ];

  /// Clones the current instance
  @override
  MissingToothReasonCodes clone() => MissingToothReasonCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MissingToothReasonCodes withElement(Element? newElement) {
    return MissingToothReasonCodes._(value: value, element: newElement);
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
  MissingToothReasonCodes copyWith({
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
    return MissingToothReasonCodes._(
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
