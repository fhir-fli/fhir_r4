// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The mode of a message capability statement.
class EventCapabilityMode extends FhirCode {
  // Private constructor for internal use (like enum)
  EventCapabilityMode._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  });

  /// Factory constructor to create [EventCapabilityMode] from JSON.
  factory EventCapabilityMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EventCapabilityMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EventCapabilityMode cannot be constructed from JSON.',
      );
    }
    return EventCapabilityMode._(
      value,
      element: element,
    );
  }

  /// sender
  static final EventCapabilityMode sender = EventCapabilityMode._(
    'sender',
  );

  /// receiver
  static final EventCapabilityMode receiver = EventCapabilityMode._(
    'receiver',
  );

  /// For instances where an Element is present but not value

  static final EventCapabilityMode elementOnly = EventCapabilityMode._('');

  /// List of all enum-like values
  static final List<EventCapabilityMode> values = [
    sender,
    receiver,
  ];

  /// Clones the current instance
  @override
  EventCapabilityMode clone() => EventCapabilityMode._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EventCapabilityMode withElement(Element? newElement) {
    return EventCapabilityMode._(
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
  EventCapabilityMode copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return EventCapabilityMode._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
    );
  }
}
