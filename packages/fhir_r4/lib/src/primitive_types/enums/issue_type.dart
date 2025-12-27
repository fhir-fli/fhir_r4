part of '../primitive_types.dart';

/// Actual enum for IssueType
enum IssueTypeEnum {
  /// invalid
  invalid,

  /// structure
  structure,

  /// required
  required_,

  /// value
  value_,

  /// invariant
  invariant,

  /// security
  security,

  /// login
  login,

  /// unknown
  unknown,

  /// expired
  expired,

  /// forbidden
  forbidden,

  /// suppressed
  suppressed,

  /// processing
  processing,

  /// not-supported
  notSupported,

  /// duplicate
  duplicate,

  /// multiple-matches
  multipleMatches,

  /// not-found
  notFound,

  /// deleted
  deleted,

  /// too-long
  tooLong,

  /// code-invalid
  codeInvalid,

  /// extension
  extensionValue,

  /// too-costly
  tooCostly,

  /// business-rule
  businessRule,

  /// conflict
  conflict,

  /// transient
  transient,

  /// lock-error
  lockError,

  /// no-store
  noStore,

  /// exception
  exception,

  /// timeout
  timeout,

  /// incomplete
  incomplete,

  /// throttled
  throttled,

  /// informational
  informational,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case IssueTypeEnum.invalid:
        return 'invalid';
      case IssueTypeEnum.structure:
        return 'structure';
      case IssueTypeEnum.required_:
        return 'required';
      case IssueTypeEnum.value_:
        return 'value';
      case IssueTypeEnum.invariant:
        return 'invariant';
      case IssueTypeEnum.security:
        return 'security';
      case IssueTypeEnum.login:
        return 'login';
      case IssueTypeEnum.unknown:
        return 'unknown';
      case IssueTypeEnum.expired:
        return 'expired';
      case IssueTypeEnum.forbidden:
        return 'forbidden';
      case IssueTypeEnum.suppressed:
        return 'suppressed';
      case IssueTypeEnum.processing:
        return 'processing';
      case IssueTypeEnum.notSupported:
        return 'not-supported';
      case IssueTypeEnum.duplicate:
        return 'duplicate';
      case IssueTypeEnum.multipleMatches:
        return 'multiple-matches';
      case IssueTypeEnum.notFound:
        return 'not-found';
      case IssueTypeEnum.deleted:
        return 'deleted';
      case IssueTypeEnum.tooLong:
        return 'too-long';
      case IssueTypeEnum.codeInvalid:
        return 'code-invalid';
      case IssueTypeEnum.extensionValue:
        return 'extension';
      case IssueTypeEnum.tooCostly:
        return 'too-costly';
      case IssueTypeEnum.businessRule:
        return 'business-rule';
      case IssueTypeEnum.conflict:
        return 'conflict';
      case IssueTypeEnum.transient:
        return 'transient';
      case IssueTypeEnum.lockError:
        return 'lock-error';
      case IssueTypeEnum.noStore:
        return 'no-store';
      case IssueTypeEnum.exception:
        return 'exception';
      case IssueTypeEnum.timeout:
        return 'timeout';
      case IssueTypeEnum.incomplete:
        return 'incomplete';
      case IssueTypeEnum.throttled:
        return 'throttled';
      case IssueTypeEnum.informational:
        return 'informational';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static IssueTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return IssueTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static IssueTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'invalid':
        return IssueTypeEnum.invalid;
      case 'structure':
        return IssueTypeEnum.structure;
      case 'required':
        return IssueTypeEnum.required_;
      case 'value':
        return IssueTypeEnum.value_;
      case 'invariant':
        return IssueTypeEnum.invariant;
      case 'security':
        return IssueTypeEnum.security;
      case 'login':
        return IssueTypeEnum.login;
      case 'unknown':
        return IssueTypeEnum.unknown;
      case 'expired':
        return IssueTypeEnum.expired;
      case 'forbidden':
        return IssueTypeEnum.forbidden;
      case 'suppressed':
        return IssueTypeEnum.suppressed;
      case 'processing':
        return IssueTypeEnum.processing;
      case 'not-supported':
        return IssueTypeEnum.notSupported;
      case 'duplicate':
        return IssueTypeEnum.duplicate;
      case 'multiple-matches':
        return IssueTypeEnum.multipleMatches;
      case 'not-found':
        return IssueTypeEnum.notFound;
      case 'deleted':
        return IssueTypeEnum.deleted;
      case 'too-long':
        return IssueTypeEnum.tooLong;
      case 'code-invalid':
        return IssueTypeEnum.codeInvalid;
      case 'extension':
        return IssueTypeEnum.extensionValue;
      case 'too-costly':
        return IssueTypeEnum.tooCostly;
      case 'business-rule':
        return IssueTypeEnum.businessRule;
      case 'conflict':
        return IssueTypeEnum.conflict;
      case 'transient':
        return IssueTypeEnum.transient;
      case 'lock-error':
        return IssueTypeEnum.lockError;
      case 'no-store':
        return IssueTypeEnum.noStore;
      case 'exception':
        return IssueTypeEnum.exception;
      case 'timeout':
        return IssueTypeEnum.timeout;
      case 'incomplete':
        return IssueTypeEnum.incomplete;
      case 'throttled':
        return IssueTypeEnum.throttled;
      case 'informational':
        return IssueTypeEnum.informational;
    }
    return null;
  }
}

