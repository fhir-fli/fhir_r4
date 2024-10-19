// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set defines a set of codes that can be used to indicate the meaning/use of a reference range for a particular target population.
@Entity()
class ObservationReferenceRangeMeaningCodes extends FhirCode {
  /// Factory constructor to create [ObservationReferenceRangeMeaningCodes] from JSON.
  factory ObservationReferenceRangeMeaningCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationReferenceRangeMeaningCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ObservationReferenceRangeMeaningCodes._(value, element);
    }
    throw ArgumentError(
      'ObservationReferenceRangeMeaningCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationReferenceRangeMeaningCodes.type([this.element])
      : dbValue = 'type',
        super('type', element);

  /// normal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationReferenceRangeMeaningCodes.normal([this.element])
      : dbValue = 'normal',
        super('normal', element);

  /// recommended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationReferenceRangeMeaningCodes.recommended([this.element])
      : dbValue = 'recommended',
        super('recommended', element);

  /// treatment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationReferenceRangeMeaningCodes.treatment([this.element])
      : dbValue = 'treatment',
        super('treatment', element);

  /// therapeutic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationReferenceRangeMeaningCodes.therapeutic([this.element])
      : dbValue = 'therapeutic',
        super('therapeutic', element);

  /// pre
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationReferenceRangeMeaningCodes.pre([this.element])
      : dbValue = 'pre',
        super('pre', element);

  /// post
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationReferenceRangeMeaningCodes.post([this.element])
      : dbValue = 'post',
        super('post', element);

  /// endocrine
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationReferenceRangeMeaningCodes.endocrine([this.element])
      : dbValue = 'endocrine',
        super('endocrine', element);

  /// pre_puberty
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationReferenceRangeMeaningCodes.pre_puberty([this.element])
      : dbValue = 'pre-puberty',
        super('pre-puberty', element);

  /// follicular
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationReferenceRangeMeaningCodes.follicular([this.element])
      : dbValue = 'follicular',
        super('follicular', element);

  /// midcycle
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationReferenceRangeMeaningCodes.midcycle([this.element])
      : dbValue = 'midcycle',
        super('midcycle', element);

  /// luteal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationReferenceRangeMeaningCodes.luteal([this.element])
      : dbValue = 'luteal',
        super('luteal', element);

  /// postmenopausal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationReferenceRangeMeaningCodes.postmenopausal([this.element])
      : dbValue = 'postmenopausal',
        super('postmenopausal', element);

  /// For instances where an Element is present but not value

  ObservationReferenceRangeMeaningCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ObservationReferenceRangeMeaningCodes._(super.input, [super.element])
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
    'type',
    'normal',
    'recommended',
    'treatment',
    'therapeutic',
    'pre',
    'post',
    'endocrine',
    'pre-puberty',
    'follicular',
    'midcycle',
    'luteal',
    'postmenopausal',
  ];

  /// Returns the enum value with an element attached
  ObservationReferenceRangeMeaningCodes withElement(Element? newElement) {
    return ObservationReferenceRangeMeaningCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ObservationReferenceRangeMeaningCodes.$value';
}
