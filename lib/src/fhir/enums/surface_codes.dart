// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes a smattering of FDI tooth surface codes.
@Entity()
class SurfaceCodes extends FhirCode {
  /// Factory constructor to create [SurfaceCodes] from JSON.
  factory SurfaceCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SurfaceCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return SurfaceCodes._(value, element);
    }
    throw ArgumentError(
      'SurfaceCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// M
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SurfaceCodes.M([this.element])
      : dbValue = 'M',
        super('M', element);

  /// O
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SurfaceCodes.O([this.element])
      : dbValue = 'O',
        super('O', element);

  /// I
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SurfaceCodes.I([this.element])
      : dbValue = 'I',
        super('I', element);

  /// D
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SurfaceCodes.D([this.element])
      : dbValue = 'D',
        super('D', element);

  /// B
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SurfaceCodes.B([this.element])
      : dbValue = 'B',
        super('B', element);

  /// V
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SurfaceCodes.V([this.element])
      : dbValue = 'V',
        super('V', element);

  /// L
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SurfaceCodes.L([this.element])
      : dbValue = 'L',
        super('L', element);

  /// MO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SurfaceCodes.MO([this.element])
      : dbValue = 'MO',
        super('MO', element);

  /// DO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SurfaceCodes.DO([this.element])
      : dbValue = 'DO',
        super('DO', element);

  /// DI
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SurfaceCodes.DI([this.element])
      : dbValue = 'DI',
        super('DI', element);

  /// MOD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SurfaceCodes.MOD([this.element])
      : dbValue = 'MOD',
        super('MOD', element);

  /// For instances where an Element is present but not value

  SurfaceCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SurfaceCodes._(super.input, [super.element])
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
    'M',
    'O',
    'I',
    'D',
    'B',
    'V',
    'L',
    'MO',
    'DO',
    'DI',
    'MOD',
  ];

  /// Returns the enum value with an element attached
  SurfaceCodes withElement(Element? newElement) {
    return SurfaceCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SurfaceCodes.$value';
}
