// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The value set to instantiate this attribute should be drawn from a
/// terminologically robust code system that consists of or contains
/// concepts to support describing the current status of the administered
/// dose of vaccine.
class ImmunizationStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ImmunizationStatusCodes._({
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
  factory ImmunizationStatusCodes(
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
    return ImmunizationStatusCodes._(
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

  /// Create empty [ImmunizationStatusCodes] with element only
  factory ImmunizationStatusCodes.empty() =>
      ImmunizationStatusCodes._(valueString: '');

  /// Factory constructor to create [ImmunizationStatusCodes] from JSON.
  factory ImmunizationStatusCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationStatusCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImmunizationStatusCodes cannot be constructed from JSON.',
      );
    }
    return ImmunizationStatusCodes._(
      valueString: value,
      element: element,
    );
  }

  /// preparation
  static final ImmunizationStatusCodes preparation = ImmunizationStatusCodes._(
    valueString: 'preparation',
    system: 'http://hl7.org/fhir/ValueSet/immunization-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Preparation'.toFhirString,
  );

  /// in_progress
  static final ImmunizationStatusCodes in_progress = ImmunizationStatusCodes._(
    valueString: 'in-progress',
    system: 'http://hl7.org/fhir/ValueSet/immunization-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'In Progress'.toFhirString,
  );

  /// not_done
  static final ImmunizationStatusCodes not_done = ImmunizationStatusCodes._(
    valueString: 'not-done',
    system: 'http://hl7.org/fhir/ValueSet/immunization-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not Done'.toFhirString,
  );

  /// on_hold
  static final ImmunizationStatusCodes on_hold = ImmunizationStatusCodes._(
    valueString: 'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/immunization-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'On Hold'.toFhirString,
  );

  /// stopped
  static final ImmunizationStatusCodes stopped = ImmunizationStatusCodes._(
    valueString: 'stopped',
    system: 'http://hl7.org/fhir/ValueSet/immunization-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Stopped'.toFhirString,
  );

  /// completed
  static final ImmunizationStatusCodes completed = ImmunizationStatusCodes._(
    valueString: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/immunization-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Completed'.toFhirString,
  );

  /// entered_in_error
  static final ImmunizationStatusCodes entered_in_error =
      ImmunizationStatusCodes._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/immunization-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// unknown
  static final ImmunizationStatusCodes unknown = ImmunizationStatusCodes._(
    valueString: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/immunization-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unknown'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ImmunizationStatusCodes elementOnly =
      ImmunizationStatusCodes._(valueString: '');

  /// List of all enum-like values
  static final List<ImmunizationStatusCodes> values = [
    preparation,
    in_progress,
    not_done,
    on_hold,
    stopped,
    completed,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  ImmunizationStatusCodes clone() => ImmunizationStatusCodes._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ImmunizationStatusCodes withElement(Element? newElement) {
    return ImmunizationStatusCodes._(
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
  ImmunizationStatusCodes copyWith({
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
          'Invalid input for ImmunizationStatusCodes: $newValue');
    }
    return ImmunizationStatusCodes._(
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
