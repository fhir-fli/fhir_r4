part of '../primitive_types.dart';

/// Actual enum for IssueType
enum IssueTypeBuilderEnum {
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
      case IssueTypeBuilderEnum.invalid:
        return 'invalid';
      case IssueTypeBuilderEnum.structure:
        return 'structure';
      case IssueTypeBuilderEnum.required_:
        return 'required';
      case IssueTypeBuilderEnum.value_:
        return 'value';
      case IssueTypeBuilderEnum.invariant:
        return 'invariant';
      case IssueTypeBuilderEnum.security:
        return 'security';
      case IssueTypeBuilderEnum.login:
        return 'login';
      case IssueTypeBuilderEnum.unknown:
        return 'unknown';
      case IssueTypeBuilderEnum.expired:
        return 'expired';
      case IssueTypeBuilderEnum.forbidden:
        return 'forbidden';
      case IssueTypeBuilderEnum.suppressed:
        return 'suppressed';
      case IssueTypeBuilderEnum.processing:
        return 'processing';
      case IssueTypeBuilderEnum.notSupported:
        return 'not-supported';
      case IssueTypeBuilderEnum.duplicate:
        return 'duplicate';
      case IssueTypeBuilderEnum.multipleMatches:
        return 'multiple-matches';
      case IssueTypeBuilderEnum.notFound:
        return 'not-found';
      case IssueTypeBuilderEnum.deleted:
        return 'deleted';
      case IssueTypeBuilderEnum.tooLong:
        return 'too-long';
      case IssueTypeBuilderEnum.codeInvalid:
        return 'code-invalid';
      case IssueTypeBuilderEnum.extensionValue:
        return 'extension';
      case IssueTypeBuilderEnum.tooCostly:
        return 'too-costly';
      case IssueTypeBuilderEnum.businessRule:
        return 'business-rule';
      case IssueTypeBuilderEnum.conflict:
        return 'conflict';
      case IssueTypeBuilderEnum.transient:
        return 'transient';
      case IssueTypeBuilderEnum.lockError:
        return 'lock-error';
      case IssueTypeBuilderEnum.noStore:
        return 'no-store';
      case IssueTypeBuilderEnum.exception:
        return 'exception';
      case IssueTypeBuilderEnum.timeout:
        return 'timeout';
      case IssueTypeBuilderEnum.incomplete:
        return 'incomplete';
      case IssueTypeBuilderEnum.throttled:
        return 'throttled';
      case IssueTypeBuilderEnum.informational:
        return 'informational';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static IssueTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return IssueTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static IssueTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'invalid':
        return IssueTypeBuilderEnum.invalid;
      case 'structure':
        return IssueTypeBuilderEnum.structure;
      case 'required':
        return IssueTypeBuilderEnum.required_;
      case 'value':
        return IssueTypeBuilderEnum.value_;
      case 'invariant':
        return IssueTypeBuilderEnum.invariant;
      case 'security':
        return IssueTypeBuilderEnum.security;
      case 'login':
        return IssueTypeBuilderEnum.login;
      case 'unknown':
        return IssueTypeBuilderEnum.unknown;
      case 'expired':
        return IssueTypeBuilderEnum.expired;
      case 'forbidden':
        return IssueTypeBuilderEnum.forbidden;
      case 'suppressed':
        return IssueTypeBuilderEnum.suppressed;
      case 'processing':
        return IssueTypeBuilderEnum.processing;
      case 'not-supported':
        return IssueTypeBuilderEnum.notSupported;
      case 'duplicate':
        return IssueTypeBuilderEnum.duplicate;
      case 'multiple-matches':
        return IssueTypeBuilderEnum.multipleMatches;
      case 'not-found':
        return IssueTypeBuilderEnum.notFound;
      case 'deleted':
        return IssueTypeBuilderEnum.deleted;
      case 'too-long':
        return IssueTypeBuilderEnum.tooLong;
      case 'code-invalid':
        return IssueTypeBuilderEnum.codeInvalid;
      case 'extension':
        return IssueTypeBuilderEnum.extensionValue;
      case 'too-costly':
        return IssueTypeBuilderEnum.tooCostly;
      case 'business-rule':
        return IssueTypeBuilderEnum.businessRule;
      case 'conflict':
        return IssueTypeBuilderEnum.conflict;
      case 'transient':
        return IssueTypeBuilderEnum.transient;
      case 'lock-error':
        return IssueTypeBuilderEnum.lockError;
      case 'no-store':
        return IssueTypeBuilderEnum.noStore;
      case 'exception':
        return IssueTypeBuilderEnum.exception;
      case 'timeout':
        return IssueTypeBuilderEnum.timeout;
      case 'incomplete':
        return IssueTypeBuilderEnum.incomplete;
      case 'throttled':
        return IssueTypeBuilderEnum.throttled;
      case 'informational':
        return IssueTypeBuilderEnum.informational;
    }
    return null;
  }
}

