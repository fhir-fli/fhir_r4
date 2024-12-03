// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Criterion for rejection of the specimen by laboratory.
class RejectionCriterion extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  RejectionCriterion._(super.value, [super.element]);

  /// Factory constructor to create [RejectionCriterion] from JSON.
  factory RejectionCriterion.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RejectionCriterion.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RejectionCriterion cannot be constructed from JSON.',
      );
    }
    return RejectionCriterion._(value, element);
  }

  /// hemolized
  static final RejectionCriterion hemolized = RejectionCriterion._(
    'hemolized',
  );

  /// insufficient
  static final RejectionCriterion insufficient = RejectionCriterion._(
    'insufficient',
  );

  /// broken
  static final RejectionCriterion broken = RejectionCriterion._(
    'broken',
  );

  /// clotted
  static final RejectionCriterion clotted = RejectionCriterion._(
    'clotted',
  );

  /// wrong_temperature
  static final RejectionCriterion wrong_temperature = RejectionCriterion._(
    'wrong-temperature',
  );

  /// For instances where an Element is present but not value

  static final RejectionCriterion elementOnly = RejectionCriterion._('');

  /// List of all enum-like values
  static final List<RejectionCriterion> values = [
    hemolized,
    insufficient,
    broken,
    clotted,
    wrong_temperature,
  ];

  /// Clones the current instance
  @override
  RejectionCriterion clone() => RejectionCriterion._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  RejectionCriterion setElement(
    String name,
    dynamic elementValue,
  ) {
    return RejectionCriterion._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  RejectionCriterion withElement(Element? newElement) {
    return RejectionCriterion._(value, newElement);
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
  RejectionCriterion copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return RejectionCriterion._(
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
