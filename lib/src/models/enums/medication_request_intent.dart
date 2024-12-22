// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationRequest Intent Codes
class MedicationRequestIntent extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MedicationRequestIntent._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [MedicationRequestIntent] from JSON.
  factory MedicationRequestIntent.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestIntent.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationRequestIntent cannot be constructed from JSON.',
      );
    }
    return MedicationRequestIntent._(
      value,
      element: element,
    );
  }

  /// proposal
  static final MedicationRequestIntent proposal = MedicationRequestIntent._(
    'proposal',
  );

  /// plan
  static final MedicationRequestIntent plan = MedicationRequestIntent._(
    'plan',
  );

  /// order
  static final MedicationRequestIntent order = MedicationRequestIntent._(
    'order',
  );

  /// original_order
  static final MedicationRequestIntent original_order =
      MedicationRequestIntent._(
    'original-order',
  );

  /// reflex_order
  static final MedicationRequestIntent reflex_order = MedicationRequestIntent._(
    'reflex-order',
  );

  /// filler_order
  static final MedicationRequestIntent filler_order = MedicationRequestIntent._(
    'filler-order',
  );

  /// instance_order
  static final MedicationRequestIntent instance_order =
      MedicationRequestIntent._(
    'instance-order',
  );

  /// option
  static final MedicationRequestIntent option = MedicationRequestIntent._(
    'option',
  );

  /// For instances where an Element is present but not value

  static final MedicationRequestIntent elementOnly =
      MedicationRequestIntent._('');

  /// List of all enum-like values
  static final List<MedicationRequestIntent> values = [
    proposal,
    plan,
    order,
    original_order,
    reflex_order,
    filler_order,
    instance_order,
    option,
  ];

  /// Clones the current instance
  @override
  MedicationRequestIntent clone() => MedicationRequestIntent._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MedicationRequestIntent withElement(Element? newElement) {
    return MedicationRequestIntent._(
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
  MedicationRequestIntent copyWith({
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
    return MedicationRequestIntent._(
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
