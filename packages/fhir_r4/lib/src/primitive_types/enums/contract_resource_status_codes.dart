part of '../primitive_types.dart';

/// Actual enum for ContractResourceStatusCodes
enum ContractResourceStatusCodesEnum {
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
      case ContractResourceStatusCodesEnum.amended:
        return 'amended';
      case ContractResourceStatusCodesEnum.appended:
        return 'appended';
      case ContractResourceStatusCodesEnum.cancelled:
        return 'cancelled';
      case ContractResourceStatusCodesEnum.disputed:
        return 'disputed';
      case ContractResourceStatusCodesEnum.enteredInError:
        return 'entered-in-error';
      case ContractResourceStatusCodesEnum.executable:
        return 'executable';
      case ContractResourceStatusCodesEnum.executed:
        return 'executed';
      case ContractResourceStatusCodesEnum.negotiable:
        return 'negotiable';
      case ContractResourceStatusCodesEnum.offered:
        return 'offered';
      case ContractResourceStatusCodesEnum.policy:
        return 'policy';
      case ContractResourceStatusCodesEnum.rejected:
        return 'rejected';
      case ContractResourceStatusCodesEnum.renewed:
        return 'renewed';
      case ContractResourceStatusCodesEnum.revoked:
        return 'revoked';
      case ContractResourceStatusCodesEnum.resolved:
        return 'resolved';
      case ContractResourceStatusCodesEnum.terminated:
        return 'terminated';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ContractResourceStatusCodesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ContractResourceStatusCodesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ContractResourceStatusCodesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'amended':
        return ContractResourceStatusCodesEnum.amended;
      case 'appended':
        return ContractResourceStatusCodesEnum.appended;
      case 'cancelled':
        return ContractResourceStatusCodesEnum.cancelled;
      case 'disputed':
        return ContractResourceStatusCodesEnum.disputed;
      case 'entered-in-error':
        return ContractResourceStatusCodesEnum.enteredInError;
      case 'executable':
        return ContractResourceStatusCodesEnum.executable;
      case 'executed':
        return ContractResourceStatusCodesEnum.executed;
      case 'negotiable':
        return ContractResourceStatusCodesEnum.negotiable;
      case 'offered':
        return ContractResourceStatusCodesEnum.offered;
      case 'policy':
        return ContractResourceStatusCodesEnum.policy;
      case 'rejected':
        return ContractResourceStatusCodesEnum.rejected;
      case 'renewed':
        return ContractResourceStatusCodesEnum.renewed;
      case 'revoked':
        return ContractResourceStatusCodesEnum.revoked;
      case 'resolved':
        return ContractResourceStatusCodesEnum.resolved;
      case 'terminated':
        return ContractResourceStatusCodesEnum.terminated;
    }
    return null;
  }
}

/// This value set contract specific codes for status.
class ContractResourceStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ContractResourceStatusCodes._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory ContractResourceStatusCodes(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = ContractResourceStatusCodesEnum.fromString(valueString);
    return ContractResourceStatusCodes._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [ContractResourceStatusCodes]
  /// from JSON.
  factory ContractResourceStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ContractResourceStatusCodesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceStatusCodes._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContractResourceStatusCodes cannot be constructed from JSON.',
      );
    }
    return ContractResourceStatusCodes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ContractResourceStatusCodes
  final ContractResourceStatusCodesEnum? valueEnum;

  /// amended
  static const ContractResourceStatusCodes amended =
      ContractResourceStatusCodes._(
    valueString: 'amended',
    valueEnum: ContractResourceStatusCodesEnum.amended,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Amended',
    ),
  );

  /// appended
  static const ContractResourceStatusCodes appended =
      ContractResourceStatusCodes._(
    valueString: 'appended',
    valueEnum: ContractResourceStatusCodesEnum.appended,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Appended',
    ),
  );

  /// cancelled
  static const ContractResourceStatusCodes cancelled =
      ContractResourceStatusCodes._(
    valueString: 'cancelled',
    valueEnum: ContractResourceStatusCodesEnum.cancelled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Cancelled',
    ),
  );

  /// disputed
  static const ContractResourceStatusCodes disputed =
      ContractResourceStatusCodes._(
    valueString: 'disputed',
    valueEnum: ContractResourceStatusCodesEnum.disputed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Disputed',
    ),
  );

  /// entered_in_error
  static const ContractResourceStatusCodes enteredInError =
      ContractResourceStatusCodes._(
    valueString: 'entered-in-error',
    valueEnum: ContractResourceStatusCodesEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// executable
  static const ContractResourceStatusCodes executable =
      ContractResourceStatusCodes._(
    valueString: 'executable',
    valueEnum: ContractResourceStatusCodesEnum.executable,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Executable',
    ),
  );

  /// executed
  static const ContractResourceStatusCodes executed =
      ContractResourceStatusCodes._(
    valueString: 'executed',
    valueEnum: ContractResourceStatusCodesEnum.executed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Executed',
    ),
  );

  /// negotiable
  static const ContractResourceStatusCodes negotiable =
      ContractResourceStatusCodes._(
    valueString: 'negotiable',
    valueEnum: ContractResourceStatusCodesEnum.negotiable,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Negotiable',
    ),
  );

  /// offered
  static const ContractResourceStatusCodes offered =
      ContractResourceStatusCodes._(
    valueString: 'offered',
    valueEnum: ContractResourceStatusCodesEnum.offered,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Offered',
    ),
  );

  /// policy
  static const ContractResourceStatusCodes policy =
      ContractResourceStatusCodes._(
    valueString: 'policy',
    valueEnum: ContractResourceStatusCodesEnum.policy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Policy',
    ),
  );

  /// rejected
  static const ContractResourceStatusCodes rejected =
      ContractResourceStatusCodes._(
    valueString: 'rejected',
    valueEnum: ContractResourceStatusCodesEnum.rejected,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Rejected',
    ),
  );

  /// renewed
  static const ContractResourceStatusCodes renewed =
      ContractResourceStatusCodes._(
    valueString: 'renewed',
    valueEnum: ContractResourceStatusCodesEnum.renewed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Renewed',
    ),
  );

  /// revoked
  static const ContractResourceStatusCodes revoked =
      ContractResourceStatusCodes._(
    valueString: 'revoked',
    valueEnum: ContractResourceStatusCodesEnum.revoked,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Revoked',
    ),
  );

  /// resolved
  static const ContractResourceStatusCodes resolved =
      ContractResourceStatusCodes._(
    valueString: 'resolved',
    valueEnum: ContractResourceStatusCodesEnum.resolved,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Resolved',
    ),
  );

  /// terminated
  static const ContractResourceStatusCodes terminated =
      ContractResourceStatusCodes._(
    valueString: 'terminated',
    valueEnum: ContractResourceStatusCodesEnum.terminated,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Terminated',
    ),
  );

  /// List of all enum-like values
  static final List<ContractResourceStatusCodes> values = [
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
  ContractResourceStatusCodes withElement(Element? newElement) {
    return ContractResourceStatusCodes._(
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

  @override
  ContractResourceStatusCodes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ContractResourceStatusCodesCopyWithImpl<ContractResourceStatusCodes>
      get copyWith =>
          ContractResourceStatusCodesCopyWithImpl<ContractResourceStatusCodes>(
            this,
            (v) => v as ContractResourceStatusCodes,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ContractResourceStatusCodesCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ContractResourceStatusCodesCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      ContractResourceStatusCodes(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
