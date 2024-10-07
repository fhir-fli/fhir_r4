import 'package:json_annotation/json_annotation.dart';

/// This is an example value set defined by the FHIR project, that could be used to represent possible connection type profile values.
enum EndpointConnectionType {
  /// Display: IHE XCPD
  /// Definition: IHE Cross Community Patient Discovery Profile (XCPD) - http://wiki.ihe.net/index.php/Cross-Community_Patient_Discovery
  @JsonValue('ihe-xcpd')
  ihe_xcpd,

  /// Display: IHE XCA
  /// Definition: IHE Cross Community Access Profile (XCA) - http://wiki.ihe.net/index.php/Cross-Community_Access
  @JsonValue('ihe-xca')
  ihe_xca,

  /// Display: IHE XDR
  /// Definition: IHE Cross-Enterprise Document Reliable Exchange (XDR) - http://wiki.ihe.net/index.php/Cross-enterprise_Document_Reliable_Interchange
  @JsonValue('ihe-xdr')
  ihe_xdr,

  /// Display: IHE XDS
  /// Definition: IHE Cross-Enterprise Document Sharing (XDS) - http://wiki.ihe.net/index.php/Cross-Enterprise_Document_Sharing
  @JsonValue('ihe-xds')
  ihe_xds,

  /// Display: IHE IID
  /// Definition: IHE Invoke Image Display (IID) - http://wiki.ihe.net/index.php/Invoke_Image_Display
  @JsonValue('ihe-iid')
  ihe_iid,

  /// Display: DICOM WADO-RS
  /// Definition: DICOMweb RESTful Image Retrieve - http://dicom.nema.org/medical/dicom/current/output/chtml/part18/sect_6.5.html
  @JsonValue('dicom-wado-rs')
  dicom_wado_rs,

  /// Display: DICOM QIDO-RS
  /// Definition: DICOMweb RESTful Image query - http://dicom.nema.org/medical/dicom/current/output/chtml/part18/sect_6.7.html
  @JsonValue('dicom-qido-rs')
  dicom_qido_rs,

  /// Display: DICOM STOW-RS
  /// Definition: DICOMweb RESTful image sending and storage - http://dicom.nema.org/medical/dicom/current/output/chtml/part18/sect_6.6.html
  @JsonValue('dicom-stow-rs')
  dicom_stow_rs,

  /// Display: DICOM WADO-URI
  /// Definition: DICOMweb Image Retrieve - http://dicom.nema.org/dicom/2013/output/chtml/part18/sect_6.3.html
  @JsonValue('dicom-wado-uri')
  dicom_wado_uri,

  /// Display: HL7 FHIR
  /// Definition: Interact with the server interface using FHIR's RESTful interface. For details on its version/capabilities you should connect the value in Endpoint.address and retrieve the FHIR CapabilityStatement.
  @JsonValue('hl7-fhir-rest')
  hl7_fhir_rest,

  /// Display: HL7 FHIR Messaging
  /// Definition: Use the servers FHIR Messaging interface. Details can be found on the messaging.html page in the FHIR Specification. The FHIR server's base address is specified in the Endpoint.address property.
  @JsonValue('hl7-fhir-msg')
  hl7_fhir_msg,

  /// Display: HL7 v2 MLLP
  /// Definition: HL7v2 messages over an LLP TCP connection
  @JsonValue('hl7v2-mllp')
  hl7v2_mllp,

  /// Display: Secure email
  /// Definition: Email delivery using a digital certificate to encrypt the content using the public key, receiver must have the private key to decrypt the content
  @JsonValue('secure-email')
  secure_email,

  /// Display: Direct Project
  /// Definition: Direct Project information - http://wiki.directproject.org/
  @JsonValue('direct-project')
  direct_project,
  ;

  @override
  String toString() {
    switch (this) {
      case ihe_xcpd:
        return 'ihe-xcpd';
      case ihe_xca:
        return 'ihe-xca';
      case ihe_xdr:
        return 'ihe-xdr';
      case ihe_xds:
        return 'ihe-xds';
      case ihe_iid:
        return 'ihe-iid';
      case dicom_wado_rs:
        return 'dicom-wado-rs';
      case dicom_qido_rs:
        return 'dicom-qido-rs';
      case dicom_stow_rs:
        return 'dicom-stow-rs';
      case dicom_wado_uri:
        return 'dicom-wado-uri';
      case hl7_fhir_rest:
        return 'hl7-fhir-rest';
      case hl7_fhir_msg:
        return 'hl7-fhir-msg';
      case hl7v2_mllp:
        return 'hl7v2-mllp';
      case secure_email:
        return 'secure-email';
      case direct_project:
        return 'direct-project';
    }
  }

  String toJson() => toString();
  EndpointConnectionType fromString(String str) {
    switch (str) {
      case 'ihe-xcpd':
        return EndpointConnectionType.ihe_xcpd;
      case 'ihe-xca':
        return EndpointConnectionType.ihe_xca;
      case 'ihe-xdr':
        return EndpointConnectionType.ihe_xdr;
      case 'ihe-xds':
        return EndpointConnectionType.ihe_xds;
      case 'ihe-iid':
        return EndpointConnectionType.ihe_iid;
      case 'dicom-wado-rs':
        return EndpointConnectionType.dicom_wado_rs;
      case 'dicom-qido-rs':
        return EndpointConnectionType.dicom_qido_rs;
      case 'dicom-stow-rs':
        return EndpointConnectionType.dicom_stow_rs;
      case 'dicom-wado-uri':
        return EndpointConnectionType.dicom_wado_uri;
      case 'hl7-fhir-rest':
        return EndpointConnectionType.hl7_fhir_rest;
      case 'hl7-fhir-msg':
        return EndpointConnectionType.hl7_fhir_msg;
      case 'hl7v2-mllp':
        return EndpointConnectionType.hl7v2_mllp;
      case 'secure-email':
        return EndpointConnectionType.secure_email;
      case 'direct-project':
        return EndpointConnectionType.direct_project;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  EndpointConnectionType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
