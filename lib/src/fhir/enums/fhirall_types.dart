// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A list of all the concrete types defined in this version of the FHIR specification - Abstract Types, Data Types and Resource Types.
@Entity()
class FHIRAllTypes extends FhirCode {
  /// Factory constructor to create [FHIRAllTypes] from JSON.
  factory FHIRAllTypes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRAllTypes.elementOnly(element);
    }
    if (values.contains(value)) {
      return FHIRAllTypes._(value, element);
    }
    throw ArgumentError(
      'FHIRAllTypes.fromJson: JSON value is not a valid value',
    );
  }

  /// Address
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Address([this.element])
      : dbValue = 'Address',
        super('Address', element);

  /// Age
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Age([this.element])
      : dbValue = 'Age',
        super('Age', element);

  /// Annotation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Annotation([this.element])
      : dbValue = 'Annotation',
        super('Annotation', element);

  /// Attachment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Attachment([this.element])
      : dbValue = 'Attachment',
        super('Attachment', element);

  /// BackboneElement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.BackboneElement([this.element])
      : dbValue = 'BackboneElement',
        super('BackboneElement', element);

  /// CodeableConcept
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.CodeableConcept([this.element])
      : dbValue = 'CodeableConcept',
        super('CodeableConcept', element);

  /// CodeableReference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.CodeableReference([this.element])
      : dbValue = 'CodeableReference',
        super('CodeableReference', element);

  /// Coding
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Coding([this.element])
      : dbValue = 'Coding',
        super('Coding', element);

  /// ContactDetail
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ContactDetail([this.element])
      : dbValue = 'ContactDetail',
        super('ContactDetail', element);

  /// ContactPoint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ContactPoint([this.element])
      : dbValue = 'ContactPoint',
        super('ContactPoint', element);

  /// Contributor
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Contributor([this.element])
      : dbValue = 'Contributor',
        super('Contributor', element);

  /// Count
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Count([this.element])
      : dbValue = 'Count',
        super('Count', element);

  /// DataRequirement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.DataRequirement([this.element])
      : dbValue = 'DataRequirement',
        super('DataRequirement', element);

  /// Distance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Distance([this.element])
      : dbValue = 'Distance',
        super('Distance', element);

  /// Dosage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Dosage([this.element])
      : dbValue = 'Dosage',
        super('Dosage', element);

  /// Duration
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Duration([this.element])
      : dbValue = 'Duration',
        super('Duration', element);

  /// Element_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Element_([this.element])
      : dbValue = 'Element',
        super('Element', element);

  /// ElementDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ElementDefinition([this.element])
      : dbValue = 'ElementDefinition',
        super('ElementDefinition', element);

  /// Expression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Expression([this.element])
      : dbValue = 'Expression',
        super('Expression', element);

  /// Extension
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Extension([this.element])
      : dbValue = 'Extension',
        super('Extension', element);

  /// HumanName
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.HumanName([this.element])
      : dbValue = 'HumanName',
        super('HumanName', element);

  /// Identifier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Identifier([this.element])
      : dbValue = 'Identifier',
        super('Identifier', element);

  /// MarketingStatus
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.MarketingStatus([this.element])
      : dbValue = 'MarketingStatus',
        super('MarketingStatus', element);

  /// Meta
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Meta([this.element])
      : dbValue = 'Meta',
        super('Meta', element);

  /// Money
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Money([this.element])
      : dbValue = 'Money',
        super('Money', element);

  /// MoneyQuantity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.MoneyQuantity([this.element])
      : dbValue = 'MoneyQuantity',
        super('MoneyQuantity', element);

  /// Narrative
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Narrative([this.element])
      : dbValue = 'Narrative',
        super('Narrative', element);

  /// ParameterDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ParameterDefinition([this.element])
      : dbValue = 'ParameterDefinition',
        super('ParameterDefinition', element);

  /// Period
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Period([this.element])
      : dbValue = 'Period',
        super('Period', element);

  /// Population
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Population([this.element])
      : dbValue = 'Population',
        super('Population', element);

  /// ProdCharacteristic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ProdCharacteristic([this.element])
      : dbValue = 'ProdCharacteristic',
        super('ProdCharacteristic', element);

  /// ProductShelfLife
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ProductShelfLife([this.element])
      : dbValue = 'ProductShelfLife',
        super('ProductShelfLife', element);

  /// Quantity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Quantity([this.element])
      : dbValue = 'Quantity',
        super('Quantity', element);

  /// Range
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Range([this.element])
      : dbValue = 'Range',
        super('Range', element);

  /// Ratio
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Ratio([this.element])
      : dbValue = 'Ratio',
        super('Ratio', element);

  /// RatioRange
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.RatioRange([this.element])
      : dbValue = 'RatioRange',
        super('RatioRange', element);

  /// Reference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Reference([this.element])
      : dbValue = 'Reference',
        super('Reference', element);

  /// RelatedArtifact
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.RelatedArtifact([this.element])
      : dbValue = 'RelatedArtifact',
        super('RelatedArtifact', element);

  /// SampledData
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.SampledData([this.element])
      : dbValue = 'SampledData',
        super('SampledData', element);

  /// Signature
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Signature([this.element])
      : dbValue = 'Signature',
        super('Signature', element);

  /// SimpleQuantity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.SimpleQuantity([this.element])
      : dbValue = 'SimpleQuantity',
        super('SimpleQuantity', element);

  /// Timing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Timing([this.element])
      : dbValue = 'Timing',
        super('Timing', element);

  /// TriggerDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.TriggerDefinition([this.element])
      : dbValue = 'TriggerDefinition',
        super('TriggerDefinition', element);

  /// UsageContext
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.UsageContext([this.element])
      : dbValue = 'UsageContext',
        super('UsageContext', element);

  /// base64Binary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.base64Binary([this.element])
      : dbValue = 'base64Binary',
        super('base64Binary', element);

  /// boolean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.boolean([this.element])
      : dbValue = 'boolean',
        super('boolean', element);

  /// canonical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.canonical([this.element])
      : dbValue = 'canonical',
        super('canonical', element);

  /// code
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.code([this.element])
      : dbValue = 'code',
        super('code', element);

  /// date
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.date([this.element])
      : dbValue = 'date',
        super('date', element);

  /// dateTime
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.dateTime([this.element])
      : dbValue = 'dateTime',
        super('dateTime', element);

  /// decimal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.decimal([this.element])
      : dbValue = 'decimal',
        super('decimal', element);

  /// id
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.id([this.element])
      : dbValue = 'id',
        super('id', element);

  /// instant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.instant([this.element])
      : dbValue = 'instant',
        super('instant', element);

  /// integer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.integer([this.element])
      : dbValue = 'integer',
        super('integer', element);

  /// markdown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.markdown([this.element])
      : dbValue = 'markdown',
        super('markdown', element);

  /// oid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.oid([this.element])
      : dbValue = 'oid',
        super('oid', element);

  /// positiveInt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.positiveInt([this.element])
      : dbValue = 'positiveInt',
        super('positiveInt', element);

  /// string
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.string([this.element])
      : dbValue = 'string',
        super('string', element);

  /// time
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.time([this.element])
      : dbValue = 'time',
        super('time', element);

  /// unsignedInt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.unsignedInt([this.element])
      : dbValue = 'unsignedInt',
        super('unsignedInt', element);

  /// uri
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.uri([this.element])
      : dbValue = 'uri',
        super('uri', element);

  /// url
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.url([this.element])
      : dbValue = 'url',
        super('url', element);

  /// uuid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.uuid([this.element])
      : dbValue = 'uuid',
        super('uuid', element);

  /// xhtml
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.xhtml([this.element])
      : dbValue = 'xhtml',
        super('xhtml', element);

  /// Resource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Resource([this.element])
      : dbValue = 'Resource',
        super('Resource', element);

  /// Binary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Binary([this.element])
      : dbValue = 'Binary',
        super('Binary', element);

  /// Bundle
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Bundle([this.element])
      : dbValue = 'Bundle',
        super('Bundle', element);

  /// DomainResource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.DomainResource([this.element])
      : dbValue = 'DomainResource',
        super('DomainResource', element);

  /// Account
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Account([this.element])
      : dbValue = 'Account',
        super('Account', element);

  /// ActivityDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ActivityDefinition([this.element])
      : dbValue = 'ActivityDefinition',
        super('ActivityDefinition', element);

  /// AdministrableProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.AdministrableProductDefinition([this.element])
      : dbValue = 'AdministrableProductDefinition',
        super('AdministrableProductDefinition', element);

  /// AdverseEvent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.AdverseEvent([this.element])
      : dbValue = 'AdverseEvent',
        super('AdverseEvent', element);

  /// AllergyIntolerance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.AllergyIntolerance([this.element])
      : dbValue = 'AllergyIntolerance',
        super('AllergyIntolerance', element);

  /// Appointment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Appointment([this.element])
      : dbValue = 'Appointment',
        super('Appointment', element);

  /// AppointmentResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.AppointmentResponse([this.element])
      : dbValue = 'AppointmentResponse',
        super('AppointmentResponse', element);

  /// AuditEvent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.AuditEvent([this.element])
      : dbValue = 'AuditEvent',
        super('AuditEvent', element);

  /// Basic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Basic([this.element])
      : dbValue = 'Basic',
        super('Basic', element);

  /// BiologicallyDerivedProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.BiologicallyDerivedProduct([this.element])
      : dbValue = 'BiologicallyDerivedProduct',
        super('BiologicallyDerivedProduct', element);

  /// BodyStructure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.BodyStructure([this.element])
      : dbValue = 'BodyStructure',
        super('BodyStructure', element);

  /// CapabilityStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.CapabilityStatement([this.element])
      : dbValue = 'CapabilityStatement',
        super('CapabilityStatement', element);

  /// CarePlan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.CarePlan([this.element])
      : dbValue = 'CarePlan',
        super('CarePlan', element);

  /// CareTeam
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.CareTeam([this.element])
      : dbValue = 'CareTeam',
        super('CareTeam', element);

  /// CatalogEntry
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.CatalogEntry([this.element])
      : dbValue = 'CatalogEntry',
        super('CatalogEntry', element);

  /// ChargeItem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ChargeItem([this.element])
      : dbValue = 'ChargeItem',
        super('ChargeItem', element);

  /// ChargeItemDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ChargeItemDefinition([this.element])
      : dbValue = 'ChargeItemDefinition',
        super('ChargeItemDefinition', element);

  /// Citation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Citation([this.element])
      : dbValue = 'Citation',
        super('Citation', element);

  /// Claim
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Claim([this.element])
      : dbValue = 'Claim',
        super('Claim', element);

  /// ClaimResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ClaimResponse([this.element])
      : dbValue = 'ClaimResponse',
        super('ClaimResponse', element);

  /// ClinicalImpression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ClinicalImpression([this.element])
      : dbValue = 'ClinicalImpression',
        super('ClinicalImpression', element);

  /// ClinicalUseDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ClinicalUseDefinition([this.element])
      : dbValue = 'ClinicalUseDefinition',
        super('ClinicalUseDefinition', element);

  /// CodeSystem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.CodeSystem([this.element])
      : dbValue = 'CodeSystem',
        super('CodeSystem', element);

  /// Communication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Communication([this.element])
      : dbValue = 'Communication',
        super('Communication', element);

  /// CommunicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.CommunicationRequest([this.element])
      : dbValue = 'CommunicationRequest',
        super('CommunicationRequest', element);

  /// CompartmentDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.CompartmentDefinition([this.element])
      : dbValue = 'CompartmentDefinition',
        super('CompartmentDefinition', element);

  /// Composition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Composition([this.element])
      : dbValue = 'Composition',
        super('Composition', element);

  /// ConceptMap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ConceptMap([this.element])
      : dbValue = 'ConceptMap',
        super('ConceptMap', element);

  /// Condition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Condition([this.element])
      : dbValue = 'Condition',
        super('Condition', element);

  /// Consent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Consent([this.element])
      : dbValue = 'Consent',
        super('Consent', element);

  /// Contract
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Contract([this.element])
      : dbValue = 'Contract',
        super('Contract', element);

  /// Coverage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Coverage([this.element])
      : dbValue = 'Coverage',
        super('Coverage', element);

  /// CoverageEligibilityRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.CoverageEligibilityRequest([this.element])
      : dbValue = 'CoverageEligibilityRequest',
        super('CoverageEligibilityRequest', element);

  /// CoverageEligibilityResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.CoverageEligibilityResponse([this.element])
      : dbValue = 'CoverageEligibilityResponse',
        super('CoverageEligibilityResponse', element);

  /// DetectedIssue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.DetectedIssue([this.element])
      : dbValue = 'DetectedIssue',
        super('DetectedIssue', element);

  /// Device
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Device([this.element])
      : dbValue = 'Device',
        super('Device', element);

  /// DeviceDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.DeviceDefinition([this.element])
      : dbValue = 'DeviceDefinition',
        super('DeviceDefinition', element);

  /// DeviceMetric
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.DeviceMetric([this.element])
      : dbValue = 'DeviceMetric',
        super('DeviceMetric', element);

  /// DeviceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.DeviceRequest([this.element])
      : dbValue = 'DeviceRequest',
        super('DeviceRequest', element);

  /// DeviceUseStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.DeviceUseStatement([this.element])
      : dbValue = 'DeviceUseStatement',
        super('DeviceUseStatement', element);

  /// DiagnosticReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.DiagnosticReport([this.element])
      : dbValue = 'DiagnosticReport',
        super('DiagnosticReport', element);

  /// DocumentManifest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.DocumentManifest([this.element])
      : dbValue = 'DocumentManifest',
        super('DocumentManifest', element);

  /// DocumentReference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.DocumentReference([this.element])
      : dbValue = 'DocumentReference',
        super('DocumentReference', element);

  /// Encounter
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Encounter([this.element])
      : dbValue = 'Encounter',
        super('Encounter', element);

  /// Endpoint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Endpoint([this.element])
      : dbValue = 'Endpoint',
        super('Endpoint', element);

  /// EnrollmentRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.EnrollmentRequest([this.element])
      : dbValue = 'EnrollmentRequest',
        super('EnrollmentRequest', element);

  /// EnrollmentResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.EnrollmentResponse([this.element])
      : dbValue = 'EnrollmentResponse',
        super('EnrollmentResponse', element);

  /// EpisodeOfCare
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.EpisodeOfCare([this.element])
      : dbValue = 'EpisodeOfCare',
        super('EpisodeOfCare', element);

  /// EventDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.EventDefinition([this.element])
      : dbValue = 'EventDefinition',
        super('EventDefinition', element);

  /// Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Evidence([this.element])
      : dbValue = 'Evidence',
        super('Evidence', element);

  /// EvidenceReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.EvidenceReport([this.element])
      : dbValue = 'EvidenceReport',
        super('EvidenceReport', element);

  /// EvidenceVariable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.EvidenceVariable([this.element])
      : dbValue = 'EvidenceVariable',
        super('EvidenceVariable', element);

  /// ExampleScenario
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ExampleScenario([this.element])
      : dbValue = 'ExampleScenario',
        super('ExampleScenario', element);

  /// ExplanationOfBenefit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ExplanationOfBenefit([this.element])
      : dbValue = 'ExplanationOfBenefit',
        super('ExplanationOfBenefit', element);

  /// FamilyMemberHistory
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.FamilyMemberHistory([this.element])
      : dbValue = 'FamilyMemberHistory',
        super('FamilyMemberHistory', element);

  /// Flag
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Flag([this.element])
      : dbValue = 'Flag',
        super('Flag', element);

  /// Goal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Goal([this.element])
      : dbValue = 'Goal',
        super('Goal', element);

  /// GraphDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.GraphDefinition([this.element])
      : dbValue = 'GraphDefinition',
        super('GraphDefinition', element);

  /// Group
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Group([this.element])
      : dbValue = 'Group',
        super('Group', element);

  /// GuidanceResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.GuidanceResponse([this.element])
      : dbValue = 'GuidanceResponse',
        super('GuidanceResponse', element);

  /// HealthcareService
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.HealthcareService([this.element])
      : dbValue = 'HealthcareService',
        super('HealthcareService', element);

  /// ImagingStudy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ImagingStudy([this.element])
      : dbValue = 'ImagingStudy',
        super('ImagingStudy', element);

  /// Immunization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Immunization([this.element])
      : dbValue = 'Immunization',
        super('Immunization', element);

  /// ImmunizationEvaluation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ImmunizationEvaluation([this.element])
      : dbValue = 'ImmunizationEvaluation',
        super('ImmunizationEvaluation', element);

  /// ImmunizationRecommendation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ImmunizationRecommendation([this.element])
      : dbValue = 'ImmunizationRecommendation',
        super('ImmunizationRecommendation', element);

  /// ImplementationGuide
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ImplementationGuide([this.element])
      : dbValue = 'ImplementationGuide',
        super('ImplementationGuide', element);

  /// Ingredient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Ingredient([this.element])
      : dbValue = 'Ingredient',
        super('Ingredient', element);

  /// InsurancePlan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.InsurancePlan([this.element])
      : dbValue = 'InsurancePlan',
        super('InsurancePlan', element);

  /// Invoice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Invoice([this.element])
      : dbValue = 'Invoice',
        super('Invoice', element);

  /// Library
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Library([this.element])
      : dbValue = 'Library',
        super('Library', element);

  /// Linkage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Linkage([this.element])
      : dbValue = 'Linkage',
        super('Linkage', element);

  /// List_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.List_([this.element])
      : dbValue = 'List',
        super('List', element);

  /// Location
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Location([this.element])
      : dbValue = 'Location',
        super('Location', element);

  /// ManufacturedItemDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ManufacturedItemDefinition([this.element])
      : dbValue = 'ManufacturedItemDefinition',
        super('ManufacturedItemDefinition', element);

  /// Measure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Measure([this.element])
      : dbValue = 'Measure',
        super('Measure', element);

  /// MeasureReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.MeasureReport([this.element])
      : dbValue = 'MeasureReport',
        super('MeasureReport', element);

  /// Media
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Media([this.element])
      : dbValue = 'Media',
        super('Media', element);

  /// Medication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Medication([this.element])
      : dbValue = 'Medication',
        super('Medication', element);

  /// MedicationAdministration
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.MedicationAdministration([this.element])
      : dbValue = 'MedicationAdministration',
        super('MedicationAdministration', element);

  /// MedicationDispense
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.MedicationDispense([this.element])
      : dbValue = 'MedicationDispense',
        super('MedicationDispense', element);

  /// MedicationKnowledge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.MedicationKnowledge([this.element])
      : dbValue = 'MedicationKnowledge',
        super('MedicationKnowledge', element);

  /// MedicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.MedicationRequest([this.element])
      : dbValue = 'MedicationRequest',
        super('MedicationRequest', element);

  /// MedicationStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.MedicationStatement([this.element])
      : dbValue = 'MedicationStatement',
        super('MedicationStatement', element);

  /// MedicinalProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.MedicinalProductDefinition([this.element])
      : dbValue = 'MedicinalProductDefinition',
        super('MedicinalProductDefinition', element);

  /// MessageDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.MessageDefinition([this.element])
      : dbValue = 'MessageDefinition',
        super('MessageDefinition', element);

  /// MessageHeader
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.MessageHeader([this.element])
      : dbValue = 'MessageHeader',
        super('MessageHeader', element);

  /// MolecularSequence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.MolecularSequence([this.element])
      : dbValue = 'MolecularSequence',
        super('MolecularSequence', element);

  /// NamingSystem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.NamingSystem([this.element])
      : dbValue = 'NamingSystem',
        super('NamingSystem', element);

  /// NutritionOrder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.NutritionOrder([this.element])
      : dbValue = 'NutritionOrder',
        super('NutritionOrder', element);

  /// NutritionProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.NutritionProduct([this.element])
      : dbValue = 'NutritionProduct',
        super('NutritionProduct', element);

  /// Observation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Observation([this.element])
      : dbValue = 'Observation',
        super('Observation', element);

  /// ObservationDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ObservationDefinition([this.element])
      : dbValue = 'ObservationDefinition',
        super('ObservationDefinition', element);

  /// OperationDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.OperationDefinition([this.element])
      : dbValue = 'OperationDefinition',
        super('OperationDefinition', element);

  /// OperationOutcome
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.OperationOutcome([this.element])
      : dbValue = 'OperationOutcome',
        super('OperationOutcome', element);

  /// Organization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Organization([this.element])
      : dbValue = 'Organization',
        super('Organization', element);

  /// OrganizationAffiliation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.OrganizationAffiliation([this.element])
      : dbValue = 'OrganizationAffiliation',
        super('OrganizationAffiliation', element);

  /// PackagedProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.PackagedProductDefinition([this.element])
      : dbValue = 'PackagedProductDefinition',
        super('PackagedProductDefinition', element);

  /// Patient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Patient([this.element])
      : dbValue = 'Patient',
        super('Patient', element);

  /// PaymentNotice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.PaymentNotice([this.element])
      : dbValue = 'PaymentNotice',
        super('PaymentNotice', element);

  /// PaymentReconciliation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.PaymentReconciliation([this.element])
      : dbValue = 'PaymentReconciliation',
        super('PaymentReconciliation', element);

  /// Person
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Person([this.element])
      : dbValue = 'Person',
        super('Person', element);

  /// PlanDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.PlanDefinition([this.element])
      : dbValue = 'PlanDefinition',
        super('PlanDefinition', element);

  /// Practitioner
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Practitioner([this.element])
      : dbValue = 'Practitioner',
        super('Practitioner', element);

  /// PractitionerRole
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.PractitionerRole([this.element])
      : dbValue = 'PractitionerRole',
        super('PractitionerRole', element);

  /// Procedure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Procedure([this.element])
      : dbValue = 'Procedure',
        super('Procedure', element);

  /// Provenance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Provenance([this.element])
      : dbValue = 'Provenance',
        super('Provenance', element);

  /// Questionnaire
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Questionnaire([this.element])
      : dbValue = 'Questionnaire',
        super('Questionnaire', element);

  /// QuestionnaireResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.QuestionnaireResponse([this.element])
      : dbValue = 'QuestionnaireResponse',
        super('QuestionnaireResponse', element);

  /// RegulatedAuthorization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.RegulatedAuthorization([this.element])
      : dbValue = 'RegulatedAuthorization',
        super('RegulatedAuthorization', element);

  /// RelatedPerson
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.RelatedPerson([this.element])
      : dbValue = 'RelatedPerson',
        super('RelatedPerson', element);

  /// RequestGroup
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.RequestGroup([this.element])
      : dbValue = 'RequestGroup',
        super('RequestGroup', element);

  /// ResearchDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ResearchDefinition([this.element])
      : dbValue = 'ResearchDefinition',
        super('ResearchDefinition', element);

  /// ResearchElementDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ResearchElementDefinition([this.element])
      : dbValue = 'ResearchElementDefinition',
        super('ResearchElementDefinition', element);

  /// ResearchStudy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ResearchStudy([this.element])
      : dbValue = 'ResearchStudy',
        super('ResearchStudy', element);

  /// ResearchSubject
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ResearchSubject([this.element])
      : dbValue = 'ResearchSubject',
        super('ResearchSubject', element);

  /// RiskAssessment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.RiskAssessment([this.element])
      : dbValue = 'RiskAssessment',
        super('RiskAssessment', element);

  /// Schedule
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Schedule([this.element])
      : dbValue = 'Schedule',
        super('Schedule', element);

  /// SearchParameter
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.SearchParameter([this.element])
      : dbValue = 'SearchParameter',
        super('SearchParameter', element);

  /// ServiceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ServiceRequest([this.element])
      : dbValue = 'ServiceRequest',
        super('ServiceRequest', element);

  /// Slot
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Slot([this.element])
      : dbValue = 'Slot',
        super('Slot', element);

  /// Specimen
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Specimen([this.element])
      : dbValue = 'Specimen',
        super('Specimen', element);

  /// SpecimenDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.SpecimenDefinition([this.element])
      : dbValue = 'SpecimenDefinition',
        super('SpecimenDefinition', element);

  /// StructureDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.StructureDefinition([this.element])
      : dbValue = 'StructureDefinition',
        super('StructureDefinition', element);

  /// StructureMap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.StructureMap([this.element])
      : dbValue = 'StructureMap',
        super('StructureMap', element);

  /// Subscription
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Subscription([this.element])
      : dbValue = 'Subscription',
        super('Subscription', element);

  /// SubscriptionStatus
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.SubscriptionStatus([this.element])
      : dbValue = 'SubscriptionStatus',
        super('SubscriptionStatus', element);

  /// SubscriptionTopic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.SubscriptionTopic([this.element])
      : dbValue = 'SubscriptionTopic',
        super('SubscriptionTopic', element);

  /// Substance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Substance([this.element])
      : dbValue = 'Substance',
        super('Substance', element);

  /// SubstanceDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.SubstanceDefinition([this.element])
      : dbValue = 'SubstanceDefinition',
        super('SubstanceDefinition', element);

  /// SupplyDelivery
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.SupplyDelivery([this.element])
      : dbValue = 'SupplyDelivery',
        super('SupplyDelivery', element);

  /// SupplyRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.SupplyRequest([this.element])
      : dbValue = 'SupplyRequest',
        super('SupplyRequest', element);

  /// Task
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Task([this.element])
      : dbValue = 'Task',
        super('Task', element);

  /// TerminologyCapabilities
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.TerminologyCapabilities([this.element])
      : dbValue = 'TerminologyCapabilities',
        super('TerminologyCapabilities', element);

  /// TestReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.TestReport([this.element])
      : dbValue = 'TestReport',
        super('TestReport', element);

  /// TestScript
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.TestScript([this.element])
      : dbValue = 'TestScript',
        super('TestScript', element);

  /// ValueSet
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.ValueSet([this.element])
      : dbValue = 'ValueSet',
        super('ValueSet', element);

  /// VerificationResult
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.VerificationResult([this.element])
      : dbValue = 'VerificationResult',
        super('VerificationResult', element);

  /// VisionPrescription
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.VisionPrescription([this.element])
      : dbValue = 'VisionPrescription',
        super('VisionPrescription', element);

  /// Parameters
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Parameters([this.element])
      : dbValue = 'Parameters',
        super('Parameters', element);

  /// Type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Type([this.element])
      : dbValue = 'Type',
        super('Type', element);

  /// Any
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRAllTypes.Any([this.element])
      : dbValue = 'Any',
        super('Any', element);

  /// For instances where an Element is present but not value

  FHIRAllTypes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  FHIRAllTypes._(super.input, [super.element])
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
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'Address',
    'Age',
    'Annotation',
    'Attachment',
    'BackboneElement',
    'CodeableConcept',
    'CodeableReference',
    'Coding',
    'ContactDetail',
    'ContactPoint',
    'Contributor',
    'Count',
    'DataRequirement',
    'Distance',
    'Dosage',
    'Duration',
    'Element',
    'ElementDefinition',
    'Expression',
    'Extension',
    'HumanName',
    'Identifier',
    'MarketingStatus',
    'Meta',
    'Money',
    'MoneyQuantity',
    'Narrative',
    'ParameterDefinition',
    'Period',
    'Population',
    'ProdCharacteristic',
    'ProductShelfLife',
    'Quantity',
    'Range',
    'Ratio',
    'RatioRange',
    'Reference',
    'RelatedArtifact',
    'SampledData',
    'Signature',
    'SimpleQuantity',
    'Timing',
    'TriggerDefinition',
    'UsageContext',
    'base64Binary',
    'boolean',
    'canonical',
    'code',
    'date',
    'dateTime',
    'decimal',
    'id',
    'instant',
    'integer',
    'markdown',
    'oid',
    'positiveInt',
    'string',
    'time',
    'unsignedInt',
    'uri',
    'url',
    'uuid',
    'xhtml',
    'Resource',
    'Binary',
    'Bundle',
    'DomainResource',
    'Account',
    'ActivityDefinition',
    'AdministrableProductDefinition',
    'AdverseEvent',
    'AllergyIntolerance',
    'Appointment',
    'AppointmentResponse',
    'AuditEvent',
    'Basic',
    'BiologicallyDerivedProduct',
    'BodyStructure',
    'CapabilityStatement',
    'CarePlan',
    'CareTeam',
    'CatalogEntry',
    'ChargeItem',
    'ChargeItemDefinition',
    'Citation',
    'Claim',
    'ClaimResponse',
    'ClinicalImpression',
    'ClinicalUseDefinition',
    'CodeSystem',
    'Communication',
    'CommunicationRequest',
    'CompartmentDefinition',
    'Composition',
    'ConceptMap',
    'Condition',
    'Consent',
    'Contract',
    'Coverage',
    'CoverageEligibilityRequest',
    'CoverageEligibilityResponse',
    'DetectedIssue',
    'Device',
    'DeviceDefinition',
    'DeviceMetric',
    'DeviceRequest',
    'DeviceUseStatement',
    'DiagnosticReport',
    'DocumentManifest',
    'DocumentReference',
    'Encounter',
    'Endpoint',
    'EnrollmentRequest',
    'EnrollmentResponse',
    'EpisodeOfCare',
    'EventDefinition',
    'Evidence',
    'EvidenceReport',
    'EvidenceVariable',
    'ExampleScenario',
    'ExplanationOfBenefit',
    'FamilyMemberHistory',
    'Flag',
    'Goal',
    'GraphDefinition',
    'Group',
    'GuidanceResponse',
    'HealthcareService',
    'ImagingStudy',
    'Immunization',
    'ImmunizationEvaluation',
    'ImmunizationRecommendation',
    'ImplementationGuide',
    'Ingredient',
    'InsurancePlan',
    'Invoice',
    'Library',
    'Linkage',
    'List',
    'Location',
    'ManufacturedItemDefinition',
    'Measure',
    'MeasureReport',
    'Media',
    'Medication',
    'MedicationAdministration',
    'MedicationDispense',
    'MedicationKnowledge',
    'MedicationRequest',
    'MedicationStatement',
    'MedicinalProductDefinition',
    'MessageDefinition',
    'MessageHeader',
    'MolecularSequence',
    'NamingSystem',
    'NutritionOrder',
    'NutritionProduct',
    'Observation',
    'ObservationDefinition',
    'OperationDefinition',
    'OperationOutcome',
    'Organization',
    'OrganizationAffiliation',
    'PackagedProductDefinition',
    'Patient',
    'PaymentNotice',
    'PaymentReconciliation',
    'Person',
    'PlanDefinition',
    'Practitioner',
    'PractitionerRole',
    'Procedure',
    'Provenance',
    'Questionnaire',
    'QuestionnaireResponse',
    'RegulatedAuthorization',
    'RelatedPerson',
    'RequestGroup',
    'ResearchDefinition',
    'ResearchElementDefinition',
    'ResearchStudy',
    'ResearchSubject',
    'RiskAssessment',
    'Schedule',
    'SearchParameter',
    'ServiceRequest',
    'Slot',
    'Specimen',
    'SpecimenDefinition',
    'StructureDefinition',
    'StructureMap',
    'Subscription',
    'SubscriptionStatus',
    'SubscriptionTopic',
    'Substance',
    'SubstanceDefinition',
    'SupplyDelivery',
    'SupplyRequest',
    'Task',
    'TerminologyCapabilities',
    'TestReport',
    'TestScript',
    'ValueSet',
    'VerificationResult',
    'VisionPrescription',
    'Parameters',
    'Type',
    'Any',
  ];

  /// Returns the enum value with an element attached
  FHIRAllTypes withElement(Element? newElement) {
    return FHIRAllTypes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FHIRAllTypes.$value';
}
