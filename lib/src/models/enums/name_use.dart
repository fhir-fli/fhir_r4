// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The use of a human name.
class NameUse extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  NameUse._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [NameUse] from JSON.
  factory NameUse.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NameUse.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NameUse cannot be constructed from JSON.',
      );
    }
    return NameUse._(value: value, element: element);
  }

  /// usual
  static final NameUse usual = NameUse._(
    value: 'usual',
  );

  /// official
  static final NameUse official = NameUse._(
    value: 'official',
  );

  /// temp
  static final NameUse temp = NameUse._(
    value: 'temp',
  );

  /// nickname
  static final NameUse nickname = NameUse._(
    value: 'nickname',
  );

  /// anonymous
  static final NameUse anonymous = NameUse._(
    value: 'anonymous',
  );

  /// old
  static final NameUse old = NameUse._(
    value: 'old',
  );

  /// maiden
  static final NameUse maiden = NameUse._(
    value: 'maiden',
  );

  /// For instances where an Element is present but not value

  static final NameUse elementOnly = NameUse._(value: '');

  /// List of all enum-like values
  static final List<NameUse> values = [
    usual,
    official,
    temp,
    nickname,
    anonymous,
    old,
    maiden,
  ];

  /// Clones the current instance
  @override
  NameUse clone() => NameUse._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  NameUse withElement(Element? newElement) {
    return NameUse._(value: value, element: newElement);
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
  NameUse copyWith({
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
    return NameUse._(
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
