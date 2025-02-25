// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a
/// terminologically robust code system that consists of or contains
/// concepts to support describing the current status of the evaluation for
/// vaccine administration event.
class ImmunizationEvaluationStatusCodes extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  ImmunizationEvaluationStatusCodes._(
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

  /// Create empty [ImmunizationEvaluationStatusCodes] with element only
  factory ImmunizationEvaluationStatusCodes.empty() =>
      ImmunizationEvaluationStatusCodes._('');

  /// Factory constructor to create [ImmunizationEvaluationStatusCodes] from JSON.
  factory ImmunizationEvaluationStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationEvaluationStatusCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImmunizationEvaluationStatusCodes cannot be constructed from JSON.',
      );
    }
    return ImmunizationEvaluationStatusCodes._(
      value,
      element: element,
    );
  }

  /// in_progress
  static final ImmunizationEvaluationStatusCodes in_progress =
      ImmunizationEvaluationStatusCodes._(
    'in-progress',
    system:
        'http://hl7.org/fhir/ValueSet/immunization-evaluation-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'In Progress'.toFhirString,
  );

  /// not_done
  static final ImmunizationEvaluationStatusCodes not_done =
      ImmunizationEvaluationStatusCodes._(
    'not-done',
    system:
        'http://hl7.org/fhir/ValueSet/immunization-evaluation-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not Done'.toFhirString,
  );

  /// on_hold
  static final ImmunizationEvaluationStatusCodes on_hold =
      ImmunizationEvaluationStatusCodes._(
    'on-hold',
    system:
        'http://hl7.org/fhir/ValueSet/immunization-evaluation-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'On Hold'.toFhirString,
  );

  /// completed
  static final ImmunizationEvaluationStatusCodes completed =
      ImmunizationEvaluationStatusCodes._(
    'completed',
    system:
        'http://hl7.org/fhir/ValueSet/immunization-evaluation-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Completed'.toFhirString,
  );

  /// entered_in_error
  static final ImmunizationEvaluationStatusCodes entered_in_error =
      ImmunizationEvaluationStatusCodes._(
    'entered-in-error',
    system:
        'http://hl7.org/fhir/ValueSet/immunization-evaluation-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// stopped
  static final ImmunizationEvaluationStatusCodes stopped =
      ImmunizationEvaluationStatusCodes._(
    'stopped',
    system:
        'http://hl7.org/fhir/ValueSet/immunization-evaluation-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Stopped'.toFhirString,
  );

  /// unknown
  static final ImmunizationEvaluationStatusCodes unknown =
      ImmunizationEvaluationStatusCodes._(
    'unknown',
    system:
        'http://hl7.org/fhir/ValueSet/immunization-evaluation-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unknown'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final ImmunizationEvaluationStatusCodes elementOnly =
      ImmunizationEvaluationStatusCodes._('');

  /// List of all enum-like values
  static final List<ImmunizationEvaluationStatusCodes> values = [
    in_progress,
    not_done,
    on_hold,
    completed,
    entered_in_error,
    stopped,
    unknown,
  ];

  /// Clones the current instance
  @override
  ImmunizationEvaluationStatusCodes clone() =>
      ImmunizationEvaluationStatusCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ImmunizationEvaluationStatusCodes withElement(Element? newElement) {
    return ImmunizationEvaluationStatusCodes._(
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
  ImmunizationEvaluationStatusCodes copyWith({
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
    return ImmunizationEvaluationStatusCodes._(
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
