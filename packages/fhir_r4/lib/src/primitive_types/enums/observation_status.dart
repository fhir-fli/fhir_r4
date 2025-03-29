// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes providing the status of an observation.
class ObservationStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ObservationStatus._({
    required super.validatedValue,
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
  factory ObservationStatus(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return ObservationStatus._(
      validatedValue: validated,
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

  /// Create empty [ObservationStatus] with element only
  factory ObservationStatus.empty() => ObservationStatus._(validatedValue: '');

  /// Factory constructor to create [ObservationStatus] from JSON.
  factory ObservationStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ObservationStatus cannot be constructed from JSON.',
      );
    }
    return ObservationStatus._(
      validatedValue: value,
      element: element,
    );
  }

  /// registered
  static final ObservationStatus registered = ObservationStatus._(
    validatedValue: 'registered',
    system: 'http://hl7.org/fhir/ValueSet/observation-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Registered'.toFhirString,
  );

  /// preliminary
  static final ObservationStatus preliminary = ObservationStatus._(
    validatedValue: 'preliminary',
    system: 'http://hl7.org/fhir/ValueSet/observation-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Preliminary'.toFhirString,
  );

  /// final_
  static final ObservationStatus final_ = ObservationStatus._(
    validatedValue: 'final',
    system: 'http://hl7.org/fhir/ValueSet/observation-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Final'.toFhirString,
  );

  /// amended
  static final ObservationStatus amended = ObservationStatus._(
    validatedValue: 'amended',
    system: 'http://hl7.org/fhir/ValueSet/observation-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Amended'.toFhirString,
  );

  /// corrected
  static final ObservationStatus corrected = ObservationStatus._(
    validatedValue: 'corrected',
    system: 'http://hl7.org/fhir/ValueSet/observation-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Corrected'.toFhirString,
  );

  /// cancelled
  static final ObservationStatus cancelled = ObservationStatus._(
    validatedValue: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/observation-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Cancelled'.toFhirString,
  );

  /// entered_in_error
  static final ObservationStatus entered_in_error = ObservationStatus._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/observation-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// unknown
  static final ObservationStatus unknown = ObservationStatus._(
    validatedValue: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/observation-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unknown'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ObservationStatus elementOnly =
      ObservationStatus._(validatedValue: '');

  /// List of all enum-like values
  static final List<ObservationStatus> values = [
    registered,
    preliminary,
    final_,
    amended,
    corrected,
    cancelled,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  ObservationStatus clone() => ObservationStatus._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ObservationStatus withElement(Element? newElement) {
    return ObservationStatus._(
      validatedValue: value,
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
  ObservationStatus copyWith({
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
    return ObservationStatus._(
      validatedValue: newValue ?? value,
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
