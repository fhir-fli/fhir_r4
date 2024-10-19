// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set defines a set of codes that can be used to indicate from where the patient came in.
@collection
class AdmitSource {
  /// Constructor for internal use (like enum)
  AdmitSource({this.fhirCode, this.element})
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

  /// AdmitSource values
  /// hosp_trans
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdmitSource hosp_trans = AdmitSource(
    fhirCode: 'hosp-trans',
  );

  /// emd
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdmitSource emd = AdmitSource(
    fhirCode: 'emd',
  );

  /// outp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdmitSource outp = AdmitSource(
    fhirCode: 'outp',
  );

  /// born
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdmitSource born = AdmitSource(
    fhirCode: 'born',
  );

  /// gp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdmitSource gp = AdmitSource(
    fhirCode: 'gp',
  );

  /// mp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdmitSource mp = AdmitSource(
    fhirCode: 'mp',
  );

  /// nursing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdmitSource nursing = AdmitSource(
    fhirCode: 'nursing',
  );

  /// psych
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdmitSource psych = AdmitSource(
    fhirCode: 'psych',
  );

  /// rehab
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdmitSource rehab = AdmitSource(
    fhirCode: 'rehab',
  );

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdmitSource other = AdmitSource(
    fhirCode: 'other',
  );

  /// For instances where an Element is present but not value

  static final AdmitSource elementOnly = AdmitSource();

  /// List of all enum-like values
  static final List<AdmitSource> values = [
    hosp_trans,
    emd,
    outp,
    born,
    gp,
    mp,
    nursing,
    psych,
    rehab,
    other,
  ];

  /// Returns the enum value with an element attached
  AdmitSource withElement(Element? newElement) {
    return AdmitSource(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AdmitSource] from JSON.
  static AdmitSource fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdmitSource.elementOnly.withElement(element);
    }
    return AdmitSource.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AdmitSource.$fhirCode';
}
