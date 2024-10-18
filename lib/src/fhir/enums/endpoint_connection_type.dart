// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This is an example value set defined by the FHIR project, that could be used to represent possible connection type profile values.
enum EndpointConnectionType {
  /// Display: IHE XCPD
  /// Definition: IHE Cross Community Patient Discovery Profile (XCPD) - http://wiki.ihe.net/index.php/Cross-Community_Patient_Discovery
  ihe_xcpd('ihe-xcpd'),

  /// Display: IHE XCA
  /// Definition: IHE Cross Community Access Profile (XCA) - http://wiki.ihe.net/index.php/Cross-Community_Access
  ihe_xca('ihe-xca'),

  /// Display: IHE XDR
  /// Definition: IHE Cross-Enterprise Document Reliable Exchange (XDR) - http://wiki.ihe.net/index.php/Cross-enterprise_Document_Reliable_Interchange
  ihe_xdr('ihe-xdr'),

  /// Display: IHE XDS
  /// Definition: IHE Cross-Enterprise Document Sharing (XDS) - http://wiki.ihe.net/index.php/Cross-Enterprise_Document_Sharing
  ihe_xds('ihe-xds'),

  /// Display: IHE IID
  /// Definition: IHE Invoke Image Display (IID) - http://wiki.ihe.net/index.php/Invoke_Image_Display
  ihe_iid('ihe-iid'),

  /// Display: DICOM WADO-RS
  /// Definition: DICOMweb RESTful Image Retrieve - http://dicom.nema.org/medical/dicom/current/output/chtml/part18/sect_6.5.html
  dicom_wado_rs('dicom-wado-rs'),

  /// Display: DICOM QIDO-RS
  /// Definition: DICOMweb RESTful Image query - http://dicom.nema.org/medical/dicom/current/output/chtml/part18/sect_6.7.html
  dicom_qido_rs('dicom-qido-rs'),

  /// Display: DICOM STOW-RS
  /// Definition: DICOMweb RESTful image sending and storage - http://dicom.nema.org/medical/dicom/current/output/chtml/part18/sect_6.6.html
  dicom_stow_rs('dicom-stow-rs'),

  /// Display: DICOM WADO-URI
  /// Definition: DICOMweb Image Retrieve - http://dicom.nema.org/dicom/2013/output/chtml/part18/sect_6.3.html
  dicom_wado_uri('dicom-wado-uri'),

  /// Display: HL7 FHIR
  /// Definition: Interact with the server interface using FHIR's RESTful interface. For details on its version/capabilities you should connect the value in Endpoint.address and retrieve the FHIR CapabilityStatement.
  hl7_fhir_rest('hl7-fhir-rest'),

  /// Display: HL7 FHIR Messaging
  /// Definition: Use the servers FHIR Messaging interface. Details can be found on the messaging.html page in the FHIR Specification. The FHIR server's base address is specified in the Endpoint.address property.
  hl7_fhir_msg('hl7-fhir-msg'),

  /// Display: HL7 v2 MLLP
  /// Definition: HL7v2 messages over an LLP TCP connection
  hl7v2_mllp('hl7v2-mllp'),

  /// Display: Secure email
  /// Definition: Email delivery using a digital certificate to encrypt the content using the public key, receiver must have the private key to decrypt the content
  secure_email('secure-email'),

  /// Display: Direct Project
  /// Definition: Direct Project information - http://wiki.directproject.org/
  direct_project('direct-project'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const EndpointConnectionType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [EndpointConnectionType] instances.
  static EndpointConnectionType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EndpointConnectionType.elementOnly.withElement(
        element,
      );
    }
    return EndpointConnectionType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  EndpointConnectionType withElement(Element? newElement) {
    return EndpointConnectionType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
