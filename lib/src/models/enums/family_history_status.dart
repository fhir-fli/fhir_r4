// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// A code that identifies the status of the family history record.
class FamilyHistoryStatus extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  FamilyHistoryStatus._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [FamilyHistoryStatus] with element only
  factory FamilyHistoryStatus.empty() => FamilyHistoryStatus._('');

  /// Factory constructor to create [FamilyHistoryStatus] from JSON.
  factory FamilyHistoryStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FamilyHistoryStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FamilyHistoryStatus cannot be constructed from JSON.',
      );
    }
    return FamilyHistoryStatus._(
      value,
      element: element,
    );
  }

  /// partial
  static final FamilyHistoryStatus partial = FamilyHistoryStatus._(
    'partial',
    system: 'http://hl7.org/fhir/ValueSet/history-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Partial'.toFhirString,
  );

  /// completed
  static final FamilyHistoryStatus completed = FamilyHistoryStatus._(
    'completed',
    system: 'http://hl7.org/fhir/ValueSet/history-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Completed'.toFhirString,
  );

  /// entered_in_error
  static final FamilyHistoryStatus entered_in_error = FamilyHistoryStatus._(
    'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/history-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// health_unknown
  static final FamilyHistoryStatus health_unknown = FamilyHistoryStatus._(
    'health-unknown',
    system: 'http://hl7.org/fhir/ValueSet/history-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Health Unknown'.toFhirString,
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
  FamilyHistoryStatus clone() => FamilyHistoryStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  FamilyHistoryStatus withElement(Element? newElement) {
    return FamilyHistoryStatus._(
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
  FamilyHistoryStatus copyWith({
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
    return FamilyHistoryStatus._(
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