/// A code that describes the type of issue.
class IssueTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  IssueTypeBuilder._({
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
  factory IssueTypeBuilder(
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
    final valueEnum = IssueTypeBuilderEnum.fromString(
      valueString,
    );
    return IssueTypeBuilder._(
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

  /// Create empty [IssueTypeBuilder]
  /// with element only
  factory IssueTypeBuilder.empty() => IssueTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [IssueTypeBuilder] from JSON.
  factory IssueTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IssueTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IssueTypeBuilder cannot be constructed from JSON.',
      );
    }
    return IssueTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for IssueTypeBuilder
  final IssueTypeBuilderEnum? valueEnum;

  /// invalid
  static IssueTypeBuilder invalid = IssueTypeBuilder._(
    valueString: 'invalid',
    valueEnum: IssueTypeBuilderEnum.invalid,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Invalid Content',
    ),
  );

  /// structure
  static IssueTypeBuilder structure = IssueTypeBuilder._(
    valueString: 'structure',
    valueEnum: IssueTypeBuilderEnum.structure,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Structural Issue',
    ),
  );

  /// required_
  static IssueTypeBuilder required_ = IssueTypeBuilder._(
    valueString: 'required',
    valueEnum: IssueTypeBuilderEnum.required_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Required element missing',
    ),
  );

  /// value
  static IssueTypeBuilder value_ = IssueTypeBuilder._(
    valueString: 'value',
    valueEnum: IssueTypeBuilderEnum.value_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Element value invalid',
    ),
  );

  /// invariant
  static IssueTypeBuilder invariant = IssueTypeBuilder._(
    valueString: 'invariant',
    valueEnum: IssueTypeBuilderEnum.invariant,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Validation rule failed',
    ),
  );

  /// security
  static IssueTypeBuilder security = IssueTypeBuilder._(
    valueString: 'security',
    valueEnum: IssueTypeBuilderEnum.security,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Security Problem',
    ),
  );

  /// login
  static IssueTypeBuilder login = IssueTypeBuilder._(
    valueString: 'login',
    valueEnum: IssueTypeBuilderEnum.login,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Login Required',
    ),
  );

  /// unknown
  static IssueTypeBuilder unknown = IssueTypeBuilder._(
    valueString: 'unknown',
    valueEnum: IssueTypeBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown User',
    ),
  );

  /// expired
  static IssueTypeBuilder expired = IssueTypeBuilder._(
    valueString: 'expired',
    valueEnum: IssueTypeBuilderEnum.expired,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Session Expired',
    ),
  );

  /// forbidden
  static IssueTypeBuilder forbidden = IssueTypeBuilder._(
    valueString: 'forbidden',
    valueEnum: IssueTypeBuilderEnum.forbidden,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Forbidden',
    ),
  );

  /// suppressed
  static IssueTypeBuilder suppressed = IssueTypeBuilder._(
    valueString: 'suppressed',
    valueEnum: IssueTypeBuilderEnum.suppressed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Information Suppressed',
    ),
  );

  /// processing
  static IssueTypeBuilder processing = IssueTypeBuilder._(
    valueString: 'processing',
    valueEnum: IssueTypeBuilderEnum.processing,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Processing Failure',
    ),
  );

  /// not_supported
  static IssueTypeBuilder notSupported = IssueTypeBuilder._(
    valueString: 'not-supported',
    valueEnum: IssueTypeBuilderEnum.notSupported,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Content not supported',
    ),
  );

  /// duplicate
  static IssueTypeBuilder duplicate = IssueTypeBuilder._(
    valueString: 'duplicate',
    valueEnum: IssueTypeBuilderEnum.duplicate,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Duplicate',
    ),
  );

  /// multiple_matches
  static IssueTypeBuilder multipleMatches = IssueTypeBuilder._(
    valueString: 'multiple-matches',
    valueEnum: IssueTypeBuilderEnum.multipleMatches,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Multiple Matches',
    ),
  );

  /// not_found
  static IssueTypeBuilder notFound = IssueTypeBuilder._(
    valueString: 'not-found',
    valueEnum: IssueTypeBuilderEnum.notFound,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Found',
    ),
  );

  /// deleted
  static IssueTypeBuilder deleted = IssueTypeBuilder._(
    valueString: 'deleted',
    valueEnum: IssueTypeBuilderEnum.deleted,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Deleted',
    ),
  );

  /// too_long
  static IssueTypeBuilder tooLong = IssueTypeBuilder._(
    valueString: 'too-long',
    valueEnum: IssueTypeBuilderEnum.tooLong,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Content Too Long',
    ),
  );

  /// code_invalid
  static IssueTypeBuilder codeInvalid = IssueTypeBuilder._(
    valueString: 'code-invalid',
    valueEnum: IssueTypeBuilderEnum.codeInvalid,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Invalid Code',
    ),
  );

  /// extension_
  static IssueTypeBuilder extensionValue = IssueTypeBuilder._(
    valueString: 'extension',
    valueEnum: IssueTypeBuilderEnum.extensionValue,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unacceptable Extension',
    ),
  );

  /// too_costly
  static IssueTypeBuilder tooCostly = IssueTypeBuilder._(
    valueString: 'too-costly',
    valueEnum: IssueTypeBuilderEnum.tooCostly,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Operation Too Costly',
    ),
  );

  /// business_rule
  static IssueTypeBuilder businessRule = IssueTypeBuilder._(
    valueString: 'business-rule',
    valueEnum: IssueTypeBuilderEnum.businessRule,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Business Rule Violation',
    ),
  );

  /// conflict
  static IssueTypeBuilder conflict = IssueTypeBuilder._(
    valueString: 'conflict',
    valueEnum: IssueTypeBuilderEnum.conflict,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Edit Version Conflict',
    ),
  );

  /// transient
  static IssueTypeBuilder transient = IssueTypeBuilder._(
    valueString: 'transient',
    valueEnum: IssueTypeBuilderEnum.transient,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Transient Issue',
    ),
  );

  /// lock_error
  static IssueTypeBuilder lockError = IssueTypeBuilder._(
    valueString: 'lock-error',
    valueEnum: IssueTypeBuilderEnum.lockError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Lock Error',
    ),
  );

  /// no_store
  static IssueTypeBuilder noStore = IssueTypeBuilder._(
    valueString: 'no-store',
    valueEnum: IssueTypeBuilderEnum.noStore,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'No Store Available',
    ),
  );

  /// exception
  static IssueTypeBuilder exception = IssueTypeBuilder._(
    valueString: 'exception',
    valueEnum: IssueTypeBuilderEnum.exception,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Exception',
    ),
  );

  /// timeout
  static IssueTypeBuilder timeout = IssueTypeBuilder._(
    valueString: 'timeout',
    valueEnum: IssueTypeBuilderEnum.timeout,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Timeout',
    ),
  );

  /// incomplete
  static IssueTypeBuilder incomplete = IssueTypeBuilder._(
    valueString: 'incomplete',
    valueEnum: IssueTypeBuilderEnum.incomplete,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Incomplete Results',
    ),
  );

  /// throttled
  static IssueTypeBuilder throttled = IssueTypeBuilder._(
    valueString: 'throttled',
    valueEnum: IssueTypeBuilderEnum.throttled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Throttled',
    ),
  );

  /// informational
  static IssueTypeBuilder informational = IssueTypeBuilder._(
    valueString: 'informational',
    valueEnum: IssueTypeBuilderEnum.informational,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Informational Note',
    ),
  );

  /// For instances where an Element is present but not value
  static IssueTypeBuilder elementOnly = IssueTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<IssueTypeBuilder> values = [
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
  IssueTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return IssueTypeBuilder._(
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
