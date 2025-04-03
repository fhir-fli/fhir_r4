// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The value set to instantiate this attribute should be drawn from a
/// terminologically robust code system that consists of or contains
/// concepts to support describing the current status of the evaluation for
/// vaccine administration event.
class ImmunizationEvaluationStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ImmunizationEvaluationStatusCodes._({
    required super.valueString,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory ImmunizationEvaluationStatusCodes(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return ImmunizationEvaluationStatusCodes._(
      valueString: valueString,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [ImmunizationEvaluationStatusCodes] with element only
  factory ImmunizationEvaluationStatusCodes.empty() =>
      ImmunizationEvaluationStatusCodes._(valueString: '');

  /// Factory constructor to create [ImmunizationEvaluationStatusCodes] from JSON.
  factory ImmunizationEvaluationStatusCodes.fromJson(
      Map<String, dynamic> json) {
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
      valueString: value,
      element: element,
    );
  }

  /// in_progress
  static final ImmunizationEvaluationStatusCodes in_progress =
      ImmunizationEvaluationStatusCodes._(
    valueString: 'in-progress',
    system:
        'http://hl7.org/fhir/ValueSet/immunization-evaluation-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'In Progress'.toFhirString,
  );

  /// not_done
  static final ImmunizationEvaluationStatusCodes not_done =
      ImmunizationEvaluationStatusCodes._(
    valueString: 'not-done',
    system:
        'http://hl7.org/fhir/ValueSet/immunization-evaluation-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not Done'.toFhirString,
  );

  /// on_hold
  static final ImmunizationEvaluationStatusCodes on_hold =
      ImmunizationEvaluationStatusCodes._(
    valueString: 'on-hold',
    system:
        'http://hl7.org/fhir/ValueSet/immunization-evaluation-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'On Hold'.toFhirString,
  );

  /// completed
  static final ImmunizationEvaluationStatusCodes completed =
      ImmunizationEvaluationStatusCodes._(
    valueString: 'completed',
    system:
        'http://hl7.org/fhir/ValueSet/immunization-evaluation-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Completed'.toFhirString,
  );

  /// entered_in_error
  static final ImmunizationEvaluationStatusCodes entered_in_error =
      ImmunizationEvaluationStatusCodes._(
    valueString: 'entered-in-error',
    system:
        'http://hl7.org/fhir/ValueSet/immunization-evaluation-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// stopped
  static final ImmunizationEvaluationStatusCodes stopped =
      ImmunizationEvaluationStatusCodes._(
    valueString: 'stopped',
    system:
        'http://hl7.org/fhir/ValueSet/immunization-evaluation-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Stopped'.toFhirString,
  );

  /// unknown
  static final ImmunizationEvaluationStatusCodes unknown =
      ImmunizationEvaluationStatusCodes._(
    valueString: 'unknown',
    system:
        'http://hl7.org/fhir/ValueSet/immunization-evaluation-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unknown'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ImmunizationEvaluationStatusCodes elementOnly =
      ImmunizationEvaluationStatusCodes._(valueString: '');

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
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ImmunizationEvaluationStatusCodes withElement(Element? newElement) {
    return ImmunizationEvaluationStatusCodes._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  /// Creates a modified copy with updated properties.
  @override
  ImmunizationEvaluationStatusCodes copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError(
          'Invalid input for ImmunizationEvaluationStatusCodes: $newValue');
    }
    return ImmunizationEvaluationStatusCodes._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
