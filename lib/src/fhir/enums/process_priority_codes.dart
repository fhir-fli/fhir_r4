// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes the financial processing priority codes.
class ProcessPriorityCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ProcessPriorityCodes._(super.value, [super.element]);

  /// Factory constructor to create [ProcessPriorityCodes] from JSON.
  factory ProcessPriorityCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProcessPriorityCodes.elementOnly.withElement(element);
    }
    return ProcessPriorityCodes._(value, element);
  }

  /// stat
  static final ProcessPriorityCodes stat = ProcessPriorityCodes._(
    'stat',
  );

  /// normal
  static final ProcessPriorityCodes normal = ProcessPriorityCodes._(
    'normal',
  );

  /// deferred_
  static final ProcessPriorityCodes deferred_ = ProcessPriorityCodes._(
    'deferred',
  );

  /// For instances where an Element is present but not value

  static final ProcessPriorityCodes elementOnly = ProcessPriorityCodes._('');

  /// List of all enum-like values
  static final List<ProcessPriorityCodes> values = [
    stat,
    normal,
    deferred_,
  ];

  /// Clones the current instance
  @override
  ProcessPriorityCodes clone() => ProcessPriorityCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ProcessPriorityCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return ProcessPriorityCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ProcessPriorityCodes withElement(Element? newElement) {
    return ProcessPriorityCodes._(value, newElement);
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
    return ProcessPriorityCodes._(
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
