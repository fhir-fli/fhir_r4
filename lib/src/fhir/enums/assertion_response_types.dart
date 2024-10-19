// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of response code to use for assertion.
@collection
class AssertionResponseTypes {
  /// Constructor for internal use (like enum)
  AssertionResponseTypes({this.fhirCode, this.element})
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

  /// AssertionResponseTypes values
  /// okay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionResponseTypes okay = AssertionResponseTypes(
    fhirCode: 'okay',
  );

  /// created
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionResponseTypes created = AssertionResponseTypes(
    fhirCode: 'created',
  );

  /// noContent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionResponseTypes noContent = AssertionResponseTypes(
    fhirCode: 'noContent',
  );

  /// notModified
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionResponseTypes notModified = AssertionResponseTypes(
    fhirCode: 'notModified',
  );

  /// bad
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionResponseTypes bad = AssertionResponseTypes(
    fhirCode: 'bad',
  );

  /// forbidden
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionResponseTypes forbidden = AssertionResponseTypes(
    fhirCode: 'forbidden',
  );

  /// notFound
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionResponseTypes notFound = AssertionResponseTypes(
    fhirCode: 'notFound',
  );

  /// methodNotAllowed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionResponseTypes methodNotAllowed = AssertionResponseTypes(
    fhirCode: 'methodNotAllowed',
  );

  /// conflict
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionResponseTypes conflict = AssertionResponseTypes(
    fhirCode: 'conflict',
  );

  /// gone
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionResponseTypes gone = AssertionResponseTypes(
    fhirCode: 'gone',
  );

  /// preconditionFailed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionResponseTypes preconditionFailed =
      AssertionResponseTypes(
    fhirCode: 'preconditionFailed',
  );

  /// unprocessable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionResponseTypes unprocessable = AssertionResponseTypes(
    fhirCode: 'unprocessable',
  );

  /// For instances where an Element is present but not value

  static final AssertionResponseTypes elementOnly = AssertionResponseTypes();

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
    return AssertionResponseTypes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AssertionResponseTypes.$fhirCode';
}
