// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// This value set contract specific codes for status.
class ContractResourcePublicationStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ContractResourcePublicationStatusCodes._({
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
  factory ContractResourcePublicationStatusCodes(
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
    return ContractResourcePublicationStatusCodes._(
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

  /// Create empty [ContractResourcePublicationStatusCodes] with element only
  factory ContractResourcePublicationStatusCodes.empty() =>
      ContractResourcePublicationStatusCodes._(validatedValue: '');

  /// Factory constructor to create [ContractResourcePublicationStatusCodes] from JSON.
  factory ContractResourcePublicationStatusCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourcePublicationStatusCodes.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContractResourcePublicationStatusCodes cannot be constructed from JSON.',
      );
    }
    return ContractResourcePublicationStatusCodes._(
      validatedValue: value,
      element: element,
    );
  }

  /// amended
  static final ContractResourcePublicationStatusCodes amended =
      ContractResourcePublicationStatusCodes._(
    validatedValue: 'amended',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Amended'.toFhirString,
  );

  /// appended
  static final ContractResourcePublicationStatusCodes appended =
      ContractResourcePublicationStatusCodes._(
    validatedValue: 'appended',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Appended'.toFhirString,
  );

  /// cancelled
  static final ContractResourcePublicationStatusCodes cancelled =
      ContractResourcePublicationStatusCodes._(
    validatedValue: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Cancelled'.toFhirString,
  );

  /// disputed
  static final ContractResourcePublicationStatusCodes disputed =
      ContractResourcePublicationStatusCodes._(
    validatedValue: 'disputed',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Disputed'.toFhirString,
  );

  /// entered_in_error
  static final ContractResourcePublicationStatusCodes entered_in_error =
      ContractResourcePublicationStatusCodes._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// executable
  static final ContractResourcePublicationStatusCodes executable =
      ContractResourcePublicationStatusCodes._(
    validatedValue: 'executable',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Executable'.toFhirString,
  );

  /// executed
  static final ContractResourcePublicationStatusCodes executed =
      ContractResourcePublicationStatusCodes._(
    validatedValue: 'executed',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Executed'.toFhirString,
  );

  /// negotiable
  static final ContractResourcePublicationStatusCodes negotiable =
      ContractResourcePublicationStatusCodes._(
    validatedValue: 'negotiable',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Negotiable'.toFhirString,
  );

  /// offered
  static final ContractResourcePublicationStatusCodes offered =
      ContractResourcePublicationStatusCodes._(
    validatedValue: 'offered',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Offered'.toFhirString,
  );

  /// policy
  static final ContractResourcePublicationStatusCodes policy =
      ContractResourcePublicationStatusCodes._(
    validatedValue: 'policy',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Policy'.toFhirString,
  );

  /// rejected
  static final ContractResourcePublicationStatusCodes rejected =
      ContractResourcePublicationStatusCodes._(
    validatedValue: 'rejected',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Rejected'.toFhirString,
  );

  /// renewed
  static final ContractResourcePublicationStatusCodes renewed =
      ContractResourcePublicationStatusCodes._(
    validatedValue: 'renewed',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Renewed'.toFhirString,
  );

  /// revoked
  static final ContractResourcePublicationStatusCodes revoked =
      ContractResourcePublicationStatusCodes._(
    validatedValue: 'revoked',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Revoked'.toFhirString,
  );

  /// resolved
  static final ContractResourcePublicationStatusCodes resolved =
      ContractResourcePublicationStatusCodes._(
    validatedValue: 'resolved',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Resolved'.toFhirString,
  );

  /// terminated
  static final ContractResourcePublicationStatusCodes terminated =
      ContractResourcePublicationStatusCodes._(
    validatedValue: 'terminated',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Terminated'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ContractResourcePublicationStatusCodes elementOnly =
      ContractResourcePublicationStatusCodes._(validatedValue: '');

  /// List of all enum-like values
  static final List<ContractResourcePublicationStatusCodes> values = [
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
  ContractResourcePublicationStatusCodes clone() =>
      ContractResourcePublicationStatusCodes._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ContractResourcePublicationStatusCodes withElement(Element? newElement) {
    return ContractResourcePublicationStatusCodes._(
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
  ContractResourcePublicationStatusCodes copyWith({
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
    return ContractResourcePublicationStatusCodes._(
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
