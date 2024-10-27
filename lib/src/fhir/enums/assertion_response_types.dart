// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of response code to use for assertion.
class AssertionResponseTypes {
  // Private constructor for internal use (like enum)
  AssertionResponseTypes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AssertionResponseTypes values
  /// okay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionResponseTypes okay = AssertionResponseTypes._(
    'okay',
  );

  /// created
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionResponseTypes created = AssertionResponseTypes._(
    'created',
  );

  /// noContent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionResponseTypes noContent = AssertionResponseTypes._(
    'noContent',
  );

  /// notModified
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionResponseTypes notModified = AssertionResponseTypes._(
    'notModified',
  );

  /// bad
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionResponseTypes bad = AssertionResponseTypes._(
    'bad',
  );

  /// forbidden
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionResponseTypes forbidden = AssertionResponseTypes._(
    'forbidden',
  );

  /// notFound
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionResponseTypes notFound = AssertionResponseTypes._(
    'notFound',
  );

  /// methodNotAllowed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionResponseTypes methodNotAllowed =
      AssertionResponseTypes._(
    'methodNotAllowed',
  );

  /// conflict
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionResponseTypes conflict = AssertionResponseTypes._(
    'conflict',
  );

  /// gone
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionResponseTypes gone = AssertionResponseTypes._(
    'gone',
  );

  /// preconditionFailed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionResponseTypes preconditionFailed =
      AssertionResponseTypes._(
    'preconditionFailed',
  );

  /// unprocessable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
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

  /// Returns the enum value with an element attached
  AssertionResponseTypes withElement(Element? newElement) {
    return AssertionResponseTypes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AssertionResponseTypes] from JSON.
  static AssertionResponseTypes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionResponseTypes.elementOnly.withElement(element);
    }
    return AssertionResponseTypes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
