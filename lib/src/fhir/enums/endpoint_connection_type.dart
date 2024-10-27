// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This is an example value set defined by the FHIR project, that could be used to represent possible connection type profile values.
class EndpointConnectionType {
  // Private constructor for internal use (like enum)
  EndpointConnectionType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EndpointConnectionType values
  /// ihe_xcpd
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EndpointConnectionType ihe_xcpd = EndpointConnectionType._(
    'ihe-xcpd',
  );

  /// ihe_xca
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EndpointConnectionType ihe_xca = EndpointConnectionType._(
    'ihe-xca',
  );

  /// ihe_xdr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EndpointConnectionType ihe_xdr = EndpointConnectionType._(
    'ihe-xdr',
  );

  /// ihe_xds
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EndpointConnectionType ihe_xds = EndpointConnectionType._(
    'ihe-xds',
  );

  /// ihe_iid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EndpointConnectionType ihe_iid = EndpointConnectionType._(
    'ihe-iid',
  );

  /// dicom_wado_rs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EndpointConnectionType dicom_wado_rs = EndpointConnectionType._(
    'dicom-wado-rs',
  );

  /// dicom_qido_rs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EndpointConnectionType dicom_qido_rs = EndpointConnectionType._(
    'dicom-qido-rs',
  );

  /// dicom_stow_rs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EndpointConnectionType dicom_stow_rs = EndpointConnectionType._(
    'dicom-stow-rs',
  );

  /// dicom_wado_uri
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EndpointConnectionType dicom_wado_uri = EndpointConnectionType._(
    'dicom-wado-uri',
  );

  /// hl7_fhir_rest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EndpointConnectionType hl7_fhir_rest = EndpointConnectionType._(
    'hl7-fhir-rest',
  );

  /// hl7_fhir_msg
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EndpointConnectionType hl7_fhir_msg = EndpointConnectionType._(
    'hl7-fhir-msg',
  );

  /// hl7v2_mllp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EndpointConnectionType hl7v2_mllp = EndpointConnectionType._(
    'hl7v2-mllp',
  );

  /// secure_email
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EndpointConnectionType secure_email = EndpointConnectionType._(
    'secure-email',
  );

  /// direct_project
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EndpointConnectionType direct_project = EndpointConnectionType._(
    'direct-project',
  );

  /// For instances where an Element is present but not value

  static final EndpointConnectionType elementOnly =
      EndpointConnectionType._('');

  /// List of all enum-like values
  static final List<EndpointConnectionType> values = [
    ihe_xcpd,
    ihe_xca,
    ihe_xdr,
    ihe_xds,
    ihe_iid,
    dicom_wado_rs,
    dicom_qido_rs,
    dicom_stow_rs,
    dicom_wado_uri,
    hl7_fhir_rest,
    hl7_fhir_msg,
    hl7v2_mllp,
    secure_email,
    direct_project,
  ];

  /// Returns the enum value with an element attached
  EndpointConnectionType withElement(Element? newElement) {
    return EndpointConnectionType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [EndpointConnectionType] from JSON.
  static EndpointConnectionType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EndpointConnectionType.elementOnly.withElement(element);
    }
    return EndpointConnectionType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
