// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to indicate from where the patient came in.
class AdmitSource {
  // Private constructor for internal use (like enum)
  AdmitSource._(this.fhirCode, {this.element});

  /// Factory constructor to create [AdmitSource] from JSON.
  factory AdmitSource.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdmitSource.elementOnly.withElement(element);
    }
    return AdmitSource._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AdmitSource values
  /// hosp_trans
  static final AdmitSource hosp_trans = AdmitSource._(
    'hosp-trans',
  );

  /// emd
  static final AdmitSource emd = AdmitSource._(
    'emd',
  );

  /// outp
  static final AdmitSource outp = AdmitSource._(
    'outp',
  );

  /// born
  static final AdmitSource born = AdmitSource._(
    'born',
  );

  /// gp
  static final AdmitSource gp = AdmitSource._(
    'gp',
  );

  /// mp
  static final AdmitSource mp = AdmitSource._(
    'mp',
  );

  /// nursing
  static final AdmitSource nursing = AdmitSource._(
    'nursing',
  );

  /// psych
  static final AdmitSource psych = AdmitSource._(
    'psych',
  );

  /// rehab
  static final AdmitSource rehab = AdmitSource._(
    'rehab',
  );

  /// other
  static final AdmitSource other = AdmitSource._(
    'other',
  );

  /// For instances where an Element is present but not value

  static final AdmitSource elementOnly = AdmitSource._('');

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
    return AdmitSource._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
