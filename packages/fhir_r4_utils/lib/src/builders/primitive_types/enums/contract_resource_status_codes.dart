// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// This value set contract specific codes for status.
class ContractResourceStatusCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ContractResourceStatusCodesBuilder._({
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
  factory ContractResourceStatusCodesBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    return ContractResourceStatusCodesBuilder._(
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

  /// Create empty [ContractResourceStatusCodesBuilder] with element only
  factory ContractResourceStatusCodesBuilder.empty() =>
      ContractResourceStatusCodesBuilder._(valueString: '');

  /// Factory constructor to create [ContractResourceStatusCodesBuilder]
  /// from JSON.
  factory ContractResourceStatusCodesBuilder.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceStatusCodesBuilder.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContractResourceStatusCodesBuilder cannot be constructed from JSON.',
      );
    }
    return ContractResourceStatusCodesBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// amended
  static ContractResourceStatusCodesBuilder amended =
      ContractResourceStatusCodesBuilder._(
    valueString: 'amended',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Amended'.toFhirStringBuilder,
  );

  /// appended
  static ContractResourceStatusCodesBuilder appended =
      ContractResourceStatusCodesBuilder._(
    valueString: 'appended',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Appended'.toFhirStringBuilder,
  );

  /// cancelled
  static ContractResourceStatusCodesBuilder cancelled =
      ContractResourceStatusCodesBuilder._(
    valueString: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Cancelled'.toFhirStringBuilder,
  );

  /// disputed
  static ContractResourceStatusCodesBuilder disputed =
      ContractResourceStatusCodesBuilder._(
    valueString: 'disputed',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Disputed'.toFhirStringBuilder,
  );

  /// entered_in_error
  static ContractResourceStatusCodesBuilder entered_in_error =
      ContractResourceStatusCodesBuilder._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// executable
  static ContractResourceStatusCodesBuilder executable =
      ContractResourceStatusCodesBuilder._(
    valueString: 'executable',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Executable'.toFhirStringBuilder,
  );

  /// executed
  static ContractResourceStatusCodesBuilder executed =
      ContractResourceStatusCodesBuilder._(
    valueString: 'executed',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Executed'.toFhirStringBuilder,
  );

  /// negotiable
  static ContractResourceStatusCodesBuilder negotiable =
      ContractResourceStatusCodesBuilder._(
    valueString: 'negotiable',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Negotiable'.toFhirStringBuilder,
  );

  /// offered
  static ContractResourceStatusCodesBuilder offered =
      ContractResourceStatusCodesBuilder._(
    valueString: 'offered',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Offered'.toFhirStringBuilder,
  );

  /// policy
  static ContractResourceStatusCodesBuilder policy =
      ContractResourceStatusCodesBuilder._(
    valueString: 'policy',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Policy'.toFhirStringBuilder,
  );

  /// rejected
  static ContractResourceStatusCodesBuilder rejected =
      ContractResourceStatusCodesBuilder._(
    valueString: 'rejected',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Rejected'.toFhirStringBuilder,
  );

  /// renewed
  static ContractResourceStatusCodesBuilder renewed =
      ContractResourceStatusCodesBuilder._(
    valueString: 'renewed',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Renewed'.toFhirStringBuilder,
  );

  /// revoked
  static ContractResourceStatusCodesBuilder revoked =
      ContractResourceStatusCodesBuilder._(
    valueString: 'revoked',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Revoked'.toFhirStringBuilder,
  );

  /// resolved
  static ContractResourceStatusCodesBuilder resolved =
      ContractResourceStatusCodesBuilder._(
    valueString: 'resolved',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Resolved'.toFhirStringBuilder,
  );

  /// terminated
  static ContractResourceStatusCodesBuilder terminated =
      ContractResourceStatusCodesBuilder._(
    valueString: 'terminated',
    system: 'http://hl7.org/fhir/ValueSet/contract-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Terminated'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ContractResourceStatusCodesBuilder elementOnly =
      ContractResourceStatusCodesBuilder._(valueString: '');

  /// List of all enum-like values
  static List<ContractResourceStatusCodesBuilder> values = [
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
  ContractResourceStatusCodesBuilder clone() =>
      ContractResourceStatusCodesBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ContractResourceStatusCodesBuilder withElement(ElementBuilder? newElement) {
    return ContractResourceStatusCodesBuilder._(
        valueString: valueString, element: newElement);
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
  ContractResourceStatusCodesBuilder copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError(
          'Invalid input for ContractResourceStatusCodes: $newValue');
    }
    return ContractResourceStatusCodesBuilder._(
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
