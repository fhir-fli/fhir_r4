// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes providing the status/availability of a specimen.
class SpecimenStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  SpecimenStatus._({
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
  factory SpecimenStatus(
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
    return SpecimenStatus._(
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

  /// Create empty [SpecimenStatus] with element only
  factory SpecimenStatus.empty() => SpecimenStatus._(validatedValue: '');

  /// Factory constructor to create [SpecimenStatus] from JSON.
  factory SpecimenStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecimenStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SpecimenStatus cannot be constructed from JSON.',
      );
    }
    return SpecimenStatus._(
      validatedValue: value,
      element: element,
    );
  }

  /// available
  static final SpecimenStatus available = SpecimenStatus._(
    validatedValue: 'available',
    system: 'http://hl7.org/fhir/ValueSet/specimen-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Available'.toFhirString,
  );

  /// unavailable
  static final SpecimenStatus unavailable = SpecimenStatus._(
    validatedValue: 'unavailable',
    system: 'http://hl7.org/fhir/ValueSet/specimen-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unavailable'.toFhirString,
  );

  /// unsatisfactory
  static final SpecimenStatus unsatisfactory = SpecimenStatus._(
    validatedValue: 'unsatisfactory',
    system: 'http://hl7.org/fhir/ValueSet/specimen-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unsatisfactory'.toFhirString,
  );

  /// entered_in_error
  static final SpecimenStatus entered_in_error = SpecimenStatus._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/specimen-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final SpecimenStatus elementOnly =
      SpecimenStatus._(validatedValue: '');

  /// List of all enum-like values
  static final List<SpecimenStatus> values = [
    available,
    unavailable,
    unsatisfactory,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  SpecimenStatus clone() => SpecimenStatus._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SpecimenStatus withElement(Element? newElement) {
    return SpecimenStatus._(validatedValue: value, element: newElement);
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
  SpecimenStatus copyWith({
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
    return SpecimenStatus._(
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
