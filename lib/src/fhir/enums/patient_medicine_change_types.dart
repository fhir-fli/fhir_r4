// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example Item Flags for the List Resource. In this case, these are the kind of flags that would be used on a medication list at the end of a consultation.
class PatientMedicineChangeTypes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  PatientMedicineChangeTypes._(super.value, [super.element]);

  /// Factory constructor to create [PatientMedicineChangeTypes] from JSON.
  factory PatientMedicineChangeTypes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PatientMedicineChangeTypes.elementOnly.withElement(element);
    }
    return PatientMedicineChangeTypes._(value, element);
  }

  /// value01
  static final PatientMedicineChangeTypes value01 =
      PatientMedicineChangeTypes._(
    '01',
  );

  /// value02
  static final PatientMedicineChangeTypes value02 =
      PatientMedicineChangeTypes._(
    '02',
  );

  /// value03
  static final PatientMedicineChangeTypes value03 =
      PatientMedicineChangeTypes._(
    '03',
  );

  /// value04
  static final PatientMedicineChangeTypes value04 =
      PatientMedicineChangeTypes._(
    '04',
  );

  /// value05
  static final PatientMedicineChangeTypes value05 =
      PatientMedicineChangeTypes._(
    '05',
  );

  /// value06
  static final PatientMedicineChangeTypes value06 =
      PatientMedicineChangeTypes._(
    '06',
  );

  /// For instances where an Element is present but not value

  static final PatientMedicineChangeTypes elementOnly =
      PatientMedicineChangeTypes._('');

  /// List of all enum-like values
  static final List<PatientMedicineChangeTypes> values = [
    value01,
    value02,
    value03,
    value04,
    value05,
    value06,
  ];

  /// Clones the current instance
  @override
  PatientMedicineChangeTypes clone() =>
      PatientMedicineChangeTypes._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  PatientMedicineChangeTypes setElement(String name, dynamic elementValue) {
    return PatientMedicineChangeTypes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  PatientMedicineChangeTypes withElement(Element? newElement) {
    return PatientMedicineChangeTypes._(value, newElement);
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
  PatientMedicineChangeTypes copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return PatientMedicineChangeTypes._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
