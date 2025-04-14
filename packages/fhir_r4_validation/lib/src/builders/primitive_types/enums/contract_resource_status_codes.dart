// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ContractResourceStatusCodes
enum ContractResourceStatusCodesBuilderEnum {
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
      case ContractResourceStatusCodesBuilderEnum.amended:
        return 'amended';
      case ContractResourceStatusCodesBuilderEnum.appended:
        return 'appended';
      case ContractResourceStatusCodesBuilderEnum.cancelled:
        return 'cancelled';
      case ContractResourceStatusCodesBuilderEnum.disputed:
        return 'disputed';
      case ContractResourceStatusCodesBuilderEnum.enteredInError:
        return 'entered-in-error';
      case ContractResourceStatusCodesBuilderEnum.executable:
        return 'executable';
      case ContractResourceStatusCodesBuilderEnum.executed:
        return 'executed';
      case ContractResourceStatusCodesBuilderEnum.negotiable:
        return 'negotiable';
      case ContractResourceStatusCodesBuilderEnum.offered:
        return 'offered';
      case ContractResourceStatusCodesBuilderEnum.policy:
        return 'policy';
      case ContractResourceStatusCodesBuilderEnum.rejected:
        return 'rejected';
      case ContractResourceStatusCodesBuilderEnum.renewed:
        return 'renewed';
      case ContractResourceStatusCodesBuilderEnum.revoked:
        return 'revoked';
      case ContractResourceStatusCodesBuilderEnum.resolved:
        return 'resolved';
      case ContractResourceStatusCodesBuilderEnum.terminated:
        return 'terminated';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ContractResourceStatusCodesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ContractResourceStatusCodesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ContractResourceStatusCodesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'amended':
        return ContractResourceStatusCodesBuilderEnum.amended;
      case 'appended':
        return ContractResourceStatusCodesBuilderEnum.appended;
      case 'cancelled':
        return ContractResourceStatusCodesBuilderEnum.cancelled;
      case 'disputed':
        return ContractResourceStatusCodesBuilderEnum.disputed;
      case 'entered-in-error':
        return ContractResourceStatusCodesBuilderEnum.enteredInError;
      case 'executable':
        return ContractResourceStatusCodesBuilderEnum.executable;
      case 'executed':
        return ContractResourceStatusCodesBuilderEnum.executed;
      case 'negotiable':
        return ContractResourceStatusCodesBuilderEnum.negotiable;
      case 'offered':
        return ContractResourceStatusCodesBuilderEnum.offered;
      case 'policy':
        return ContractResourceStatusCodesBuilderEnum.policy;
      case 'rejected':
        return ContractResourceStatusCodesBuilderEnum.rejected;
      case 'renewed':
        return ContractResourceStatusCodesBuilderEnum.renewed;
      case 'revoked':
        return ContractResourceStatusCodesBuilderEnum.revoked;
      case 'resolved':
        return ContractResourceStatusCodesBuilderEnum.resolved;
      case 'terminated':
        return ContractResourceStatusCodesBuilderEnum.terminated;
    }
    return null;
  }
}

