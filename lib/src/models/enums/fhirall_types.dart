// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// A list of all the concrete types defined in this version of the FHIR
/// specification - Abstract Types, Data Types and Resource Types.
class FHIRAllTypes extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  FHIRAllTypes._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [FHIRAllTypes] with element only
  factory FHIRAllTypes.empty() => FHIRAllTypes._('');

  /// Factory constructor to create [FHIRAllTypes] from JSON.
  factory FHIRAllTypes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRAllTypes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FHIRAllTypes cannot be constructed from JSON.',
      );
    }
    return FHIRAllTypes._(
      value,
      element: element,
    );
  }

  /// Address
  static final FHIRAllTypes Address = FHIRAllTypes._(
    'Address',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Address'.toFhirString,
  );

  /// Age
  static final FHIRAllTypes Age = FHIRAllTypes._(
    'Age',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Age'.toFhirString,
  );

  /// Annotation
  static final FHIRAllTypes Annotation = FHIRAllTypes._(
    'Annotation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Annotation'.toFhirString,
  );

  /// Attachment
  static final FHIRAllTypes Attachment = FHIRAllTypes._(
    'Attachment',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Attachment'.toFhirString,
  );

  /// BackboneElement
  static final FHIRAllTypes BackboneElement = FHIRAllTypes._(
    'BackboneElement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BackboneElement'.toFhirString,
  );

  /// CodeableConcept
  static final FHIRAllTypes CodeableConcept = FHIRAllTypes._(
    'CodeableConcept',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CodeableConcept'.toFhirString,
  );

  /// CodeableReference
  static final FHIRAllTypes CodeableReference = FHIRAllTypes._(
    'CodeableReference',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CodeableReference'.toFhirString,
  );

  /// Coding
  static final FHIRAllTypes Coding = FHIRAllTypes._(
    'Coding',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Coding'.toFhirString,
  );

  /// ContactDetail
  static final FHIRAllTypes ContactDetail = FHIRAllTypes._(
    'ContactDetail',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ContactDetail'.toFhirString,
  );

  /// ContactPoint
  static final FHIRAllTypes ContactPoint = FHIRAllTypes._(
    'ContactPoint',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ContactPoint'.toFhirString,
  );

  /// Contributor
  static final FHIRAllTypes Contributor = FHIRAllTypes._(
    'Contributor',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Contributor'.toFhirString,
  );

  /// Count
  static final FHIRAllTypes Count = FHIRAllTypes._(
    'Count',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Count'.toFhirString,
  );

  /// DataRequirement
  static final FHIRAllTypes DataRequirement = FHIRAllTypes._(
    'DataRequirement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DataRequirement'.toFhirString,
  );

  /// Distance
  static final FHIRAllTypes Distance = FHIRAllTypes._(
    'Distance',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Distance'.toFhirString,
  );

  /// Dosage
  static final FHIRAllTypes Dosage = FHIRAllTypes._(
    'Dosage',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Dosage'.toFhirString,
  );

  /// Duration
  static final FHIRAllTypes Duration = FHIRAllTypes._(
    'Duration',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Duration'.toFhirString,
  );

  /// Element_
  static final FHIRAllTypes Element_ = FHIRAllTypes._(
    'Element',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Element'.toFhirString,
  );

  /// ElementDefinition
  static final FHIRAllTypes ElementDefinition = FHIRAllTypes._(
    'ElementDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ElementDefinition'.toFhirString,
  );

  /// Expression
  static final FHIRAllTypes Expression = FHIRAllTypes._(
    'Expression',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Expression'.toFhirString,
  );

  /// Extension
  static final FHIRAllTypes Extension = FHIRAllTypes._(
    'Extension',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Extension'.toFhirString,
  );

  /// HumanName
  static final FHIRAllTypes HumanName = FHIRAllTypes._(
    'HumanName',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'HumanName'.toFhirString,
  );

  /// Identifier
  static final FHIRAllTypes Identifier = FHIRAllTypes._(
    'Identifier',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Identifier'.toFhirString,
  );

  /// MarketingStatus
  static final FHIRAllTypes MarketingStatus = FHIRAllTypes._(
    'MarketingStatus',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MarketingStatus'.toFhirString,
  );

  /// Meta
  static final FHIRAllTypes Meta = FHIRAllTypes._(
    'Meta',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Meta'.toFhirString,
  );

  /// Money
  static final FHIRAllTypes Money = FHIRAllTypes._(
    'Money',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Money'.toFhirString,
  );

  /// MoneyQuantity
  static final FHIRAllTypes MoneyQuantity = FHIRAllTypes._(
    'MoneyQuantity',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MoneyQuantity'.toFhirString,
  );

  /// Narrative
  static final FHIRAllTypes Narrative = FHIRAllTypes._(
    'Narrative',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Narrative'.toFhirString,
  );

  /// ParameterDefinition
  static final FHIRAllTypes ParameterDefinition = FHIRAllTypes._(
    'ParameterDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ParameterDefinition'.toFhirString,
  );

  /// Period
  static final FHIRAllTypes Period = FHIRAllTypes._(
    'Period',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Period'.toFhirString,
  );

  /// Population
  static final FHIRAllTypes Population = FHIRAllTypes._(
    'Population',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Population'.toFhirString,
  );

  /// ProdCharacteristic
  static final FHIRAllTypes ProdCharacteristic = FHIRAllTypes._(
    'ProdCharacteristic',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ProdCharacteristic'.toFhirString,
  );

  /// ProductShelfLife
  static final FHIRAllTypes ProductShelfLife = FHIRAllTypes._(
    'ProductShelfLife',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ProductShelfLife'.toFhirString,
  );

  /// Quantity
  static final FHIRAllTypes Quantity = FHIRAllTypes._(
    'Quantity',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Quantity'.toFhirString,
  );

  /// Range
  static final FHIRAllTypes Range = FHIRAllTypes._(
    'Range',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Range'.toFhirString,
  );

  /// Ratio
  static final FHIRAllTypes Ratio = FHIRAllTypes._(
    'Ratio',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Ratio'.toFhirString,
  );

  /// RatioRange
  static final FHIRAllTypes RatioRange = FHIRAllTypes._(
    'RatioRange',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RatioRange'.toFhirString,
  );

  /// Reference
  static final FHIRAllTypes Reference = FHIRAllTypes._(
    'Reference',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Reference'.toFhirString,
  );

  /// RelatedArtifact
  static final FHIRAllTypes RelatedArtifact = FHIRAllTypes._(
    'RelatedArtifact',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RelatedArtifact'.toFhirString,
  );

  /// SampledData
  static final FHIRAllTypes SampledData = FHIRAllTypes._(
    'SampledData',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SampledData'.toFhirString,
  );

  /// Signature
  static final FHIRAllTypes Signature = FHIRAllTypes._(
    'Signature',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Signature'.toFhirString,
  );

  /// SimpleQuantity
  static final FHIRAllTypes SimpleQuantity = FHIRAllTypes._(
    'SimpleQuantity',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SimpleQuantity'.toFhirString,
  );

  /// Timing
  static final FHIRAllTypes Timing = FHIRAllTypes._(
    'Timing',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Timing'.toFhirString,
  );

  /// TriggerDefinition
  static final FHIRAllTypes TriggerDefinition = FHIRAllTypes._(
    'TriggerDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'TriggerDefinition'.toFhirString,
  );

  /// UsageContext
  static final FHIRAllTypes UsageContext = FHIRAllTypes._(
    'UsageContext',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'UsageContext'.toFhirString,
  );

  /// base64Binary
  static final FHIRAllTypes base64Binary = FHIRAllTypes._(
    'base64Binary',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'base64Binary'.toFhirString,
  );

  /// boolean
  static final FHIRAllTypes boolean = FHIRAllTypes._(
    'boolean',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'boolean'.toFhirString,
  );

  /// canonical
  static final FHIRAllTypes canonical = FHIRAllTypes._(
    'canonical',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'canonical'.toFhirString,
  );

  /// code
  static final FHIRAllTypes code = FHIRAllTypes._(
    'code',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'code'.toFhirString,
  );

  /// date
  static final FHIRAllTypes date = FHIRAllTypes._(
    'date',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'date'.toFhirString,
  );

  /// dateTime
  static final FHIRAllTypes dateTime = FHIRAllTypes._(
    'dateTime',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'dateTime'.toFhirString,
  );

  /// decimal
  static final FHIRAllTypes decimal = FHIRAllTypes._(
    'decimal',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'decimal'.toFhirString,
  );

  /// id
  static final FHIRAllTypes id_ = FHIRAllTypes._(
    'id',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'id'.toFhirString,
  );

  /// instant
  static final FHIRAllTypes instant = FHIRAllTypes._(
    'instant',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'instant'.toFhirString,
  );

  /// integer
  static final FHIRAllTypes integer = FHIRAllTypes._(
    'integer',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'integer'.toFhirString,
  );

  /// markdown
  static final FHIRAllTypes markdown = FHIRAllTypes._(
    'markdown',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'markdown'.toFhirString,
  );

  /// oid
  static final FHIRAllTypes oid = FHIRAllTypes._(
    'oid',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'oid'.toFhirString,
  );

  /// positiveInt
  static final FHIRAllTypes positiveInt = FHIRAllTypes._(
    'positiveInt',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'positiveInt'.toFhirString,
  );

  /// string
  static final FHIRAllTypes string = FHIRAllTypes._(
    'string',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'string'.toFhirString,
  );

  /// time
  static final FHIRAllTypes time = FHIRAllTypes._(
    'time',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'time'.toFhirString,
  );

  /// unsignedInt
  static final FHIRAllTypes unsignedInt = FHIRAllTypes._(
    'unsignedInt',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'unsignedInt'.toFhirString,
  );

  /// uri
  static final FHIRAllTypes uri = FHIRAllTypes._(
    'uri',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'uri'.toFhirString,
  );

  /// url
  static final FHIRAllTypes url = FHIRAllTypes._(
    'url',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'url'.toFhirString,
  );

  /// uuid
  static final FHIRAllTypes uuid = FHIRAllTypes._(
    'uuid',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'uuid'.toFhirString,
  );

  /// xhtml
  static final FHIRAllTypes xhtml = FHIRAllTypes._(
    'xhtml',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'XHTML'.toFhirString,
  );

  /// Resource
  static final FHIRAllTypes Resource = FHIRAllTypes._(
    'Resource',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Resource'.toFhirString,
  );

  /// Binary
  static final FHIRAllTypes Binary = FHIRAllTypes._(
    'Binary',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Binary'.toFhirString,
  );

  /// Bundle
  static final FHIRAllTypes Bundle = FHIRAllTypes._(
    'Bundle',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Bundle'.toFhirString,
  );

  /// DomainResource
  static final FHIRAllTypes DomainResource = FHIRAllTypes._(
    'DomainResource',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DomainResource'.toFhirString,
  );

  /// Account
  static final FHIRAllTypes Account = FHIRAllTypes._(
    'Account',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Account'.toFhirString,
  );

  /// ActivityDefinition
  static final FHIRAllTypes ActivityDefinition = FHIRAllTypes._(
    'ActivityDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ActivityDefinition'.toFhirString,
  );

  /// AdministrableProductDefinition
  static final FHIRAllTypes AdministrableProductDefinition = FHIRAllTypes._(
    'AdministrableProductDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AdministrableProductDefinition'.toFhirString,
  );

  /// AdverseEvent
  static final FHIRAllTypes AdverseEvent = FHIRAllTypes._(
    'AdverseEvent',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AdverseEvent'.toFhirString,
  );

  /// AllergyIntolerance
  static final FHIRAllTypes AllergyIntolerance = FHIRAllTypes._(
    'AllergyIntolerance',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AllergyIntolerance'.toFhirString,
  );

  /// Appointment
  static final FHIRAllTypes Appointment = FHIRAllTypes._(
    'Appointment',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Appointment'.toFhirString,
  );

  /// AppointmentResponse
  static final FHIRAllTypes AppointmentResponse = FHIRAllTypes._(
    'AppointmentResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AppointmentResponse'.toFhirString,
  );

  /// AuditEvent
  static final FHIRAllTypes AuditEvent = FHIRAllTypes._(
    'AuditEvent',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AuditEvent'.toFhirString,
  );

  /// Basic
  static final FHIRAllTypes Basic = FHIRAllTypes._(
    'Basic',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Basic'.toFhirString,
  );

  /// BiologicallyDerivedProduct
  static final FHIRAllTypes BiologicallyDerivedProduct = FHIRAllTypes._(
    'BiologicallyDerivedProduct',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BiologicallyDerivedProduct'.toFhirString,
  );

  /// BodyStructure
  static final FHIRAllTypes BodyStructure = FHIRAllTypes._(
    'BodyStructure',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BodyStructure'.toFhirString,
  );

  /// CapabilityStatement
  static final FHIRAllTypes CapabilityStatement = FHIRAllTypes._(
    'CapabilityStatement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CapabilityStatement'.toFhirString,
  );

  /// CarePlan
  static final FHIRAllTypes CarePlan = FHIRAllTypes._(
    'CarePlan',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CarePlan'.toFhirString,
  );

  /// CareTeam
  static final FHIRAllTypes CareTeam = FHIRAllTypes._(
    'CareTeam',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CareTeam'.toFhirString,
  );

  /// CatalogEntry
  static final FHIRAllTypes CatalogEntry = FHIRAllTypes._(
    'CatalogEntry',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CatalogEntry'.toFhirString,
  );

  /// ChargeItem
  static final FHIRAllTypes ChargeItem = FHIRAllTypes._(
    'ChargeItem',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ChargeItem'.toFhirString,
  );

  /// ChargeItemDefinition
  static final FHIRAllTypes ChargeItemDefinition = FHIRAllTypes._(
    'ChargeItemDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ChargeItemDefinition'.toFhirString,
  );

  /// Citation
  static final FHIRAllTypes Citation = FHIRAllTypes._(
    'Citation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Citation'.toFhirString,
  );

  /// Claim
  static final FHIRAllTypes Claim = FHIRAllTypes._(
    'Claim',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Claim'.toFhirString,
  );

  /// ClaimResponse
  static final FHIRAllTypes ClaimResponse = FHIRAllTypes._(
    'ClaimResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ClaimResponse'.toFhirString,
  );

  /// ClinicalImpression
  static final FHIRAllTypes ClinicalImpression = FHIRAllTypes._(
    'ClinicalImpression',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ClinicalImpression'.toFhirString,
  );

  /// ClinicalUseDefinition
  static final FHIRAllTypes ClinicalUseDefinition = FHIRAllTypes._(
    'ClinicalUseDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ClinicalUseDefinition'.toFhirString,
  );

  /// CodeSystem
  static final FHIRAllTypes CodeSystem = FHIRAllTypes._(
    'CodeSystem',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CodeSystem'.toFhirString,
  );

  /// Communication
  static final FHIRAllTypes Communication = FHIRAllTypes._(
    'Communication',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Communication'.toFhirString,
  );

  /// CommunicationRequest
  static final FHIRAllTypes CommunicationRequest = FHIRAllTypes._(
    'CommunicationRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CommunicationRequest'.toFhirString,
  );

  /// CompartmentDefinition
  static final FHIRAllTypes CompartmentDefinition = FHIRAllTypes._(
    'CompartmentDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CompartmentDefinition'.toFhirString,
  );

  /// Composition
  static final FHIRAllTypes Composition = FHIRAllTypes._(
    'Composition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Composition'.toFhirString,
  );

  /// ConceptMap
  static final FHIRAllTypes ConceptMap = FHIRAllTypes._(
    'ConceptMap',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ConceptMap'.toFhirString,
  );

  /// Condition
  static final FHIRAllTypes Condition = FHIRAllTypes._(
    'Condition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Condition'.toFhirString,
  );

  /// Consent
  static final FHIRAllTypes Consent = FHIRAllTypes._(
    'Consent',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Consent'.toFhirString,
  );

  /// Contract
  static final FHIRAllTypes Contract = FHIRAllTypes._(
    'Contract',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Contract'.toFhirString,
  );

  /// Coverage
  static final FHIRAllTypes Coverage = FHIRAllTypes._(
    'Coverage',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Coverage'.toFhirString,
  );

  /// CoverageEligibilityRequest
  static final FHIRAllTypes CoverageEligibilityRequest = FHIRAllTypes._(
    'CoverageEligibilityRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CoverageEligibilityRequest'.toFhirString,
  );

  /// CoverageEligibilityResponse
  static final FHIRAllTypes CoverageEligibilityResponse = FHIRAllTypes._(
    'CoverageEligibilityResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CoverageEligibilityResponse'.toFhirString,
  );

  /// DetectedIssue
  static final FHIRAllTypes DetectedIssue = FHIRAllTypes._(
    'DetectedIssue',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DetectedIssue'.toFhirString,
  );

  /// Device
  static final FHIRAllTypes Device = FHIRAllTypes._(
    'Device',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Device'.toFhirString,
  );

  /// DeviceDefinition
  static final FHIRAllTypes DeviceDefinition = FHIRAllTypes._(
    'DeviceDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DeviceDefinition'.toFhirString,
  );

  /// DeviceMetric
  static final FHIRAllTypes DeviceMetric = FHIRAllTypes._(
    'DeviceMetric',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DeviceMetric'.toFhirString,
  );

  /// DeviceRequest
  static final FHIRAllTypes DeviceRequest = FHIRAllTypes._(
    'DeviceRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DeviceRequest'.toFhirString,
  );

  /// DeviceUseStatement
  static final FHIRAllTypes DeviceUseStatement = FHIRAllTypes._(
    'DeviceUseStatement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DeviceUseStatement'.toFhirString,
  );

  /// DiagnosticReport
  static final FHIRAllTypes DiagnosticReport = FHIRAllTypes._(
    'DiagnosticReport',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DiagnosticReport'.toFhirString,
  );

  /// DocumentManifest
  static final FHIRAllTypes DocumentManifest = FHIRAllTypes._(
    'DocumentManifest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DocumentManifest'.toFhirString,
  );

  /// DocumentReference
  static final FHIRAllTypes DocumentReference = FHIRAllTypes._(
    'DocumentReference',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DocumentReference'.toFhirString,
  );

  /// Encounter
  static final FHIRAllTypes Encounter = FHIRAllTypes._(
    'Encounter',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Encounter'.toFhirString,
  );

  /// Endpoint
  static final FHIRAllTypes Endpoint = FHIRAllTypes._(
    'Endpoint',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Endpoint'.toFhirString,
  );

  /// EnrollmentRequest
  static final FHIRAllTypes EnrollmentRequest = FHIRAllTypes._(
    'EnrollmentRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EnrollmentRequest'.toFhirString,
  );

  /// EnrollmentResponse
  static final FHIRAllTypes EnrollmentResponse = FHIRAllTypes._(
    'EnrollmentResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EnrollmentResponse'.toFhirString,
  );

  /// EpisodeOfCare
  static final FHIRAllTypes EpisodeOfCare = FHIRAllTypes._(
    'EpisodeOfCare',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EpisodeOfCare'.toFhirString,
  );

  /// EventDefinition
  static final FHIRAllTypes EventDefinition = FHIRAllTypes._(
    'EventDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EventDefinition'.toFhirString,
  );

  /// Evidence
  static final FHIRAllTypes Evidence = FHIRAllTypes._(
    'Evidence',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Evidence'.toFhirString,
  );

  /// EvidenceReport
  static final FHIRAllTypes EvidenceReport = FHIRAllTypes._(
    'EvidenceReport',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EvidenceReport'.toFhirString,
  );

  /// EvidenceVariable
  static final FHIRAllTypes EvidenceVariable = FHIRAllTypes._(
    'EvidenceVariable',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EvidenceVariable'.toFhirString,
  );

  /// ExampleScenario
  static final FHIRAllTypes ExampleScenario = FHIRAllTypes._(
    'ExampleScenario',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ExampleScenario'.toFhirString,
  );

  /// ExplanationOfBenefit
  static final FHIRAllTypes ExplanationOfBenefit = FHIRAllTypes._(
    'ExplanationOfBenefit',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ExplanationOfBenefit'.toFhirString,
  );

  /// FamilyMemberHistory
  static final FHIRAllTypes FamilyMemberHistory = FHIRAllTypes._(
    'FamilyMemberHistory',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'FamilyMemberHistory'.toFhirString,
  );

  /// Flag
  static final FHIRAllTypes Flag = FHIRAllTypes._(
    'Flag',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Flag'.toFhirString,
  );

  /// Goal
  static final FHIRAllTypes Goal = FHIRAllTypes._(
    'Goal',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Goal'.toFhirString,
  );

  /// GraphDefinition
  static final FHIRAllTypes GraphDefinition = FHIRAllTypes._(
    'GraphDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GraphDefinition'.toFhirString,
  );

  /// Group
  static final FHIRAllTypes Group = FHIRAllTypes._(
    'Group',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Group'.toFhirString,
  );

  /// GuidanceResponse
  static final FHIRAllTypes GuidanceResponse = FHIRAllTypes._(
    'GuidanceResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GuidanceResponse'.toFhirString,
  );

  /// HealthcareService
  static final FHIRAllTypes HealthcareService = FHIRAllTypes._(
    'HealthcareService',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'HealthcareService'.toFhirString,
  );

  /// ImagingStudy
  static final FHIRAllTypes ImagingStudy = FHIRAllTypes._(
    'ImagingStudy',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ImagingStudy'.toFhirString,
  );

  /// Immunization
  static final FHIRAllTypes Immunization = FHIRAllTypes._(
    'Immunization',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Immunization'.toFhirString,
  );

  /// ImmunizationEvaluation
  static final FHIRAllTypes ImmunizationEvaluation = FHIRAllTypes._(
    'ImmunizationEvaluation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ImmunizationEvaluation'.toFhirString,
  );

  /// ImmunizationRecommendation
  static final FHIRAllTypes ImmunizationRecommendation = FHIRAllTypes._(
    'ImmunizationRecommendation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ImmunizationRecommendation'.toFhirString,
  );

  /// ImplementationGuide
  static final FHIRAllTypes ImplementationGuide = FHIRAllTypes._(
    'ImplementationGuide',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ImplementationGuide'.toFhirString,
  );

  /// Ingredient
  static final FHIRAllTypes Ingredient = FHIRAllTypes._(
    'Ingredient',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Ingredient'.toFhirString,
  );

  /// InsurancePlan
  static final FHIRAllTypes InsurancePlan = FHIRAllTypes._(
    'InsurancePlan',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'InsurancePlan'.toFhirString,
  );

  /// Invoice
  static final FHIRAllTypes Invoice = FHIRAllTypes._(
    'Invoice',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Invoice'.toFhirString,
  );

  /// Library
  static final FHIRAllTypes Library = FHIRAllTypes._(
    'Library',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Library'.toFhirString,
  );

  /// Linkage
  static final FHIRAllTypes Linkage = FHIRAllTypes._(
    'Linkage',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Linkage'.toFhirString,
  );

  /// List_
  static final FHIRAllTypes List_ = FHIRAllTypes._(
    'List',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'List'.toFhirString,
  );

  /// Location
  static final FHIRAllTypes Location = FHIRAllTypes._(
    'Location',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Location'.toFhirString,
  );

  /// ManufacturedItemDefinition
  static final FHIRAllTypes ManufacturedItemDefinition = FHIRAllTypes._(
    'ManufacturedItemDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ManufacturedItemDefinition'.toFhirString,
  );

  /// Measure
  static final FHIRAllTypes Measure = FHIRAllTypes._(
    'Measure',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Measure'.toFhirString,
  );

  /// MeasureReport
  static final FHIRAllTypes MeasureReport = FHIRAllTypes._(
    'MeasureReport',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MeasureReport'.toFhirString,
  );

  /// Media
  static final FHIRAllTypes Media = FHIRAllTypes._(
    'Media',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Media'.toFhirString,
  );

  /// Medication
  static final FHIRAllTypes Medication = FHIRAllTypes._(
    'Medication',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Medication'.toFhirString,
  );

  /// MedicationAdministration
  static final FHIRAllTypes MedicationAdministration = FHIRAllTypes._(
    'MedicationAdministration',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationAdministration'.toFhirString,
  );

  /// MedicationDispense
  static final FHIRAllTypes MedicationDispense = FHIRAllTypes._(
    'MedicationDispense',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationDispense'.toFhirString,
  );

  /// MedicationKnowledge
  static final FHIRAllTypes MedicationKnowledge = FHIRAllTypes._(
    'MedicationKnowledge',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationKnowledge'.toFhirString,
  );

  /// MedicationRequest
  static final FHIRAllTypes MedicationRequest = FHIRAllTypes._(
    'MedicationRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationRequest'.toFhirString,
  );

  /// MedicationStatement
  static final FHIRAllTypes MedicationStatement = FHIRAllTypes._(
    'MedicationStatement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationStatement'.toFhirString,
  );

  /// MedicinalProductDefinition
  static final FHIRAllTypes MedicinalProductDefinition = FHIRAllTypes._(
    'MedicinalProductDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicinalProductDefinition'.toFhirString,
  );

  /// MessageDefinition
  static final FHIRAllTypes MessageDefinition = FHIRAllTypes._(
    'MessageDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MessageDefinition'.toFhirString,
  );

  /// MessageHeader
  static final FHIRAllTypes MessageHeader = FHIRAllTypes._(
    'MessageHeader',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MessageHeader'.toFhirString,
  );

  /// MolecularSequence
  static final FHIRAllTypes MolecularSequence = FHIRAllTypes._(
    'MolecularSequence',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MolecularSequence'.toFhirString,
  );

  /// NamingSystem
  static final FHIRAllTypes NamingSystem = FHIRAllTypes._(
    'NamingSystem',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'NamingSystem'.toFhirString,
  );

  /// NutritionOrder
  static final FHIRAllTypes NutritionOrder = FHIRAllTypes._(
    'NutritionOrder',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'NutritionOrder'.toFhirString,
  );

  /// NutritionProduct
  static final FHIRAllTypes NutritionProduct = FHIRAllTypes._(
    'NutritionProduct',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'NutritionProduct'.toFhirString,
  );

  /// Observation
  static final FHIRAllTypes Observation = FHIRAllTypes._(
    'Observation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Observation'.toFhirString,
  );

  /// ObservationDefinition
  static final FHIRAllTypes ObservationDefinition = FHIRAllTypes._(
    'ObservationDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ObservationDefinition'.toFhirString,
  );

  /// OperationDefinition
  static final FHIRAllTypes OperationDefinition = FHIRAllTypes._(
    'OperationDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'OperationDefinition'.toFhirString,
  );

  /// OperationOutcome
  static final FHIRAllTypes OperationOutcome = FHIRAllTypes._(
    'OperationOutcome',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'OperationOutcome'.toFhirString,
  );

  /// Organization
  static final FHIRAllTypes Organization = FHIRAllTypes._(
    'Organization',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Organization'.toFhirString,
  );

  /// OrganizationAffiliation
  static final FHIRAllTypes OrganizationAffiliation = FHIRAllTypes._(
    'OrganizationAffiliation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'OrganizationAffiliation'.toFhirString,
  );

  /// PackagedProductDefinition
  static final FHIRAllTypes PackagedProductDefinition = FHIRAllTypes._(
    'PackagedProductDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PackagedProductDefinition'.toFhirString,
  );

  /// Patient
  static final FHIRAllTypes Patient = FHIRAllTypes._(
    'Patient',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Patient'.toFhirString,
  );

  /// PaymentNotice
  static final FHIRAllTypes PaymentNotice = FHIRAllTypes._(
    'PaymentNotice',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PaymentNotice'.toFhirString,
  );

  /// PaymentReconciliation
  static final FHIRAllTypes PaymentReconciliation = FHIRAllTypes._(
    'PaymentReconciliation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PaymentReconciliation'.toFhirString,
  );

  /// Person
  static final FHIRAllTypes Person = FHIRAllTypes._(
    'Person',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Person'.toFhirString,
  );

  /// PlanDefinition
  static final FHIRAllTypes PlanDefinition = FHIRAllTypes._(
    'PlanDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PlanDefinition'.toFhirString,
  );

  /// Practitioner
  static final FHIRAllTypes Practitioner = FHIRAllTypes._(
    'Practitioner',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Practitioner'.toFhirString,
  );

  /// PractitionerRole
  static final FHIRAllTypes PractitionerRole = FHIRAllTypes._(
    'PractitionerRole',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PractitionerRole'.toFhirString,
  );

  /// Procedure
  static final FHIRAllTypes Procedure = FHIRAllTypes._(
    'Procedure',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Procedure'.toFhirString,
  );

  /// Provenance
  static final FHIRAllTypes Provenance = FHIRAllTypes._(
    'Provenance',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Provenance'.toFhirString,
  );

  /// Questionnaire
  static final FHIRAllTypes Questionnaire = FHIRAllTypes._(
    'Questionnaire',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Questionnaire'.toFhirString,
  );

  /// QuestionnaireResponse
  static final FHIRAllTypes QuestionnaireResponse = FHIRAllTypes._(
    'QuestionnaireResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'QuestionnaireResponse'.toFhirString,
  );

  /// RegulatedAuthorization
  static final FHIRAllTypes RegulatedAuthorization = FHIRAllTypes._(
    'RegulatedAuthorization',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RegulatedAuthorization'.toFhirString,
  );

  /// RelatedPerson
  static final FHIRAllTypes RelatedPerson = FHIRAllTypes._(
    'RelatedPerson',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RelatedPerson'.toFhirString,
  );

  /// RequestGroup
  static final FHIRAllTypes RequestGroup = FHIRAllTypes._(
    'RequestGroup',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RequestGroup'.toFhirString,
  );

  /// ResearchDefinition
  static final FHIRAllTypes ResearchDefinition = FHIRAllTypes._(
    'ResearchDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ResearchDefinition'.toFhirString,
  );

  /// ResearchElementDefinition
  static final FHIRAllTypes ResearchElementDefinition = FHIRAllTypes._(
    'ResearchElementDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ResearchElementDefinition'.toFhirString,
  );

  /// ResearchStudy
  static final FHIRAllTypes ResearchStudy = FHIRAllTypes._(
    'ResearchStudy',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ResearchStudy'.toFhirString,
  );

  /// ResearchSubject
  static final FHIRAllTypes ResearchSubject = FHIRAllTypes._(
    'ResearchSubject',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ResearchSubject'.toFhirString,
  );

  /// RiskAssessment
  static final FHIRAllTypes RiskAssessment = FHIRAllTypes._(
    'RiskAssessment',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RiskAssessment'.toFhirString,
  );

  /// Schedule
  static final FHIRAllTypes Schedule = FHIRAllTypes._(
    'Schedule',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Schedule'.toFhirString,
  );

  /// SearchParameter
  static final FHIRAllTypes SearchParameter = FHIRAllTypes._(
    'SearchParameter',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SearchParameter'.toFhirString,
  );

  /// ServiceRequest
  static final FHIRAllTypes ServiceRequest = FHIRAllTypes._(
    'ServiceRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ServiceRequest'.toFhirString,
  );

  /// Slot
  static final FHIRAllTypes Slot = FHIRAllTypes._(
    'Slot',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Slot'.toFhirString,
  );

  /// Specimen
  static final FHIRAllTypes Specimen = FHIRAllTypes._(
    'Specimen',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Specimen'.toFhirString,
  );

  /// SpecimenDefinition
  static final FHIRAllTypes SpecimenDefinition = FHIRAllTypes._(
    'SpecimenDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SpecimenDefinition'.toFhirString,
  );

  /// StructureDefinition
  static final FHIRAllTypes StructureDefinition = FHIRAllTypes._(
    'StructureDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'StructureDefinition'.toFhirString,
  );

  /// StructureMap
  static final FHIRAllTypes StructureMap = FHIRAllTypes._(
    'StructureMap',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'StructureMap'.toFhirString,
  );

  /// Subscription
  static final FHIRAllTypes Subscription = FHIRAllTypes._(
    'Subscription',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Subscription'.toFhirString,
  );

  /// SubscriptionStatus
  static final FHIRAllTypes SubscriptionStatus = FHIRAllTypes._(
    'SubscriptionStatus',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SubscriptionStatus'.toFhirString,
  );

  /// SubscriptionTopic
  static final FHIRAllTypes SubscriptionTopic = FHIRAllTypes._(
    'SubscriptionTopic',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SubscriptionTopic'.toFhirString,
  );

  /// Substance
  static final FHIRAllTypes Substance = FHIRAllTypes._(
    'Substance',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Substance'.toFhirString,
  );

  /// SubstanceDefinition
  static final FHIRAllTypes SubstanceDefinition = FHIRAllTypes._(
    'SubstanceDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SubstanceDefinition'.toFhirString,
  );

  /// SupplyDelivery
  static final FHIRAllTypes SupplyDelivery = FHIRAllTypes._(
    'SupplyDelivery',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SupplyDelivery'.toFhirString,
  );

  /// SupplyRequest
  static final FHIRAllTypes SupplyRequest = FHIRAllTypes._(
    'SupplyRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SupplyRequest'.toFhirString,
  );

  /// Task
  static final FHIRAllTypes Task = FHIRAllTypes._(
    'Task',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Task'.toFhirString,
  );

  /// TerminologyCapabilities
  static final FHIRAllTypes TerminologyCapabilities = FHIRAllTypes._(
    'TerminologyCapabilities',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'TerminologyCapabilities'.toFhirString,
  );

  /// TestReport
  static final FHIRAllTypes TestReport = FHIRAllTypes._(
    'TestReport',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'TestReport'.toFhirString,
  );

  /// TestScript
  static final FHIRAllTypes TestScript = FHIRAllTypes._(
    'TestScript',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'TestScript'.toFhirString,
  );

  /// ValueSet
  static final FHIRAllTypes ValueSet = FHIRAllTypes._(
    'ValueSet',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ValueSet'.toFhirString,
  );

  /// VerificationResult
  static final FHIRAllTypes VerificationResult = FHIRAllTypes._(
    'VerificationResult',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'VerificationResult'.toFhirString,
  );

  /// VisionPrescription
  static final FHIRAllTypes VisionPrescription = FHIRAllTypes._(
    'VisionPrescription',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'VisionPrescription'.toFhirString,
  );

  /// Parameters
  static final FHIRAllTypes Parameters = FHIRAllTypes._(
    'Parameters',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Parameters'.toFhirString,
  );

  /// Type
  static final FHIRAllTypes Type = FHIRAllTypes._(
    'Type',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Type'.toFhirString,
  );

  /// Any
  static final FHIRAllTypes Any = FHIRAllTypes._(
    'Any',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Any'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final FHIRAllTypes elementOnly = FHIRAllTypes._('');

  /// List of all enum-like values
  static final List<FHIRAllTypes> values = [
    Address,
    Age,
    Annotation,
    Attachment,
    BackboneElement,
    CodeableConcept,
    CodeableReference,
    Coding,
    ContactDetail,
    ContactPoint,
    Contributor,
    Count,
    DataRequirement,
    Distance,
    Dosage,
    Duration,
    Element_,
    ElementDefinition,
    Expression,
    Extension,
    HumanName,
    Identifier,
    MarketingStatus,
    Meta,
    Money,
    MoneyQuantity,
    Narrative,
    ParameterDefinition,
    Period,
    Population,
    ProdCharacteristic,
    ProductShelfLife,
    Quantity,
    Range,
    Ratio,
    RatioRange,
    Reference,
    RelatedArtifact,
    SampledData,
    Signature,
    SimpleQuantity,
    Timing,
    TriggerDefinition,
    UsageContext,
    base64Binary,
    boolean,
    canonical,
    code,
    date,
    dateTime,
    decimal,
    id_,
    instant,
    integer,
    markdown,
    oid,
    positiveInt,
    string,
    time,
    unsignedInt,
    uri,
    url,
    uuid,
    xhtml,
    Resource,
    Binary,
    Bundle,
    DomainResource,
    Account,
    ActivityDefinition,
    AdministrableProductDefinition,
    AdverseEvent,
    AllergyIntolerance,
    Appointment,
    AppointmentResponse,
    AuditEvent,
    Basic,
    BiologicallyDerivedProduct,
    BodyStructure,
    CapabilityStatement,
    CarePlan,
    CareTeam,
    CatalogEntry,
    ChargeItem,
    ChargeItemDefinition,
    Citation,
    Claim,
    ClaimResponse,
    ClinicalImpression,
    ClinicalUseDefinition,
    CodeSystem,
    Communication,
    CommunicationRequest,
    CompartmentDefinition,
    Composition,
    ConceptMap,
    Condition,
    Consent,
    Contract,
    Coverage,
    CoverageEligibilityRequest,
    CoverageEligibilityResponse,
    DetectedIssue,
    Device,
    DeviceDefinition,
    DeviceMetric,
    DeviceRequest,
    DeviceUseStatement,
    DiagnosticReport,
    DocumentManifest,
    DocumentReference,
    Encounter,
    Endpoint,
    EnrollmentRequest,
    EnrollmentResponse,
    EpisodeOfCare,
    EventDefinition,
    Evidence,
    EvidenceReport,
    EvidenceVariable,
    ExampleScenario,
    ExplanationOfBenefit,
    FamilyMemberHistory,
    Flag,
    Goal,
    GraphDefinition,
    Group,
    GuidanceResponse,
    HealthcareService,
    ImagingStudy,
    Immunization,
    ImmunizationEvaluation,
    ImmunizationRecommendation,
    ImplementationGuide,
    Ingredient,
    InsurancePlan,
    Invoice,
    Library,
    Linkage,
    List_,
    Location,
    ManufacturedItemDefinition,
    Measure,
    MeasureReport,
    Media,
    Medication,
    MedicationAdministration,
    MedicationDispense,
    MedicationKnowledge,
    MedicationRequest,
    MedicationStatement,
    MedicinalProductDefinition,
    MessageDefinition,
    MessageHeader,
    MolecularSequence,
    NamingSystem,
    NutritionOrder,
    NutritionProduct,
    Observation,
    ObservationDefinition,
    OperationDefinition,
    OperationOutcome,
    Organization,
    OrganizationAffiliation,
    PackagedProductDefinition,
    Patient,
    PaymentNotice,
    PaymentReconciliation,
    Person,
    PlanDefinition,
    Practitioner,
    PractitionerRole,
    Procedure,
    Provenance,
    Questionnaire,
    QuestionnaireResponse,
    RegulatedAuthorization,
    RelatedPerson,
    RequestGroup,
    ResearchDefinition,
    ResearchElementDefinition,
    ResearchStudy,
    ResearchSubject,
    RiskAssessment,
    Schedule,
    SearchParameter,
    ServiceRequest,
    Slot,
    Specimen,
    SpecimenDefinition,
    StructureDefinition,
    StructureMap,
    Subscription,
    SubscriptionStatus,
    SubscriptionTopic,
    Substance,
    SubstanceDefinition,
    SupplyDelivery,
    SupplyRequest,
    Task,
    TerminologyCapabilities,
    TestReport,
    TestScript,
    ValueSet,
    VerificationResult,
    VisionPrescription,
    Parameters,
    Type,
    Any,
  ];

  /// Clones the current instance
  @override
  FHIRAllTypes clone() => FHIRAllTypes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  FHIRAllTypes withElement(Element? newElement) {
    return FHIRAllTypes._(
      value,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  FHIRAllTypes copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return FHIRAllTypes._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
