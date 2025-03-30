// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// This value set contract specific codes for status.
class ContractResourcePublicationStatusCodesBuilder
    extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ContractResourcePublicationStatusCodesBuilder._({
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
  factory ContractResourcePublicationStatusCodesBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return ContractResourcePublicationStatusCodesBuilder._(
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

  /// Create empty [ContractResourcePublicationStatusCodesBuilder] with element only
  factory ContractResourcePublicationStatusCodesBuilder.empty() =>
      ContractResourcePublicationStatusCodesBuilder._(validatedValue: '');

  /// Factory constructor to create [ContractResourcePublicationStatusCodesBuilder]
  /// from JSON.
  factory ContractResourcePublicationStatusCodesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourcePublicationStatusCodesBuilder.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContractResourcePublicationStatusCodesBuilder cannot be constructed from JSON.',
      );
    }
    return ContractResourcePublicationStatusCodesBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// amended
  static ContractResourcePublicationStatusCodesBuilder amended =
      ContractResourcePublicationStatusCodesBuilder._(
    validatedValue: 'amended',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Amended'.toFhirStringBuilder,
  );

  /// appended
  static ContractResourcePublicationStatusCodesBuilder appended =
      ContractResourcePublicationStatusCodesBuilder._(
    validatedValue: 'appended',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Appended'.toFhirStringBuilder,
  );

  /// cancelled
  static ContractResourcePublicationStatusCodesBuilder cancelled =
      ContractResourcePublicationStatusCodesBuilder._(
    validatedValue: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Cancelled'.toFhirStringBuilder,
  );

  /// disputed
  static ContractResourcePublicationStatusCodesBuilder disputed =
      ContractResourcePublicationStatusCodesBuilder._(
    validatedValue: 'disputed',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Disputed'.toFhirStringBuilder,
  );

  /// entered_in_error
  static ContractResourcePublicationStatusCodesBuilder entered_in_error =
      ContractResourcePublicationStatusCodesBuilder._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// executable
  static ContractResourcePublicationStatusCodesBuilder executable =
      ContractResourcePublicationStatusCodesBuilder._(
    validatedValue: 'executable',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Executable'.toFhirStringBuilder,
  );

  /// executed
  static ContractResourcePublicationStatusCodesBuilder executed =
      ContractResourcePublicationStatusCodesBuilder._(
    validatedValue: 'executed',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Executed'.toFhirStringBuilder,
  );

  /// negotiable
  static ContractResourcePublicationStatusCodesBuilder negotiable =
      ContractResourcePublicationStatusCodesBuilder._(
    validatedValue: 'negotiable',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Negotiable'.toFhirStringBuilder,
  );

  /// offered
  static ContractResourcePublicationStatusCodesBuilder offered =
      ContractResourcePublicationStatusCodesBuilder._(
    validatedValue: 'offered',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Offered'.toFhirStringBuilder,
  );

  /// policy
  static ContractResourcePublicationStatusCodesBuilder policy =
      ContractResourcePublicationStatusCodesBuilder._(
    validatedValue: 'policy',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Policy'.toFhirStringBuilder,
  );

  /// rejected
  static ContractResourcePublicationStatusCodesBuilder rejected =
      ContractResourcePublicationStatusCodesBuilder._(
    validatedValue: 'rejected',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Rejected'.toFhirStringBuilder,
  );

  /// renewed
  static ContractResourcePublicationStatusCodesBuilder renewed =
      ContractResourcePublicationStatusCodesBuilder._(
    validatedValue: 'renewed',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Renewed'.toFhirStringBuilder,
  );

  /// revoked
  static ContractResourcePublicationStatusCodesBuilder revoked =
      ContractResourcePublicationStatusCodesBuilder._(
    validatedValue: 'revoked',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Revoked'.toFhirStringBuilder,
  );

  /// resolved
  static ContractResourcePublicationStatusCodesBuilder resolved =
      ContractResourcePublicationStatusCodesBuilder._(
    validatedValue: 'resolved',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Resolved'.toFhirStringBuilder,
  );

  /// terminated
  static ContractResourcePublicationStatusCodesBuilder terminated =
      ContractResourcePublicationStatusCodesBuilder._(
    validatedValue: 'terminated',
    system: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Terminated'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ContractResourcePublicationStatusCodesBuilder elementOnly =
      ContractResourcePublicationStatusCodesBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<ContractResourcePublicationStatusCodesBuilder> values = [
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
  ContractResourcePublicationStatusCodesBuilder clone() =>
      ContractResourcePublicationStatusCodesBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ContractResourcePublicationStatusCodesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ContractResourcePublicationStatusCodesBuilder._(
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
  ContractResourcePublicationStatusCodesBuilder copyWith({
    String? newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
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
    return ContractResourcePublicationStatusCodesBuilder._(
      validatedValue: newValue ?? value,
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
