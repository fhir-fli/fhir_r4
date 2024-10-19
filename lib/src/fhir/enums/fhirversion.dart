// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// All published FHIR Versions.
@collection
class FHIRVersion {
  /// Constructor for internal use (like enum)
  FHIRVersion({this.fhirCode, this.element})
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

  /// FHIRVersion values
  /// value0_01
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value0_01 = FHIRVersion(
    fhirCode: '0.01',
  );

  /// value0_05
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value0_05 = FHIRVersion(
    fhirCode: '0.05',
  );

  /// value0_06
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value0_06 = FHIRVersion(
    fhirCode: '0.06',
  );

  /// value0_11
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value0_11 = FHIRVersion(
    fhirCode: '0.11',
  );

  /// value0_0_80
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value0_0_80 = FHIRVersion(
    fhirCode: '0.0.80',
  );

  /// value0_0_81
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value0_0_81 = FHIRVersion(
    fhirCode: '0.0.81',
  );

  /// value0_0_82
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value0_0_82 = FHIRVersion(
    fhirCode: '0.0.82',
  );

  /// value0_4_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value0_4_0 = FHIRVersion(
    fhirCode: '0.4.0',
  );

  /// value0_5_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value0_5_0 = FHIRVersion(
    fhirCode: '0.5.0',
  );

  /// value1_0_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value1_0_0 = FHIRVersion(
    fhirCode: '1.0.0',
  );

  /// value1_0_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value1_0_1 = FHIRVersion(
    fhirCode: '1.0.1',
  );

  /// value1_0_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value1_0_2 = FHIRVersion(
    fhirCode: '1.0.2',
  );

  /// value1_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value1_1_0 = FHIRVersion(
    fhirCode: '1.1.0',
  );

  /// value1_4_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value1_4_0 = FHIRVersion(
    fhirCode: '1.4.0',
  );

  /// value1_6_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value1_6_0 = FHIRVersion(
    fhirCode: '1.6.0',
  );

  /// value1_8_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value1_8_0 = FHIRVersion(
    fhirCode: '1.8.0',
  );

  /// value3_0_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value3_0_0 = FHIRVersion(
    fhirCode: '3.0.0',
  );

  /// value3_0_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value3_0_1 = FHIRVersion(
    fhirCode: '3.0.1',
  );

  /// value3_0_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value3_0_2 = FHIRVersion(
    fhirCode: '3.0.2',
  );

  /// value3_3_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value3_3_0 = FHIRVersion(
    fhirCode: '3.3.0',
  );

  /// value3_5_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value3_5_0 = FHIRVersion(
    fhirCode: '3.5.0',
  );

  /// value4_0_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value4_0_0 = FHIRVersion(
    fhirCode: '4.0.0',
  );

  /// value4_0_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value4_0_1 = FHIRVersion(
    fhirCode: '4.0.1',
  );

  /// value4_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value4_1_0 = FHIRVersion(
    fhirCode: '4.1.0',
  );

  /// value4_3_0_cibuild
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value4_3_0_cibuild = FHIRVersion(
    fhirCode: '4.3.0-cibuild',
  );

  /// value4_3_0_snapshot1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value4_3_0_snapshot1 = FHIRVersion(
    fhirCode: '4.3.0-snapshot1',
  );

  /// value4_3_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRVersion value4_3_0 = FHIRVersion(
    fhirCode: '4.3.0',
  );

  /// For instances where an Element is present but not value

  static final FHIRVersion elementOnly = FHIRVersion();

  /// List of all enum-like values
  static final List<FHIRVersion> values = [
    value0_01,
    value0_05,
    value0_06,
    value0_11,
    value0_0_80,
    value0_0_81,
    value0_0_82,
    value0_4_0,
    value0_5_0,
    value1_0_0,
    value1_0_1,
    value1_0_2,
    value1_1_0,
    value1_4_0,
    value1_6_0,
    value1_8_0,
    value3_0_0,
    value3_0_1,
    value3_0_2,
    value3_3_0,
    value3_5_0,
    value4_0_0,
    value4_0_1,
    value4_1_0,
    value4_3_0_cibuild,
    value4_3_0_snapshot1,
    value4_3_0,
  ];

  /// Returns the enum value with an element attached
  FHIRVersion withElement(Element? newElement) {
    return FHIRVersion(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [FHIRVersion] from JSON.
  static FHIRVersion fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRVersion.elementOnly.withElement(element);
    }
    return FHIRVersion.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FHIRVersion.$fhirCode';
}
