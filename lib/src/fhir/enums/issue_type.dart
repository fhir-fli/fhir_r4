// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A code that describes the type of issue.
@Entity()
class IssueType extends FhirCode {
  /// Factory constructor to create [IssueType] from JSON.
  factory IssueType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IssueType.elementOnly(element);
    }
    if (values.contains(value)) {
      return IssueType._(value, element);
    }
    throw ArgumentError(
      'IssueType.fromJson: JSON value is not a valid value',
    );
  }

  /// invalid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.invalid([this.element])
      : dbValue = 'invalid',
        super('invalid', element);

  /// structure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.structure([this.element])
      : dbValue = 'structure',
        super('structure', element);

  /// required_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.required_([this.element])
      : dbValue = 'required',
        super('required', element);

  /// value
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.value([this.element])
      : dbValue = 'value',
        super('value', element);

  /// invariant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.invariant([this.element])
      : dbValue = 'invariant',
        super('invariant', element);

  /// security
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.security([this.element])
      : dbValue = 'security',
        super('security', element);

  /// login
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.login([this.element])
      : dbValue = 'login',
        super('login', element);

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.unknown([this.element])
      : dbValue = 'unknown',
        super('unknown', element);

  /// expired
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.expired([this.element])
      : dbValue = 'expired',
        super('expired', element);

  /// forbidden
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.forbidden([this.element])
      : dbValue = 'forbidden',
        super('forbidden', element);

  /// suppressed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.suppressed([this.element])
      : dbValue = 'suppressed',
        super('suppressed', element);

  /// processing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.processing([this.element])
      : dbValue = 'processing',
        super('processing', element);

  /// not_supported
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.not_supported([this.element])
      : dbValue = 'not-supported',
        super('not-supported', element);

  /// duplicate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.duplicate([this.element])
      : dbValue = 'duplicate',
        super('duplicate', element);

  /// multiple_matches
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.multiple_matches([this.element])
      : dbValue = 'multiple-matches',
        super('multiple-matches', element);

  /// not_found
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.not_found([this.element])
      : dbValue = 'not-found',
        super('not-found', element);

  /// deleted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.deleted([this.element])
      : dbValue = 'deleted',
        super('deleted', element);

  /// too_long
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.too_long([this.element])
      : dbValue = 'too-long',
        super('too-long', element);

  /// code_invalid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.code_invalid([this.element])
      : dbValue = 'code-invalid',
        super('code-invalid', element);

  /// extension_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.extension_([this.element])
      : dbValue = 'extension',
        super('extension', element);

  /// too_costly
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.too_costly([this.element])
      : dbValue = 'too-costly',
        super('too-costly', element);

  /// business_rule
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.business_rule([this.element])
      : dbValue = 'business-rule',
        super('business-rule', element);

  /// conflict
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.conflict([this.element])
      : dbValue = 'conflict',
        super('conflict', element);

  /// transient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.transient([this.element])
      : dbValue = 'transient',
        super('transient', element);

  /// lock_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.lock_error([this.element])
      : dbValue = 'lock-error',
        super('lock-error', element);

  /// no_store
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.no_store([this.element])
      : dbValue = 'no-store',
        super('no-store', element);

  /// exception
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.exception([this.element])
      : dbValue = 'exception',
        super('exception', element);

  /// timeout
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.timeout([this.element])
      : dbValue = 'timeout',
        super('timeout', element);

  /// incomplete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.incomplete([this.element])
      : dbValue = 'incomplete',
        super('incomplete', element);

  /// throttled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.throttled([this.element])
      : dbValue = 'throttled',
        super('throttled', element);

  /// informational
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueType.informational([this.element])
      : dbValue = 'informational',
        super('informational', element);

  /// For instances where an Element is present but not value

  IssueType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  IssueType._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'invalid',
    'structure',
    'required',
    'value',
    'invariant',
    'security',
    'login',
    'unknown',
    'expired',
    'forbidden',
    'suppressed',
    'processing',
    'not-supported',
    'duplicate',
    'multiple-matches',
    'not-found',
    'deleted',
    'too-long',
    'code-invalid',
    'extension',
    'too-costly',
    'business-rule',
    'conflict',
    'transient',
    'lock-error',
    'no-store',
    'exception',
    'timeout',
    'incomplete',
    'throttled',
    'informational',
  ];

  /// Returns the enum value with an element attached
  IssueType withElement(Element? newElement) {
    return IssueType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'IssueType.$value';
}
