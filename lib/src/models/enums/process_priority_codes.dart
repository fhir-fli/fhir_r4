// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes the financial processing priority codes.
class ProcessPriorityCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ProcessPriorityCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ProcessPriorityCodes] from JSON.
  factory ProcessPriorityCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProcessPriorityCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ProcessPriorityCodes cannot be constructed from JSON.',
      );
    }
    return ProcessPriorityCodes._(value: value, element: element);
  }

  /// stat
  static final ProcessPriorityCodes stat = ProcessPriorityCodes._(
    value: 'stat',
  );

  /// normal
  static final ProcessPriorityCodes normal = ProcessPriorityCodes._(
    value: 'normal',
  );

  /// deferred_
  static final ProcessPriorityCodes deferred_ = ProcessPriorityCodes._(
    value: 'deferred',
  );

  /// For instances where an Element is present but not value

  static final ProcessPriorityCodes elementOnly =
      ProcessPriorityCodes._(value: '');

  /// List of all enum-like values
  static final List<ProcessPriorityCodes> values = [
    stat,
    normal,
    deferred_,
  ];

  /// Clones the current instance
  @override
  ProcessPriorityCodes clone() => ProcessPriorityCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ProcessPriorityCodes withElement(Element? newElement) {
    return ProcessPriorityCodes._(value: value, element: newElement);
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
  ProcessPriorityCodes copyWith({
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
    return ProcessPriorityCodes._(
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
