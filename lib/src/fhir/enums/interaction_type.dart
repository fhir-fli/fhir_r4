// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A categorisation for an interaction between two substances.
class InteractionType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  InteractionType._(super.value, [super.element]);

  /// Factory constructor to create [InteractionType] from JSON.
  factory InteractionType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InteractionType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError('InteractionType cannot be constructed from JSON.');
    }
    return InteractionType._(value, element);
  }

  /// drug_drug
  static final InteractionType drug_drug = InteractionType._(
    'drug-drug',
  );

  /// drug_food
  static final InteractionType drug_food = InteractionType._(
    'drug-food',
  );

  /// drug_test
  static final InteractionType drug_test = InteractionType._(
    'drug-test',
  );

  /// other
  static final InteractionType other = InteractionType._(
    'other',
  );

  /// For instances where an Element is present but not value

  static final InteractionType elementOnly = InteractionType._('');

  /// List of all enum-like values
  static final List<InteractionType> values = [
    drug_drug,
    drug_food,
    drug_test,
    other,
  ];

  /// Clones the current instance
  @override
  InteractionType clone() => InteractionType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  InteractionType setElement(
    String name,
    dynamic elementValue,
  ) {
    return InteractionType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  InteractionType withElement(Element? newElement) {
    return InteractionType._(value, newElement);
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
  InteractionType copyWith({
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
    return InteractionType._(
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
