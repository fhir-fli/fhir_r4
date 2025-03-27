// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A list of all the concrete types defined in this version of the FHIR
/// specification - Abstract Types, Data Types and Resource Types.
class FHIRAllTypes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  FHIRAllTypes._({
    required super.validatedValue,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory FHIRAllTypes(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return FHIRAllTypes._(
      validatedValue: validated,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [FHIRAllTypes] with element only
  factory FHIRAllTypes.empty() => FHIRAllTypes._(validatedValue: '');

  /// Factory constructor to create [FHIRAllTypes] from JSON.
  factory FHIRAllTypes.fromJson(Map<String, dynamic> json) {
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
      validatedValue: value,
      element: element,
    );
  }

  /// Address
  static final FHIRAllTypes Address = FHIRAllTypes._(
    validatedValue: 'Address',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Address'.toFhirString,
  );

  /// Age
  static final FHIRAllTypes Age = FHIRAllTypes._(
    validatedValue: 'Age',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Age'.toFhirString,
  );

  /// Annotation
  static final FHIRAllTypes Annotation = FHIRAllTypes._(
    validatedValue: 'Annotation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Annotation'.toFhirString,
  );

  /// Attachment
  static final FHIRAllTypes Attachment = FHIRAllTypes._(
    validatedValue: 'Attachment',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Attachment'.toFhirString,
  );

  /// BackboneElement
  static final FHIRAllTypes BackboneElement = FHIRAllTypes._(
    validatedValue: 'BackboneElement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BackboneElement'.toFhirString,
  );

  /// CodeableConcept
  static final FHIRAllTypes CodeableConcept = FHIRAllTypes._(
    validatedValue: 'CodeableConcept',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CodeableConcept'.toFhirString,
  );

  /// CodeableReference
  static final FHIRAllTypes CodeableReference = FHIRAllTypes._(
    validatedValue: 'CodeableReference',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CodeableReference'.toFhirString,
  );

  /// Coding
  static final FHIRAllTypes Coding = FHIRAllTypes._(
    validatedValue: 'Coding',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Coding'.toFhirString,
  );

  /// ContactDetail
  static final FHIRAllTypes ContactDetail = FHIRAllTypes._(
    validatedValue: 'ContactDetail',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ContactDetail'.toFhirString,
  );

  /// ContactPoint
  static final FHIRAllTypes ContactPoint = FHIRAllTypes._(
    validatedValue: 'ContactPoint',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ContactPoint'.toFhirString,
  );

  /// Contributor
  static final FHIRAllTypes Contributor = FHIRAllTypes._(
    validatedValue: 'Contributor',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Contributor'.toFhirString,
  );

  /// Count
  static final FHIRAllTypes Count = FHIRAllTypes._(
    validatedValue: 'Count',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Count'.toFhirString,
  );

  /// DataRequirement
  static final FHIRAllTypes DataRequirement = FHIRAllTypes._(
    validatedValue: 'DataRequirement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DataRequirement'.toFhirString,
  );

  /// Distance
  static final FHIRAllTypes Distance = FHIRAllTypes._(
    validatedValue: 'Distance',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Distance'.toFhirString,
  );

  /// Dosage
  static final FHIRAllTypes Dosage = FHIRAllTypes._(
    validatedValue: 'Dosage',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Dosage'.toFhirString,
  );

  /// Duration
  static final FHIRAllTypes Duration = FHIRAllTypes._(
    validatedValue: 'Duration',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Duration'.toFhirString,
  );

  /// Element_
  static final FHIRAllTypes Element_ = FHIRAllTypes._(
    validatedValue: 'Element',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Element'.toFhirString,
  );

  /// ElementDefinition
  static final FHIRAllTypes ElementDefinition = FHIRAllTypes._(
    validatedValue: 'ElementDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ElementDefinition'.toFhirString,
  );

  /// Expression
  static final FHIRAllTypes Expression = FHIRAllTypes._(
    validatedValue: 'Expression',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Expression'.toFhirString,
  );

  /// Extension
  static final FHIRAllTypes Extension = FHIRAllTypes._(
    validatedValue: 'Extension',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Extension'.toFhirString,
  );

  /// HumanName
  static final FHIRAllTypes HumanName = FHIRAllTypes._(
    validatedValue: 'HumanName',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'HumanName'.toFhirString,
  );

  /// Identifier
  static final FHIRAllTypes Identifier = FHIRAllTypes._(
    validatedValue: 'Identifier',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Identifier'.toFhirString,
  );

  /// MarketingStatus
  static final FHIRAllTypes MarketingStatus = FHIRAllTypes._(
    validatedValue: 'MarketingStatus',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MarketingStatus'.toFhirString,
  );

  /// Meta
  static final FHIRAllTypes Meta = FHIRAllTypes._(
    validatedValue: 'Meta',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Meta'.toFhirString,
  );

  /// Money
  static final FHIRAllTypes Money = FHIRAllTypes._(
    validatedValue: 'Money',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Money'.toFhirString,
  );

  /// MoneyQuantity
  static final FHIRAllTypes MoneyQuantity = FHIRAllTypes._(
    validatedValue: 'MoneyQuantity',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MoneyQuantity'.toFhirString,
  );

  /// Narrative
  static final FHIRAllTypes Narrative = FHIRAllTypes._(
    validatedValue: 'Narrative',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Narrative'.toFhirString,
  );

  /// ParameterDefinition
  static final FHIRAllTypes ParameterDefinition = FHIRAllTypes._(
    validatedValue: 'ParameterDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ParameterDefinition'.toFhirString,
  );

  /// Period
  static final FHIRAllTypes Period = FHIRAllTypes._(
    validatedValue: 'Period',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Period'.toFhirString,
  );

  /// Population
  static final FHIRAllTypes Population = FHIRAllTypes._(
    validatedValue: 'Population',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Population'.toFhirString,
  );

  /// ProdCharacteristic
  static final FHIRAllTypes ProdCharacteristic = FHIRAllTypes._(
    validatedValue: 'ProdCharacteristic',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ProdCharacteristic'.toFhirString,
  );

  /// ProductShelfLife
  static final FHIRAllTypes ProductShelfLife = FHIRAllTypes._(
    validatedValue: 'ProductShelfLife',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ProductShelfLife'.toFhirString,
  );

  /// Quantity
  static final FHIRAllTypes Quantity = FHIRAllTypes._(
    validatedValue: 'Quantity',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Quantity'.toFhirString,
  );

  /// Range
  static final FHIRAllTypes Range = FHIRAllTypes._(
    validatedValue: 'Range',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Range'.toFhirString,
  );

  /// Ratio
  static final FHIRAllTypes Ratio = FHIRAllTypes._(
    validatedValue: 'Ratio',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Ratio'.toFhirString,
  );

  /// RatioRange
  static final FHIRAllTypes RatioRange = FHIRAllTypes._(
    validatedValue: 'RatioRange',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RatioRange'.toFhirString,
  );

  /// Reference
  static final FHIRAllTypes Reference = FHIRAllTypes._(
    validatedValue: 'Reference',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Reference'.toFhirString,
  );

  /// RelatedArtifact
  static final FHIRAllTypes RelatedArtifact = FHIRAllTypes._(
    validatedValue: 'RelatedArtifact',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RelatedArtifact'.toFhirString,
  );

  /// SampledData
  static final FHIRAllTypes SampledData = FHIRAllTypes._(
    validatedValue: 'SampledData',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SampledData'.toFhirString,
  );

  /// Signature
  static final FHIRAllTypes Signature = FHIRAllTypes._(
    validatedValue: 'Signature',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Signature'.toFhirString,
  );

  /// SimpleQuantity
  static final FHIRAllTypes SimpleQuantity = FHIRAllTypes._(
    validatedValue: 'SimpleQuantity',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SimpleQuantity'.toFhirString,
  );

  /// Timing
  static final FHIRAllTypes Timing = FHIRAllTypes._(
    validatedValue: 'Timing',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Timing'.toFhirString,
  );

  /// TriggerDefinition
  static final FHIRAllTypes TriggerDefinition = FHIRAllTypes._(
    validatedValue: 'TriggerDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'TriggerDefinition'.toFhirString,
  );

  /// UsageContext
  static final FHIRAllTypes UsageContext = FHIRAllTypes._(
    validatedValue: 'UsageContext',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'UsageContext'.toFhirString,
  );

  /// base64Binary
  static final FHIRAllTypes base64Binary = FHIRAllTypes._(
    validatedValue: 'base64Binary',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'base64Binary'.toFhirString,
  );

  /// boolean
  static final FHIRAllTypes boolean = FHIRAllTypes._(
    validatedValue: 'boolean',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'boolean'.toFhirString,
  );

  /// canonical
  static final FHIRAllTypes canonical = FHIRAllTypes._(
    validatedValue: 'canonical',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'canonical'.toFhirString,
  );

  /// code
  static final FHIRAllTypes code = FHIRAllTypes._(
    validatedValue: 'code',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'code'.toFhirString,
  );

  /// date
  static final FHIRAllTypes date = FHIRAllTypes._(
    validatedValue: 'date',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'date'.toFhirString,
  );

  /// dateTime
  static final FHIRAllTypes dateTime = FHIRAllTypes._(
    validatedValue: 'dateTime',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'dateTime'.toFhirString,
  );

  /// decimal
  static final FHIRAllTypes decimal = FHIRAllTypes._(
    validatedValue: 'decimal',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'decimal'.toFhirString,
  );

  /// id
  static final FHIRAllTypes id_ = FHIRAllTypes._(
    validatedValue: 'id',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'id'.toFhirString,
  );

  /// instant
  static final FHIRAllTypes instant = FHIRAllTypes._(
    validatedValue: 'instant',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'instant'.toFhirString,
  );

  /// integer
  static final FHIRAllTypes integer = FHIRAllTypes._(
    validatedValue: 'integer',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'integer'.toFhirString,
  );

  /// markdown
  static final FHIRAllTypes markdown = FHIRAllTypes._(
    validatedValue: 'markdown',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'markdown'.toFhirString,
  );

  /// oid
  static final FHIRAllTypes oid = FHIRAllTypes._(
    validatedValue: 'oid',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'oid'.toFhirString,
  );

  /// positiveInt
  static final FHIRAllTypes positiveInt = FHIRAllTypes._(
    validatedValue: 'positiveInt',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'positiveInt'.toFhirString,
  );

  /// string
  static final FHIRAllTypes string = FHIRAllTypes._(
    validatedValue: 'string',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'string'.toFhirString,
  );

  /// time
  static final FHIRAllTypes time = FHIRAllTypes._(
    validatedValue: 'time',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'time'.toFhirString,
  );

  /// unsignedInt
  static final FHIRAllTypes unsignedInt = FHIRAllTypes._(
    validatedValue: 'unsignedInt',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'unsignedInt'.toFhirString,
  );

  /// uri
  static final FHIRAllTypes uri = FHIRAllTypes._(
    validatedValue: 'uri',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'uri'.toFhirString,
  );

  /// url
  static final FHIRAllTypes url = FHIRAllTypes._(
    validatedValue: 'url',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'url'.toFhirString,
  );

  /// uuid
  static final FHIRAllTypes uuid = FHIRAllTypes._(
    validatedValue: 'uuid',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'uuid'.toFhirString,
  );

  /// xhtml
  static final FHIRAllTypes xhtml = FHIRAllTypes._(
    validatedValue: 'xhtml',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'XHTML'.toFhirString,
  );

  /// Resource
  static final FHIRAllTypes Resource = FHIRAllTypes._(
    validatedValue: 'Resource',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Resource'.toFhirString,
  );

  /// Binary
  static final FHIRAllTypes Binary = FHIRAllTypes._(
    validatedValue: 'Binary',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Binary'.toFhirString,
  );

  /// Bundle
  static final FHIRAllTypes Bundle = FHIRAllTypes._(
    validatedValue: 'Bundle',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Bundle'.toFhirString,
  );

  /// DomainResource
  static final FHIRAllTypes DomainResource = FHIRAllTypes._(
    validatedValue: 'DomainResource',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DomainResource'.toFhirString,
  );

  /// Account
  static final FHIRAllTypes Account = FHIRAllTypes._(
    validatedValue: 'Account',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Account'.toFhirString,
  );

  /// ActivityDefinition
  static final FHIRAllTypes ActivityDefinition = FHIRAllTypes._(
    validatedValue: 'ActivityDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ActivityDefinition'.toFhirString,
  );

  /// AdministrableProductDefinition
  static final FHIRAllTypes AdministrableProductDefinition = FHIRAllTypes._(
    validatedValue: 'AdministrableProductDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AdministrableProductDefinition'.toFhirString,
  );

  /// AdverseEvent
  static final FHIRAllTypes AdverseEvent = FHIRAllTypes._(
    validatedValue: 'AdverseEvent',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AdverseEvent'.toFhirString,
  );

  /// AllergyIntolerance
  static final FHIRAllTypes AllergyIntolerance = FHIRAllTypes._(
    validatedValue: 'AllergyIntolerance',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AllergyIntolerance'.toFhirString,
  );

  /// Appointment
  static final FHIRAllTypes Appointment = FHIRAllTypes._(
    validatedValue: 'Appointment',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Appointment'.toFhirString,
  );

  /// AppointmentResponse
  static final FHIRAllTypes AppointmentResponse = FHIRAllTypes._(
    validatedValue: 'AppointmentResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AppointmentResponse'.toFhirString,
  );

  /// AuditEvent
  static final FHIRAllTypes AuditEvent = FHIRAllTypes._(
    validatedValue: 'AuditEvent',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AuditEvent'.toFhirString,
  );

  /// Basic
  static final FHIRAllTypes Basic = FHIRAllTypes._(
    validatedValue: 'Basic',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Basic'.toFhirString,
  );

  /// BiologicallyDerivedProduct
  static final FHIRAllTypes BiologicallyDerivedProduct = FHIRAllTypes._(
    validatedValue: 'BiologicallyDerivedProduct',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BiologicallyDerivedProduct'.toFhirString,
  );

  /// BodyStructure
  static final FHIRAllTypes BodyStructure = FHIRAllTypes._(
    validatedValue: 'BodyStructure',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BodyStructure'.toFhirString,
  );

  /// CapabilityStatement
  static final FHIRAllTypes CapabilityStatement = FHIRAllTypes._(
    validatedValue: 'CapabilityStatement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CapabilityStatement'.toFhirString,
  );

  /// CarePlan
  static final FHIRAllTypes CarePlan = FHIRAllTypes._(
    validatedValue: 'CarePlan',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CarePlan'.toFhirString,
  );

  /// CareTeam
  static final FHIRAllTypes CareTeam = FHIRAllTypes._(
    validatedValue: 'CareTeam',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CareTeam'.toFhirString,
  );

  /// CatalogEntry
  static final FHIRAllTypes CatalogEntry = FHIRAllTypes._(
    validatedValue: 'CatalogEntry',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CatalogEntry'.toFhirString,
  );

  /// ChargeItem
  static final FHIRAllTypes ChargeItem = FHIRAllTypes._(
    validatedValue: 'ChargeItem',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ChargeItem'.toFhirString,
  );

  /// ChargeItemDefinition
  static final FHIRAllTypes ChargeItemDefinition = FHIRAllTypes._(
    validatedValue: 'ChargeItemDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ChargeItemDefinition'.toFhirString,
  );

  /// Citation
  static final FHIRAllTypes Citation = FHIRAllTypes._(
    validatedValue: 'Citation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Citation'.toFhirString,
  );

  /// Claim
  static final FHIRAllTypes Claim = FHIRAllTypes._(
    validatedValue: 'Claim',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Claim'.toFhirString,
  );

  /// ClaimResponse
  static final FHIRAllTypes ClaimResponse = FHIRAllTypes._(
    validatedValue: 'ClaimResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ClaimResponse'.toFhirString,
  );

  /// ClinicalImpression
  static final FHIRAllTypes ClinicalImpression = FHIRAllTypes._(
    validatedValue: 'ClinicalImpression',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ClinicalImpression'.toFhirString,
  );

  /// ClinicalUseDefinition
  static final FHIRAllTypes ClinicalUseDefinition = FHIRAllTypes._(
    validatedValue: 'ClinicalUseDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ClinicalUseDefinition'.toFhirString,
  );

  /// CodeSystem
  static final FHIRAllTypes CodeSystem = FHIRAllTypes._(
    validatedValue: 'CodeSystem',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CodeSystem'.toFhirString,
  );

  /// Communication
  static final FHIRAllTypes Communication = FHIRAllTypes._(
    validatedValue: 'Communication',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Communication'.toFhirString,
  );

  /// CommunicationRequest
  static final FHIRAllTypes CommunicationRequest = FHIRAllTypes._(
    validatedValue: 'CommunicationRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CommunicationRequest'.toFhirString,
  );

  /// CompartmentDefinition
  static final FHIRAllTypes CompartmentDefinition = FHIRAllTypes._(
    validatedValue: 'CompartmentDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CompartmentDefinition'.toFhirString,
  );

  /// Composition
  static final FHIRAllTypes Composition = FHIRAllTypes._(
    validatedValue: 'Composition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Composition'.toFhirString,
  );

  /// ConceptMap
  static final FHIRAllTypes ConceptMap = FHIRAllTypes._(
    validatedValue: 'ConceptMap',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ConceptMap'.toFhirString,
  );

  /// Condition
  static final FHIRAllTypes Condition = FHIRAllTypes._(
    validatedValue: 'Condition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Condition'.toFhirString,
  );

  /// Consent
  static final FHIRAllTypes Consent = FHIRAllTypes._(
    validatedValue: 'Consent',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Consent'.toFhirString,
  );

  /// Contract
  static final FHIRAllTypes Contract = FHIRAllTypes._(
    validatedValue: 'Contract',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Contract'.toFhirString,
  );

  /// Coverage
  static final FHIRAllTypes Coverage = FHIRAllTypes._(
    validatedValue: 'Coverage',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Coverage'.toFhirString,
  );

  /// CoverageEligibilityRequest
  static final FHIRAllTypes CoverageEligibilityRequest = FHIRAllTypes._(
    validatedValue: 'CoverageEligibilityRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CoverageEligibilityRequest'.toFhirString,
  );

  /// CoverageEligibilityResponse
  static final FHIRAllTypes CoverageEligibilityResponse = FHIRAllTypes._(
    validatedValue: 'CoverageEligibilityResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CoverageEligibilityResponse'.toFhirString,
  );

  /// DetectedIssue
  static final FHIRAllTypes DetectedIssue = FHIRAllTypes._(
    validatedValue: 'DetectedIssue',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DetectedIssue'.toFhirString,
  );

  /// Device
  static final FHIRAllTypes Device = FHIRAllTypes._(
    validatedValue: 'Device',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Device'.toFhirString,
  );

  /// DeviceDefinition
  static final FHIRAllTypes DeviceDefinition = FHIRAllTypes._(
    validatedValue: 'DeviceDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DeviceDefinition'.toFhirString,
  );

  /// DeviceMetric
  static final FHIRAllTypes DeviceMetric = FHIRAllTypes._(
    validatedValue: 'DeviceMetric',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DeviceMetric'.toFhirString,
  );

  /// DeviceRequest
  static final FHIRAllTypes DeviceRequest = FHIRAllTypes._(
    validatedValue: 'DeviceRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DeviceRequest'.toFhirString,
  );

  /// DeviceUseStatement
  static final FHIRAllTypes DeviceUseStatement = FHIRAllTypes._(
    validatedValue: 'DeviceUseStatement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DeviceUseStatement'.toFhirString,
  );

  /// DiagnosticReport
  static final FHIRAllTypes DiagnosticReport = FHIRAllTypes._(
    validatedValue: 'DiagnosticReport',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DiagnosticReport'.toFhirString,
  );

  /// DocumentManifest
  static final FHIRAllTypes DocumentManifest = FHIRAllTypes._(
    validatedValue: 'DocumentManifest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DocumentManifest'.toFhirString,
  );

  /// DocumentReference
  static final FHIRAllTypes DocumentReference = FHIRAllTypes._(
    validatedValue: 'DocumentReference',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DocumentReference'.toFhirString,
  );

  /// Encounter
  static final FHIRAllTypes Encounter = FHIRAllTypes._(
    validatedValue: 'Encounter',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Encounter'.toFhirString,
  );

  /// Endpoint
  static final FHIRAllTypes Endpoint = FHIRAllTypes._(
    validatedValue: 'Endpoint',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Endpoint'.toFhirString,
  );

  /// EnrollmentRequest
  static final FHIRAllTypes EnrollmentRequest = FHIRAllTypes._(
    validatedValue: 'EnrollmentRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EnrollmentRequest'.toFhirString,
  );

  /// EnrollmentResponse
  static final FHIRAllTypes EnrollmentResponse = FHIRAllTypes._(
    validatedValue: 'EnrollmentResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EnrollmentResponse'.toFhirString,
  );

  /// EpisodeOfCare
  static final FHIRAllTypes EpisodeOfCare = FHIRAllTypes._(
    validatedValue: 'EpisodeOfCare',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EpisodeOfCare'.toFhirString,
  );

  /// EventDefinition
  static final FHIRAllTypes EventDefinition = FHIRAllTypes._(
    validatedValue: 'EventDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EventDefinition'.toFhirString,
  );

  /// Evidence
  static final FHIRAllTypes Evidence = FHIRAllTypes._(
    validatedValue: 'Evidence',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Evidence'.toFhirString,
  );

  /// EvidenceReport
  static final FHIRAllTypes EvidenceReport = FHIRAllTypes._(
    validatedValue: 'EvidenceReport',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EvidenceReport'.toFhirString,
  );

  /// EvidenceVariable
  static final FHIRAllTypes EvidenceVariable = FHIRAllTypes._(
    validatedValue: 'EvidenceVariable',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EvidenceVariable'.toFhirString,
  );

  /// ExampleScenario
  static final FHIRAllTypes ExampleScenario = FHIRAllTypes._(
    validatedValue: 'ExampleScenario',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ExampleScenario'.toFhirString,
  );

  /// ExplanationOfBenefit
  static final FHIRAllTypes ExplanationOfBenefit = FHIRAllTypes._(
    validatedValue: 'ExplanationOfBenefit',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ExplanationOfBenefit'.toFhirString,
  );

  /// FamilyMemberHistory
  static final FHIRAllTypes FamilyMemberHistory = FHIRAllTypes._(
    validatedValue: 'FamilyMemberHistory',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'FamilyMemberHistory'.toFhirString,
  );

  /// Flag
  static final FHIRAllTypes Flag = FHIRAllTypes._(
    validatedValue: 'Flag',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Flag'.toFhirString,
  );

  /// Goal
  static final FHIRAllTypes Goal = FHIRAllTypes._(
    validatedValue: 'Goal',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Goal'.toFhirString,
  );

  /// GraphDefinition
  static final FHIRAllTypes GraphDefinition = FHIRAllTypes._(
    validatedValue: 'GraphDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GraphDefinition'.toFhirString,
  );

  /// Group
  static final FHIRAllTypes Group = FHIRAllTypes._(
    validatedValue: 'Group',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Group'.toFhirString,
  );

  /// GuidanceResponse
  static final FHIRAllTypes GuidanceResponse = FHIRAllTypes._(
    validatedValue: 'GuidanceResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GuidanceResponse'.toFhirString,
  );

  /// HealthcareService
  static final FHIRAllTypes HealthcareService = FHIRAllTypes._(
    validatedValue: 'HealthcareService',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'HealthcareService'.toFhirString,
  );

  /// ImagingStudy
  static final FHIRAllTypes ImagingStudy = FHIRAllTypes._(
    validatedValue: 'ImagingStudy',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ImagingStudy'.toFhirString,
  );

  /// Immunization
  static final FHIRAllTypes Immunization = FHIRAllTypes._(
    validatedValue: 'Immunization',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Immunization'.toFhirString,
  );

  /// ImmunizationEvaluation
  static final FHIRAllTypes ImmunizationEvaluation = FHIRAllTypes._(
    validatedValue: 'ImmunizationEvaluation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ImmunizationEvaluation'.toFhirString,
  );

  /// ImmunizationRecommendation
  static final FHIRAllTypes ImmunizationRecommendation = FHIRAllTypes._(
    validatedValue: 'ImmunizationRecommendation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ImmunizationRecommendation'.toFhirString,
  );

  /// ImplementationGuide
  static final FHIRAllTypes ImplementationGuide = FHIRAllTypes._(
    validatedValue: 'ImplementationGuide',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ImplementationGuide'.toFhirString,
  );

  /// Ingredient
  static final FHIRAllTypes Ingredient = FHIRAllTypes._(
    validatedValue: 'Ingredient',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Ingredient'.toFhirString,
  );

  /// InsurancePlan
  static final FHIRAllTypes InsurancePlan = FHIRAllTypes._(
    validatedValue: 'InsurancePlan',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'InsurancePlan'.toFhirString,
  );

  /// Invoice
  static final FHIRAllTypes Invoice = FHIRAllTypes._(
    validatedValue: 'Invoice',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Invoice'.toFhirString,
  );

  /// Library
  static final FHIRAllTypes Library = FHIRAllTypes._(
    validatedValue: 'Library',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Library'.toFhirString,
  );

  /// Linkage
  static final FHIRAllTypes Linkage = FHIRAllTypes._(
    validatedValue: 'Linkage',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Linkage'.toFhirString,
  );

  /// List_
  static final FHIRAllTypes List_ = FHIRAllTypes._(
    validatedValue: 'List',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'List'.toFhirString,
  );

  /// Location
  static final FHIRAllTypes Location = FHIRAllTypes._(
    validatedValue: 'Location',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Location'.toFhirString,
  );

  /// ManufacturedItemDefinition
  static final FHIRAllTypes ManufacturedItemDefinition = FHIRAllTypes._(
    validatedValue: 'ManufacturedItemDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ManufacturedItemDefinition'.toFhirString,
  );

  /// Measure
  static final FHIRAllTypes Measure = FHIRAllTypes._(
    validatedValue: 'Measure',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Measure'.toFhirString,
  );

  /// MeasureReport
  static final FHIRAllTypes MeasureReport = FHIRAllTypes._(
    validatedValue: 'MeasureReport',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MeasureReport'.toFhirString,
  );

  /// Media
  static final FHIRAllTypes Media = FHIRAllTypes._(
    validatedValue: 'Media',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Media'.toFhirString,
  );

  /// Medication
  static final FHIRAllTypes Medication = FHIRAllTypes._(
    validatedValue: 'Medication',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Medication'.toFhirString,
  );

  /// MedicationAdministration
  static final FHIRAllTypes MedicationAdministration = FHIRAllTypes._(
    validatedValue: 'MedicationAdministration',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationAdministration'.toFhirString,
  );

  /// MedicationDispense
  static final FHIRAllTypes MedicationDispense = FHIRAllTypes._(
    validatedValue: 'MedicationDispense',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationDispense'.toFhirString,
  );

  /// MedicationKnowledge
  static final FHIRAllTypes MedicationKnowledge = FHIRAllTypes._(
    validatedValue: 'MedicationKnowledge',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationKnowledge'.toFhirString,
  );

  /// MedicationRequest
  static final FHIRAllTypes MedicationRequest = FHIRAllTypes._(
    validatedValue: 'MedicationRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationRequest'.toFhirString,
  );

  /// MedicationStatement
  static final FHIRAllTypes MedicationStatement = FHIRAllTypes._(
    validatedValue: 'MedicationStatement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationStatement'.toFhirString,
  );

  /// MedicinalProductDefinition
  static final FHIRAllTypes MedicinalProductDefinition = FHIRAllTypes._(
    validatedValue: 'MedicinalProductDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicinalProductDefinition'.toFhirString,
  );

  /// MessageDefinition
  static final FHIRAllTypes MessageDefinition = FHIRAllTypes._(
    validatedValue: 'MessageDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MessageDefinition'.toFhirString,
  );

  /// MessageHeader
  static final FHIRAllTypes MessageHeader = FHIRAllTypes._(
    validatedValue: 'MessageHeader',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MessageHeader'.toFhirString,
  );

  /// MolecularSequence
  static final FHIRAllTypes MolecularSequence = FHIRAllTypes._(
    validatedValue: 'MolecularSequence',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MolecularSequence'.toFhirString,
  );

  /// NamingSystem
  static final FHIRAllTypes NamingSystem = FHIRAllTypes._(
    validatedValue: 'NamingSystem',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'NamingSystem'.toFhirString,
  );

  /// NutritionOrder
  static final FHIRAllTypes NutritionOrder = FHIRAllTypes._(
    validatedValue: 'NutritionOrder',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'NutritionOrder'.toFhirString,
  );

  /// NutritionProduct
  static final FHIRAllTypes NutritionProduct = FHIRAllTypes._(
    validatedValue: 'NutritionProduct',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'NutritionProduct'.toFhirString,
  );

  /// Observation
  static final FHIRAllTypes Observation = FHIRAllTypes._(
    validatedValue: 'Observation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Observation'.toFhirString,
  );

  /// ObservationDefinition
  static final FHIRAllTypes ObservationDefinition = FHIRAllTypes._(
    validatedValue: 'ObservationDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ObservationDefinition'.toFhirString,
  );

  /// OperationDefinition
  static final FHIRAllTypes OperationDefinition = FHIRAllTypes._(
    validatedValue: 'OperationDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'OperationDefinition'.toFhirString,
  );

  /// OperationOutcome
  static final FHIRAllTypes OperationOutcome = FHIRAllTypes._(
    validatedValue: 'OperationOutcome',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'OperationOutcome'.toFhirString,
  );

  /// Organization
  static final FHIRAllTypes Organization = FHIRAllTypes._(
    validatedValue: 'Organization',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Organization'.toFhirString,
  );

  /// OrganizationAffiliation
  static final FHIRAllTypes OrganizationAffiliation = FHIRAllTypes._(
    validatedValue: 'OrganizationAffiliation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'OrganizationAffiliation'.toFhirString,
  );

  /// PackagedProductDefinition
  static final FHIRAllTypes PackagedProductDefinition = FHIRAllTypes._(
    validatedValue: 'PackagedProductDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PackagedProductDefinition'.toFhirString,
  );

  /// Patient
  static final FHIRAllTypes Patient = FHIRAllTypes._(
    validatedValue: 'Patient',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Patient'.toFhirString,
  );

  /// PaymentNotice
  static final FHIRAllTypes PaymentNotice = FHIRAllTypes._(
    validatedValue: 'PaymentNotice',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PaymentNotice'.toFhirString,
  );

  /// PaymentReconciliation
  static final FHIRAllTypes PaymentReconciliation = FHIRAllTypes._(
    validatedValue: 'PaymentReconciliation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PaymentReconciliation'.toFhirString,
  );

  /// Person
  static final FHIRAllTypes Person = FHIRAllTypes._(
    validatedValue: 'Person',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Person'.toFhirString,
  );

  /// PlanDefinition
  static final FHIRAllTypes PlanDefinition = FHIRAllTypes._(
    validatedValue: 'PlanDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PlanDefinition'.toFhirString,
  );

  /// Practitioner
  static final FHIRAllTypes Practitioner = FHIRAllTypes._(
    validatedValue: 'Practitioner',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Practitioner'.toFhirString,
  );

  /// PractitionerRole
  static final FHIRAllTypes PractitionerRole = FHIRAllTypes._(
    validatedValue: 'PractitionerRole',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PractitionerRole'.toFhirString,
  );

  /// Procedure
  static final FHIRAllTypes Procedure = FHIRAllTypes._(
    validatedValue: 'Procedure',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Procedure'.toFhirString,
  );

  /// Provenance
  static final FHIRAllTypes Provenance = FHIRAllTypes._(
    validatedValue: 'Provenance',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Provenance'.toFhirString,
  );

  /// Questionnaire
  static final FHIRAllTypes Questionnaire = FHIRAllTypes._(
    validatedValue: 'Questionnaire',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Questionnaire'.toFhirString,
  );

  /// QuestionnaireResponse
  static final FHIRAllTypes QuestionnaireResponse = FHIRAllTypes._(
    validatedValue: 'QuestionnaireResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'QuestionnaireResponse'.toFhirString,
  );

  /// RegulatedAuthorization
  static final FHIRAllTypes RegulatedAuthorization = FHIRAllTypes._(
    validatedValue: 'RegulatedAuthorization',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RegulatedAuthorization'.toFhirString,
  );

  /// RelatedPerson
  static final FHIRAllTypes RelatedPerson = FHIRAllTypes._(
    validatedValue: 'RelatedPerson',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RelatedPerson'.toFhirString,
  );

  /// RequestGroup
  static final FHIRAllTypes RequestGroup = FHIRAllTypes._(
    validatedValue: 'RequestGroup',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RequestGroup'.toFhirString,
  );

  /// ResearchDefinition
  static final FHIRAllTypes ResearchDefinition = FHIRAllTypes._(
    validatedValue: 'ResearchDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ResearchDefinition'.toFhirString,
  );

  /// ResearchElementDefinition
  static final FHIRAllTypes ResearchElementDefinition = FHIRAllTypes._(
    validatedValue: 'ResearchElementDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ResearchElementDefinition'.toFhirString,
  );

  /// ResearchStudy
  static final FHIRAllTypes ResearchStudy = FHIRAllTypes._(
    validatedValue: 'ResearchStudy',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ResearchStudy'.toFhirString,
  );

  /// ResearchSubject
  static final FHIRAllTypes ResearchSubject = FHIRAllTypes._(
    validatedValue: 'ResearchSubject',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ResearchSubject'.toFhirString,
  );

  /// RiskAssessment
  static final FHIRAllTypes RiskAssessment = FHIRAllTypes._(
    validatedValue: 'RiskAssessment',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RiskAssessment'.toFhirString,
  );

  /// Schedule
  static final FHIRAllTypes Schedule = FHIRAllTypes._(
    validatedValue: 'Schedule',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Schedule'.toFhirString,
  );

  /// SearchParameter
  static final FHIRAllTypes SearchParameter = FHIRAllTypes._(
    validatedValue: 'SearchParameter',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SearchParameter'.toFhirString,
  );

  /// ServiceRequest
  static final FHIRAllTypes ServiceRequest = FHIRAllTypes._(
    validatedValue: 'ServiceRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ServiceRequest'.toFhirString,
  );

  /// Slot
  static final FHIRAllTypes Slot = FHIRAllTypes._(
    validatedValue: 'Slot',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Slot'.toFhirString,
  );

  /// Specimen
  static final FHIRAllTypes Specimen = FHIRAllTypes._(
    validatedValue: 'Specimen',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Specimen'.toFhirString,
  );

  /// SpecimenDefinition
  static final FHIRAllTypes SpecimenDefinition = FHIRAllTypes._(
    validatedValue: 'SpecimenDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SpecimenDefinition'.toFhirString,
  );

  /// StructureDefinition
  static final FHIRAllTypes StructureDefinition = FHIRAllTypes._(
    validatedValue: 'StructureDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'StructureDefinition'.toFhirString,
  );

  /// StructureMap
  static final FHIRAllTypes StructureMap = FHIRAllTypes._(
    validatedValue: 'StructureMap',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'StructureMap'.toFhirString,
  );

  /// Subscription
  static final FHIRAllTypes Subscription = FHIRAllTypes._(
    validatedValue: 'Subscription',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Subscription'.toFhirString,
  );

  /// SubscriptionStatus
  static final FHIRAllTypes SubscriptionStatus = FHIRAllTypes._(
    validatedValue: 'SubscriptionStatus',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SubscriptionStatus'.toFhirString,
  );

  /// SubscriptionTopic
  static final FHIRAllTypes SubscriptionTopic = FHIRAllTypes._(
    validatedValue: 'SubscriptionTopic',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SubscriptionTopic'.toFhirString,
  );

  /// Substance
  static final FHIRAllTypes Substance = FHIRAllTypes._(
    validatedValue: 'Substance',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Substance'.toFhirString,
  );

  /// SubstanceDefinition
  static final FHIRAllTypes SubstanceDefinition = FHIRAllTypes._(
    validatedValue: 'SubstanceDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SubstanceDefinition'.toFhirString,
  );

  /// SupplyDelivery
  static final FHIRAllTypes SupplyDelivery = FHIRAllTypes._(
    validatedValue: 'SupplyDelivery',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SupplyDelivery'.toFhirString,
  );

  /// SupplyRequest
  static final FHIRAllTypes SupplyRequest = FHIRAllTypes._(
    validatedValue: 'SupplyRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SupplyRequest'.toFhirString,
  );

  /// Task
  static final FHIRAllTypes Task = FHIRAllTypes._(
    validatedValue: 'Task',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Task'.toFhirString,
  );

  /// TerminologyCapabilities
  static final FHIRAllTypes TerminologyCapabilities = FHIRAllTypes._(
    validatedValue: 'TerminologyCapabilities',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'TerminologyCapabilities'.toFhirString,
  );

  /// TestReport
  static final FHIRAllTypes TestReport = FHIRAllTypes._(
    validatedValue: 'TestReport',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'TestReport'.toFhirString,
  );

  /// TestScript
  static final FHIRAllTypes TestScript = FHIRAllTypes._(
    validatedValue: 'TestScript',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'TestScript'.toFhirString,
  );

  /// ValueSet
  static final FHIRAllTypes ValueSet = FHIRAllTypes._(
    validatedValue: 'ValueSet',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ValueSet'.toFhirString,
  );

  /// VerificationResult
  static final FHIRAllTypes VerificationResult = FHIRAllTypes._(
    validatedValue: 'VerificationResult',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'VerificationResult'.toFhirString,
  );

  /// VisionPrescription
  static final FHIRAllTypes VisionPrescription = FHIRAllTypes._(
    validatedValue: 'VisionPrescription',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'VisionPrescription'.toFhirString,
  );

  /// Parameters
  static final FHIRAllTypes Parameters = FHIRAllTypes._(
    validatedValue: 'Parameters',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Parameters'.toFhirString,
  );

  /// Type
  static final FHIRAllTypes Type = FHIRAllTypes._(
    validatedValue: 'Type',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Type'.toFhirString,
  );

  /// Any
  static final FHIRAllTypes Any = FHIRAllTypes._(
    validatedValue: 'Any',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Any'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final FHIRAllTypes elementOnly = FHIRAllTypes._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  FHIRAllTypes withElement(Element? newElement) {
    return FHIRAllTypes._(validatedValue: value, element: newElement);
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
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
