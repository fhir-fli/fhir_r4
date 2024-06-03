import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Device_UdiCarrier] A type of a manufactured item that is used in the
/// provision of healthcare without being substantially changed through that
/// activity. The device may be a medical or non-medical device.

@freezed
class Device_UdiCarrier with _$Device_UdiCarrier {
  const Device_UdiCarrier._();

  const factory Device_UdiCarrier({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [deviceIdentifier] The device identifier (DI) is a mandatory, fixed
/// portion of a UDI that identifies the labeler and the specific version or
/// model of a device.

    @JsonKey(name: 'deviceIdentifier') String? deviceIdentifier,
/// [_deviceIdentifier] Extensions for deviceIdentifier

    @JsonKey(name: '_deviceIdentifier') PrimitiveElement? deviceIdentifierElement,
/// [deviceIdentifierSystem] Establishes the namespace for the device
/// identifier value that is an URL, OID, urn or uuid.

    @JsonKey(name: 'deviceIdentifierSystem') FhirUri? deviceIdentifierSystem,
/// [_deviceIdentifierSystem] Extensions for deviceIdentifierSystem

    @JsonKey(name: '_deviceIdentifierSystem') PrimitiveElement? deviceIdentifierSystemElement,
/// [issuer] Organization that is charged with issuing UDIs for devices.
/// For example, the US FDA issuers include:
/// 1) GS1: http://hl7.org/fhir/NamingSystem/gs1-di,
/// 2) HIBCC: http://hl7.org/fhir/NamingSystem/hibcc-diI,
/// 3) ICCBBA for blood containers:
/// http://hl7.org/fhir/NamingSystem/iccbba-blood-di,
/// 4) ICCBA for other devices:
/// http://hl7.org/fhir/NamingSystem/iccbba-other-di # Informationsstelle für
/// Arzneispezialitäten (IFA GmbH) (EU only):
/// http://hl7.org/fhir/NamingSystem/ifa-gmbh-di.

    @JsonKey(name: 'issuer') FhirUri? issuer,
/// [_issuer] Extensions for issuer

    @JsonKey(name: '_issuer') PrimitiveElement? issuerElement,
/// [jurisdiction] The identity of the authoritative source for UDI
/// generation within a jurisdiction. All UDIs are globally unique within a
/// single namespace with the appropriate repository uri as the system. For
/// example, UDIs of devices managed in the U.S. by the FDA, the value is
/// http://hl7.org/fhir/NamingSystem/us-fda-udi or in the European Union by the
/// European Commission http://hl7.org/fhir/NamingSystem/eu-ec-udi.

    @JsonKey(name: 'jurisdiction') FhirUri? jurisdiction,
/// [_jurisdiction] Extensions for jurisdiction

    @JsonKey(name: '_jurisdiction') PrimitiveElement? jurisdictionElement,
/// [carrierAIDC] The full UDI carrier of the Automatic Identification and
/// Data Capture (AIDC) technology representation of the barcode string as
/// printed on the packaging of the device - e.g., a barcode or RFID.   Because
/// of limitations on character sets in XML and the need to round-trip JSON
/// data through XML, AIDC Formats *SHALL* be base64 encoded.

    @JsonKey(name: 'carrierAIDC') FhirBase64Binary? carrierAIDC,
/// [_carrierAIDC] Extensions for carrierAIDC

    @JsonKey(name: '_carrierAIDC') PrimitiveElement? carrierAIDCElement,
/// [carrierHRF] The full UDI carrier as the human readable form (HRF)
/// representation of the barcode string as printed on the packaging of the
/// device.

    @JsonKey(name: 'carrierHRF') String? carrierHRF,
/// [_carrierHRF] Extensions for carrierHRF

    @JsonKey(name: '_carrierHRF') PrimitiveElement? carrierHRFElement,
/// [entryType] A coded entry to indicate how the data was entered.

    @JsonKey(name: 'entryType') FhirCode? entryType,
/// [_entryType] Extensions for entryType

    @JsonKey(name: '_entryType') PrimitiveElement? entryTypeElement,
  }) = _$Device_UdiCarrier;

  @override
  String get fhirType => 'Device_UdiCarrier';

  factory Device_UdiCarrier.fromJson(Map<String, dynamic> json) =>
      _$Device_UdiCarrierFromJson(json);

  factory Device_UdiCarrier.fromYaml(dynamic yaml) => yaml is String
      ? Device_UdiCarrier.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Device_UdiCarrier.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Device_UdiCarrier cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Device_UdiCarrier.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Device_UdiCarrierFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
