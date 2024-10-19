// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This is an example value set defined by the FHIR project, that could be used to represent possible connection type profile values.
@Entity()
class EndpointConnectionType extends FhirCode {
  /// Factory constructor to create [EndpointConnectionType] from JSON.
  factory EndpointConnectionType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EndpointConnectionType.elementOnly(element);
    }
    if (values.contains(value)) {
      return EndpointConnectionType._(value, element);
    }
    throw ArgumentError(
      'EndpointConnectionType.fromJson: JSON value is not a valid value',
    );
  }

  /// ihe_xcpd
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EndpointConnectionType.ihe_xcpd([this.element])
      : dbValue = 'ihe-xcpd',
        super('ihe-xcpd', element);

  /// ihe_xca
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EndpointConnectionType.ihe_xca([this.element])
      : dbValue = 'ihe-xca',
        super('ihe-xca', element);

  /// ihe_xdr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EndpointConnectionType.ihe_xdr([this.element])
      : dbValue = 'ihe-xdr',
        super('ihe-xdr', element);

  /// ihe_xds
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EndpointConnectionType.ihe_xds([this.element])
      : dbValue = 'ihe-xds',
        super('ihe-xds', element);

  /// ihe_iid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EndpointConnectionType.ihe_iid([this.element])
      : dbValue = 'ihe-iid',
        super('ihe-iid', element);

  /// dicom_wado_rs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EndpointConnectionType.dicom_wado_rs([this.element])
      : dbValue = 'dicom-wado-rs',
        super('dicom-wado-rs', element);

  /// dicom_qido_rs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EndpointConnectionType.dicom_qido_rs([this.element])
      : dbValue = 'dicom-qido-rs',
        super('dicom-qido-rs', element);

  /// dicom_stow_rs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EndpointConnectionType.dicom_stow_rs([this.element])
      : dbValue = 'dicom-stow-rs',
        super('dicom-stow-rs', element);

  /// dicom_wado_uri
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EndpointConnectionType.dicom_wado_uri([this.element])
      : dbValue = 'dicom-wado-uri',
        super('dicom-wado-uri', element);

  /// hl7_fhir_rest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EndpointConnectionType.hl7_fhir_rest([this.element])
      : dbValue = 'hl7-fhir-rest',
        super('hl7-fhir-rest', element);

  /// hl7_fhir_msg
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EndpointConnectionType.hl7_fhir_msg([this.element])
      : dbValue = 'hl7-fhir-msg',
        super('hl7-fhir-msg', element);

  /// hl7v2_mllp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EndpointConnectionType.hl7v2_mllp([this.element])
      : dbValue = 'hl7v2-mllp',
        super('hl7v2-mllp', element);

  /// secure_email
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EndpointConnectionType.secure_email([this.element])
      : dbValue = 'secure-email',
        super('secure-email', element);

  /// direct_project
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EndpointConnectionType.direct_project([this.element])
      : dbValue = 'direct-project',
        super('direct-project', element);

  /// For instances where an Element is present but not value

  EndpointConnectionType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  EndpointConnectionType._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'ihe-xcpd',
    'ihe-xca',
    'ihe-xdr',
    'ihe-xds',
    'ihe-iid',
    'dicom-wado-rs',
    'dicom-qido-rs',
    'dicom-stow-rs',
    'dicom-wado-uri',
    'hl7-fhir-rest',
    'hl7-fhir-msg',
    'hl7v2-mllp',
    'secure-email',
    'direct-project',
  ];

  /// Returns the enum value with an element attached
  EndpointConnectionType withElement(Element? newElement) {
    return EndpointConnectionType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EndpointConnectionType.$value';
}
