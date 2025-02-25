// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Current state of the encounter.
class EncounterStatus extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  EncounterStatus._(
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

  /// Create empty [EncounterStatus] with element only
  factory EncounterStatus.empty() => EncounterStatus._('');

  /// Factory constructor to create [EncounterStatus] from JSON.
  factory EncounterStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EncounterStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EncounterStatus cannot be constructed from JSON.',
      );
    }
    return EncounterStatus._(
      value,
      element: element,
    );
  }

  /// planned
  static final EncounterStatus planned = EncounterStatus._(
    'planned',
    system: 'http://hl7.org/fhir/ValueSet/encounter-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Planned'.toFhirString,
  );

  /// arrived
  static final EncounterStatus arrived = EncounterStatus._(
    'arrived',
    system: 'http://hl7.org/fhir/ValueSet/encounter-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Arrived'.toFhirString,
  );

  /// triaged
  static final EncounterStatus triaged = EncounterStatus._(
    'triaged',
    system: 'http://hl7.org/fhir/ValueSet/encounter-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Triaged'.toFhirString,
  );

  /// in_progress
  static final EncounterStatus in_progress = EncounterStatus._(
    'in-progress',
    system: 'http://hl7.org/fhir/ValueSet/encounter-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'In Progress'.toFhirString,
  );

  /// onleave
  static final EncounterStatus onleave = EncounterStatus._(
    'onleave',
    system: 'http://hl7.org/fhir/ValueSet/encounter-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'On Leave'.toFhirString,
  );

  /// finished
  static final EncounterStatus finished = EncounterStatus._(
    'finished',
    system: 'http://hl7.org/fhir/ValueSet/encounter-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Finished'.toFhirString,
  );

  /// cancelled
  static final EncounterStatus cancelled = EncounterStatus._(
    'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/encounter-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Cancelled'.toFhirString,
  );

  /// entered_in_error
  static final EncounterStatus entered_in_error = EncounterStatus._(
    'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/encounter-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// unknown
  static final EncounterStatus unknown = EncounterStatus._(
    'unknown',
    system: 'http://hl7.org/fhir/ValueSet/encounter-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unknown'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final EncounterStatus elementOnly = EncounterStatus._('');

  /// List of all enum-like values
  static final List<EncounterStatus> values = [
    planned,
    arrived,
    triaged,
    in_progress,
    onleave,
    finished,
    cancelled,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  EncounterStatus clone() => EncounterStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EncounterStatus withElement(Element? newElement) {
    return EncounterStatus._(
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
  EncounterStatus copyWith({
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
    return EncounterStatus._(
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
