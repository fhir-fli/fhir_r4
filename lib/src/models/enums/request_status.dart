// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Codes identifying the lifecycle stage of a request.
class RequestStatus extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  RequestStatus._(
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

  /// Create empty [RequestStatus] with element only
  factory RequestStatus.empty() => RequestStatus._('');

  /// Factory constructor to create [RequestStatus] from JSON.
  factory RequestStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RequestStatus cannot be constructed from JSON.',
      );
    }
    return RequestStatus._(
      value,
      element: element,
    );
  }

  /// draft
  static final RequestStatus draft = RequestStatus._(
    'draft',
    system: 'http://hl7.org/fhir/ValueSet/request-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Draft'.toFhirString,
  );

  /// active
  static final RequestStatus active = RequestStatus._(
    'active',
    system: 'http://hl7.org/fhir/ValueSet/request-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Active'.toFhirString,
  );

  /// on_hold
  static final RequestStatus on_hold = RequestStatus._(
    'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/request-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'On Hold'.toFhirString,
  );

  /// revoked
  static final RequestStatus revoked = RequestStatus._(
    'revoked',
    system: 'http://hl7.org/fhir/ValueSet/request-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Revoked'.toFhirString,
  );

  /// completed
  static final RequestStatus completed = RequestStatus._(
    'completed',
    system: 'http://hl7.org/fhir/ValueSet/request-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Completed'.toFhirString,
  );

  /// entered_in_error
  static final RequestStatus entered_in_error = RequestStatus._(
    'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/request-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// unknown
  static final RequestStatus unknown = RequestStatus._(
    'unknown',
    system: 'http://hl7.org/fhir/ValueSet/request-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unknown'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final RequestStatus elementOnly = RequestStatus._('');

  /// List of all enum-like values
  static final List<RequestStatus> values = [
    draft,
    active,
    on_hold,
    revoked,
    completed,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  RequestStatus clone() => RequestStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  RequestStatus withElement(Element? newElement) {
    return RequestStatus._(
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
  RequestStatus copyWith({
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
    return RequestStatus._(
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
