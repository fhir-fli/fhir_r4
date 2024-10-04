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
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final Reference definition;
  final List<DeviceUdiCarrier> udiCarrier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final List<CodeableConcept> statusReason;
  final String distinctIdentifier;
  final PrimitiveElement distinctIdentifierElement;
  final String manufacturer;
  final PrimitiveElement manufacturerElement;
  final FhirDateTime manufactureDate;
  final PrimitiveElement manufactureDateElement;
  final FhirDateTime expirationDate;
  final PrimitiveElement expirationDateElement;
  final String lotNumber;
  final PrimitiveElement lotNumberElement;
  final String serialNumber;
  final PrimitiveElement serialNumberElement;
  final List<DeviceDeviceName> deviceName;
  final String modelNumber;
  final PrimitiveElement modelNumberElement;
  final String partNumber;
  final PrimitiveElement partNumberElement;
  final CodeableConcept type;
  final List<DeviceSpecialization> specialization;
  final List<DeviceVersion> version;
  final List<DeviceProperty> property;
  final Reference patient;
  final Reference owner;
  final List<ContactPoint> contact;
  final Reference location;
  final FhirUri url;
  final PrimitiveElement urlElement;
  final List<Annotation> note;
  final List<CodeableConcept> safety;
  final Reference parent;
}

@Data()
@JsonCodable()
class DeviceUdiCarrier {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String deviceIdentifier;
  final PrimitiveElement deviceIdentifierElement;
  final FhirUri issuer;
  final PrimitiveElement issuerElement;
  final FhirUri jurisdiction;
  final PrimitiveElement jurisdictionElement;
  final FhirBase64Binary carrierAIDC;
  final PrimitiveElement carrierAIDCElement;
  final String carrierHRF;
  final PrimitiveElement carrierHRFElement;
  final FhirCode entryType;
  final PrimitiveElement entryTypeElement;
}

@Data()
@JsonCodable()
class DeviceDeviceName {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement nameElement;
  final FhirCode type;
  final PrimitiveElement typeElement;
}

@Data()
@JsonCodable()
class DeviceSpecialization {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept systemType;
  final String version;
  final PrimitiveElement versionElement;
}

@Data()
@JsonCodable()
class DeviceVersion {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final Identifier component;
  final String value;
  final PrimitiveElement valueElement;
}

@Data()
@JsonCodable()
class DeviceProperty {
  final String id;
  final List<FhirExtension> extension_;
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
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<DeviceDefinitionUdiDeviceIdentifier> udiDeviceIdentifier;
  final String manufacturerString;
  final PrimitiveElement manufacturerStringElement;
  final Reference manufacturerReference;
  final List<DeviceDefinitionDeviceName> deviceName;
  final String modelNumber;
  final PrimitiveElement modelNumberElement;
  final CodeableConcept type;
  final List<DeviceDefinitionSpecialization> specialization;
  final List<String> version;
  final List<PrimitiveElement> versionElement;
  final List<CodeableConcept> safety;
  final List<ProductShelfLife> shelfLifeStorage;
  final ProdCharacteristic physicalCharacteristics;
  final List<CodeableConcept> languageCode;
  final List<DeviceDefinitionCapability> capability;
  final List<DeviceDefinitionProperty> property;
  final Reference owner;
  final List<ContactPoint> contact;
  final FhirUri url;
  final PrimitiveElement urlElement;
  final FhirUri onlineInformation;
  final PrimitiveElement onlineInformationElement;
  final List<Annotation> note;
  final Quantity quantity;
  final Reference parentDevice;
  final List<DeviceDefinitionMaterial> material;
}

@Data()
@JsonCodable()
class DeviceDefinitionUdiDeviceIdentifier {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String deviceIdentifier;
  final PrimitiveElement deviceIdentifierElement;
  final FhirUri issuer;
  final PrimitiveElement issuerElement;
  final FhirUri jurisdiction;
  final PrimitiveElement jurisdictionElement;
}

@Data()
@JsonCodable()
class DeviceDefinitionDeviceName {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement nameElement;
  final FhirCode type;
  final PrimitiveElement typeElement;
}

@Data()
@JsonCodable()
class DeviceDefinitionSpecialization {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String systemType;
  final PrimitiveElement systemTypeElement;
  final String version;
  final PrimitiveElement versionElement;
}

@Data()
@JsonCodable()
class DeviceDefinitionCapability {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<CodeableConcept> description;
}

@Data()
@JsonCodable()
class DeviceDefinitionProperty {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<Quantity> valueQuantity;
  final List<CodeableConcept> valueCode;
}

@Data()
@JsonCodable()
class DeviceDefinitionMaterial {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept substance;
  final FhirBoolean alternate;
  final PrimitiveElement alternateElement;
  final FhirBoolean allergenicIndicator;
  final PrimitiveElement allergenicIndicatorElement;
}

@Data()
@JsonCodable()
class DeviceMetric {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final CodeableConcept type;
  final CodeableConcept unit;
  final Reference source;
  final Reference parent;
  final FhirCode operationalStatus;
  final PrimitiveElement operationalStatusElement;
  final FhirCode color;
  final PrimitiveElement colorElement;
  final FhirCode category;
  final PrimitiveElement categoryElement;
  final Timing measurementPeriod;
  final List<DeviceMetricCalibration> calibration;
}

@Data()
@JsonCodable()
class DeviceMetricCalibration {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final FhirCode state;
  final PrimitiveElement stateElement;
  final FhirInstant time;
  final PrimitiveElement timeElement;
}

@Data()
@JsonCodable()
class DeviceRequest {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<FhirCanonical> instantiatesCanonical;
  final List<FhirUri> instantiatesUri;
  final List<PrimitiveElement> instantiatesUriElement;
  final List<Reference> basedOn;
  final List<Reference> priorRequest;
  final Identifier groupIdentifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirCode intent;
  final PrimitiveElement intentElement;
  final FhirCode priority;
  final PrimitiveElement priorityElement;
  final Reference codeReference;
  final CodeableConcept codeCodeableConcept;
  final List<DeviceRequestParameter> parameter;
  final Reference subject;
  final Reference encounter;
  final String occurrenceDateTime;
  final PrimitiveElement occurrenceDateTimeElement;
  final Period occurrencePeriod;
  final Timing occurrenceTiming;
  final FhirDateTime authoredOn;
  final PrimitiveElement authoredOnElement;
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
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final CodeableConcept valueCodeableConcept;
  final Quantity valueQuantity;
  final Range valueRange;
  final bool valueBoolean;
  final PrimitiveElement valueBooleanElement;
}

@Data()
@JsonCodable()
class DeviceUseStatement {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<Reference> basedOn;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final Reference subject;
  final List<Reference> derivedFrom;
  final Timing timingTiming;
  final Period timingPeriod;
  final String timingDateTime;
  final PrimitiveElement timingDateTimeElement;
  final FhirDateTime recordedOn;
  final PrimitiveElement recordedOnElement;
  final Reference source;
  final Reference device;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final CodeableConcept bodySite;
  final List<Annotation> note;
}


