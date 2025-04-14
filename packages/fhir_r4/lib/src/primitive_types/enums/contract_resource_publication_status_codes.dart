// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ContractResourcePublicationStatusCodes
enum ContractResourcePublicationStatusCodesEnum {
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
      case ContractResourcePublicationStatusCodesEnum.amended:
        return 'amended';
      case ContractResourcePublicationStatusCodesEnum.appended:
        return 'appended';
      case ContractResourcePublicationStatusCodesEnum.cancelled:
        return 'cancelled';
      case ContractResourcePublicationStatusCodesEnum.disputed:
        return 'disputed';
      case ContractResourcePublicationStatusCodesEnum.enteredInError:
        return 'entered-in-error';
      case ContractResourcePublicationStatusCodesEnum.executable:
        return 'executable';
      case ContractResourcePublicationStatusCodesEnum.executed:
        return 'executed';
      case ContractResourcePublicationStatusCodesEnum.negotiable:
        return 'negotiable';
      case ContractResourcePublicationStatusCodesEnum.offered:
        return 'offered';
      case ContractResourcePublicationStatusCodesEnum.policy:
        return 'policy';
      case ContractResourcePublicationStatusCodesEnum.rejected:
        return 'rejected';
      case ContractResourcePublicationStatusCodesEnum.renewed:
        return 'renewed';
      case ContractResourcePublicationStatusCodesEnum.revoked:
        return 'revoked';
      case ContractResourcePublicationStatusCodesEnum.resolved:
        return 'resolved';
      case ContractResourcePublicationStatusCodesEnum.terminated:
        return 'terminated';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ContractResourcePublicationStatusCodesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ContractResourcePublicationStatusCodesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ContractResourcePublicationStatusCodesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'amended':
        return ContractResourcePublicationStatusCodesEnum.amended;
      case 'appended':
        return ContractResourcePublicationStatusCodesEnum.appended;
      case 'cancelled':
        return ContractResourcePublicationStatusCodesEnum.cancelled;
      case 'disputed':
        return ContractResourcePublicationStatusCodesEnum.disputed;
      case 'entered-in-error':
        return ContractResourcePublicationStatusCodesEnum.enteredInError;
      case 'executable':
        return ContractResourcePublicationStatusCodesEnum.executable;
      case 'executed':
        return ContractResourcePublicationStatusCodesEnum.executed;
      case 'negotiable':
        return ContractResourcePublicationStatusCodesEnum.negotiable;
      case 'offered':
        return ContractResourcePublicationStatusCodesEnum.offered;
      case 'policy':
        return ContractResourcePublicationStatusCodesEnum.policy;
      case 'rejected':
        return ContractResourcePublicationStatusCodesEnum.rejected;
      case 'renewed':
        return ContractResourcePublicationStatusCodesEnum.renewed;
      case 'revoked':
        return ContractResourcePublicationStatusCodesEnum.revoked;
      case 'resolved':
        return ContractResourcePublicationStatusCodesEnum.resolved;
      case 'terminated':
        return ContractResourcePublicationStatusCodesEnum.terminated;
    }
    return null;
  }
}

