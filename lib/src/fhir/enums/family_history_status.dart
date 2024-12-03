// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code that identifies the status of the family history record.
class FamilyHistoryStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  FamilyHistoryStatus._(super.value, [super.element]);

  /// Factory constructor to create [FamilyHistoryStatus] from JSON.
  factory FamilyHistoryStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FamilyHistoryStatus.elementOnly.withElement(element);
    }
    return FamilyHistoryStatus._(value, element);
  }

  /// partial
  static final FamilyHistoryStatus partial = FamilyHistoryStatus._(
    'partial',
  );

  /// completed
  static final FamilyHistoryStatus completed = FamilyHistoryStatus._(
    'completed',
  );

  /// entered_in_error
  static final FamilyHistoryStatus entered_in_error = FamilyHistoryStatus._(
    'entered-in-error',
  );

  /// health_unknown
  static final FamilyHistoryStatus health_unknown = FamilyHistoryStatus._(
    'health-unknown',
  );

  /// For instances where an Element is present but not value

  static final FamilyHistoryStatus elementOnly = FamilyHistoryStatus._('');

  /// List of all enum-like values
  static final List<FamilyHistoryStatus> values = [
    partial,
    completed,
    entered_in_error,
    health_unknown,
  ];

  /// Clones the current instance
  @override
  FamilyHistoryStatus clone() =>
      FamilyHistoryStatus._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  FamilyHistoryStatus setElement(String name, dynamic elementValue) {
    return FamilyHistoryStatus._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  FamilyHistoryStatus withElement(Element? newElement) {
    return FamilyHistoryStatus._(value, newElement);
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
  FamilyHistoryStatus copyWith({
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
    return FamilyHistoryStatus._(
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
