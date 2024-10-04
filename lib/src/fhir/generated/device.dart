import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

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
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
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
}

@Data()
@JsonCodable()
class DeviceUdiCarrier {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String deviceIdentifier;
  final PrimitiveElement DeviceIdentifier;
  final FhirUri issuer;
  final PrimitiveElement Issuer;
  final FhirUri jurisdiction;
  final PrimitiveElement Jurisdiction;
  final FhirBase64Binary carrierAIDC;
  final PrimitiveElement CarrierAIDC;
  final String carrierHRF;
  final PrimitiveElement CarrierHRF;
  final FhirCode entryType;
  final PrimitiveElement EntryType;
}

@Data()
@JsonCodable()
class DeviceDeviceName {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final FhirCode type;
  final PrimitiveElement Type;
}

@Data()
@JsonCodable()
class DeviceSpecialization {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept systemType;
  final String version;
  final PrimitiveElement Version;
}

@Data()
@JsonCodable()
class DeviceVersion {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final Identifier component;
  final String value;
  final PrimitiveElement Value;
}

@Data()
@JsonCodable()
class DeviceProperty {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<Quantity> valueQuantity;
  final List<CodeableConcept> valueCode;
}

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
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
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
}

@Data()
@JsonCodable()
class DeviceDefinitionUdiDeviceIdentifier {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String deviceIdentifier;
  final PrimitiveElement DeviceIdentifier;
  final FhirUri issuer;
  final PrimitiveElement Issuer;
  final FhirUri jurisdiction;
  final PrimitiveElement Jurisdiction;
}

@Data()
@JsonCodable()
class DeviceDefinitionDeviceName {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final FhirCode type;
  final PrimitiveElement Type;
}

@Data()
@JsonCodable()
class DeviceDefinitionSpecialization {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String systemType;
  final PrimitiveElement SystemType;
  final String version;
  final PrimitiveElement Version;
}

@Data()
@JsonCodable()
class DeviceDefinitionCapability {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<CodeableConcept> description;
}

@Data()
@JsonCodable()
class DeviceDefinitionProperty {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<Quantity> valueQuantity;
  final List<CodeableConcept> valueCode;
}

@Data()
@JsonCodable()
class DeviceDefinitionMaterial {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept substance;
  final FhirBoolean alternate;
  final PrimitiveElement Alternate;
  final FhirBoolean allergenicIndicator;
  final PrimitiveElement AllergenicIndicator;
}

@Data()
@JsonCodable()
class DeviceMetric {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final CodeableConcept type;
  final CodeableConcept unit;
  final Reference source;
  final Reference parent;
  final FhirCode operationalStatus;
  final PrimitiveElement OperationalStatus;
  final FhirCode color;
  final PrimitiveElement Color;
  final FhirCode category;
  final PrimitiveElement Category;
  final Timing measurementPeriod;
  final List<DeviceMetricCalibration> calibration;
}

@Data()
@JsonCodable()
class DeviceMetricCalibration {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final FhirCode state;
  final PrimitiveElement State;
  final FhirInstant time;
  final PrimitiveElement Time;
}

@Data()
@JsonCodable()
class DeviceRequest {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<FhirCanonical> instantiatesCanonical;
  final List<FhirUri> instantiatesUri;
  final List<PrimitiveElement> InstantiatesUri;
  final List<Reference> basedOn;
  final List<Reference> priorRequest;
  final Identifier groupIdentifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirCode intent;
  final PrimitiveElement Intent;
  final FhirCode priority;
  final PrimitiveElement Priority;
  final Reference codeReference;
  final CodeableConcept codeCodeableConcept;
  final List<DeviceRequestParameter> parameter;
  final Reference subject;
  final Reference encounter;
  final String occurrenceDateTime;
  final PrimitiveElement OccurrenceDateTime;
  final Period occurrencePeriod;
  final Timing occurrenceTiming;
  final FhirDateTime authoredOn;
  final PrimitiveElement AuthoredOn;
  final Reference requester;
  final CodeableConcept performerType;
  final Reference performer;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Reference> insurance;
  final List<Reference> supportingInfo;
  final List<Annotation> note;
  final List<Reference> relevantHistory;
}

@Data()
@JsonCodable()
class DeviceRequestParameter {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final CodeableConcept valueCodeableConcept;
  final Quantity valueQuantity;
  final Range valueRange;
  final bool valueBoolean;
  final PrimitiveElement ValueBoolean;
}

@Data()
@JsonCodable()
class DeviceUseStatement {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<Reference> basedOn;
  final FhirCode status;
  final PrimitiveElement Status;
  final Reference subject;
  final List<Reference> derivedFrom;
  final Timing timingTiming;
  final Period timingPeriod;
  final String timingDateTime;
  final PrimitiveElement TimingDateTime;
  final FhirDateTime recordedOn;
  final PrimitiveElement RecordedOn;
  final Reference source;
  final Reference device;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final CodeableConcept bodySite;
  final List<Annotation> note;
}