/// This value set contract specific codes for status.
class ContractResourcePublicationStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ContractResourcePublicationStatusCodes._({
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
  factory ContractResourcePublicationStatusCodes(
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
    final valueEnum =
        ContractResourcePublicationStatusCodesEnum.fromString(valueString);
    return ContractResourcePublicationStatusCodes._(
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

  /// Factory constructor to create [ContractResourcePublicationStatusCodes]
  /// from JSON.
  factory ContractResourcePublicationStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum =
        ContractResourcePublicationStatusCodesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourcePublicationStatusCodes._(
          valueString: null, element: element,);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContractResourcePublicationStatusCodes cannot be constructed from JSON.',
      );
    }
    return ContractResourcePublicationStatusCodes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ContractResourcePublicationStatusCodes
  final ContractResourcePublicationStatusCodesEnum? valueEnum;

  /// amended
  static const ContractResourcePublicationStatusCodes amended =
      ContractResourcePublicationStatusCodes._(
    valueString: 'amended',
    valueEnum: ContractResourcePublicationStatusCodesEnum.amended,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Amended',
    ),
  );

  /// appended
  static const ContractResourcePublicationStatusCodes appended =
      ContractResourcePublicationStatusCodes._(
    valueString: 'appended',
    valueEnum: ContractResourcePublicationStatusCodesEnum.appended,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Appended',
    ),
  );

  /// cancelled
  static const ContractResourcePublicationStatusCodes cancelled =
      ContractResourcePublicationStatusCodes._(
    valueString: 'cancelled',
    valueEnum: ContractResourcePublicationStatusCodesEnum.cancelled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Cancelled',
    ),
  );

  /// disputed
  static const ContractResourcePublicationStatusCodes disputed =
      ContractResourcePublicationStatusCodes._(
    valueString: 'disputed',
    valueEnum: ContractResourcePublicationStatusCodesEnum.disputed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Disputed',
    ),
  );

  /// entered_in_error
  static const ContractResourcePublicationStatusCodes enteredInError =
      ContractResourcePublicationStatusCodes._(
    valueString: 'entered-in-error',
    valueEnum: ContractResourcePublicationStatusCodesEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// executable
  static const ContractResourcePublicationStatusCodes executable =
      ContractResourcePublicationStatusCodes._(
    valueString: 'executable',
    valueEnum: ContractResourcePublicationStatusCodesEnum.executable,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Executable',
    ),
  );

  /// executed
  static const ContractResourcePublicationStatusCodes executed =
      ContractResourcePublicationStatusCodes._(
    valueString: 'executed',
    valueEnum: ContractResourcePublicationStatusCodesEnum.executed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Executed',
    ),
  );

  /// negotiable
  static const ContractResourcePublicationStatusCodes negotiable =
      ContractResourcePublicationStatusCodes._(
    valueString: 'negotiable',
    valueEnum: ContractResourcePublicationStatusCodesEnum.negotiable,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Negotiable',
    ),
  );

  /// offered
  static const ContractResourcePublicationStatusCodes offered =
      ContractResourcePublicationStatusCodes._(
    valueString: 'offered',
    valueEnum: ContractResourcePublicationStatusCodesEnum.offered,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Offered',
    ),
  );

  /// policy
  static const ContractResourcePublicationStatusCodes policy =
      ContractResourcePublicationStatusCodes._(
    valueString: 'policy',
    valueEnum: ContractResourcePublicationStatusCodesEnum.policy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Policy',
    ),
  );

  /// rejected
  static const ContractResourcePublicationStatusCodes rejected =
      ContractResourcePublicationStatusCodes._(
    valueString: 'rejected',
    valueEnum: ContractResourcePublicationStatusCodesEnum.rejected,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Rejected',
    ),
  );

  /// renewed
  static const ContractResourcePublicationStatusCodes renewed =
      ContractResourcePublicationStatusCodes._(
    valueString: 'renewed',
    valueEnum: ContractResourcePublicationStatusCodesEnum.renewed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Renewed',
    ),
  );

  /// revoked
  static const ContractResourcePublicationStatusCodes revoked =
      ContractResourcePublicationStatusCodes._(
    valueString: 'revoked',
    valueEnum: ContractResourcePublicationStatusCodesEnum.revoked,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Revoked',
    ),
  );

  /// resolved
  static const ContractResourcePublicationStatusCodes resolved =
      ContractResourcePublicationStatusCodes._(
    valueString: 'resolved',
    valueEnum: ContractResourcePublicationStatusCodesEnum.resolved,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Resolved',
    ),
  );

  /// terminated
  static const ContractResourcePublicationStatusCodes terminated =
      ContractResourcePublicationStatusCodes._(
    valueString: 'terminated',
    valueEnum: ContractResourcePublicationStatusCodesEnum.terminated,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contract-publicationstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Terminated',
    ),
  );

  /// List of all enum-like values
  static final List<ContractResourcePublicationStatusCodes> values = [
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
  ContractResourcePublicationStatusCodes withElement(Element? newElement) {
    return ContractResourcePublicationStatusCodes._(
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
  ContractResourcePublicationStatusCodes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ContractResourcePublicationStatusCodesCopyWithImpl<
          ContractResourcePublicationStatusCodes>
      get copyWith => ContractResourcePublicationStatusCodesCopyWithImpl<
              ContractResourcePublicationStatusCodes>(
            this,
            (v) => v as ContractResourcePublicationStatusCodes,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ContractResourcePublicationStatusCodesCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ContractResourcePublicationStatusCodesCopyWithImpl(super._value, super._then);

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
      ContractResourcePublicationStatusCodes(
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
