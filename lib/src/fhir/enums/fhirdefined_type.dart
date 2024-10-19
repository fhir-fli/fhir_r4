// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A list of all the concrete types defined in this version of the FHIR specification - Data Types and Resource Types.
@Entity()
class FHIRDefinedType extends FhirCode {
  /// Factory constructor to create [FHIRDefinedType] from JSON.
  factory FHIRDefinedType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRDefinedType.elementOnly(element);
    }
    if (values.contains(value)) {
      return FHIRDefinedType._(value, element);
    }
    throw ArgumentError(
      'FHIRDefinedType.fromJson: JSON value is not a valid value',
    );
  }

  /// Address
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Address([this.element])
      : dbValue = 'Address',
        super('Address', element);

  /// Age
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Age([this.element])
      : dbValue = 'Age',
        super('Age', element);

  /// Annotation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Annotation([this.element])
      : dbValue = 'Annotation',
        super('Annotation', element);

  /// Attachment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Attachment([this.element])
      : dbValue = 'Attachment',
        super('Attachment', element);

  /// BackboneElement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.BackboneElement([this.element])
      : dbValue = 'BackboneElement',
        super('BackboneElement', element);

  /// CodeableConcept
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.CodeableConcept([this.element])
      : dbValue = 'CodeableConcept',
        super('CodeableConcept', element);

  /// CodeableReference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.CodeableReference([this.element])
      : dbValue = 'CodeableReference',
        super('CodeableReference', element);

  /// Coding
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Coding([this.element])
      : dbValue = 'Coding',
        super('Coding', element);

  /// ContactDetail
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ContactDetail([this.element])
      : dbValue = 'ContactDetail',
        super('ContactDetail', element);

  /// ContactPoint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ContactPoint([this.element])
      : dbValue = 'ContactPoint',
        super('ContactPoint', element);

  /// Contributor
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Contributor([this.element])
      : dbValue = 'Contributor',
        super('Contributor', element);

  /// Count
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Count([this.element])
      : dbValue = 'Count',
        super('Count', element);

  /// DataRequirement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.DataRequirement([this.element])
      : dbValue = 'DataRequirement',
        super('DataRequirement', element);

  /// Distance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Distance([this.element])
      : dbValue = 'Distance',
        super('Distance', element);

  /// Dosage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Dosage([this.element])
      : dbValue = 'Dosage',
        super('Dosage', element);

  /// Duration
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Duration([this.element])
      : dbValue = 'Duration',
        super('Duration', element);

  /// Element_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Element_([this.element])
      : dbValue = 'Element',
        super('Element', element);

  /// ElementDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ElementDefinition([this.element])
      : dbValue = 'ElementDefinition',
        super('ElementDefinition', element);

  /// Expression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Expression([this.element])
      : dbValue = 'Expression',
        super('Expression', element);

  /// Extension
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Extension([this.element])
      : dbValue = 'Extension',
        super('Extension', element);

  /// HumanName
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.HumanName([this.element])
      : dbValue = 'HumanName',
        super('HumanName', element);

  /// Identifier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Identifier([this.element])
      : dbValue = 'Identifier',
        super('Identifier', element);

  /// MarketingStatus
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.MarketingStatus([this.element])
      : dbValue = 'MarketingStatus',
        super('MarketingStatus', element);

  /// Meta
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Meta([this.element])
      : dbValue = 'Meta',
        super('Meta', element);

  /// Money
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Money([this.element])
      : dbValue = 'Money',
        super('Money', element);

  /// MoneyQuantity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.MoneyQuantity([this.element])
      : dbValue = 'MoneyQuantity',
        super('MoneyQuantity', element);

  /// Narrative
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Narrative([this.element])
      : dbValue = 'Narrative',
        super('Narrative', element);

  /// ParameterDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ParameterDefinition([this.element])
      : dbValue = 'ParameterDefinition',
        super('ParameterDefinition', element);

  /// Period
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Period([this.element])
      : dbValue = 'Period',
        super('Period', element);

  /// Population
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Population([this.element])
      : dbValue = 'Population',
        super('Population', element);

  /// ProdCharacteristic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ProdCharacteristic([this.element])
      : dbValue = 'ProdCharacteristic',
        super('ProdCharacteristic', element);

  /// ProductShelfLife
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ProductShelfLife([this.element])
      : dbValue = 'ProductShelfLife',
        super('ProductShelfLife', element);

  /// Quantity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Quantity([this.element])
      : dbValue = 'Quantity',
        super('Quantity', element);

  /// Range
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Range([this.element])
      : dbValue = 'Range',
        super('Range', element);

  /// Ratio
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Ratio([this.element])
      : dbValue = 'Ratio',
        super('Ratio', element);

  /// RatioRange
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.RatioRange([this.element])
      : dbValue = 'RatioRange',
        super('RatioRange', element);

  /// Reference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Reference([this.element])
      : dbValue = 'Reference',
        super('Reference', element);

  /// RelatedArtifact
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.RelatedArtifact([this.element])
      : dbValue = 'RelatedArtifact',
        super('RelatedArtifact', element);

  /// SampledData
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.SampledData([this.element])
      : dbValue = 'SampledData',
        super('SampledData', element);

  /// Signature
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Signature([this.element])
      : dbValue = 'Signature',
        super('Signature', element);

  /// SimpleQuantity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.SimpleQuantity([this.element])
      : dbValue = 'SimpleQuantity',
        super('SimpleQuantity', element);

  /// Timing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Timing([this.element])
      : dbValue = 'Timing',
        super('Timing', element);

  /// TriggerDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.TriggerDefinition([this.element])
      : dbValue = 'TriggerDefinition',
        super('TriggerDefinition', element);

  /// UsageContext
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.UsageContext([this.element])
      : dbValue = 'UsageContext',
        super('UsageContext', element);

  /// base64Binary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.base64Binary([this.element])
      : dbValue = 'base64Binary',
        super('base64Binary', element);

  /// boolean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.boolean([this.element])
      : dbValue = 'boolean',
        super('boolean', element);

  /// canonical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.canonical([this.element])
      : dbValue = 'canonical',
        super('canonical', element);

  /// code
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.code([this.element])
      : dbValue = 'code',
        super('code', element);

  /// date
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.date([this.element])
      : dbValue = 'date',
        super('date', element);

  /// dateTime
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.dateTime([this.element])
      : dbValue = 'dateTime',
        super('dateTime', element);

  /// decimal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.decimal([this.element])
      : dbValue = 'decimal',
        super('decimal', element);

  /// id
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.id([this.element])
      : dbValue = 'id',
        super('id', element);

  /// instant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.instant([this.element])
      : dbValue = 'instant',
        super('instant', element);

  /// integer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.integer([this.element])
      : dbValue = 'integer',
        super('integer', element);

  /// markdown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.markdown([this.element])
      : dbValue = 'markdown',
        super('markdown', element);

  /// oid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.oid([this.element])
      : dbValue = 'oid',
        super('oid', element);

  /// positiveInt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.positiveInt([this.element])
      : dbValue = 'positiveInt',
        super('positiveInt', element);

  /// string
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.string([this.element])
      : dbValue = 'string',
        super('string', element);

  /// time
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.time([this.element])
      : dbValue = 'time',
        super('time', element);

  /// unsignedInt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.unsignedInt([this.element])
      : dbValue = 'unsignedInt',
        super('unsignedInt', element);

  /// uri
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.uri([this.element])
      : dbValue = 'uri',
        super('uri', element);

  /// url
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.url([this.element])
      : dbValue = 'url',
        super('url', element);

  /// uuid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.uuid([this.element])
      : dbValue = 'uuid',
        super('uuid', element);

  /// xhtml
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.xhtml([this.element])
      : dbValue = 'xhtml',
        super('xhtml', element);

  /// Resource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Resource([this.element])
      : dbValue = 'Resource',
        super('Resource', element);

  /// Binary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Binary([this.element])
      : dbValue = 'Binary',
        super('Binary', element);

  /// Bundle
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Bundle([this.element])
      : dbValue = 'Bundle',
        super('Bundle', element);

  /// DomainResource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.DomainResource([this.element])
      : dbValue = 'DomainResource',
        super('DomainResource', element);

  /// Account
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Account([this.element])
      : dbValue = 'Account',
        super('Account', element);

  /// ActivityDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ActivityDefinition([this.element])
      : dbValue = 'ActivityDefinition',
        super('ActivityDefinition', element);

  /// AdministrableProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.AdministrableProductDefinition([this.element])
      : dbValue = 'AdministrableProductDefinition',
        super('AdministrableProductDefinition', element);

  /// AdverseEvent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.AdverseEvent([this.element])
      : dbValue = 'AdverseEvent',
        super('AdverseEvent', element);

  /// AllergyIntolerance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.AllergyIntolerance([this.element])
      : dbValue = 'AllergyIntolerance',
        super('AllergyIntolerance', element);

  /// Appointment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Appointment([this.element])
      : dbValue = 'Appointment',
        super('Appointment', element);

  /// AppointmentResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.AppointmentResponse([this.element])
      : dbValue = 'AppointmentResponse',
        super('AppointmentResponse', element);

  /// AuditEvent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.AuditEvent([this.element])
      : dbValue = 'AuditEvent',
        super('AuditEvent', element);

  /// Basic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Basic([this.element])
      : dbValue = 'Basic',
        super('Basic', element);

  /// BiologicallyDerivedProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.BiologicallyDerivedProduct([this.element])
      : dbValue = 'BiologicallyDerivedProduct',
        super('BiologicallyDerivedProduct', element);

  /// BodyStructure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.BodyStructure([this.element])
      : dbValue = 'BodyStructure',
        super('BodyStructure', element);

  /// CapabilityStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.CapabilityStatement([this.element])
      : dbValue = 'CapabilityStatement',
        super('CapabilityStatement', element);

  /// CarePlan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.CarePlan([this.element])
      : dbValue = 'CarePlan',
        super('CarePlan', element);

  /// CareTeam
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.CareTeam([this.element])
      : dbValue = 'CareTeam',
        super('CareTeam', element);

  /// CatalogEntry
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.CatalogEntry([this.element])
      : dbValue = 'CatalogEntry',
        super('CatalogEntry', element);

  /// ChargeItem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ChargeItem([this.element])
      : dbValue = 'ChargeItem',
        super('ChargeItem', element);

  /// ChargeItemDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ChargeItemDefinition([this.element])
      : dbValue = 'ChargeItemDefinition',
        super('ChargeItemDefinition', element);

  /// Citation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Citation([this.element])
      : dbValue = 'Citation',
        super('Citation', element);

  /// Claim
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Claim([this.element])
      : dbValue = 'Claim',
        super('Claim', element);

  /// ClaimResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ClaimResponse([this.element])
      : dbValue = 'ClaimResponse',
        super('ClaimResponse', element);

  /// ClinicalImpression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ClinicalImpression([this.element])
      : dbValue = 'ClinicalImpression',
        super('ClinicalImpression', element);

  /// ClinicalUseDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ClinicalUseDefinition([this.element])
      : dbValue = 'ClinicalUseDefinition',
        super('ClinicalUseDefinition', element);

  /// CodeSystem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.CodeSystem([this.element])
      : dbValue = 'CodeSystem',
        super('CodeSystem', element);

  /// Communication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Communication([this.element])
      : dbValue = 'Communication',
        super('Communication', element);

  /// CommunicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.CommunicationRequest([this.element])
      : dbValue = 'CommunicationRequest',
        super('CommunicationRequest', element);

  /// CompartmentDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.CompartmentDefinition([this.element])
      : dbValue = 'CompartmentDefinition',
        super('CompartmentDefinition', element);

  /// Composition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Composition([this.element])
      : dbValue = 'Composition',
        super('Composition', element);

  /// ConceptMap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ConceptMap([this.element])
      : dbValue = 'ConceptMap',
        super('ConceptMap', element);

  /// Condition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Condition([this.element])
      : dbValue = 'Condition',
        super('Condition', element);

  /// Consent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Consent([this.element])
      : dbValue = 'Consent',
        super('Consent', element);

  /// Contract
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Contract([this.element])
      : dbValue = 'Contract',
        super('Contract', element);

  /// Coverage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Coverage([this.element])
      : dbValue = 'Coverage',
        super('Coverage', element);

  /// CoverageEligibilityRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.CoverageEligibilityRequest([this.element])
      : dbValue = 'CoverageEligibilityRequest',
        super('CoverageEligibilityRequest', element);

  /// CoverageEligibilityResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.CoverageEligibilityResponse([this.element])
      : dbValue = 'CoverageEligibilityResponse',
        super('CoverageEligibilityResponse', element);

  /// DetectedIssue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.DetectedIssue([this.element])
      : dbValue = 'DetectedIssue',
        super('DetectedIssue', element);

  /// Device
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Device([this.element])
      : dbValue = 'Device',
        super('Device', element);

  /// DeviceDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.DeviceDefinition([this.element])
      : dbValue = 'DeviceDefinition',
        super('DeviceDefinition', element);

  /// DeviceMetric
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.DeviceMetric([this.element])
      : dbValue = 'DeviceMetric',
        super('DeviceMetric', element);

  /// DeviceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.DeviceRequest([this.element])
      : dbValue = 'DeviceRequest',
        super('DeviceRequest', element);

  /// DeviceUseStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.DeviceUseStatement([this.element])
      : dbValue = 'DeviceUseStatement',
        super('DeviceUseStatement', element);

  /// DiagnosticReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.DiagnosticReport([this.element])
      : dbValue = 'DiagnosticReport',
        super('DiagnosticReport', element);

  /// DocumentManifest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.DocumentManifest([this.element])
      : dbValue = 'DocumentManifest',
        super('DocumentManifest', element);

  /// DocumentReference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.DocumentReference([this.element])
      : dbValue = 'DocumentReference',
        super('DocumentReference', element);

  /// Encounter
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Encounter([this.element])
      : dbValue = 'Encounter',
        super('Encounter', element);

  /// Endpoint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Endpoint([this.element])
      : dbValue = 'Endpoint',
        super('Endpoint', element);

  /// EnrollmentRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.EnrollmentRequest([this.element])
      : dbValue = 'EnrollmentRequest',
        super('EnrollmentRequest', element);

  /// EnrollmentResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.EnrollmentResponse([this.element])
      : dbValue = 'EnrollmentResponse',
        super('EnrollmentResponse', element);

  /// EpisodeOfCare
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.EpisodeOfCare([this.element])
      : dbValue = 'EpisodeOfCare',
        super('EpisodeOfCare', element);

  /// EventDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.EventDefinition([this.element])
      : dbValue = 'EventDefinition',
        super('EventDefinition', element);

  /// Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Evidence([this.element])
      : dbValue = 'Evidence',
        super('Evidence', element);

  /// EvidenceReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.EvidenceReport([this.element])
      : dbValue = 'EvidenceReport',
        super('EvidenceReport', element);

  /// EvidenceVariable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.EvidenceVariable([this.element])
      : dbValue = 'EvidenceVariable',
        super('EvidenceVariable', element);

  /// ExampleScenario
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ExampleScenario([this.element])
      : dbValue = 'ExampleScenario',
        super('ExampleScenario', element);

  /// ExplanationOfBenefit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ExplanationOfBenefit([this.element])
      : dbValue = 'ExplanationOfBenefit',
        super('ExplanationOfBenefit', element);

  /// FamilyMemberHistory
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.FamilyMemberHistory([this.element])
      : dbValue = 'FamilyMemberHistory',
        super('FamilyMemberHistory', element);

  /// Flag
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Flag([this.element])
      : dbValue = 'Flag',
        super('Flag', element);

  /// Goal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Goal([this.element])
      : dbValue = 'Goal',
        super('Goal', element);

  /// GraphDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.GraphDefinition([this.element])
      : dbValue = 'GraphDefinition',
        super('GraphDefinition', element);

  /// Group
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Group([this.element])
      : dbValue = 'Group',
        super('Group', element);

  /// GuidanceResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.GuidanceResponse([this.element])
      : dbValue = 'GuidanceResponse',
        super('GuidanceResponse', element);

  /// HealthcareService
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.HealthcareService([this.element])
      : dbValue = 'HealthcareService',
        super('HealthcareService', element);

  /// ImagingStudy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ImagingStudy([this.element])
      : dbValue = 'ImagingStudy',
        super('ImagingStudy', element);

  /// Immunization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Immunization([this.element])
      : dbValue = 'Immunization',
        super('Immunization', element);

  /// ImmunizationEvaluation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ImmunizationEvaluation([this.element])
      : dbValue = 'ImmunizationEvaluation',
        super('ImmunizationEvaluation', element);

  /// ImmunizationRecommendation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ImmunizationRecommendation([this.element])
      : dbValue = 'ImmunizationRecommendation',
        super('ImmunizationRecommendation', element);

  /// ImplementationGuide
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ImplementationGuide([this.element])
      : dbValue = 'ImplementationGuide',
        super('ImplementationGuide', element);

  /// Ingredient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Ingredient([this.element])
      : dbValue = 'Ingredient',
        super('Ingredient', element);

  /// InsurancePlan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.InsurancePlan([this.element])
      : dbValue = 'InsurancePlan',
        super('InsurancePlan', element);

  /// Invoice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Invoice([this.element])
      : dbValue = 'Invoice',
        super('Invoice', element);

  /// Library
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Library([this.element])
      : dbValue = 'Library',
        super('Library', element);

  /// Linkage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Linkage([this.element])
      : dbValue = 'Linkage',
        super('Linkage', element);

  /// List_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.List_([this.element])
      : dbValue = 'List',
        super('List', element);

  /// Location
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Location([this.element])
      : dbValue = 'Location',
        super('Location', element);

  /// ManufacturedItemDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ManufacturedItemDefinition([this.element])
      : dbValue = 'ManufacturedItemDefinition',
        super('ManufacturedItemDefinition', element);

  /// Measure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Measure([this.element])
      : dbValue = 'Measure',
        super('Measure', element);

  /// MeasureReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.MeasureReport([this.element])
      : dbValue = 'MeasureReport',
        super('MeasureReport', element);

  /// Media
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Media([this.element])
      : dbValue = 'Media',
        super('Media', element);

  /// Medication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Medication([this.element])
      : dbValue = 'Medication',
        super('Medication', element);

  /// MedicationAdministration
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.MedicationAdministration([this.element])
      : dbValue = 'MedicationAdministration',
        super('MedicationAdministration', element);

  /// MedicationDispense
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.MedicationDispense([this.element])
      : dbValue = 'MedicationDispense',
        super('MedicationDispense', element);

  /// MedicationKnowledge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.MedicationKnowledge([this.element])
      : dbValue = 'MedicationKnowledge',
        super('MedicationKnowledge', element);

  /// MedicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.MedicationRequest([this.element])
      : dbValue = 'MedicationRequest',
        super('MedicationRequest', element);

  /// MedicationStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.MedicationStatement([this.element])
      : dbValue = 'MedicationStatement',
        super('MedicationStatement', element);

  /// MedicinalProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.MedicinalProductDefinition([this.element])
      : dbValue = 'MedicinalProductDefinition',
        super('MedicinalProductDefinition', element);

  /// MessageDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.MessageDefinition([this.element])
      : dbValue = 'MessageDefinition',
        super('MessageDefinition', element);

  /// MessageHeader
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.MessageHeader([this.element])
      : dbValue = 'MessageHeader',
        super('MessageHeader', element);

  /// MolecularSequence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.MolecularSequence([this.element])
      : dbValue = 'MolecularSequence',
        super('MolecularSequence', element);

  /// NamingSystem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.NamingSystem([this.element])
      : dbValue = 'NamingSystem',
        super('NamingSystem', element);

  /// NutritionOrder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.NutritionOrder([this.element])
      : dbValue = 'NutritionOrder',
        super('NutritionOrder', element);

  /// NutritionProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.NutritionProduct([this.element])
      : dbValue = 'NutritionProduct',
        super('NutritionProduct', element);

  /// Observation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Observation([this.element])
      : dbValue = 'Observation',
        super('Observation', element);

  /// ObservationDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ObservationDefinition([this.element])
      : dbValue = 'ObservationDefinition',
        super('ObservationDefinition', element);

  /// OperationDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.OperationDefinition([this.element])
      : dbValue = 'OperationDefinition',
        super('OperationDefinition', element);

  /// OperationOutcome
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.OperationOutcome([this.element])
      : dbValue = 'OperationOutcome',
        super('OperationOutcome', element);

  /// Organization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Organization([this.element])
      : dbValue = 'Organization',
        super('Organization', element);

  /// OrganizationAffiliation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.OrganizationAffiliation([this.element])
      : dbValue = 'OrganizationAffiliation',
        super('OrganizationAffiliation', element);

  /// PackagedProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.PackagedProductDefinition([this.element])
      : dbValue = 'PackagedProductDefinition',
        super('PackagedProductDefinition', element);

  /// Patient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Patient([this.element])
      : dbValue = 'Patient',
        super('Patient', element);

  /// PaymentNotice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.PaymentNotice([this.element])
      : dbValue = 'PaymentNotice',
        super('PaymentNotice', element);

  /// PaymentReconciliation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.PaymentReconciliation([this.element])
      : dbValue = 'PaymentReconciliation',
        super('PaymentReconciliation', element);

  /// Person
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Person([this.element])
      : dbValue = 'Person',
        super('Person', element);

  /// PlanDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.PlanDefinition([this.element])
      : dbValue = 'PlanDefinition',
        super('PlanDefinition', element);

  /// Practitioner
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Practitioner([this.element])
      : dbValue = 'Practitioner',
        super('Practitioner', element);

  /// PractitionerRole
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.PractitionerRole([this.element])
      : dbValue = 'PractitionerRole',
        super('PractitionerRole', element);

  /// Procedure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Procedure([this.element])
      : dbValue = 'Procedure',
        super('Procedure', element);

  /// Provenance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Provenance([this.element])
      : dbValue = 'Provenance',
        super('Provenance', element);

  /// Questionnaire
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Questionnaire([this.element])
      : dbValue = 'Questionnaire',
        super('Questionnaire', element);

  /// QuestionnaireResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.QuestionnaireResponse([this.element])
      : dbValue = 'QuestionnaireResponse',
        super('QuestionnaireResponse', element);

  /// RegulatedAuthorization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.RegulatedAuthorization([this.element])
      : dbValue = 'RegulatedAuthorization',
        super('RegulatedAuthorization', element);

  /// RelatedPerson
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.RelatedPerson([this.element])
      : dbValue = 'RelatedPerson',
        super('RelatedPerson', element);

  /// RequestGroup
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.RequestGroup([this.element])
      : dbValue = 'RequestGroup',
        super('RequestGroup', element);

  /// ResearchDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ResearchDefinition([this.element])
      : dbValue = 'ResearchDefinition',
        super('ResearchDefinition', element);

  /// ResearchElementDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ResearchElementDefinition([this.element])
      : dbValue = 'ResearchElementDefinition',
        super('ResearchElementDefinition', element);

  /// ResearchStudy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ResearchStudy([this.element])
      : dbValue = 'ResearchStudy',
        super('ResearchStudy', element);

  /// ResearchSubject
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ResearchSubject([this.element])
      : dbValue = 'ResearchSubject',
        super('ResearchSubject', element);

  /// RiskAssessment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.RiskAssessment([this.element])
      : dbValue = 'RiskAssessment',
        super('RiskAssessment', element);

  /// Schedule
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Schedule([this.element])
      : dbValue = 'Schedule',
        super('Schedule', element);

  /// SearchParameter
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.SearchParameter([this.element])
      : dbValue = 'SearchParameter',
        super('SearchParameter', element);

  /// ServiceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ServiceRequest([this.element])
      : dbValue = 'ServiceRequest',
        super('ServiceRequest', element);

  /// Slot
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Slot([this.element])
      : dbValue = 'Slot',
        super('Slot', element);

  /// Specimen
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Specimen([this.element])
      : dbValue = 'Specimen',
        super('Specimen', element);

  /// SpecimenDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.SpecimenDefinition([this.element])
      : dbValue = 'SpecimenDefinition',
        super('SpecimenDefinition', element);

  /// StructureDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.StructureDefinition([this.element])
      : dbValue = 'StructureDefinition',
        super('StructureDefinition', element);

  /// StructureMap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.StructureMap([this.element])
      : dbValue = 'StructureMap',
        super('StructureMap', element);

  /// Subscription
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Subscription([this.element])
      : dbValue = 'Subscription',
        super('Subscription', element);

  /// SubscriptionStatus
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.SubscriptionStatus([this.element])
      : dbValue = 'SubscriptionStatus',
        super('SubscriptionStatus', element);

  /// SubscriptionTopic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.SubscriptionTopic([this.element])
      : dbValue = 'SubscriptionTopic',
        super('SubscriptionTopic', element);

  /// Substance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Substance([this.element])
      : dbValue = 'Substance',
        super('Substance', element);

  /// SubstanceDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.SubstanceDefinition([this.element])
      : dbValue = 'SubstanceDefinition',
        super('SubstanceDefinition', element);

  /// SupplyDelivery
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.SupplyDelivery([this.element])
      : dbValue = 'SupplyDelivery',
        super('SupplyDelivery', element);

  /// SupplyRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.SupplyRequest([this.element])
      : dbValue = 'SupplyRequest',
        super('SupplyRequest', element);

  /// Task
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Task([this.element])
      : dbValue = 'Task',
        super('Task', element);

  /// TerminologyCapabilities
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.TerminologyCapabilities([this.element])
      : dbValue = 'TerminologyCapabilities',
        super('TerminologyCapabilities', element);

  /// TestReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.TestReport([this.element])
      : dbValue = 'TestReport',
        super('TestReport', element);

  /// TestScript
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.TestScript([this.element])
      : dbValue = 'TestScript',
        super('TestScript', element);

  /// ValueSet
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.ValueSet([this.element])
      : dbValue = 'ValueSet',
        super('ValueSet', element);

  /// VerificationResult
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.VerificationResult([this.element])
      : dbValue = 'VerificationResult',
        super('VerificationResult', element);

  /// VisionPrescription
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.VisionPrescription([this.element])
      : dbValue = 'VisionPrescription',
        super('VisionPrescription', element);

  /// Parameters
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDefinedType.Parameters([this.element])
      : dbValue = 'Parameters',
        super('Parameters', element);

  /// For instances where an Element is present but not value

  FHIRDefinedType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  FHIRDefinedType._(super.input, [super.element])
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
  ];

  /// Returns the enum value with an element attached
  FHIRDefinedType withElement(Element? newElement) {
    return FHIRDefinedType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FHIRDefinedType.$value';
}
