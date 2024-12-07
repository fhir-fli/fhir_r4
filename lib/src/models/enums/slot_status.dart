// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The free/busy status of the slot.
class SlotStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SlotStatus._(super.value, [super.element]);

  /// Factory constructor to create [SlotStatus] from JSON.
  factory SlotStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SlotStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SlotStatus cannot be constructed from JSON.',
      );
    }
    return SlotStatus._(value, element);
  }

  /// busy
  static final SlotStatus busy = SlotStatus._(
    'busy',
  );

  /// free
  static final SlotStatus free = SlotStatus._(
    'free',
  );

  /// busy_unavailable
  static final SlotStatus busy_unavailable = SlotStatus._(
    'busy-unavailable',
  );

  /// busy_tentative
  static final SlotStatus busy_tentative = SlotStatus._(
    'busy-tentative',
  );

  /// entered_in_error
  static final SlotStatus entered_in_error = SlotStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final SlotStatus elementOnly = SlotStatus._('');

  /// List of all enum-like values
  static final List<SlotStatus> values = [
    busy,
    free,
    busy_unavailable,
    busy_tentative,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  SlotStatus clone() => SlotStatus._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SlotStatus withElement(Element? newElement) {
    return SlotStatus._(value, newElement);
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
  SlotStatus copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return SlotStatus._(
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