/// A code that describes the type of issue.
class IssueType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const IssueType._({
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
  factory IssueType(
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
    final valueEnum = IssueTypeEnum.fromString(valueString);
    return IssueType._(
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

  /// Factory constructor to create [IssueType]
  /// from JSON.
  factory IssueType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = IssueTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IssueType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IssueType cannot be constructed from JSON.',
      );
    }
    return IssueType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for IssueType
  final IssueTypeEnum? valueEnum;

  /// invalid
  static const IssueType invalid = IssueType._(
    valueString: 'invalid',
    valueEnum: IssueTypeEnum.invalid,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Invalid Content',
    ),
  );

  /// structure
  static const IssueType structure = IssueType._(
    valueString: 'structure',
    valueEnum: IssueTypeEnum.structure,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Structural Issue',
    ),
  );

  /// required_
  static const IssueType required_ = IssueType._(
    valueString: 'required',
    valueEnum: IssueTypeEnum.required_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Required element missing',
    ),
  );

  /// value
  static const IssueType value_ = IssueType._(
    valueString: 'value',
    valueEnum: IssueTypeEnum.value_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Element value invalid',
    ),
  );

  /// invariant
  static const IssueType invariant = IssueType._(
    valueString: 'invariant',
    valueEnum: IssueTypeEnum.invariant,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Validation rule failed',
    ),
  );

  /// security
  static const IssueType security = IssueType._(
    valueString: 'security',
    valueEnum: IssueTypeEnum.security,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Security Problem',
    ),
  );

  /// login
  static const IssueType login = IssueType._(
    valueString: 'login',
    valueEnum: IssueTypeEnum.login,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Login Required',
    ),
  );

  /// unknown
  static const IssueType unknown = IssueType._(
    valueString: 'unknown',
    valueEnum: IssueTypeEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unknown User',
    ),
  );

  /// expired
  static const IssueType expired = IssueType._(
    valueString: 'expired',
    valueEnum: IssueTypeEnum.expired,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Session Expired',
    ),
  );

  /// forbidden
  static const IssueType forbidden = IssueType._(
    valueString: 'forbidden',
    valueEnum: IssueTypeEnum.forbidden,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Forbidden',
    ),
  );

  /// suppressed
  static const IssueType suppressed = IssueType._(
    valueString: 'suppressed',
    valueEnum: IssueTypeEnum.suppressed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Information Suppressed',
    ),
  );

  /// processing
  static const IssueType processing = IssueType._(
    valueString: 'processing',
    valueEnum: IssueTypeEnum.processing,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Processing Failure',
    ),
  );

  /// not_supported
  static const IssueType notSupported = IssueType._(
    valueString: 'not-supported',
    valueEnum: IssueTypeEnum.notSupported,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Content not supported',
    ),
  );

  /// duplicate
  static const IssueType duplicate = IssueType._(
    valueString: 'duplicate',
    valueEnum: IssueTypeEnum.duplicate,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Duplicate',
    ),
  );

  /// multiple_matches
  static const IssueType multipleMatches = IssueType._(
    valueString: 'multiple-matches',
    valueEnum: IssueTypeEnum.multipleMatches,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Multiple Matches',
    ),
  );

  /// not_found
  static const IssueType notFound = IssueType._(
    valueString: 'not-found',
    valueEnum: IssueTypeEnum.notFound,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Not Found',
    ),
  );

  /// deleted
  static const IssueType deleted = IssueType._(
    valueString: 'deleted',
    valueEnum: IssueTypeEnum.deleted,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Deleted',
    ),
  );

  /// too_long
  static const IssueType tooLong = IssueType._(
    valueString: 'too-long',
    valueEnum: IssueTypeEnum.tooLong,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Content Too Long',
    ),
  );

  /// code_invalid
  static const IssueType codeInvalid = IssueType._(
    valueString: 'code-invalid',
    valueEnum: IssueTypeEnum.codeInvalid,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Invalid Code',
    ),
  );

  /// extension_
  static const IssueType extensionValue = IssueType._(
    valueString: 'extension',
    valueEnum: IssueTypeEnum.extensionValue,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unacceptable Extension',
    ),
  );

  /// too_costly
  static const IssueType tooCostly = IssueType._(
    valueString: 'too-costly',
    valueEnum: IssueTypeEnum.tooCostly,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Operation Too Costly',
    ),
  );

  /// business_rule
  static const IssueType businessRule = IssueType._(
    valueString: 'business-rule',
    valueEnum: IssueTypeEnum.businessRule,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Business Rule Violation',
    ),
  );

  /// conflict
  static const IssueType conflict = IssueType._(
    valueString: 'conflict',
    valueEnum: IssueTypeEnum.conflict,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Edit Version Conflict',
    ),
  );

  /// transient
  static const IssueType transient = IssueType._(
    valueString: 'transient',
    valueEnum: IssueTypeEnum.transient,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Transient Issue',
    ),
  );

  /// lock_error
  static const IssueType lockError = IssueType._(
    valueString: 'lock-error',
    valueEnum: IssueTypeEnum.lockError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Lock Error',
    ),
  );

  /// no_store
  static const IssueType noStore = IssueType._(
    valueString: 'no-store',
    valueEnum: IssueTypeEnum.noStore,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'No Store Available',
    ),
  );

  /// exception
  static const IssueType exception = IssueType._(
    valueString: 'exception',
    valueEnum: IssueTypeEnum.exception,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Exception',
    ),
  );

  /// timeout
  static const IssueType timeout = IssueType._(
    valueString: 'timeout',
    valueEnum: IssueTypeEnum.timeout,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Timeout',
    ),
  );

  /// incomplete
  static const IssueType incomplete = IssueType._(
    valueString: 'incomplete',
    valueEnum: IssueTypeEnum.incomplete,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Incomplete Results',
    ),
  );

  /// throttled
  static const IssueType throttled = IssueType._(
    valueString: 'throttled',
    valueEnum: IssueTypeEnum.throttled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Throttled',
    ),
  );

  /// informational
  static const IssueType informational = IssueType._(
    valueString: 'informational',
    valueEnum: IssueTypeEnum.informational,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Informational Note',
    ),
  );

  /// List of all enum-like values
  static final List<IssueType> values = [
    invalid,
    structure,
    required_,
    value_,
    invariant,
    security,
    login,
    unknown,
    expired,
    forbidden,
    suppressed,
    processing,
    notSupported,
    duplicate,
    multipleMatches,
    notFound,
    deleted,
    tooLong,
    codeInvalid,
    extensionValue,
    tooCostly,
    businessRule,
    conflict,
    transient,
    lockError,
    noStore,
    exception,
    timeout,
    incomplete,
    throttled,
    informational,
  ];

  /// Returns the enum value with an element attached
  IssueType withElement(Element? newElement) {
    return IssueType._(
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
  IssueType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  IssueTypeCopyWithImpl<IssueType> get copyWith =>
      IssueTypeCopyWithImpl<IssueType>(
        this,
        (v) => v as IssueType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class IssueTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  IssueTypeCopyWithImpl(super._value, super._then);

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
      IssueType(
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
