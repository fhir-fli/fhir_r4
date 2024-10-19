// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A code that describes the type of issue.
@collection
class IssueType {
  /// Constructor for internal use (like enum)
  IssueType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// IssueType values
  /// invalid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType invalid = IssueType(
    fhirCode: 'invalid',
  );

  /// structure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType structure = IssueType(
    fhirCode: 'structure',
  );

  /// required_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType required_ = IssueType(
    fhirCode: 'required',
  );

  /// value
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType value = IssueType(
    fhirCode: 'value',
  );

  /// invariant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType invariant = IssueType(
    fhirCode: 'invariant',
  );

  /// security
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType security = IssueType(
    fhirCode: 'security',
  );

  /// login
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType login = IssueType(
    fhirCode: 'login',
  );

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType unknown = IssueType(
    fhirCode: 'unknown',
  );

  /// expired
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType expired = IssueType(
    fhirCode: 'expired',
  );

  /// forbidden
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType forbidden = IssueType(
    fhirCode: 'forbidden',
  );

  /// suppressed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType suppressed = IssueType(
    fhirCode: 'suppressed',
  );

  /// processing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType processing = IssueType(
    fhirCode: 'processing',
  );

  /// not_supported
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType not_supported = IssueType(
    fhirCode: 'not-supported',
  );

  /// duplicate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType duplicate = IssueType(
    fhirCode: 'duplicate',
  );

  /// multiple_matches
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType multiple_matches = IssueType(
    fhirCode: 'multiple-matches',
  );

  /// not_found
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType not_found = IssueType(
    fhirCode: 'not-found',
  );

  /// deleted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType deleted = IssueType(
    fhirCode: 'deleted',
  );

  /// too_long
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType too_long = IssueType(
    fhirCode: 'too-long',
  );

  /// code_invalid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType code_invalid = IssueType(
    fhirCode: 'code-invalid',
  );

  /// extension_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType extension_ = IssueType(
    fhirCode: 'extension',
  );

  /// too_costly
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType too_costly = IssueType(
    fhirCode: 'too-costly',
  );

  /// business_rule
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType business_rule = IssueType(
    fhirCode: 'business-rule',
  );

  /// conflict
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType conflict = IssueType(
    fhirCode: 'conflict',
  );

  /// transient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType transient = IssueType(
    fhirCode: 'transient',
  );

  /// lock_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType lock_error = IssueType(
    fhirCode: 'lock-error',
  );

  /// no_store
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType no_store = IssueType(
    fhirCode: 'no-store',
  );

  /// exception
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType exception = IssueType(
    fhirCode: 'exception',
  );

  /// timeout
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType timeout = IssueType(
    fhirCode: 'timeout',
  );

  /// incomplete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType incomplete = IssueType(
    fhirCode: 'incomplete',
  );

  /// throttled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType throttled = IssueType(
    fhirCode: 'throttled',
  );

  /// informational
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueType informational = IssueType(
    fhirCode: 'informational',
  );

  /// For instances where an Element is present but not value

  static final IssueType elementOnly = IssueType();

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
    return IssueType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return IssueType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'IssueType.$fhirCode';
}
