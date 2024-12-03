// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// NLM codes Internet or Print.
class CitedMedium extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CitedMedium._(super.value, [super.element]);

  /// Factory constructor to create [CitedMedium] from JSON.
  factory CitedMedium.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitedMedium.elementOnly.withElement(element);
    }
    return CitedMedium._(value, element);
  }

  /// internet
  static final CitedMedium internet = CitedMedium._(
    'internet',
  );

  /// print
  static final CitedMedium print = CitedMedium._(
    'print',
  );

  /// offline_digital_storage
  static final CitedMedium offline_digital_storage = CitedMedium._(
    'offline-digital-storage',
  );

  /// internet_without_issue
  static final CitedMedium internet_without_issue = CitedMedium._(
    'internet-without-issue',
  );

  /// print_without_issue
  static final CitedMedium print_without_issue = CitedMedium._(
    'print-without-issue',
  );

  /// offline_digital_storage_without_issue
  static final CitedMedium offline_digital_storage_without_issue =
      CitedMedium._(
    'offline-digital-storage-without-issue',
  );

  /// For instances where an Element is present but not value

  static final CitedMedium elementOnly = CitedMedium._('');

  /// List of all enum-like values
  static final List<CitedMedium> values = [
    internet,
    print,
    offline_digital_storage,
    internet_without_issue,
    print_without_issue,
    offline_digital_storage_without_issue,
  ];

  /// Clones the current instance
  @override
  CitedMedium clone() => CitedMedium._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  CitedMedium setElement(String name, dynamic elementValue) {
    return CitedMedium._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  CitedMedium withElement(Element? newElement) {
    return CitedMedium._(value, newElement);
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
  CitedMedium copyWith({
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
    return CitedMedium._(
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
