// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// A code that describes the type of issue.
class IssueType extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  IssueType._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [IssueType] with element only
  factory IssueType.empty() => IssueType._('');

  /// Factory constructor to create [IssueType] from JSON.
  factory IssueType.fromJson(
    Map<String, dynamic> json,
  ) {
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
      value,
      element: element,
    );
  }

  /// invalid
  static final IssueType invalid = IssueType._(
    'invalid',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Invalid Content'.toFhirString,
  );

  /// structure
  static final IssueType structure = IssueType._(
    'structure',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Structural Issue'.toFhirString,
  );

  /// required_
  static final IssueType required_ = IssueType._(
    'required',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Required element missing'.toFhirString,
  );

  /// value
  static final IssueType value_ = IssueType._(
    'value',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Element value invalid'.toFhirString,
  );

  /// invariant
  static final IssueType invariant = IssueType._(
    'invariant',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Validation rule failed'.toFhirString,
  );

  /// security
  static final IssueType security = IssueType._(
    'security',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Security Problem'.toFhirString,
  );

  /// login
  static final IssueType login = IssueType._(
    'login',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Login Required'.toFhirString,
  );

  /// unknown
  static final IssueType unknown = IssueType._(
    'unknown',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unknown User'.toFhirString,
  );

  /// expired
  static final IssueType expired = IssueType._(
    'expired',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Session Expired'.toFhirString,
  );

  /// forbidden
  static final IssueType forbidden = IssueType._(
    'forbidden',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Forbidden'.toFhirString,
  );

  /// suppressed
  static final IssueType suppressed = IssueType._(
    'suppressed',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Information Suppressed'.toFhirString,
  );

  /// processing
  static final IssueType processing = IssueType._(
    'processing',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Processing Failure'.toFhirString,
  );

  /// not_supported
  static final IssueType not_supported = IssueType._(
    'not-supported',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Content not supported'.toFhirString,
  );

  /// duplicate
  static final IssueType duplicate = IssueType._(
    'duplicate',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Duplicate'.toFhirString,
  );

  /// multiple_matches
  static final IssueType multiple_matches = IssueType._(
    'multiple-matches',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Multiple Matches'.toFhirString,
  );

  /// not_found
  static final IssueType not_found = IssueType._(
    'not-found',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not Found'.toFhirString,
  );

  /// deleted
  static final IssueType deleted = IssueType._(
    'deleted',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Deleted'.toFhirString,
  );

  /// too_long
  static final IssueType too_long = IssueType._(
    'too-long',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Content Too Long'.toFhirString,
  );

  /// code_invalid
  static final IssueType code_invalid = IssueType._(
    'code-invalid',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Invalid Code'.toFhirString,
  );

  /// extension_
  static final IssueType extensionValue = IssueType._(
    'extension',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unacceptable Extension'.toFhirString,
  );

  /// too_costly
  static final IssueType too_costly = IssueType._(
    'too-costly',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Operation Too Costly'.toFhirString,
  );

  /// business_rule
  static final IssueType business_rule = IssueType._(
    'business-rule',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Business Rule Violation'.toFhirString,
  );

  /// conflict
  static final IssueType conflict = IssueType._(
    'conflict',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Edit Version Conflict'.toFhirString,
  );

  /// transient
  static final IssueType transient = IssueType._(
    'transient',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Transient Issue'.toFhirString,
  );

  /// lock_error
  static final IssueType lock_error = IssueType._(
    'lock-error',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Lock Error'.toFhirString,
  );

  /// no_store
  static final IssueType no_store = IssueType._(
    'no-store',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'No Store Available'.toFhirString,
  );

  /// exception
  static final IssueType exception = IssueType._(
    'exception',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Exception'.toFhirString,
  );

  /// timeout
  static final IssueType timeout = IssueType._(
    'timeout',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Timeout'.toFhirString,
  );

  /// incomplete
  static final IssueType incomplete = IssueType._(
    'incomplete',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Incomplete Results'.toFhirString,
  );

  /// throttled
  static final IssueType throttled = IssueType._(
    'throttled',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Throttled'.toFhirString,
  );

  /// informational
  static final IssueType informational = IssueType._(
    'informational',
    system: 'http://hl7.org/fhir/ValueSet/issue-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Informational Note'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final IssueType elementOnly = IssueType._('');

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
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  IssueType withElement(Element? newElement) {
    return IssueType._(
      value,
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
      newValue ?? value,
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
