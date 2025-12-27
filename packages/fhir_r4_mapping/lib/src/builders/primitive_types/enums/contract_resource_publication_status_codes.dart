part of '../primitive_types.dart';

/// Actual enum for ContractResourcePublicationStatusCodes
enum ContractResourcePublicationStatusCodesBuilderEnum {
  /// amended
  amended,

  /// appended
  appended,

  /// cancelled
  cancelled,

  /// disputed
  disputed,

  /// entered-in-error
  enteredInError,

  /// executable
  executable,

  /// executed
  executed,

  /// negotiable
  negotiable,

  /// offered
  offered,

  /// policy
  policy,

  /// rejected
  rejected,

  /// renewed
  renewed,

  /// revoked
  revoked,

  /// resolved
  resolved,

  /// terminated
  terminated,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ContractResourcePublicationStatusCodesBuilderEnum.amended:
        return 'amended';
      case ContractResourcePublicationStatusCodesBuilderEnum.appended:
        return 'appended';
      case ContractResourcePublicationStatusCodesBuilderEnum.cancelled:
        return 'cancelled';
      case ContractResourcePublicationStatusCodesBuilderEnum.disputed:
        return 'disputed';
      case ContractResourcePublicationStatusCodesBuilderEnum.enteredInError:
        return 'entered-in-error';
      case ContractResourcePublicationStatusCodesBuilderEnum.executable:
        return 'executable';
      case ContractResourcePublicationStatusCodesBuilderEnum.executed:
        return 'executed';
      case ContractResourcePublicationStatusCodesBuilderEnum.negotiable:
        return 'negotiable';
      case ContractResourcePublicationStatusCodesBuilderEnum.offered:
        return 'offered';
      case ContractResourcePublicationStatusCodesBuilderEnum.policy:
        return 'policy';
      case ContractResourcePublicationStatusCodesBuilderEnum.rejected:
        return 'rejected';
      case ContractResourcePublicationStatusCodesBuilderEnum.renewed:
        return 'renewed';
      case ContractResourcePublicationStatusCodesBuilderEnum.revoked:
        return 'revoked';
      case ContractResourcePublicationStatusCodesBuilderEnum.resolved:
        return 'resolved';
      case ContractResourcePublicationStatusCodesBuilderEnum.terminated:
        return 'terminated';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ContractResourcePublicationStatusCodesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ContractResourcePublicationStatusCodesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ContractResourcePublicationStatusCodesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'amended':
        return ContractResourcePublicationStatusCodesBuilderEnum.amended;
      case 'appended':
        return ContractResourcePublicationStatusCodesBuilderEnum.appended;
      case 'cancelled':
        return ContractResourcePublicationStatusCodesBuilderEnum.cancelled;
      case 'disputed':
        return ContractResourcePublicationStatusCodesBuilderEnum.disputed;
      case 'entered-in-error':
        return ContractResourcePublicationStatusCodesBuilderEnum.enteredInError;
      case 'executable':
        return ContractResourcePublicationStatusCodesBuilderEnum.executable;
      case 'executed':
        return ContractResourcePublicationStatusCodesBuilderEnum.executed;
      case 'negotiable':
        return ContractResourcePublicationStatusCodesBuilderEnum.negotiable;
      case 'offered':
        return ContractResourcePublicationStatusCodesBuilderEnum.offered;
      case 'policy':
        return ContractResourcePublicationStatusCodesBuilderEnum.policy;
      case 'rejected':
        return ContractResourcePublicationStatusCodesBuilderEnum.rejected;
      case 'renewed':
        return ContractResourcePublicationStatusCodesBuilderEnum.renewed;
      case 'revoked':
        return ContractResourcePublicationStatusCodesBuilderEnum.revoked;
      case 'resolved':
        return ContractResourcePublicationStatusCodesBuilderEnum.resolved;
      case 'terminated':
        return ContractResourcePublicationStatusCodesBuilderEnum.terminated;
    }
    return null;
  }
}

