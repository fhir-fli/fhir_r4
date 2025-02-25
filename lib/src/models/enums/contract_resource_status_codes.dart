// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for status.
class ContractResourceStatusCodes extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  ContractResourceStatusCodes._(
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

  /// Create empty [ContractResourceStatusCodes] with element only
  factory ContractResourceStatusCodes.empty() =>
      ContractResourceStatusCodes._('');

  /// Factory constructor to create [ContractResourceStatusCodes] from JSON.
  factory ContractResourceStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceStatusCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContractResourceStatusCodes cannot be constructed from JSON.',
      );
    }
    return ContractResourceStatusCodes._(
      value,
      element: element,
    );
  }

  /// amended
  static final ContractResourceStatusCodes amended =
      ContractResourceStatusCodes._(
    'amended',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Amended'.toFhirString,
  );

  /// appended
  static final ContractResourceStatusCodes appended =
      ContractResourceStatusCodes._(
    'appended',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Appended'.toFhirString,
  );

  /// cancelled
  static final ContractResourceStatusCodes cancelled =
      ContractResourceStatusCodes._(
    'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Cancelled'.toFhirString,
  );

  /// disputed
  static final ContractResourceStatusCodes disputed =
      ContractResourceStatusCodes._(
    'disputed',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Disputed'.toFhirString,
  );

  /// entered_in_error
  static final ContractResourceStatusCodes entered_in_error =
      ContractResourceStatusCodes._(
    'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// executable
  static final ContractResourceStatusCodes executable =
      ContractResourceStatusCodes._(
    'executable',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Executable'.toFhirString,
  );

  /// executed
  static final ContractResourceStatusCodes executed =
      ContractResourceStatusCodes._(
    'executed',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Executed'.toFhirString,
  );

  /// negotiable
  static final ContractResourceStatusCodes negotiable =
      ContractResourceStatusCodes._(
    'negotiable',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Negotiable'.toFhirString,
  );

  /// offered
  static final ContractResourceStatusCodes offered =
      ContractResourceStatusCodes._(
    'offered',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Offered'.toFhirString,
  );

  /// policy
  static final ContractResourceStatusCodes policy =
      ContractResourceStatusCodes._(
    'policy',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Policy'.toFhirString,
  );

  /// rejected
  static final ContractResourceStatusCodes rejected =
      ContractResourceStatusCodes._(
    'rejected',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Rejected'.toFhirString,
  );

  /// renewed
  static final ContractResourceStatusCodes renewed =
      ContractResourceStatusCodes._(
    'renewed',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Renewed'.toFhirString,
  );

  /// revoked
  static final ContractResourceStatusCodes revoked =
      ContractResourceStatusCodes._(
    'revoked',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Revoked'.toFhirString,
  );

  /// resolved
  static final ContractResourceStatusCodes resolved =
      ContractResourceStatusCodes._(
    'resolved',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Resolved'.toFhirString,
  );

  /// terminated
  static final ContractResourceStatusCodes terminated =
      ContractResourceStatusCodes._(
    'terminated',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Terminated'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final ContractResourceStatusCodes elementOnly =
      ContractResourceStatusCodes._('');

  /// List of all enum-like values
  static final List<ContractResourceStatusCodes> values = [
    amended,
    appended,
    cancelled,
    disputed,
    entered_in_error,
    executable,
    executed,
    negotiable,
    offered,
    policy,
    rejected,
    renewed,
    revoked,
    resolved,
    terminated,
  ];

  /// Clones the current instance
  @override
  ContractResourceStatusCodes clone() => ContractResourceStatusCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ContractResourceStatusCodes withElement(Element? newElement) {
    return ContractResourceStatusCodes._(
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
  ContractResourceStatusCodes copyWith({
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
    return ContractResourceStatusCodes._(
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