/// This value set contract specific codes for status.
class ContractResourceStatusCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ContractResourceStatusCodesBuilder._({
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
    final valueEnum = ContractResourceStatusCodesBuilderEnum.fromString(
      valueString,
    );
    return ContractResourceStatusCodesBuilder._(
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

  /// Create empty [ContractResourceStatusCodesBuilder]
  /// with element only
  factory ContractResourceStatusCodesBuilder.empty() =>
      ContractResourceStatusCodesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ContractResourceStatusCodesBuilder] from JSON.
  factory ContractResourceStatusCodesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceStatusCodesBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for ContractResourceStatusCodesBuilder
  final ContractResourceStatusCodesBuilderEnum? valueEnum;

  /// amended
  static ContractResourceStatusCodesBuilder amended =
      ContractResourceStatusCodesBuilder._(
    valueString: 'amended',
    valueEnum: ContractResourceStatusCodesBuilderEnum.amended,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Amended',
    ),
  );

  /// appended
  static ContractResourceStatusCodesBuilder appended =
      ContractResourceStatusCodesBuilder._(
    valueString: 'appended',
    valueEnum: ContractResourceStatusCodesBuilderEnum.appended,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Appended',
    ),
  );

  /// cancelled
  static ContractResourceStatusCodesBuilder cancelled =
      ContractResourceStatusCodesBuilder._(
    valueString: 'cancelled',
    valueEnum: ContractResourceStatusCodesBuilderEnum.cancelled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Cancelled',
    ),
  );

  /// disputed
  static ContractResourceStatusCodesBuilder disputed =
      ContractResourceStatusCodesBuilder._(
    valueString: 'disputed',
    valueEnum: ContractResourceStatusCodesBuilderEnum.disputed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Disputed',
    ),
  );

  /// entered_in_error
  static ContractResourceStatusCodesBuilder enteredInError =
      ContractResourceStatusCodesBuilder._(
    valueString: 'entered-in-error',
    valueEnum: ContractResourceStatusCodesBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// executable
  static ContractResourceStatusCodesBuilder executable =
      ContractResourceStatusCodesBuilder._(
    valueString: 'executable',
    valueEnum: ContractResourceStatusCodesBuilderEnum.executable,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Executable',
    ),
  );

  /// executed
  static ContractResourceStatusCodesBuilder executed =
      ContractResourceStatusCodesBuilder._(
    valueString: 'executed',
    valueEnum: ContractResourceStatusCodesBuilderEnum.executed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Executed',
    ),
  );

  /// negotiable
  static ContractResourceStatusCodesBuilder negotiable =
      ContractResourceStatusCodesBuilder._(
    valueString: 'negotiable',
    valueEnum: ContractResourceStatusCodesBuilderEnum.negotiable,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Negotiable',
    ),
  );

  /// offered
  static ContractResourceStatusCodesBuilder offered =
      ContractResourceStatusCodesBuilder._(
    valueString: 'offered',
    valueEnum: ContractResourceStatusCodesBuilderEnum.offered,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Offered',
    ),
  );

  /// policy
  static ContractResourceStatusCodesBuilder policy =
      ContractResourceStatusCodesBuilder._(
    valueString: 'policy',
    valueEnum: ContractResourceStatusCodesBuilderEnum.policy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Policy',
    ),
  );

  /// rejected
  static ContractResourceStatusCodesBuilder rejected =
      ContractResourceStatusCodesBuilder._(
    valueString: 'rejected',
    valueEnum: ContractResourceStatusCodesBuilderEnum.rejected,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Rejected',
    ),
  );

  /// renewed
  static ContractResourceStatusCodesBuilder renewed =
      ContractResourceStatusCodesBuilder._(
    valueString: 'renewed',
    valueEnum: ContractResourceStatusCodesBuilderEnum.renewed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Renewed',
    ),
  );

  /// revoked
  static ContractResourceStatusCodesBuilder revoked =
      ContractResourceStatusCodesBuilder._(
    valueString: 'revoked',
    valueEnum: ContractResourceStatusCodesBuilderEnum.revoked,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Revoked',
    ),
  );

  /// resolved
  static ContractResourceStatusCodesBuilder resolved =
      ContractResourceStatusCodesBuilder._(
    valueString: 'resolved',
    valueEnum: ContractResourceStatusCodesBuilderEnum.resolved,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Resolved',
    ),
  );

  /// terminated
  static ContractResourceStatusCodesBuilder terminated =
      ContractResourceStatusCodesBuilder._(
    valueString: 'terminated',
    valueEnum: ContractResourceStatusCodesBuilderEnum.terminated,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Terminated',
    ),
  );

  /// For instances where an Element is present but not value
  static ContractResourceStatusCodesBuilder elementOnly =
      ContractResourceStatusCodesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ContractResourceStatusCodesBuilder> values = [
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
  ContractResourceStatusCodesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ContractResourceStatusCodesBuilder._(
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
