// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The status of a guidance response.
class GuidanceResponseStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  GuidanceResponseStatus._({
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
  factory GuidanceResponseStatus(
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
    return GuidanceResponseStatus._(
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

  /// Create empty [GuidanceResponseStatus] with element only
  factory GuidanceResponseStatus.empty() =>
      GuidanceResponseStatus._(validatedValue: '');

  /// Factory constructor to create [GuidanceResponseStatus] from JSON.
  factory GuidanceResponseStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuidanceResponseStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GuidanceResponseStatus cannot be constructed from JSON.',
      );
    }
    return GuidanceResponseStatus._(validatedValue: value, element: element);
  }

  /// success
  static final GuidanceResponseStatus success = GuidanceResponseStatus._(
    validatedValue: 'success',
    system: 'http://hl7.org/fhir/ValueSet/guidance-response-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Success'.toFhirString,
  );

  /// data_requested
  static final GuidanceResponseStatus data_requested = GuidanceResponseStatus._(
    validatedValue: 'data-requested',
    system: 'http://hl7.org/fhir/ValueSet/guidance-response-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Data Requested'.toFhirString,
  );

  /// data_required
  static final GuidanceResponseStatus data_required = GuidanceResponseStatus._(
    validatedValue: 'data-required',
    system: 'http://hl7.org/fhir/ValueSet/guidance-response-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Data Required'.toFhirString,
  );

  /// in_progress
  static final GuidanceResponseStatus in_progress = GuidanceResponseStatus._(
    validatedValue: 'in-progress',
    system: 'http://hl7.org/fhir/ValueSet/guidance-response-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'In Progress'.toFhirString,
  );

  /// failure
  static final GuidanceResponseStatus failure = GuidanceResponseStatus._(
    validatedValue: 'failure',
    system: 'http://hl7.org/fhir/ValueSet/guidance-response-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Failure'.toFhirString,
  );

  /// entered_in_error
  static final GuidanceResponseStatus entered_in_error =
      GuidanceResponseStatus._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/guidance-response-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered In Error'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final GuidanceResponseStatus elementOnly =
      GuidanceResponseStatus._(validatedValue: '');

  /// List of all enum-like values
  static final List<GuidanceResponseStatus> values = [
    success,
    data_requested,
    data_required,
    in_progress,
    failure,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  GuidanceResponseStatus clone() => GuidanceResponseStatus._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  GuidanceResponseStatus withElement(Element? newElement) {
    return GuidanceResponseStatus._(validatedValue: value, element: newElement);
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
  GuidanceResponseStatus copyWith({
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
    return GuidanceResponseStatus._(
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
