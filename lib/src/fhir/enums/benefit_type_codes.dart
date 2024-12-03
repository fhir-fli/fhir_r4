// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of Benefit type codes.
class BenefitTypeCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  BenefitTypeCodes._(super.value, [super.element]);

  /// Factory constructor to create [BenefitTypeCodes] from JSON.
  factory BenefitTypeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BenefitTypeCodes.elementOnly.withElement(element);
    }
    return BenefitTypeCodes._(value, element);
  }

  /// benefit
  static final BenefitTypeCodes benefit = BenefitTypeCodes._(
    'benefit',
  );

  /// deductible
  static final BenefitTypeCodes deductible = BenefitTypeCodes._(
    'deductible',
  );

  /// visit
  static final BenefitTypeCodes visit = BenefitTypeCodes._(
    'visit',
  );

  /// room
  static final BenefitTypeCodes room = BenefitTypeCodes._(
    'room',
  );

  /// copay
  static final BenefitTypeCodes copay = BenefitTypeCodes._(
    'copay',
  );

  /// copay_percent
  static final BenefitTypeCodes copay_percent = BenefitTypeCodes._(
    'copay-percent',
  );

  /// copay_maximum
  static final BenefitTypeCodes copay_maximum = BenefitTypeCodes._(
    'copay-maximum',
  );

  /// vision_exam
  static final BenefitTypeCodes vision_exam = BenefitTypeCodes._(
    'vision-exam',
  );

  /// vision_glasses
  static final BenefitTypeCodes vision_glasses = BenefitTypeCodes._(
    'vision-glasses',
  );

  /// vision_contacts
  static final BenefitTypeCodes vision_contacts = BenefitTypeCodes._(
    'vision-contacts',
  );

  /// medical_primarycare
  static final BenefitTypeCodes medical_primarycare = BenefitTypeCodes._(
    'medical-primarycare',
  );

  /// pharmacy_dispense
  static final BenefitTypeCodes pharmacy_dispense = BenefitTypeCodes._(
    'pharmacy-dispense',
  );

  /// For instances where an Element is present but not value

  static final BenefitTypeCodes elementOnly = BenefitTypeCodes._('');

  /// List of all enum-like values
  static final List<BenefitTypeCodes> values = [
    benefit,
    deductible,
    visit,
    room,
    copay,
    copay_percent,
    copay_maximum,
    vision_exam,
    vision_glasses,
    vision_contacts,
    medical_primarycare,
    pharmacy_dispense,
  ];

  /// Clones the current instance
  @override
  BenefitTypeCodes clone() =>
      BenefitTypeCodes._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  BenefitTypeCodes setElement(String name, dynamic elementValue) {
    return BenefitTypeCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  BenefitTypeCodes withElement(Element? newElement) {
    return BenefitTypeCodes._(value, newElement);
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
  BenefitTypeCodes copyWith({
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
    return BenefitTypeCodes._(
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
