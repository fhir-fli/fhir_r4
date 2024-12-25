// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes indicating the degree of authority/intentionality associated with a care plan.
class CarePlanIntent extends FhirCode {
  // Private constructor for internal use (like enum)
  CarePlanIntent._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [CarePlanIntent] from JSON.
  factory CarePlanIntent.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CarePlanIntent.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CarePlanIntent cannot be constructed from JSON.',
      );
    }
    return CarePlanIntent._(
      value,
      element: element,
    );
  }

  /// proposal
  static final CarePlanIntent proposal = CarePlanIntent._(
    'proposal',
  );

  /// plan
  static final CarePlanIntent plan = CarePlanIntent._(
    'plan',
  );

  /// directive
  static final CarePlanIntent directive = CarePlanIntent._(
    'directive',
  );

  /// order
  static final CarePlanIntent order = CarePlanIntent._(
    'order',
  );

  /// original_order
  static final CarePlanIntent original_order = CarePlanIntent._(
    'original-order',
  );

  /// reflex_order
  static final CarePlanIntent reflex_order = CarePlanIntent._(
    'reflex-order',
  );

  /// filler_order
  static final CarePlanIntent filler_order = CarePlanIntent._(
    'filler-order',
  );

  /// instance_order
  static final CarePlanIntent instance_order = CarePlanIntent._(
    'instance-order',
  );

  /// option
  static final CarePlanIntent option = CarePlanIntent._(
    'option',
  );

  /// For instances where an Element is present but not value

  static final CarePlanIntent elementOnly = CarePlanIntent._('');

  /// List of all enum-like values
  static final List<CarePlanIntent> values = [
    proposal,
    plan,
    directive,
    order,
    original_order,
    reflex_order,
    filler_order,
    instance_order,
    option,
  ];

  /// Clones the current instance
  @override
  CarePlanIntent clone() => CarePlanIntent._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CarePlanIntent withElement(Element? newElement) {
    return CarePlanIntent._(
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
  CarePlanIntent copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return CarePlanIntent._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
