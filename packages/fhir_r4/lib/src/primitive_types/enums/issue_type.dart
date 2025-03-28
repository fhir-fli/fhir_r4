// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A code that describes the type of issue.
class IssueType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  IssueType._({
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
  factory IssueType(
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
    return IssueType._(
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

  /// Create empty [IssueType] with element only
  factory IssueType.empty() => IssueType._(validatedValue: '');

  /// Factory constructor to create [IssueType] from JSON.
  factory IssueType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IssueType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IssueType cannot be constructed from JSON.',
      );
    }
    return IssueType._(
      validatedValue: value,
      element: element,
    );
  }

  /// invalid
  static final IssueType invalid = IssueType._(
    validatedValue: 'invalid',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Invalid Content'.toFhirString,
  );

  /// structure
  static final IssueType structure = IssueType._(
    validatedValue: 'structure',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Structural Issue'.toFhirString,
  );

  /// required_
  static final IssueType required_ = IssueType._(
    validatedValue: 'required',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Required element missing'.toFhirString,
  );

  /// value
  static final IssueType value_ = IssueType._(
    validatedValue: 'value',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Element value invalid'.toFhirString,
  );

  /// invariant
  static final IssueType invariant = IssueType._(
    validatedValue: 'invariant',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Validation rule failed'.toFhirString,
  );

  /// security
  static final IssueType security = IssueType._(
    validatedValue: 'security',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Security Problem'.toFhirString,
  );

  /// login
  static final IssueType login = IssueType._(
    validatedValue: 'login',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Login Required'.toFhirString,
  );

  /// unknown
  static final IssueType unknown = IssueType._(
    validatedValue: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unknown User'.toFhirString,
  );

  /// expired
  static final IssueType expired = IssueType._(
    validatedValue: 'expired',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Session Expired'.toFhirString,
  );

  /// forbidden
  static final IssueType forbidden = IssueType._(
    validatedValue: 'forbidden',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Forbidden'.toFhirString,
  );

  /// suppressed
  static final IssueType suppressed = IssueType._(
    validatedValue: 'suppressed',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Information Suppressed'.toFhirString,
  );

  /// processing
  static final IssueType processing = IssueType._(
    validatedValue: 'processing',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Processing Failure'.toFhirString,
  );

  /// not_supported
  static final IssueType not_supported = IssueType._(
    validatedValue: 'not-supported',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Content not supported'.toFhirString,
  );

  /// duplicate
  static final IssueType duplicate = IssueType._(
    validatedValue: 'duplicate',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Duplicate'.toFhirString,
  );

  /// multiple_matches
  static final IssueType multiple_matches = IssueType._(
    validatedValue: 'multiple-matches',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Multiple Matches'.toFhirString,
  );

  /// not_found
  static final IssueType not_found = IssueType._(
    validatedValue: 'not-found',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not Found'.toFhirString,
  );

  /// deleted
  static final IssueType deleted = IssueType._(
    validatedValue: 'deleted',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Deleted'.toFhirString,
  );

  /// too_long
  static final IssueType too_long = IssueType._(
    validatedValue: 'too-long',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Content Too Long'.toFhirString,
  );

  /// code_invalid
  static final IssueType code_invalid = IssueType._(
    validatedValue: 'code-invalid',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Invalid Code'.toFhirString,
  );

  /// extension_
  static final IssueType extensionValue = IssueType._(
    validatedValue: 'extension',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unacceptable Extension'.toFhirString,
  );

  /// too_costly
  static final IssueType too_costly = IssueType._(
    validatedValue: 'too-costly',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Operation Too Costly'.toFhirString,
  );

  /// business_rule
  static final IssueType business_rule = IssueType._(
    validatedValue: 'business-rule',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Business Rule Violation'.toFhirString,
  );

  /// conflict
  static final IssueType conflict = IssueType._(
    validatedValue: 'conflict',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Edit Version Conflict'.toFhirString,
  );

  /// transient
  static final IssueType transient = IssueType._(
    validatedValue: 'transient',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Transient Issue'.toFhirString,
  );

  /// lock_error
  static final IssueType lock_error = IssueType._(
    validatedValue: 'lock-error',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Lock Error'.toFhirString,
  );

  /// no_store
  static final IssueType no_store = IssueType._(
    validatedValue: 'no-store',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'No Store Available'.toFhirString,
  );

  /// exception
  static final IssueType exception = IssueType._(
    validatedValue: 'exception',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Exception'.toFhirString,
  );

  /// timeout
  static final IssueType timeout = IssueType._(
    validatedValue: 'timeout',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Timeout'.toFhirString,
  );

  /// incomplete
  static final IssueType incomplete = IssueType._(
    validatedValue: 'incomplete',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Incomplete Results'.toFhirString,
  );

  /// throttled
  static final IssueType throttled = IssueType._(
    validatedValue: 'throttled',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Throttled'.toFhirString,
  );

  /// informational
  static final IssueType informational = IssueType._(
    validatedValue: 'informational',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Informational Note'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final IssueType elementOnly = IssueType._(validatedValue: '');

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
    not_supported,
    duplicate,
    multiple_matches,
    not_found,
    deleted,
    too_long,
    code_invalid,
    extensionValue,
    too_costly,
    business_rule,
    conflict,
    transient,
    lock_error,
    no_store,
    exception,
    timeout,
    incomplete,
    throttled,
    informational,
  ];

  /// Clones the current instance
  @override
  IssueType clone() => IssueType._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  IssueType withElement(Element? newElement) {
    return IssueType._(validatedValue: value, element: newElement);
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
  IssueType copyWith({
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
    return IssueType._(
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
