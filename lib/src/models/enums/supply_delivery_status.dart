// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Status of the supply delivery.
class SupplyDeliveryStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SupplyDeliveryStatus._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [SupplyDeliveryStatus] from JSON.
  factory SupplyDeliveryStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyDeliveryStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SupplyDeliveryStatus cannot be constructed from JSON.',
      );
    }
    return SupplyDeliveryStatus._(value: value, element: element);
  }

  /// in_progress
  static final SupplyDeliveryStatus in_progress = SupplyDeliveryStatus._(
    value: 'in-progress',
  );

  /// completed
  static final SupplyDeliveryStatus completed = SupplyDeliveryStatus._(
    value: 'completed',
  );

  /// abandoned
  static final SupplyDeliveryStatus abandoned = SupplyDeliveryStatus._(
    value: 'abandoned',
  );

  /// entered_in_error
  static final SupplyDeliveryStatus entered_in_error = SupplyDeliveryStatus._(
    value: 'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final SupplyDeliveryStatus elementOnly =
      SupplyDeliveryStatus._(value: '');

  /// List of all enum-like values
  static final List<SupplyDeliveryStatus> values = [
    in_progress,
    completed,
    abandoned,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  SupplyDeliveryStatus clone() => SupplyDeliveryStatus._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SupplyDeliveryStatus withElement(Element? newElement) {
    return SupplyDeliveryStatus._(value: value, element: newElement);
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
  SupplyDeliveryStatus copyWith({
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
    return SupplyDeliveryStatus._(
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
