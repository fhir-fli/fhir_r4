// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A categorisation for a frequency of occurence of an undesirable effect.
class UndesirablEffectFrequency extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  UndesirablEffectFrequency._(super.value, [super.element]);

  /// Factory constructor to create [UndesirablEffectFrequency] from JSON.
  factory UndesirablEffectFrequency.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UndesirablEffectFrequency.elementOnly.withElement(element);
    }
    return UndesirablEffectFrequency._(value, element);
  }

  /// Common
  static final UndesirablEffectFrequency Common = UndesirablEffectFrequency._(
    'Common',
  );

  /// Uncommon
  static final UndesirablEffectFrequency Uncommon = UndesirablEffectFrequency._(
    'Uncommon',
  );

  /// Rare
  static final UndesirablEffectFrequency Rare = UndesirablEffectFrequency._(
    'Rare',
  );

  /// For instances where an Element is present but not value

  static final UndesirablEffectFrequency elementOnly =
      UndesirablEffectFrequency._('');

  /// List of all enum-like values
  static final List<UndesirablEffectFrequency> values = [
    Common,
    Uncommon,
    Rare,
  ];

  /// Clones the current instance
  @override
  UndesirablEffectFrequency clone() =>
      UndesirablEffectFrequency._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  UndesirablEffectFrequency setElement(String name, dynamic elementValue) {
    return UndesirablEffectFrequency._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  UndesirablEffectFrequency withElement(Element? newElement) {
    return UndesirablEffectFrequency._(value, newElement);
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
    return UndesirablEffectFrequency._(
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
