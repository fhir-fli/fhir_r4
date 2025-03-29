// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A code that describes the type of issue.
class IssueTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  IssueTypeBuilder._({
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
  factory IssueTypeBuilder(
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
    return IssueTypeBuilder._(
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

  /// Create empty [IssueTypeBuilder] with element only
  factory IssueTypeBuilder.empty() => IssueTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [IssueTypeBuilder] from JSON.
  factory IssueTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IssueTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IssueTypeBuilder cannot be constructed from JSON.',
      );
    }
    return IssueTypeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// invalid
  static IssueTypeBuilder invalid = IssueTypeBuilder._(
    validatedValue: 'invalid',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Invalid Content'.toFhirStringBuilder,
  );

  /// structure
  static IssueTypeBuilder structure = IssueTypeBuilder._(
    validatedValue: 'structure',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Structural Issue'.toFhirStringBuilder,
  );

  /// required_
  static IssueTypeBuilder required_ = IssueTypeBuilder._(
    validatedValue: 'required',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Required element missing'.toFhirStringBuilder,
  );

  /// value
  static IssueTypeBuilder value_ = IssueTypeBuilder._(
    validatedValue: 'value',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Element value invalid'.toFhirStringBuilder,
  );

  /// invariant
  static IssueTypeBuilder invariant = IssueTypeBuilder._(
    validatedValue: 'invariant',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Validation rule failed'.toFhirStringBuilder,
  );

  /// security
  static IssueTypeBuilder security = IssueTypeBuilder._(
    validatedValue: 'security',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Security Problem'.toFhirStringBuilder,
  );

  /// login
  static IssueTypeBuilder login = IssueTypeBuilder._(
    validatedValue: 'login',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Login Required'.toFhirStringBuilder,
  );

  /// unknown
  static IssueTypeBuilder unknown = IssueTypeBuilder._(
    validatedValue: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unknown User'.toFhirStringBuilder,
  );

  /// expired
  static IssueTypeBuilder expired = IssueTypeBuilder._(
    validatedValue: 'expired',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Session Expired'.toFhirStringBuilder,
  );

  /// forbidden
  static IssueTypeBuilder forbidden = IssueTypeBuilder._(
    validatedValue: 'forbidden',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Forbidden'.toFhirStringBuilder,
  );

  /// suppressed
  static IssueTypeBuilder suppressed = IssueTypeBuilder._(
    validatedValue: 'suppressed',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Information Suppressed'.toFhirStringBuilder,
  );

  /// processing
  static IssueTypeBuilder processing = IssueTypeBuilder._(
    validatedValue: 'processing',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Processing Failure'.toFhirStringBuilder,
  );

  /// not_supported
  static IssueTypeBuilder not_supported = IssueTypeBuilder._(
    validatedValue: 'not-supported',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Content not supported'.toFhirStringBuilder,
  );

  /// duplicate
  static IssueTypeBuilder duplicate = IssueTypeBuilder._(
    validatedValue: 'duplicate',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Duplicate'.toFhirStringBuilder,
  );

  /// multiple_matches
  static IssueTypeBuilder multiple_matches = IssueTypeBuilder._(
    validatedValue: 'multiple-matches',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Multiple Matches'.toFhirStringBuilder,
  );

  /// not_found
  static IssueTypeBuilder not_found = IssueTypeBuilder._(
    validatedValue: 'not-found',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Not Found'.toFhirStringBuilder,
  );

  /// deleted
  static IssueTypeBuilder deleted = IssueTypeBuilder._(
    validatedValue: 'deleted',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Deleted'.toFhirStringBuilder,
  );

  /// too_long
  static IssueTypeBuilder too_long = IssueTypeBuilder._(
    validatedValue: 'too-long',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Content Too Long'.toFhirStringBuilder,
  );

  /// code_invalid
  static IssueTypeBuilder code_invalid = IssueTypeBuilder._(
    validatedValue: 'code-invalid',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Invalid Code'.toFhirStringBuilder,
  );

  /// extension_
  static IssueTypeBuilder extensionValue = IssueTypeBuilder._(
    validatedValue: 'extension',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unacceptable Extension'.toFhirStringBuilder,
  );

  /// too_costly
  static IssueTypeBuilder too_costly = IssueTypeBuilder._(
    validatedValue: 'too-costly',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Operation Too Costly'.toFhirStringBuilder,
  );

  /// business_rule
  static IssueTypeBuilder business_rule = IssueTypeBuilder._(
    validatedValue: 'business-rule',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Business Rule Violation'.toFhirStringBuilder,
  );

  /// conflict
  static IssueTypeBuilder conflict = IssueTypeBuilder._(
    validatedValue: 'conflict',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Edit Version Conflict'.toFhirStringBuilder,
  );

  /// transient
  static IssueTypeBuilder transient = IssueTypeBuilder._(
    validatedValue: 'transient',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Transient Issue'.toFhirStringBuilder,
  );

  /// lock_error
  static IssueTypeBuilder lock_error = IssueTypeBuilder._(
    validatedValue: 'lock-error',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Lock Error'.toFhirStringBuilder,
  );

  /// no_store
  static IssueTypeBuilder no_store = IssueTypeBuilder._(
    validatedValue: 'no-store',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'No Store Available'.toFhirStringBuilder,
  );

  /// exception
  static IssueTypeBuilder exception = IssueTypeBuilder._(
    validatedValue: 'exception',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Exception'.toFhirStringBuilder,
  );

  /// timeout
  static IssueTypeBuilder timeout = IssueTypeBuilder._(
    validatedValue: 'timeout',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Timeout'.toFhirStringBuilder,
  );

  /// incomplete
  static IssueTypeBuilder incomplete = IssueTypeBuilder._(
    validatedValue: 'incomplete',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Incomplete Results'.toFhirStringBuilder,
  );

  /// throttled
  static IssueTypeBuilder throttled = IssueTypeBuilder._(
    validatedValue: 'throttled',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Throttled'.toFhirStringBuilder,
  );

  /// informational
  static IssueTypeBuilder informational = IssueTypeBuilder._(
    validatedValue: 'informational',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Informational Note'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static IssueTypeBuilder elementOnly = IssueTypeBuilder._(validatedValue: '');

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
  IssueTypeBuilder clone() => IssueTypeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  IssueTypeBuilder withElement(ElementBuilder? newElement) {
    return IssueTypeBuilder._(validatedValue: value, element: newElement);
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
  IssueTypeBuilder copyWith({
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
    return IssueTypeBuilder._(
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
