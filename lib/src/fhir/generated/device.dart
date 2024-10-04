import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Device {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Identifier> identifier;
  final Reference definition;
  final List<DeviceUdiCarrier> udiCarrier;
  final FhirCode status;
  final PrimitiveElement Status;
  final List<CodeableConcept> statusReason;
  final String distinctIdentifier;
  final PrimitiveElement DistinctIdentifier;
  final String manufacturer;
  final PrimitiveElement Manufacturer;
  final FhirDateTime manufactureDate;
  final PrimitiveElement ManufactureDate;
  final FhirDateTime expirationDate;
  final PrimitiveElement ExpirationDate;
  final String lotNumber;
  final PrimitiveElement LotNumber;
  final String serialNumber;
  final PrimitiveElement SerialNumber;
  final List<DeviceDeviceName> deviceName;
  final String modelNumber;
  final PrimitiveElement ModelNumber;
  final String partNumber;
  final PrimitiveElement PartNumber;
  final CodeableConcept type;
  final List<DeviceSpecialization> specialization;
  final List<DeviceVersion> version;
  final List<DeviceProperty> property;
  final Reference patient;
  final Reference owner;
  final List<ContactPoint> contact;
  final Reference location;
  final FhirUri url;
  final PrimitiveElement Url;
  final List<Annotation> note;
  final List<CodeableConcept> safety;
  final Reference parent;
  const Device({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.definition,
    this.udiCarrier,
    this.status,
    this.Status,
    this.statusReason,
    this.distinctIdentifier,
    this.DistinctIdentifier,
    this.manufacturer,
    this.Manufacturer,
    this.manufactureDate,
    this.ManufactureDate,
    this.expirationDate,
    this.ExpirationDate,
    this.lotNumber,
    this.LotNumber,
    this.serialNumber,
    this.SerialNumber,
    this.deviceName,
    this.modelNumber,
    this.ModelNumber,
    this.partNumber,
    this.PartNumber,
    this.type,
    this.specialization,
    this.version,
    this.property,
    this.patient,
    this.owner,
    this.contact,
    this.location,
    this.url,
    this.Url,
    this.note,
    this.safety,
    this.parent,
  });
}
