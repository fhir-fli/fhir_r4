import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DeviceDefinition {
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
  final List<DeviceDefinitionUdiDeviceIdentifier> udiDeviceIdentifier;
  final String manufacturerString;
  final PrimitiveElement ManufacturerString;
  final Reference manufacturerReference;
  final List<DeviceDefinitionDeviceName> deviceName;
  final String modelNumber;
  final PrimitiveElement ModelNumber;
  final CodeableConcept type;
  final List<DeviceDefinitionSpecialization> specialization;
  final List<String> version;
  final List<PrimitiveElement> Version;
  final List<CodeableConcept> safety;
  final List<ProductShelfLife> shelfLifeStorage;
  final ProdCharacteristic physicalCharacteristics;
  final List<CodeableConcept> languageCode;
  final List<DeviceDefinitionCapability> capability;
  final List<DeviceDefinitionProperty> property;
  final Reference owner;
  final List<ContactPoint> contact;
  final FhirUri url;
  final PrimitiveElement Url;
  final FhirUri onlineInformation;
  final PrimitiveElement OnlineInformation;
  final List<Annotation> note;
  final Quantity quantity;
  final Reference parentDevice;
  final List<DeviceDefinitionMaterial> material;
  const DeviceDefinition({
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
    this.udiDeviceIdentifier,
    this.manufacturerString,
    this.ManufacturerString,
    this.manufacturerReference,
    this.deviceName,
    this.modelNumber,
    this.ModelNumber,
    this.type,
    this.specialization,
    this.version,
    this.Version,
    this.safety,
    this.shelfLifeStorage,
    this.physicalCharacteristics,
    this.languageCode,
    this.capability,
    this.property,
    this.owner,
    this.contact,
    this.url,
    this.Url,
    this.onlineInformation,
    this.OnlineInformation,
    this.note,
    this.quantity,
    this.parentDevice,
    this.material,
  });
}
