// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationRequest Status Codes
class MedicationrequestStatus extends FhirCode {
  // Private constructor for internal use (like enum)
  MedicationrequestStatus._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [MedicationrequestStatus] from JSON.
  factory MedicationrequestStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationrequestStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationrequestStatus cannot be constructed from JSON.',
      );
    }
    return MedicationrequestStatus._(
      value,
      element: element,
    );
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
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MedicationrequestStatus withElement(Element? newElement) {
    return MedicationrequestStatus._(
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
  MedicationrequestStatus copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return MedicationrequestStatus._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
