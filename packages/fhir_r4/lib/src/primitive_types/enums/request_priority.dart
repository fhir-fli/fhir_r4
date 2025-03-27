// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Identifies the level of importance to be assigned to actioning the
/// request.
class RequestPriority extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  RequestPriority._({
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
  factory RequestPriority(
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
    return RequestPriority._(
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

  /// Create empty [RequestPriority] with element only
  factory RequestPriority.empty() => RequestPriority._(validatedValue: '');

  /// Factory constructor to create [RequestPriority] from JSON.
  factory RequestPriority.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestPriority.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RequestPriority cannot be constructed from JSON.',
      );
    }
    return RequestPriority._(
      validatedValue: value,
      element: element,
    );
  }

  /// routine
  static final RequestPriority routine = RequestPriority._(
    validatedValue: 'routine',
    system: 'http://hl7.org/fhir/ValueSet/request-priority'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Routine'.toFhirString,
  );

  /// urgent
  static final RequestPriority urgent = RequestPriority._(
    validatedValue: 'urgent',
    system: 'http://hl7.org/fhir/ValueSet/request-priority'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Urgent'.toFhirString,
  );

  /// asap
  static final RequestPriority asap = RequestPriority._(
    validatedValue: 'asap',
    system: 'http://hl7.org/fhir/ValueSet/request-priority'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ASAP'.toFhirString,
  );

  /// stat
  static final RequestPriority stat = RequestPriority._(
    validatedValue: 'stat',
    system: 'http://hl7.org/fhir/ValueSet/request-priority'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'STAT'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final RequestPriority elementOnly =
      RequestPriority._(validatedValue: '');

  /// List of all enum-like values
  static final List<RequestPriority> values = [
    routine,
    urgent,
    asap,
    stat,
  ];

  /// Clones the current instance
  @override
  RequestPriority clone() => RequestPriority._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  RequestPriority withElement(Element? newElement) {
    return RequestPriority._(validatedValue: value, element: newElement);
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
  RequestPriority copyWith({
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
    return RequestPriority._(
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
