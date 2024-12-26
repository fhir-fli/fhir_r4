// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code that describes the type of issue.
class IssueType extends FhirCode {
  // Private constructor for internal use (like enum)
  IssueType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

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
  );

  /// structure
  static final IssueType structure = IssueType._(
    'structure',
  );

  /// required_
  static final IssueType required_ = IssueType._(
    'required',
  );

  /// value
  static final IssueType value_ = IssueType._(
    'value',
  );

  /// invariant
  static final IssueType invariant = IssueType._(
    'invariant',
  );

  /// security
  static final IssueType security = IssueType._(
    'security',
  );

  /// login
  static final IssueType login = IssueType._(
    'login',
  );

  /// unknown
  static final IssueType unknown = IssueType._(
    'unknown',
  );

  /// expired
  static final IssueType expired = IssueType._(
    'expired',
  );

  /// forbidden
  static final IssueType forbidden = IssueType._(
    'forbidden',
  );

  /// suppressed
  static final IssueType suppressed = IssueType._(
    'suppressed',
  );

  /// processing
  static final IssueType processing = IssueType._(
    'processing',
  );

  /// not_supported
  static final IssueType not_supported = IssueType._(
    'not-supported',
  );

  /// duplicate
  static final IssueType duplicate = IssueType._(
    'duplicate',
  );

  /// multiple_matches
  static final IssueType multiple_matches = IssueType._(
    'multiple-matches',
  );

  /// not_found
  static final IssueType not_found = IssueType._(
    'not-found',
  );

  /// deleted
  static final IssueType deleted = IssueType._(
    'deleted',
  );

  /// too_long
  static final IssueType too_long = IssueType._(
    'too-long',
  );

  /// code_invalid
  static final IssueType code_invalid = IssueType._(
    'code-invalid',
  );

  /// extension_
  static final IssueType extensionValue = IssueType._(
    'extension',
  );

  /// too_costly
  static final IssueType too_costly = IssueType._(
    'too-costly',
  );

  /// business_rule
  static final IssueType business_rule = IssueType._(
    'business-rule',
  );

  /// conflict
  static final IssueType conflict = IssueType._(
    'conflict',
  );

  /// transient
  static final IssueType transient = IssueType._(
    'transient',
  );

  /// lock_error
  static final IssueType lock_error = IssueType._(
    'lock-error',
  );

  /// no_store
  static final IssueType no_store = IssueType._(
    'no-store',
  );

  /// exception
  static final IssueType exception = IssueType._(
    'exception',
  );

  /// timeout
  static final IssueType timeout = IssueType._(
    'timeout',
  );

  /// incomplete
  static final IssueType incomplete = IssueType._(
    'incomplete',
  );

  /// throttled
  static final IssueType throttled = IssueType._(
    'throttled',
  );

  /// informational
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