/// This value set contract specific codes for status.
class ContractResourcePublicationStatusCodesBuilder
    extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ContractResourcePublicationStatusCodesBuilder._({
    required super.valueString,
    this.valueEnum,
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
    final valueEnum =
        ContractResourcePublicationStatusCodesBuilderEnum.fromString(
      valueString,
    );
    return ContractResourcePublicationStatusCodesBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [ContractResourcePublicationStatusCodesBuilder]
  /// with element only
  factory ContractResourcePublicationStatusCodesBuilder.empty() =>
      ContractResourcePublicationStatusCodesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ContractResourcePublicationStatusCodesBuilder] from JSON.
  factory ContractResourcePublicationStatusCodesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourcePublicationStatusCodesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContractResourcePublicationStatusCodesBuilder cannot be constructed from JSON.',
      );
    }
    return ContractResourcePublicationStatusCodesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ContractResourcePublicationStatusCodesBuilder
  final ContractResourcePublicationStatusCodesBuilderEnum? valueEnum;

  /// amended
  static ContractResourcePublicationStatusCodesBuilder amended =
      ContractResourcePublicationStatusCodesBuilder._(
    valueString: 'amended',
    valueEnum: ContractResourcePublicationStatusCodesBuilderEnum.amended,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Amended',
    ),
  );

  /// appended
  static ContractResourcePublicationStatusCodesBuilder appended =
      ContractResourcePublicationStatusCodesBuilder._(
    valueString: 'appended',
    valueEnum: ContractResourcePublicationStatusCodesBuilderEnum.appended,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Appended',
    ),
  );

  /// cancelled
  static ContractResourcePublicationStatusCodesBuilder cancelled =
      ContractResourcePublicationStatusCodesBuilder._(
    valueString: 'cancelled',
    valueEnum: ContractResourcePublicationStatusCodesBuilderEnum.cancelled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Cancelled',
    ),
  );

  /// disputed
  static ContractResourcePublicationStatusCodesBuilder disputed =
      ContractResourcePublicationStatusCodesBuilder._(
    valueString: 'disputed',
    valueEnum: ContractResourcePublicationStatusCodesBuilderEnum.disputed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Disputed',
    ),
  );

  /// entered_in_error
  static ContractResourcePublicationStatusCodesBuilder enteredInError =
      ContractResourcePublicationStatusCodesBuilder._(
    valueString: 'entered-in-error',
    valueEnum: ContractResourcePublicationStatusCodesBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// executable
  static ContractResourcePublicationStatusCodesBuilder executable =
      ContractResourcePublicationStatusCodesBuilder._(
    valueString: 'executable',
    valueEnum: ContractResourcePublicationStatusCodesBuilderEnum.executable,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Executable',
    ),
  );

  /// executed
  static ContractResourcePublicationStatusCodesBuilder executed =
      ContractResourcePublicationStatusCodesBuilder._(
    valueString: 'executed',
    valueEnum: ContractResourcePublicationStatusCodesBuilderEnum.executed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Executed',
    ),
  );

  /// negotiable
  static ContractResourcePublicationStatusCodesBuilder negotiable =
      ContractResourcePublicationStatusCodesBuilder._(
    valueString: 'negotiable',
    valueEnum: ContractResourcePublicationStatusCodesBuilderEnum.negotiable,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Negotiable',
    ),
  );

  /// offered
  static ContractResourcePublicationStatusCodesBuilder offered =
      ContractResourcePublicationStatusCodesBuilder._(
    valueString: 'offered',
    valueEnum: ContractResourcePublicationStatusCodesBuilderEnum.offered,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Offered',
    ),
  );

  /// policy
  static ContractResourcePublicationStatusCodesBuilder policy =
      ContractResourcePublicationStatusCodesBuilder._(
    valueString: 'policy',
    valueEnum: ContractResourcePublicationStatusCodesBuilderEnum.policy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Policy',
    ),
  );

  /// rejected
  static ContractResourcePublicationStatusCodesBuilder rejected =
      ContractResourcePublicationStatusCodesBuilder._(
    valueString: 'rejected',
    valueEnum: ContractResourcePublicationStatusCodesBuilderEnum.rejected,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Rejected',
    ),
  );

  /// renewed
  static ContractResourcePublicationStatusCodesBuilder renewed =
      ContractResourcePublicationStatusCodesBuilder._(
    valueString: 'renewed',
    valueEnum: ContractResourcePublicationStatusCodesBuilderEnum.renewed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Renewed',
    ),
  );

  /// revoked
  static ContractResourcePublicationStatusCodesBuilder revoked =
      ContractResourcePublicationStatusCodesBuilder._(
    valueString: 'revoked',
    valueEnum: ContractResourcePublicationStatusCodesBuilderEnum.revoked,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Revoked',
    ),
  );

  /// resolved
  static ContractResourcePublicationStatusCodesBuilder resolved =
      ContractResourcePublicationStatusCodesBuilder._(
    valueString: 'resolved',
    valueEnum: ContractResourcePublicationStatusCodesBuilderEnum.resolved,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Resolved',
    ),
  );

  /// terminated
  static ContractResourcePublicationStatusCodesBuilder terminated =
      ContractResourcePublicationStatusCodesBuilder._(
    valueString: 'terminated',
    valueEnum: ContractResourcePublicationStatusCodesBuilderEnum.terminated,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Terminated',
    ),
  );

  /// For instances where an Element is present but not value
  static ContractResourcePublicationStatusCodesBuilder elementOnly =
      ContractResourcePublicationStatusCodesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ContractResourcePublicationStatusCodesBuilder> values = [
    amended,
    appended,
    cancelled,
    disputed,
    enteredInError,
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

  /// Returns the enum value with an element attached
  ContractResourcePublicationStatusCodesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ContractResourcePublicationStatusCodesBuilder._(
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
}
