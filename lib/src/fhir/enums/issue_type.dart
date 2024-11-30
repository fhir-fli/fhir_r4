// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code that describes the type of issue.
class IssueType {
  // Private constructor for internal use (like enum)
  IssueType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// IssueType values
  /// invalid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType invalid = IssueType._(
    'invalid',
  );

  /// structure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType structure = IssueType._(
    'structure',
  );

  /// required_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType required_ = IssueType._(
    'required',
  );

  /// value
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType value = IssueType._(
    'value',
  );

  /// invariant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType invariant = IssueType._(
    'invariant',
  );

  /// security
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType security = IssueType._(
    'security',
  );

  /// login
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType login = IssueType._(
    'login',
  );

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType unknown = IssueType._(
    'unknown',
  );

  /// expired
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType expired = IssueType._(
    'expired',
  );

  /// forbidden
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType forbidden = IssueType._(
    'forbidden',
  );

  /// suppressed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType suppressed = IssueType._(
    'suppressed',
  );

  /// processing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType processing = IssueType._(
    'processing',
  );

  /// not_supported
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType not_supported = IssueType._(
    'not-supported',
  );

  /// duplicate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType duplicate = IssueType._(
    'duplicate',
  );

  /// multiple_matches
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType multiple_matches = IssueType._(
    'multiple-matches',
  );

  /// not_found
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType not_found = IssueType._(
    'not-found',
  );

  /// deleted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType deleted = IssueType._(
    'deleted',
  );

  /// too_long
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType too_long = IssueType._(
    'too-long',
  );

  /// code_invalid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType code_invalid = IssueType._(
    'code-invalid',
  );

  /// extension_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType extension_ = IssueType._(
    'extension',
  );

  /// too_costly
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType too_costly = IssueType._(
    'too-costly',
  );

  /// business_rule
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType business_rule = IssueType._(
    'business-rule',
  );

  /// conflict
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType conflict = IssueType._(
    'conflict',
  );

  /// transient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType transient = IssueType._(
    'transient',
  );

  /// lock_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType lock_error = IssueType._(
    'lock-error',
  );

  /// no_store
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType no_store = IssueType._(
    'no-store',
  );

  /// exception
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType exception = IssueType._(
    'exception',
  );

  /// timeout
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType timeout = IssueType._(
    'timeout',
  );

  /// incomplete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType incomplete = IssueType._(
    'incomplete',
  );

  /// throttled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType throttled = IssueType._(
    'throttled',
  );

  /// informational
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType informational = IssueType._(
    'informational',
  );

  /// For instances where an Element is present but not value

  static final IssueType elementOnly = IssueType._('');

  /// List of all enum-like values
  static final List<IssueType> values = [
    invalid,
    structure,
    required_,
    value,
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
    extension_,
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

  /// Returns the enum value with an element attached
  IssueType withElement(Element? newElement) {
    return IssueType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [IssueType] from JSON.
  static IssueType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IssueType.elementOnly.withElement(element);
    }
    return IssueType._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
