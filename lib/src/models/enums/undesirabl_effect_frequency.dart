// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A categorisation for a frequency of occurence of an undesirable effect.
class UndesirablEffectFrequency extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  UndesirablEffectFrequency._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [UndesirablEffectFrequency] from JSON.
  factory UndesirablEffectFrequency.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UndesirablEffectFrequency.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'UndesirablEffectFrequency cannot be constructed from JSON.',
      );
    }
    return UndesirablEffectFrequency._(value: value, element: element);
  }

  /// Common
  static final UndesirablEffectFrequency Common = UndesirablEffectFrequency._(
    value: 'Common',
  );

  /// Uncommon
  static final UndesirablEffectFrequency Uncommon = UndesirablEffectFrequency._(
    value: 'Uncommon',
  );

  /// Rare
  static final UndesirablEffectFrequency Rare = UndesirablEffectFrequency._(
    value: 'Rare',
  );

  /// For instances where an Element is present but not value

  static final UndesirablEffectFrequency elementOnly =
      UndesirablEffectFrequency._(value: '');

  /// List of all enum-like values
  static final List<UndesirablEffectFrequency> values = [
    Common,
    Uncommon,
    Rare,
  ];

  /// Clones the current instance
  @override
  UndesirablEffectFrequency clone() => UndesirablEffectFrequency._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  UndesirablEffectFrequency withElement(Element? newElement) {
    return UndesirablEffectFrequency._(value: value, element: newElement);
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
  UndesirablEffectFrequency copyWith({
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
    return UndesirablEffectFrequency._(
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
