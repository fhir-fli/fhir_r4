// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationRequest Status Codes
class MedicationrequestStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MedicationrequestStatus._(super.value, [super.element]);

  /// Factory constructor to create [MedicationrequestStatus] from JSON.
  factory MedicationrequestStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationrequestStatus.elementOnly.withElement(element);
    }
    return MedicationrequestStatus._(value, element);
  }

  /// active
  static final MedicationrequestStatus active = MedicationrequestStatus._(
    'active',
  );

  /// on_hold
  static final MedicationrequestStatus on_hold = MedicationrequestStatus._(
    'on-hold',
  );

  /// cancelled
  static final MedicationrequestStatus cancelled = MedicationrequestStatus._(
    'cancelled',
  );

  /// completed
  static final MedicationrequestStatus completed = MedicationrequestStatus._(
    'completed',
  );

  /// entered_in_error
  static final MedicationrequestStatus entered_in_error =
      MedicationrequestStatus._(
    'entered-in-error',
  );

  /// stopped
  static final MedicationrequestStatus stopped = MedicationrequestStatus._(
    'stopped',
  );

  /// draft
  static final MedicationrequestStatus draft = MedicationrequestStatus._(
    'draft',
  );

  /// unknown
  static final MedicationrequestStatus unknown = MedicationrequestStatus._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final MedicationrequestStatus elementOnly =
      MedicationrequestStatus._('');

  /// List of all enum-like values
  static final List<MedicationrequestStatus> values = [
    active,
    on_hold,
    cancelled,
    completed,
    entered_in_error,
    stopped,
    draft,
    unknown,
  ];

  /// Clones the current instance
  @override
  MedicationrequestStatus clone() => MedicationrequestStatus._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  MedicationrequestStatus setElement(
    String name,
    dynamic elementValue,
  ) {
    return MedicationrequestStatus._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  MedicationrequestStatus withElement(Element? newElement) {
    return MedicationrequestStatus._(value, newElement);
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
  MedicationrequestStatus copyWith({
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
    return MedicationrequestStatus._(
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
