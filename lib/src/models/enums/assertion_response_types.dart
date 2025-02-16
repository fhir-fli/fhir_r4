// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The type of response code to use for assertion.
class AssertionResponseTypes extends FhirCode {
  // Private constructor for internal use (like enum)
  AssertionResponseTypes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [AssertionResponseTypes] with element only
  factory AssertionResponseTypes.empty() => AssertionResponseTypes._('');

  /// Factory constructor to create [AssertionResponseTypes] from JSON.
  factory AssertionResponseTypes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionResponseTypes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AssertionResponseTypes cannot be constructed from JSON.',
      );
    }
    return AssertionResponseTypes._(
      value,
      element: element,
    );
  }

  /// okay
  static final AssertionResponseTypes okay = AssertionResponseTypes._(
    'okay',
  );

  /// created
  static final AssertionResponseTypes created = AssertionResponseTypes._(
    'created',
  );

  /// noContent
  static final AssertionResponseTypes noContent = AssertionResponseTypes._(
    'noContent',
  );

  /// notModified
  static final AssertionResponseTypes notModified = AssertionResponseTypes._(
    'notModified',
  );

  /// bad
  static final AssertionResponseTypes bad = AssertionResponseTypes._(
    'bad',
  );

  /// forbidden
  static final AssertionResponseTypes forbidden = AssertionResponseTypes._(
    'forbidden',
  );

  /// notFound
  static final AssertionResponseTypes notFound = AssertionResponseTypes._(
    'notFound',
  );

  /// methodNotAllowed
  static final AssertionResponseTypes methodNotAllowed =
      AssertionResponseTypes._(
    'methodNotAllowed',
  );

  /// conflict
  static final AssertionResponseTypes conflict = AssertionResponseTypes._(
    'conflict',
  );

  /// gone
  static final AssertionResponseTypes gone = AssertionResponseTypes._(
    'gone',
  );

  /// preconditionFailed
  static final AssertionResponseTypes preconditionFailed =
      AssertionResponseTypes._(
    'preconditionFailed',
  );

  /// unprocessable
  static final AssertionResponseTypes unprocessable = AssertionResponseTypes._(
    'unprocessable',
  );

  /// For instances where an Element is present but not value

  static final AssertionResponseTypes elementOnly =
      AssertionResponseTypes._('');

  /// List of all enum-like values
  static final List<AssertionResponseTypes> values = [
    okay,
    created,
    noContent,
    notModified,
    bad,
    forbidden,
    notFound,
    methodNotAllowed,
    conflict,
    gone,
    preconditionFailed,
    unprocessable,
  ];

  /// Clones the current instance
  @override
  AssertionResponseTypes clone() => AssertionResponseTypes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AssertionResponseTypes withElement(Element? newElement) {
    return AssertionResponseTypes._(
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
  AssertionResponseTypes copyWith({
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
    return AssertionResponseTypes._(
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
