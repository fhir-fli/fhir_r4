// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A list of all the concrete types defined in this version of the FHIR
/// specification - Abstract Types, Data Types and Resource Types.
class FHIRAllTypes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  FHIRAllTypes._({
    required super.valueString,
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
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return FHIRAllTypes._(
      valueString: valueString,
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
  factory FHIRAllTypes.empty() => FHIRAllTypes._(valueString: '');

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
      valueString: value,
      element: element,
    );
  }

  /// Address
  static final FHIRAllTypes Address = FHIRAllTypes._(
    valueString: 'Address',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Address'.toFhirString,
  );

  /// Age
  static final FHIRAllTypes Age = FHIRAllTypes._(
    valueString: 'Age',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Age'.toFhirString,
  );

  /// Annotation
  static final FHIRAllTypes Annotation = FHIRAllTypes._(
    valueString: 'Annotation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Annotation'.toFhirString,
  );

  /// Attachment
  static final FHIRAllTypes Attachment = FHIRAllTypes._(
    valueString: 'Attachment',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Attachment'.toFhirString,
  );

  /// BackboneElement
  static final FHIRAllTypes BackboneElement = FHIRAllTypes._(
    valueString: 'BackboneElement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BackboneElement'.toFhirString,
  );

  /// CodeableConcept
  static final FHIRAllTypes CodeableConcept = FHIRAllTypes._(
    valueString: 'CodeableConcept',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CodeableConcept'.toFhirString,
  );

  /// CodeableReference
  static final FHIRAllTypes CodeableReference = FHIRAllTypes._(
    valueString: 'CodeableReference',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CodeableReference'.toFhirString,
  );

  /// Coding
  static final FHIRAllTypes Coding = FHIRAllTypes._(
    valueString: 'Coding',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Coding'.toFhirString,
  );

  /// ContactDetail
  static final FHIRAllTypes ContactDetail = FHIRAllTypes._(
    valueString: 'ContactDetail',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ContactDetail'.toFhirString,
  );

  /// ContactPoint
  static final FHIRAllTypes ContactPoint = FHIRAllTypes._(
    valueString: 'ContactPoint',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ContactPoint'.toFhirString,
  );

  /// Contributor
  static final FHIRAllTypes Contributor = FHIRAllTypes._(
    valueString: 'Contributor',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Contributor'.toFhirString,
  );

  /// Count
  static final FHIRAllTypes Count = FHIRAllTypes._(
    valueString: 'Count',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Count'.toFhirString,
  );

  /// DataRequirement
  static final FHIRAllTypes DataRequirement = FHIRAllTypes._(
    valueString: 'DataRequirement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DataRequirement'.toFhirString,
  );

  /// Distance
  static final FHIRAllTypes Distance = FHIRAllTypes._(
    valueString: 'Distance',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Distance'.toFhirString,
  );

  /// Dosage
  static final FHIRAllTypes Dosage = FHIRAllTypes._(
    valueString: 'Dosage',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Dosage'.toFhirString,
  );

  /// Duration
  static final FHIRAllTypes Duration = FHIRAllTypes._(
    valueString: 'Duration',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Duration'.toFhirString,
  );

  /// Element_
  static final FHIRAllTypes Element_ = FHIRAllTypes._(
    valueString: 'Element',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Element'.toFhirString,
  );

  /// ElementDefinition
  static final FHIRAllTypes ElementDefinition = FHIRAllTypes._(
    valueString: 'ElementDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ElementDefinition'.toFhirString,
  );

  /// Expression
  static final FHIRAllTypes Expression = FHIRAllTypes._(
    valueString: 'Expression',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Expression'.toFhirString,
  );

  /// Extension
  static final FHIRAllTypes Extension = FHIRAllTypes._(
    valueString: 'Extension',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Extension'.toFhirString,
  );

  /// HumanName
  static final FHIRAllTypes HumanName = FHIRAllTypes._(
    valueString: 'HumanName',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'HumanName'.toFhirString,
  );

  /// Identifier
  static final FHIRAllTypes Identifier = FHIRAllTypes._(
    valueString: 'Identifier',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Identifier'.toFhirString,
  );

  /// MarketingStatus
  static final FHIRAllTypes MarketingStatus = FHIRAllTypes._(
    valueString: 'MarketingStatus',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MarketingStatus'.toFhirString,
  );

  /// Meta
  static final FHIRAllTypes Meta = FHIRAllTypes._(
    valueString: 'Meta',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Meta'.toFhirString,
  );

  /// Money
  static final FHIRAllTypes Money = FHIRAllTypes._(
    valueString: 'Money',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Money'.toFhirString,
  );

  /// MoneyQuantity
  static final FHIRAllTypes MoneyQuantity = FHIRAllTypes._(
    valueString: 'MoneyQuantity',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MoneyQuantity'.toFhirString,
  );

  /// Narrative
  static final FHIRAllTypes Narrative = FHIRAllTypes._(
    valueString: 'Narrative',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Narrative'.toFhirString,
  );

  /// ParameterDefinition
  static final FHIRAllTypes ParameterDefinition = FHIRAllTypes._(
    valueString: 'ParameterDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ParameterDefinition'.toFhirString,
  );

  /// Period
  static final FHIRAllTypes Period = FHIRAllTypes._(
    valueString: 'Period',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Period'.toFhirString,
  );

  /// Population
  static final FHIRAllTypes Population = FHIRAllTypes._(
    valueString: 'Population',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Population'.toFhirString,
  );

  /// ProdCharacteristic
  static final FHIRAllTypes ProdCharacteristic = FHIRAllTypes._(
    valueString: 'ProdCharacteristic',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ProdCharacteristic'.toFhirString,
  );

  /// ProductShelfLife
  static final FHIRAllTypes ProductShelfLife = FHIRAllTypes._(
    valueString: 'ProductShelfLife',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ProductShelfLife'.toFhirString,
  );

  /// Quantity
  static final FHIRAllTypes Quantity = FHIRAllTypes._(
    valueString: 'Quantity',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Quantity'.toFhirString,
  );

  /// Range
  static final FHIRAllTypes Range = FHIRAllTypes._(
    valueString: 'Range',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Range'.toFhirString,
  );

  /// Ratio
  static final FHIRAllTypes Ratio = FHIRAllTypes._(
    valueString: 'Ratio',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Ratio'.toFhirString,
  );

  /// RatioRange
  static final FHIRAllTypes RatioRange = FHIRAllTypes._(
    valueString: 'RatioRange',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RatioRange'.toFhirString,
  );

  /// Reference
  static final FHIRAllTypes Reference = FHIRAllTypes._(
    valueString: 'Reference',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Reference'.toFhirString,
  );

  /// RelatedArtifact
  static final FHIRAllTypes RelatedArtifact = FHIRAllTypes._(
    valueString: 'RelatedArtifact',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RelatedArtifact'.toFhirString,
  );

  /// SampledData
  static final FHIRAllTypes SampledData = FHIRAllTypes._(
    valueString: 'SampledData',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SampledData'.toFhirString,
  );

  /// Signature
  static final FHIRAllTypes Signature = FHIRAllTypes._(
    valueString: 'Signature',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Signature'.toFhirString,
  );

  /// SimpleQuantity
  static final FHIRAllTypes SimpleQuantity = FHIRAllTypes._(
    valueString: 'SimpleQuantity',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SimpleQuantity'.toFhirString,
  );

  /// Timing
  static final FHIRAllTypes Timing = FHIRAllTypes._(
    valueString: 'Timing',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Timing'.toFhirString,
  );

  /// TriggerDefinition
  static final FHIRAllTypes TriggerDefinition = FHIRAllTypes._(
    valueString: 'TriggerDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'TriggerDefinition'.toFhirString,
  );

  /// UsageContext
  static final FHIRAllTypes UsageContext = FHIRAllTypes._(
    valueString: 'UsageContext',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'UsageContext'.toFhirString,
  );

  /// base64Binary
  static final FHIRAllTypes base64Binary = FHIRAllTypes._(
    valueString: 'base64Binary',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'base64Binary'.toFhirString,
  );

  /// boolean
  static final FHIRAllTypes boolean = FHIRAllTypes._(
    valueString: 'boolean',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'boolean'.toFhirString,
  );

  /// canonical
  static final FHIRAllTypes canonical = FHIRAllTypes._(
    valueString: 'canonical',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'canonical'.toFhirString,
  );

  /// code
  static final FHIRAllTypes code = FHIRAllTypes._(
    valueString: 'code',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'code'.toFhirString,
  );

  /// date
  static final FHIRAllTypes date = FHIRAllTypes._(
    valueString: 'date',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'date'.toFhirString,
  );

  /// dateTime
  static final FHIRAllTypes dateTime = FHIRAllTypes._(
    valueString: 'dateTime',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'dateTime'.toFhirString,
  );

  /// decimal
  static final FHIRAllTypes decimal = FHIRAllTypes._(
    valueString: 'decimal',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'decimal'.toFhirString,
  );

  /// id
  static final FHIRAllTypes id_ = FHIRAllTypes._(
    valueString: 'id',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'id'.toFhirString,
  );

  /// instant
  static final FHIRAllTypes instant = FHIRAllTypes._(
    valueString: 'instant',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'instant'.toFhirString,
  );

  /// integer
  static final FHIRAllTypes integer = FHIRAllTypes._(
    valueString: 'integer',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'integer'.toFhirString,
  );

  /// markdown
  static final FHIRAllTypes markdown = FHIRAllTypes._(
    valueString: 'markdown',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'markdown'.toFhirString,
  );

  /// oid
  static final FHIRAllTypes oid = FHIRAllTypes._(
    valueString: 'oid',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'oid'.toFhirString,
  );

  /// positiveInt
  static final FHIRAllTypes positiveInt = FHIRAllTypes._(
    valueString: 'positiveInt',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'positiveInt'.toFhirString,
  );

  /// string
  static final FHIRAllTypes string = FHIRAllTypes._(
    valueString: 'string',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'string'.toFhirString,
  );

  /// time
  static final FHIRAllTypes time = FHIRAllTypes._(
    valueString: 'time',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'time'.toFhirString,
  );

  /// unsignedInt
  static final FHIRAllTypes unsignedInt = FHIRAllTypes._(
    valueString: 'unsignedInt',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'unsignedInt'.toFhirString,
  );

  /// uri
  static final FHIRAllTypes uri = FHIRAllTypes._(
    valueString: 'uri',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'uri'.toFhirString,
  );

  /// url
  static final FHIRAllTypes url = FHIRAllTypes._(
    valueString: 'url',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'url'.toFhirString,
  );

  /// uuid
  static final FHIRAllTypes uuid = FHIRAllTypes._(
    valueString: 'uuid',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'uuid'.toFhirString,
  );

  /// xhtml
  static final FHIRAllTypes xhtml = FHIRAllTypes._(
    valueString: 'xhtml',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'XHTML'.toFhirString,
  );

  /// Resource
  static final FHIRAllTypes Resource = FHIRAllTypes._(
    valueString: 'Resource',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Resource'.toFhirString,
  );

  /// Binary
  static final FHIRAllTypes Binary = FHIRAllTypes._(
    valueString: 'Binary',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Binary'.toFhirString,
  );

  /// Bundle
  static final FHIRAllTypes Bundle = FHIRAllTypes._(
    valueString: 'Bundle',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Bundle'.toFhirString,
  );

  /// DomainResource
  static final FHIRAllTypes DomainResource = FHIRAllTypes._(
    valueString: 'DomainResource',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DomainResource'.toFhirString,
  );

  /// Account
  static final FHIRAllTypes Account = FHIRAllTypes._(
    valueString: 'Account',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Account'.toFhirString,
  );

  /// ActivityDefinition
  static final FHIRAllTypes ActivityDefinition = FHIRAllTypes._(
    valueString: 'ActivityDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ActivityDefinition'.toFhirString,
  );

  /// AdministrableProductDefinition
  static final FHIRAllTypes AdministrableProductDefinition = FHIRAllTypes._(
    valueString: 'AdministrableProductDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AdministrableProductDefinition'.toFhirString,
  );

  /// AdverseEvent
  static final FHIRAllTypes AdverseEvent = FHIRAllTypes._(
    valueString: 'AdverseEvent',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AdverseEvent'.toFhirString,
  );

  /// AllergyIntolerance
  static final FHIRAllTypes AllergyIntolerance = FHIRAllTypes._(
    valueString: 'AllergyIntolerance',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AllergyIntolerance'.toFhirString,
  );

  /// Appointment
  static final FHIRAllTypes Appointment = FHIRAllTypes._(
    valueString: 'Appointment',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Appointment'.toFhirString,
  );

  /// AppointmentResponse
  static final FHIRAllTypes AppointmentResponse = FHIRAllTypes._(
    valueString: 'AppointmentResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AppointmentResponse'.toFhirString,
  );

  /// AuditEvent
  static final FHIRAllTypes AuditEvent = FHIRAllTypes._(
    valueString: 'AuditEvent',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AuditEvent'.toFhirString,
  );

  /// Basic
  static final FHIRAllTypes Basic = FHIRAllTypes._(
    valueString: 'Basic',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Basic'.toFhirString,
  );

  /// BiologicallyDerivedProduct
  static final FHIRAllTypes BiologicallyDerivedProduct = FHIRAllTypes._(
    valueString: 'BiologicallyDerivedProduct',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BiologicallyDerivedProduct'.toFhirString,
  );

  /// BodyStructure
  static final FHIRAllTypes BodyStructure = FHIRAllTypes._(
    valueString: 'BodyStructure',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BodyStructure'.toFhirString,
  );

  /// CapabilityStatement
  static final FHIRAllTypes CapabilityStatement = FHIRAllTypes._(
    valueString: 'CapabilityStatement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CapabilityStatement'.toFhirString,
  );

  /// CarePlan
  static final FHIRAllTypes CarePlan = FHIRAllTypes._(
    valueString: 'CarePlan',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CarePlan'.toFhirString,
  );

  /// CareTeam
  static final FHIRAllTypes CareTeam = FHIRAllTypes._(
    valueString: 'CareTeam',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CareTeam'.toFhirString,
  );

  /// CatalogEntry
  static final FHIRAllTypes CatalogEntry = FHIRAllTypes._(
    valueString: 'CatalogEntry',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CatalogEntry'.toFhirString,
  );

  /// ChargeItem
  static final FHIRAllTypes ChargeItem = FHIRAllTypes._(
    valueString: 'ChargeItem',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ChargeItem'.toFhirString,
  );

  /// ChargeItemDefinition
  static final FHIRAllTypes ChargeItemDefinition = FHIRAllTypes._(
    valueString: 'ChargeItemDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ChargeItemDefinition'.toFhirString,
  );

  /// Citation
  static final FHIRAllTypes Citation = FHIRAllTypes._(
    valueString: 'Citation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Citation'.toFhirString,
  );

  /// Claim
  static final FHIRAllTypes Claim = FHIRAllTypes._(
    valueString: 'Claim',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Claim'.toFhirString,
  );

  /// ClaimResponse
  static final FHIRAllTypes ClaimResponse = FHIRAllTypes._(
    valueString: 'ClaimResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ClaimResponse'.toFhirString,
  );

  /// ClinicalImpression
  static final FHIRAllTypes ClinicalImpression = FHIRAllTypes._(
    valueString: 'ClinicalImpression',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ClinicalImpression'.toFhirString,
  );

  /// ClinicalUseDefinition
  static final FHIRAllTypes ClinicalUseDefinition = FHIRAllTypes._(
    valueString: 'ClinicalUseDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ClinicalUseDefinition'.toFhirString,
  );

  /// CodeSystem
  static final FHIRAllTypes CodeSystem = FHIRAllTypes._(
    valueString: 'CodeSystem',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CodeSystem'.toFhirString,
  );

  /// Communication
  static final FHIRAllTypes Communication = FHIRAllTypes._(
    valueString: 'Communication',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Communication'.toFhirString,
  );

  /// CommunicationRequest
  static final FHIRAllTypes CommunicationRequest = FHIRAllTypes._(
    valueString: 'CommunicationRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CommunicationRequest'.toFhirString,
  );

  /// CompartmentDefinition
  static final FHIRAllTypes CompartmentDefinition = FHIRAllTypes._(
    valueString: 'CompartmentDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CompartmentDefinition'.toFhirString,
  );

  /// Composition
  static final FHIRAllTypes Composition = FHIRAllTypes._(
    valueString: 'Composition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Composition'.toFhirString,
  );

  /// ConceptMap
  static final FHIRAllTypes ConceptMap = FHIRAllTypes._(
    valueString: 'ConceptMap',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ConceptMap'.toFhirString,
  );

  /// Condition
  static final FHIRAllTypes Condition = FHIRAllTypes._(
    valueString: 'Condition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Condition'.toFhirString,
  );

  /// Consent
  static final FHIRAllTypes Consent = FHIRAllTypes._(
    valueString: 'Consent',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Consent'.toFhirString,
  );

  /// Contract
  static final FHIRAllTypes Contract = FHIRAllTypes._(
    valueString: 'Contract',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Contract'.toFhirString,
  );

  /// Coverage
  static final FHIRAllTypes Coverage = FHIRAllTypes._(
    valueString: 'Coverage',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Coverage'.toFhirString,
  );

  /// CoverageEligibilityRequest
  static final FHIRAllTypes CoverageEligibilityRequest = FHIRAllTypes._(
    valueString: 'CoverageEligibilityRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CoverageEligibilityRequest'.toFhirString,
  );

  /// CoverageEligibilityResponse
  static final FHIRAllTypes CoverageEligibilityResponse = FHIRAllTypes._(
    valueString: 'CoverageEligibilityResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CoverageEligibilityResponse'.toFhirString,
  );

  /// DetectedIssue
  static final FHIRAllTypes DetectedIssue = FHIRAllTypes._(
    valueString: 'DetectedIssue',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DetectedIssue'.toFhirString,
  );

  /// Device
  static final FHIRAllTypes Device = FHIRAllTypes._(
    valueString: 'Device',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Device'.toFhirString,
  );

  /// DeviceDefinition
  static final FHIRAllTypes DeviceDefinition = FHIRAllTypes._(
    valueString: 'DeviceDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DeviceDefinition'.toFhirString,
  );

  /// DeviceMetric
  static final FHIRAllTypes DeviceMetric = FHIRAllTypes._(
    valueString: 'DeviceMetric',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DeviceMetric'.toFhirString,
  );

  /// DeviceRequest
  static final FHIRAllTypes DeviceRequest = FHIRAllTypes._(
    valueString: 'DeviceRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DeviceRequest'.toFhirString,
  );

  /// DeviceUseStatement
  static final FHIRAllTypes DeviceUseStatement = FHIRAllTypes._(
    valueString: 'DeviceUseStatement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DeviceUseStatement'.toFhirString,
  );

  /// DiagnosticReport
  static final FHIRAllTypes DiagnosticReport = FHIRAllTypes._(
    valueString: 'DiagnosticReport',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DiagnosticReport'.toFhirString,
  );

  /// DocumentManifest
  static final FHIRAllTypes DocumentManifest = FHIRAllTypes._(
    valueString: 'DocumentManifest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DocumentManifest'.toFhirString,
  );

  /// DocumentReference
  static final FHIRAllTypes DocumentReference = FHIRAllTypes._(
    valueString: 'DocumentReference',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DocumentReference'.toFhirString,
  );

  /// Encounter
  static final FHIRAllTypes Encounter = FHIRAllTypes._(
    valueString: 'Encounter',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Encounter'.toFhirString,
  );

  /// Endpoint
  static final FHIRAllTypes Endpoint = FHIRAllTypes._(
    valueString: 'Endpoint',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Endpoint'.toFhirString,
  );

  /// EnrollmentRequest
  static final FHIRAllTypes EnrollmentRequest = FHIRAllTypes._(
    valueString: 'EnrollmentRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EnrollmentRequest'.toFhirString,
  );

  /// EnrollmentResponse
  static final FHIRAllTypes EnrollmentResponse = FHIRAllTypes._(
    valueString: 'EnrollmentResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EnrollmentResponse'.toFhirString,
  );

  /// EpisodeOfCare
  static final FHIRAllTypes EpisodeOfCare = FHIRAllTypes._(
    valueString: 'EpisodeOfCare',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EpisodeOfCare'.toFhirString,
  );

  /// EventDefinition
  static final FHIRAllTypes EventDefinition = FHIRAllTypes._(
    valueString: 'EventDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EventDefinition'.toFhirString,
  );

  /// Evidence
  static final FHIRAllTypes Evidence = FHIRAllTypes._(
    valueString: 'Evidence',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Evidence'.toFhirString,
  );

  /// EvidenceReport
  static final FHIRAllTypes EvidenceReport = FHIRAllTypes._(
    valueString: 'EvidenceReport',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EvidenceReport'.toFhirString,
  );

  /// EvidenceVariable
  static final FHIRAllTypes EvidenceVariable = FHIRAllTypes._(
    valueString: 'EvidenceVariable',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EvidenceVariable'.toFhirString,
  );

  /// ExampleScenario
  static final FHIRAllTypes ExampleScenario = FHIRAllTypes._(
    valueString: 'ExampleScenario',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ExampleScenario'.toFhirString,
  );

  /// ExplanationOfBenefit
  static final FHIRAllTypes ExplanationOfBenefit = FHIRAllTypes._(
    valueString: 'ExplanationOfBenefit',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ExplanationOfBenefit'.toFhirString,
  );

  /// FamilyMemberHistory
  static final FHIRAllTypes FamilyMemberHistory = FHIRAllTypes._(
    valueString: 'FamilyMemberHistory',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'FamilyMemberHistory'.toFhirString,
  );

  /// Flag
  static final FHIRAllTypes Flag = FHIRAllTypes._(
    valueString: 'Flag',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Flag'.toFhirString,
  );

  /// Goal
  static final FHIRAllTypes Goal = FHIRAllTypes._(
    valueString: 'Goal',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Goal'.toFhirString,
  );

  /// GraphDefinition
  static final FHIRAllTypes GraphDefinition = FHIRAllTypes._(
    valueString: 'GraphDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GraphDefinition'.toFhirString,
  );

  /// Group
  static final FHIRAllTypes Group = FHIRAllTypes._(
    valueString: 'Group',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Group'.toFhirString,
  );

  /// GuidanceResponse
  static final FHIRAllTypes GuidanceResponse = FHIRAllTypes._(
    valueString: 'GuidanceResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GuidanceResponse'.toFhirString,
  );

  /// HealthcareService
  static final FHIRAllTypes HealthcareService = FHIRAllTypes._(
    valueString: 'HealthcareService',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'HealthcareService'.toFhirString,
  );

  /// ImagingStudy
  static final FHIRAllTypes ImagingStudy = FHIRAllTypes._(
    valueString: 'ImagingStudy',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ImagingStudy'.toFhirString,
  );

  /// Immunization
  static final FHIRAllTypes Immunization = FHIRAllTypes._(
    valueString: 'Immunization',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Immunization'.toFhirString,
  );

  /// ImmunizationEvaluation
  static final FHIRAllTypes ImmunizationEvaluation = FHIRAllTypes._(
    valueString: 'ImmunizationEvaluation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ImmunizationEvaluation'.toFhirString,
  );

  /// ImmunizationRecommendation
  static final FHIRAllTypes ImmunizationRecommendation = FHIRAllTypes._(
    valueString: 'ImmunizationRecommendation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ImmunizationRecommendation'.toFhirString,
  );

  /// ImplementationGuide
  static final FHIRAllTypes ImplementationGuide = FHIRAllTypes._(
    valueString: 'ImplementationGuide',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ImplementationGuide'.toFhirString,
  );

  /// Ingredient
  static final FHIRAllTypes Ingredient = FHIRAllTypes._(
    valueString: 'Ingredient',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Ingredient'.toFhirString,
  );

  /// InsurancePlan
  static final FHIRAllTypes InsurancePlan = FHIRAllTypes._(
    valueString: 'InsurancePlan',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'InsurancePlan'.toFhirString,
  );

  /// Invoice
  static final FHIRAllTypes Invoice = FHIRAllTypes._(
    valueString: 'Invoice',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Invoice'.toFhirString,
  );

  /// Library
  static final FHIRAllTypes Library = FHIRAllTypes._(
    valueString: 'Library',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Library'.toFhirString,
  );

  /// Linkage
  static final FHIRAllTypes Linkage = FHIRAllTypes._(
    valueString: 'Linkage',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Linkage'.toFhirString,
  );

  /// List_
  static final FHIRAllTypes List_ = FHIRAllTypes._(
    valueString: 'List',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'List'.toFhirString,
  );

  /// Location
  static final FHIRAllTypes Location = FHIRAllTypes._(
    valueString: 'Location',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Location'.toFhirString,
  );

  /// ManufacturedItemDefinition
  static final FHIRAllTypes ManufacturedItemDefinition = FHIRAllTypes._(
    valueString: 'ManufacturedItemDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ManufacturedItemDefinition'.toFhirString,
  );

  /// Measure
  static final FHIRAllTypes Measure = FHIRAllTypes._(
    valueString: 'Measure',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Measure'.toFhirString,
  );

  /// MeasureReport
  static final FHIRAllTypes MeasureReport = FHIRAllTypes._(
    valueString: 'MeasureReport',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MeasureReport'.toFhirString,
  );

  /// Media
  static final FHIRAllTypes Media = FHIRAllTypes._(
    valueString: 'Media',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Media'.toFhirString,
  );

  /// Medication
  static final FHIRAllTypes Medication = FHIRAllTypes._(
    valueString: 'Medication',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Medication'.toFhirString,
  );

  /// MedicationAdministration
  static final FHIRAllTypes MedicationAdministration = FHIRAllTypes._(
    valueString: 'MedicationAdministration',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationAdministration'.toFhirString,
  );

  /// MedicationDispense
  static final FHIRAllTypes MedicationDispense = FHIRAllTypes._(
    valueString: 'MedicationDispense',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationDispense'.toFhirString,
  );

  /// MedicationKnowledge
  static final FHIRAllTypes MedicationKnowledge = FHIRAllTypes._(
    valueString: 'MedicationKnowledge',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationKnowledge'.toFhirString,
  );

  /// MedicationRequest
  static final FHIRAllTypes MedicationRequest = FHIRAllTypes._(
    valueString: 'MedicationRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationRequest'.toFhirString,
  );

  /// MedicationStatement
  static final FHIRAllTypes MedicationStatement = FHIRAllTypes._(
    valueString: 'MedicationStatement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationStatement'.toFhirString,
  );

  /// MedicinalProductDefinition
  static final FHIRAllTypes MedicinalProductDefinition = FHIRAllTypes._(
    valueString: 'MedicinalProductDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicinalProductDefinition'.toFhirString,
  );

  /// MessageDefinition
  static final FHIRAllTypes MessageDefinition = FHIRAllTypes._(
    valueString: 'MessageDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MessageDefinition'.toFhirString,
  );

  /// MessageHeader
  static final FHIRAllTypes MessageHeader = FHIRAllTypes._(
    valueString: 'MessageHeader',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MessageHeader'.toFhirString,
  );

  /// MolecularSequence
  static final FHIRAllTypes MolecularSequence = FHIRAllTypes._(
    valueString: 'MolecularSequence',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MolecularSequence'.toFhirString,
  );

  /// NamingSystem
  static final FHIRAllTypes NamingSystem = FHIRAllTypes._(
    valueString: 'NamingSystem',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'NamingSystem'.toFhirString,
  );

  /// NutritionOrder
  static final FHIRAllTypes NutritionOrder = FHIRAllTypes._(
    valueString: 'NutritionOrder',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'NutritionOrder'.toFhirString,
  );

  /// NutritionProduct
  static final FHIRAllTypes NutritionProduct = FHIRAllTypes._(
    valueString: 'NutritionProduct',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'NutritionProduct'.toFhirString,
  );

  /// Observation
  static final FHIRAllTypes Observation = FHIRAllTypes._(
    valueString: 'Observation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Observation'.toFhirString,
  );

  /// ObservationDefinition
  static final FHIRAllTypes ObservationDefinition = FHIRAllTypes._(
    valueString: 'ObservationDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ObservationDefinition'.toFhirString,
  );

  /// OperationDefinition
  static final FHIRAllTypes OperationDefinition = FHIRAllTypes._(
    valueString: 'OperationDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'OperationDefinition'.toFhirString,
  );

  /// OperationOutcome
  static final FHIRAllTypes OperationOutcome = FHIRAllTypes._(
    valueString: 'OperationOutcome',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'OperationOutcome'.toFhirString,
  );

  /// Organization
  static final FHIRAllTypes Organization = FHIRAllTypes._(
    valueString: 'Organization',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Organization'.toFhirString,
  );

  /// OrganizationAffiliation
  static final FHIRAllTypes OrganizationAffiliation = FHIRAllTypes._(
    valueString: 'OrganizationAffiliation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'OrganizationAffiliation'.toFhirString,
  );

  /// PackagedProductDefinition
  static final FHIRAllTypes PackagedProductDefinition = FHIRAllTypes._(
    valueString: 'PackagedProductDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PackagedProductDefinition'.toFhirString,
  );

  /// Patient
  static final FHIRAllTypes Patient = FHIRAllTypes._(
    valueString: 'Patient',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Patient'.toFhirString,
  );

  /// PaymentNotice
  static final FHIRAllTypes PaymentNotice = FHIRAllTypes._(
    valueString: 'PaymentNotice',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PaymentNotice'.toFhirString,
  );

  /// PaymentReconciliation
  static final FHIRAllTypes PaymentReconciliation = FHIRAllTypes._(
    valueString: 'PaymentReconciliation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PaymentReconciliation'.toFhirString,
  );

  /// Person
  static final FHIRAllTypes Person = FHIRAllTypes._(
    valueString: 'Person',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Person'.toFhirString,
  );

  /// PlanDefinition
  static final FHIRAllTypes PlanDefinition = FHIRAllTypes._(
    valueString: 'PlanDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PlanDefinition'.toFhirString,
  );

  /// Practitioner
  static final FHIRAllTypes Practitioner = FHIRAllTypes._(
    valueString: 'Practitioner',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Practitioner'.toFhirString,
  );

  /// PractitionerRole
  static final FHIRAllTypes PractitionerRole = FHIRAllTypes._(
    valueString: 'PractitionerRole',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PractitionerRole'.toFhirString,
  );

  /// Procedure
  static final FHIRAllTypes Procedure = FHIRAllTypes._(
    valueString: 'Procedure',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Procedure'.toFhirString,
  );

  /// Provenance
  static final FHIRAllTypes Provenance = FHIRAllTypes._(
    valueString: 'Provenance',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Provenance'.toFhirString,
  );

  /// Questionnaire
  static final FHIRAllTypes Questionnaire = FHIRAllTypes._(
    valueString: 'Questionnaire',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Questionnaire'.toFhirString,
  );

  /// QuestionnaireResponse
  static final FHIRAllTypes QuestionnaireResponse = FHIRAllTypes._(
    valueString: 'QuestionnaireResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'QuestionnaireResponse'.toFhirString,
  );

  /// RegulatedAuthorization
  static final FHIRAllTypes RegulatedAuthorization = FHIRAllTypes._(
    valueString: 'RegulatedAuthorization',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RegulatedAuthorization'.toFhirString,
  );

  /// RelatedPerson
  static final FHIRAllTypes RelatedPerson = FHIRAllTypes._(
    valueString: 'RelatedPerson',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RelatedPerson'.toFhirString,
  );

  /// RequestGroup
  static final FHIRAllTypes RequestGroup = FHIRAllTypes._(
    valueString: 'RequestGroup',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RequestGroup'.toFhirString,
  );

  /// ResearchDefinition
  static final FHIRAllTypes ResearchDefinition = FHIRAllTypes._(
    valueString: 'ResearchDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ResearchDefinition'.toFhirString,
  );

  /// ResearchElementDefinition
  static final FHIRAllTypes ResearchElementDefinition = FHIRAllTypes._(
    valueString: 'ResearchElementDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ResearchElementDefinition'.toFhirString,
  );

  /// ResearchStudy
  static final FHIRAllTypes ResearchStudy = FHIRAllTypes._(
    valueString: 'ResearchStudy',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ResearchStudy'.toFhirString,
  );

  /// ResearchSubject
  static final FHIRAllTypes ResearchSubject = FHIRAllTypes._(
    valueString: 'ResearchSubject',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ResearchSubject'.toFhirString,
  );

  /// RiskAssessment
  static final FHIRAllTypes RiskAssessment = FHIRAllTypes._(
    valueString: 'RiskAssessment',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RiskAssessment'.toFhirString,
  );

  /// Schedule
  static final FHIRAllTypes Schedule = FHIRAllTypes._(
    valueString: 'Schedule',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Schedule'.toFhirString,
  );

  /// SearchParameter
  static final FHIRAllTypes SearchParameter = FHIRAllTypes._(
    valueString: 'SearchParameter',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SearchParameter'.toFhirString,
  );

  /// ServiceRequest
  static final FHIRAllTypes ServiceRequest = FHIRAllTypes._(
    valueString: 'ServiceRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ServiceRequest'.toFhirString,
  );

  /// Slot
  static final FHIRAllTypes Slot = FHIRAllTypes._(
    valueString: 'Slot',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Slot'.toFhirString,
  );

  /// Specimen
  static final FHIRAllTypes Specimen = FHIRAllTypes._(
    valueString: 'Specimen',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Specimen'.toFhirString,
  );

  /// SpecimenDefinition
  static final FHIRAllTypes SpecimenDefinition = FHIRAllTypes._(
    valueString: 'SpecimenDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SpecimenDefinition'.toFhirString,
  );

  /// StructureDefinition
  static final FHIRAllTypes StructureDefinition = FHIRAllTypes._(
    valueString: 'StructureDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'StructureDefinition'.toFhirString,
  );

  /// StructureMap
  static final FHIRAllTypes StructureMap = FHIRAllTypes._(
    valueString: 'StructureMap',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'StructureMap'.toFhirString,
  );

  /// Subscription
  static final FHIRAllTypes Subscription = FHIRAllTypes._(
    valueString: 'Subscription',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Subscription'.toFhirString,
  );

  /// SubscriptionStatus
  static final FHIRAllTypes SubscriptionStatus = FHIRAllTypes._(
    valueString: 'SubscriptionStatus',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SubscriptionStatus'.toFhirString,
  );

  /// SubscriptionTopic
  static final FHIRAllTypes SubscriptionTopic = FHIRAllTypes._(
    valueString: 'SubscriptionTopic',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SubscriptionTopic'.toFhirString,
  );

  /// Substance
  static final FHIRAllTypes Substance = FHIRAllTypes._(
    valueString: 'Substance',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Substance'.toFhirString,
  );

  /// SubstanceDefinition
  static final FHIRAllTypes SubstanceDefinition = FHIRAllTypes._(
    valueString: 'SubstanceDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SubstanceDefinition'.toFhirString,
  );

  /// SupplyDelivery
  static final FHIRAllTypes SupplyDelivery = FHIRAllTypes._(
    valueString: 'SupplyDelivery',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SupplyDelivery'.toFhirString,
  );

  /// SupplyRequest
  static final FHIRAllTypes SupplyRequest = FHIRAllTypes._(
    valueString: 'SupplyRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SupplyRequest'.toFhirString,
  );

  /// Task
  static final FHIRAllTypes Task = FHIRAllTypes._(
    valueString: 'Task',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Task'.toFhirString,
  );

  /// TerminologyCapabilities
  static final FHIRAllTypes TerminologyCapabilities = FHIRAllTypes._(
    valueString: 'TerminologyCapabilities',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'TerminologyCapabilities'.toFhirString,
  );

  /// TestReport
  static final FHIRAllTypes TestReport = FHIRAllTypes._(
    valueString: 'TestReport',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'TestReport'.toFhirString,
  );

  /// TestScript
  static final FHIRAllTypes TestScript = FHIRAllTypes._(
    valueString: 'TestScript',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'TestScript'.toFhirString,
  );

  /// ValueSet
  static final FHIRAllTypes ValueSet = FHIRAllTypes._(
    valueString: 'ValueSet',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ValueSet'.toFhirString,
  );

  /// VerificationResult
  static final FHIRAllTypes VerificationResult = FHIRAllTypes._(
    valueString: 'VerificationResult',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'VerificationResult'.toFhirString,
  );

  /// VisionPrescription
  static final FHIRAllTypes VisionPrescription = FHIRAllTypes._(
    valueString: 'VisionPrescription',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'VisionPrescription'.toFhirString,
  );

  /// Parameters
  static final FHIRAllTypes Parameters = FHIRAllTypes._(
    valueString: 'Parameters',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Parameters'.toFhirString,
  );

  /// Type
  static final FHIRAllTypes Type = FHIRAllTypes._(
    valueString: 'Type',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Type'.toFhirString,
  );

  /// Any
  static final FHIRAllTypes Any = FHIRAllTypes._(
    valueString: 'Any',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Any'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final FHIRAllTypes elementOnly = FHIRAllTypes._(valueString: '');

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
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  FHIRAllTypes withElement(Element? newElement) {
    return FHIRAllTypes._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  /// Creates a modified copy with updated properties.
  @override
  FHIRAllTypes copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for FHIRAllTypes: $newValue');
    }
    return FHIRAllTypes._(
      valueString: newValue ?? valueString,
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
