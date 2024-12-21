// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes for general categories of communications such as alerts, instructions, etc.
class CommunicationCategory extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CommunicationCategory._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [CommunicationCategory] from JSON.
  factory CommunicationCategory.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommunicationCategory.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CommunicationCategory cannot be constructed from JSON.',
      );
    }
    return CommunicationCategory._(value, element: element);
  }

  /// alert
  static final CommunicationCategory alert = CommunicationCategory._(
    'alert',
  );

  /// notification
  static final CommunicationCategory notification = CommunicationCategory._(
    'notification',
  );

  /// reminder
  static final CommunicationCategory reminder = CommunicationCategory._(
    'reminder',
  );

  /// instruction
  static final CommunicationCategory instruction = CommunicationCategory._(
    'instruction',
  );

  /// For instances where an Element is present but not value

  static final CommunicationCategory elementOnly = CommunicationCategory._('');

  /// List of all enum-like values
  static final List<CommunicationCategory> values = [
    alert,
    notification,
    reminder,
    instruction,
  ];

  /// Clones the current instance
  @override
  CommunicationCategory clone() => CommunicationCategory._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CommunicationCategory withElement(Element? newElement) {
    return CommunicationCategory._(
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
  CommunicationCategory copyWith({
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
    return CommunicationCategory._(
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
