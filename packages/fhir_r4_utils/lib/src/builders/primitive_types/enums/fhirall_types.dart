// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A list of all the concrete types defined in this version of the FHIR
/// specification - Abstract Types, Data Types and Resource Types.
class FHIRAllTypesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  FHIRAllTypesBuilder._({
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
  factory FHIRAllTypesBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    return FHIRAllTypesBuilder._(
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

  /// Create empty [FHIRAllTypesBuilder] with element only
  factory FHIRAllTypesBuilder.empty() => FHIRAllTypesBuilder._(valueString: '');

  /// Factory constructor to create [FHIRAllTypesBuilder]
  /// from JSON.
  factory FHIRAllTypesBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRAllTypesBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FHIRAllTypesBuilder cannot be constructed from JSON.',
      );
    }
    return FHIRAllTypesBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// Address
  static FHIRAllTypesBuilder Address = FHIRAllTypesBuilder._(
    valueString: 'Address',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Address'.toFhirStringBuilder,
  );

  /// Age
  static FHIRAllTypesBuilder Age = FHIRAllTypesBuilder._(
    valueString: 'Age',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Age'.toFhirStringBuilder,
  );

  /// Annotation
  static FHIRAllTypesBuilder Annotation = FHIRAllTypesBuilder._(
    valueString: 'Annotation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Annotation'.toFhirStringBuilder,
  );

  /// Attachment
  static FHIRAllTypesBuilder Attachment = FHIRAllTypesBuilder._(
    valueString: 'Attachment',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Attachment'.toFhirStringBuilder,
  );

  /// BackboneElement
  static FHIRAllTypesBuilder BackboneElement = FHIRAllTypesBuilder._(
    valueString: 'BackboneElement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BackboneElement'.toFhirStringBuilder,
  );

  /// CodeableConcept
  static FHIRAllTypesBuilder CodeableConcept = FHIRAllTypesBuilder._(
    valueString: 'CodeableConcept',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CodeableConcept'.toFhirStringBuilder,
  );

  /// CodeableReference
  static FHIRAllTypesBuilder CodeableReference = FHIRAllTypesBuilder._(
    valueString: 'CodeableReference',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CodeableReference'.toFhirStringBuilder,
  );

  /// Coding
  static FHIRAllTypesBuilder Coding = FHIRAllTypesBuilder._(
    valueString: 'Coding',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Coding'.toFhirStringBuilder,
  );

  /// ContactDetail
  static FHIRAllTypesBuilder ContactDetail = FHIRAllTypesBuilder._(
    valueString: 'ContactDetail',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ContactDetail'.toFhirStringBuilder,
  );

  /// ContactPoint
  static FHIRAllTypesBuilder ContactPoint = FHIRAllTypesBuilder._(
    valueString: 'ContactPoint',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ContactPoint'.toFhirStringBuilder,
  );

  /// Contributor
  static FHIRAllTypesBuilder Contributor = FHIRAllTypesBuilder._(
    valueString: 'Contributor',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Contributor'.toFhirStringBuilder,
  );

  /// Count
  static FHIRAllTypesBuilder Count = FHIRAllTypesBuilder._(
    valueString: 'Count',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Count'.toFhirStringBuilder,
  );

  /// DataRequirement
  static FHIRAllTypesBuilder DataRequirement = FHIRAllTypesBuilder._(
    valueString: 'DataRequirement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DataRequirement'.toFhirStringBuilder,
  );

  /// Distance
  static FHIRAllTypesBuilder Distance = FHIRAllTypesBuilder._(
    valueString: 'Distance',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Distance'.toFhirStringBuilder,
  );

  /// Dosage
  static FHIRAllTypesBuilder Dosage = FHIRAllTypesBuilder._(
    valueString: 'Dosage',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Dosage'.toFhirStringBuilder,
  );

  /// Duration
  static FHIRAllTypesBuilder Duration = FHIRAllTypesBuilder._(
    valueString: 'Duration',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Duration'.toFhirStringBuilder,
  );

  /// Element_
  static FHIRAllTypesBuilder Element_ = FHIRAllTypesBuilder._(
    valueString: 'Element',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Element'.toFhirStringBuilder,
  );

  /// ElementDefinition
  static FHIRAllTypesBuilder ElementDefinition = FHIRAllTypesBuilder._(
    valueString: 'ElementDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ElementDefinition'.toFhirStringBuilder,
  );

  /// Expression
  static FHIRAllTypesBuilder Expression = FHIRAllTypesBuilder._(
    valueString: 'Expression',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Expression'.toFhirStringBuilder,
  );

  /// Extension
  static FHIRAllTypesBuilder Extension = FHIRAllTypesBuilder._(
    valueString: 'Extension',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Extension'.toFhirStringBuilder,
  );

  /// HumanName
  static FHIRAllTypesBuilder HumanName = FHIRAllTypesBuilder._(
    valueString: 'HumanName',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'HumanName'.toFhirStringBuilder,
  );

  /// Identifier
  static FHIRAllTypesBuilder Identifier = FHIRAllTypesBuilder._(
    valueString: 'Identifier',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Identifier'.toFhirStringBuilder,
  );

  /// MarketingStatus
  static FHIRAllTypesBuilder MarketingStatus = FHIRAllTypesBuilder._(
    valueString: 'MarketingStatus',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MarketingStatus'.toFhirStringBuilder,
  );

  /// Meta
  static FHIRAllTypesBuilder Meta = FHIRAllTypesBuilder._(
    valueString: 'Meta',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Meta'.toFhirStringBuilder,
  );

  /// Money
  static FHIRAllTypesBuilder Money = FHIRAllTypesBuilder._(
    valueString: 'Money',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Money'.toFhirStringBuilder,
  );

  /// MoneyQuantity
  static FHIRAllTypesBuilder MoneyQuantity = FHIRAllTypesBuilder._(
    valueString: 'MoneyQuantity',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MoneyQuantity'.toFhirStringBuilder,
  );

  /// Narrative
  static FHIRAllTypesBuilder Narrative = FHIRAllTypesBuilder._(
    valueString: 'Narrative',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Narrative'.toFhirStringBuilder,
  );

  /// ParameterDefinition
  static FHIRAllTypesBuilder ParameterDefinition = FHIRAllTypesBuilder._(
    valueString: 'ParameterDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ParameterDefinition'.toFhirStringBuilder,
  );

  /// Period
  static FHIRAllTypesBuilder Period = FHIRAllTypesBuilder._(
    valueString: 'Period',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Period'.toFhirStringBuilder,
  );

  /// Population
  static FHIRAllTypesBuilder Population = FHIRAllTypesBuilder._(
    valueString: 'Population',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Population'.toFhirStringBuilder,
  );

  /// ProdCharacteristic
  static FHIRAllTypesBuilder ProdCharacteristic = FHIRAllTypesBuilder._(
    valueString: 'ProdCharacteristic',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ProdCharacteristic'.toFhirStringBuilder,
  );

  /// ProductShelfLife
  static FHIRAllTypesBuilder ProductShelfLife = FHIRAllTypesBuilder._(
    valueString: 'ProductShelfLife',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ProductShelfLife'.toFhirStringBuilder,
  );

  /// Quantity
  static FHIRAllTypesBuilder Quantity = FHIRAllTypesBuilder._(
    valueString: 'Quantity',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Quantity'.toFhirStringBuilder,
  );

  /// Range
  static FHIRAllTypesBuilder Range = FHIRAllTypesBuilder._(
    valueString: 'Range',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Range'.toFhirStringBuilder,
  );

  /// Ratio
  static FHIRAllTypesBuilder Ratio = FHIRAllTypesBuilder._(
    valueString: 'Ratio',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Ratio'.toFhirStringBuilder,
  );

  /// RatioRange
  static FHIRAllTypesBuilder RatioRange = FHIRAllTypesBuilder._(
    valueString: 'RatioRange',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'RatioRange'.toFhirStringBuilder,
  );

  /// Reference
  static FHIRAllTypesBuilder Reference = FHIRAllTypesBuilder._(
    valueString: 'Reference',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Reference'.toFhirStringBuilder,
  );

  /// RelatedArtifact
  static FHIRAllTypesBuilder RelatedArtifact = FHIRAllTypesBuilder._(
    valueString: 'RelatedArtifact',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'RelatedArtifact'.toFhirStringBuilder,
  );

  /// SampledData
  static FHIRAllTypesBuilder SampledData = FHIRAllTypesBuilder._(
    valueString: 'SampledData',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SampledData'.toFhirStringBuilder,
  );

  /// Signature
  static FHIRAllTypesBuilder Signature = FHIRAllTypesBuilder._(
    valueString: 'Signature',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Signature'.toFhirStringBuilder,
  );

  /// SimpleQuantity
  static FHIRAllTypesBuilder SimpleQuantity = FHIRAllTypesBuilder._(
    valueString: 'SimpleQuantity',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SimpleQuantity'.toFhirStringBuilder,
  );

  /// Timing
  static FHIRAllTypesBuilder Timing = FHIRAllTypesBuilder._(
    valueString: 'Timing',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Timing'.toFhirStringBuilder,
  );

  /// TriggerDefinition
  static FHIRAllTypesBuilder TriggerDefinition = FHIRAllTypesBuilder._(
    valueString: 'TriggerDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'TriggerDefinition'.toFhirStringBuilder,
  );

  /// UsageContext
  static FHIRAllTypesBuilder UsageContext = FHIRAllTypesBuilder._(
    valueString: 'UsageContext',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'UsageContext'.toFhirStringBuilder,
  );

  /// base64Binary
  static FHIRAllTypesBuilder base64Binary = FHIRAllTypesBuilder._(
    valueString: 'base64Binary',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'base64Binary'.toFhirStringBuilder,
  );

  /// boolean
  static FHIRAllTypesBuilder boolean = FHIRAllTypesBuilder._(
    valueString: 'boolean',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'boolean'.toFhirStringBuilder,
  );

  /// canonical
  static FHIRAllTypesBuilder canonical = FHIRAllTypesBuilder._(
    valueString: 'canonical',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'canonical'.toFhirStringBuilder,
  );

  /// code
  static FHIRAllTypesBuilder code = FHIRAllTypesBuilder._(
    valueString: 'code',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'code'.toFhirStringBuilder,
  );

  /// date
  static FHIRAllTypesBuilder date = FHIRAllTypesBuilder._(
    valueString: 'date',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'date'.toFhirStringBuilder,
  );

  /// dateTime
  static FHIRAllTypesBuilder dateTime = FHIRAllTypesBuilder._(
    valueString: 'dateTime',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'dateTime'.toFhirStringBuilder,
  );

  /// decimal
  static FHIRAllTypesBuilder decimal = FHIRAllTypesBuilder._(
    valueString: 'decimal',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'decimal'.toFhirStringBuilder,
  );

  /// id
  static FHIRAllTypesBuilder id_ = FHIRAllTypesBuilder._(
    valueString: 'id',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'id'.toFhirStringBuilder,
  );

  /// instant
  static FHIRAllTypesBuilder instant = FHIRAllTypesBuilder._(
    valueString: 'instant',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'instant'.toFhirStringBuilder,
  );

  /// integer
  static FHIRAllTypesBuilder integer = FHIRAllTypesBuilder._(
    valueString: 'integer',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'integer'.toFhirStringBuilder,
  );

  /// markdown
  static FHIRAllTypesBuilder markdown = FHIRAllTypesBuilder._(
    valueString: 'markdown',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'markdown'.toFhirStringBuilder,
  );

  /// oid
  static FHIRAllTypesBuilder oid = FHIRAllTypesBuilder._(
    valueString: 'oid',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'oid'.toFhirStringBuilder,
  );

  /// positiveInt
  static FHIRAllTypesBuilder positiveInt = FHIRAllTypesBuilder._(
    valueString: 'positiveInt',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'positiveInt'.toFhirStringBuilder,
  );

  /// string
  static FHIRAllTypesBuilder string = FHIRAllTypesBuilder._(
    valueString: 'string',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'string'.toFhirStringBuilder,
  );

  /// time
  static FHIRAllTypesBuilder time = FHIRAllTypesBuilder._(
    valueString: 'time',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'time'.toFhirStringBuilder,
  );

  /// unsignedInt
  static FHIRAllTypesBuilder unsignedInt = FHIRAllTypesBuilder._(
    valueString: 'unsignedInt',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'unsignedInt'.toFhirStringBuilder,
  );

  /// uri
  static FHIRAllTypesBuilder uri = FHIRAllTypesBuilder._(
    valueString: 'uri',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'uri'.toFhirStringBuilder,
  );

  /// url
  static FHIRAllTypesBuilder url = FHIRAllTypesBuilder._(
    valueString: 'url',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'url'.toFhirStringBuilder,
  );

  /// uuid
  static FHIRAllTypesBuilder uuid = FHIRAllTypesBuilder._(
    valueString: 'uuid',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'uuid'.toFhirStringBuilder,
  );

  /// xhtml
  static FHIRAllTypesBuilder xhtml = FHIRAllTypesBuilder._(
    valueString: 'xhtml',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'XHTML'.toFhirStringBuilder,
  );

  /// Resource
  static FHIRAllTypesBuilder Resource = FHIRAllTypesBuilder._(
    valueString: 'Resource',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Resource'.toFhirStringBuilder,
  );

  /// Binary
  static FHIRAllTypesBuilder Binary = FHIRAllTypesBuilder._(
    valueString: 'Binary',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Binary'.toFhirStringBuilder,
  );

  /// Bundle
  static FHIRAllTypesBuilder Bundle = FHIRAllTypesBuilder._(
    valueString: 'Bundle',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Bundle'.toFhirStringBuilder,
  );

  /// DomainResource
  static FHIRAllTypesBuilder DomainResource = FHIRAllTypesBuilder._(
    valueString: 'DomainResource',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DomainResource'.toFhirStringBuilder,
  );

  /// Account
  static FHIRAllTypesBuilder Account = FHIRAllTypesBuilder._(
    valueString: 'Account',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Account'.toFhirStringBuilder,
  );

  /// ActivityDefinition
  static FHIRAllTypesBuilder ActivityDefinition = FHIRAllTypesBuilder._(
    valueString: 'ActivityDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ActivityDefinition'.toFhirStringBuilder,
  );

  /// AdministrableProductDefinition
  static FHIRAllTypesBuilder AdministrableProductDefinition =
      FHIRAllTypesBuilder._(
    valueString: 'AdministrableProductDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'AdministrableProductDefinition'.toFhirStringBuilder,
  );

  /// AdverseEvent
  static FHIRAllTypesBuilder AdverseEvent = FHIRAllTypesBuilder._(
    valueString: 'AdverseEvent',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'AdverseEvent'.toFhirStringBuilder,
  );

  /// AllergyIntolerance
  static FHIRAllTypesBuilder AllergyIntolerance = FHIRAllTypesBuilder._(
    valueString: 'AllergyIntolerance',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'AllergyIntolerance'.toFhirStringBuilder,
  );

  /// Appointment
  static FHIRAllTypesBuilder Appointment = FHIRAllTypesBuilder._(
    valueString: 'Appointment',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Appointment'.toFhirStringBuilder,
  );

  /// AppointmentResponse
  static FHIRAllTypesBuilder AppointmentResponse = FHIRAllTypesBuilder._(
    valueString: 'AppointmentResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'AppointmentResponse'.toFhirStringBuilder,
  );

  /// AuditEvent
  static FHIRAllTypesBuilder AuditEvent = FHIRAllTypesBuilder._(
    valueString: 'AuditEvent',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'AuditEvent'.toFhirStringBuilder,
  );

  /// Basic
  static FHIRAllTypesBuilder Basic = FHIRAllTypesBuilder._(
    valueString: 'Basic',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Basic'.toFhirStringBuilder,
  );

  /// BiologicallyDerivedProduct
  static FHIRAllTypesBuilder BiologicallyDerivedProduct = FHIRAllTypesBuilder._(
    valueString: 'BiologicallyDerivedProduct',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BiologicallyDerivedProduct'.toFhirStringBuilder,
  );

  /// BodyStructure
  static FHIRAllTypesBuilder BodyStructure = FHIRAllTypesBuilder._(
    valueString: 'BodyStructure',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BodyStructure'.toFhirStringBuilder,
  );

  /// CapabilityStatement
  static FHIRAllTypesBuilder CapabilityStatement = FHIRAllTypesBuilder._(
    valueString: 'CapabilityStatement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CapabilityStatement'.toFhirStringBuilder,
  );

  /// CarePlan
  static FHIRAllTypesBuilder CarePlan = FHIRAllTypesBuilder._(
    valueString: 'CarePlan',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CarePlan'.toFhirStringBuilder,
  );

  /// CareTeam
  static FHIRAllTypesBuilder CareTeam = FHIRAllTypesBuilder._(
    valueString: 'CareTeam',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CareTeam'.toFhirStringBuilder,
  );

  /// CatalogEntry
  static FHIRAllTypesBuilder CatalogEntry = FHIRAllTypesBuilder._(
    valueString: 'CatalogEntry',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CatalogEntry'.toFhirStringBuilder,
  );

  /// ChargeItem
  static FHIRAllTypesBuilder ChargeItem = FHIRAllTypesBuilder._(
    valueString: 'ChargeItem',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ChargeItem'.toFhirStringBuilder,
  );

  /// ChargeItemDefinition
  static FHIRAllTypesBuilder ChargeItemDefinition = FHIRAllTypesBuilder._(
    valueString: 'ChargeItemDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ChargeItemDefinition'.toFhirStringBuilder,
  );

  /// Citation
  static FHIRAllTypesBuilder Citation = FHIRAllTypesBuilder._(
    valueString: 'Citation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Citation'.toFhirStringBuilder,
  );

  /// Claim
  static FHIRAllTypesBuilder Claim = FHIRAllTypesBuilder._(
    valueString: 'Claim',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Claim'.toFhirStringBuilder,
  );

  /// ClaimResponse
  static FHIRAllTypesBuilder ClaimResponse = FHIRAllTypesBuilder._(
    valueString: 'ClaimResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ClaimResponse'.toFhirStringBuilder,
  );

  /// ClinicalImpression
  static FHIRAllTypesBuilder ClinicalImpression = FHIRAllTypesBuilder._(
    valueString: 'ClinicalImpression',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ClinicalImpression'.toFhirStringBuilder,
  );

  /// ClinicalUseDefinition
  static FHIRAllTypesBuilder ClinicalUseDefinition = FHIRAllTypesBuilder._(
    valueString: 'ClinicalUseDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ClinicalUseDefinition'.toFhirStringBuilder,
  );

  /// CodeSystem
  static FHIRAllTypesBuilder CodeSystem = FHIRAllTypesBuilder._(
    valueString: 'CodeSystem',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CodeSystem'.toFhirStringBuilder,
  );

  /// Communication
  static FHIRAllTypesBuilder Communication = FHIRAllTypesBuilder._(
    valueString: 'Communication',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Communication'.toFhirStringBuilder,
  );

  /// CommunicationRequest
  static FHIRAllTypesBuilder CommunicationRequest = FHIRAllTypesBuilder._(
    valueString: 'CommunicationRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CommunicationRequest'.toFhirStringBuilder,
  );

  /// CompartmentDefinition
  static FHIRAllTypesBuilder CompartmentDefinition = FHIRAllTypesBuilder._(
    valueString: 'CompartmentDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CompartmentDefinition'.toFhirStringBuilder,
  );

  /// Composition
  static FHIRAllTypesBuilder Composition = FHIRAllTypesBuilder._(
    valueString: 'Composition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Composition'.toFhirStringBuilder,
  );

  /// ConceptMap
  static FHIRAllTypesBuilder ConceptMap = FHIRAllTypesBuilder._(
    valueString: 'ConceptMap',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ConceptMap'.toFhirStringBuilder,
  );

  /// Condition
  static FHIRAllTypesBuilder Condition = FHIRAllTypesBuilder._(
    valueString: 'Condition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Condition'.toFhirStringBuilder,
  );

  /// Consent
  static FHIRAllTypesBuilder Consent = FHIRAllTypesBuilder._(
    valueString: 'Consent',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Consent'.toFhirStringBuilder,
  );

  /// Contract
  static FHIRAllTypesBuilder Contract = FHIRAllTypesBuilder._(
    valueString: 'Contract',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Contract'.toFhirStringBuilder,
  );

  /// Coverage
  static FHIRAllTypesBuilder Coverage = FHIRAllTypesBuilder._(
    valueString: 'Coverage',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Coverage'.toFhirStringBuilder,
  );

  /// CoverageEligibilityRequest
  static FHIRAllTypesBuilder CoverageEligibilityRequest = FHIRAllTypesBuilder._(
    valueString: 'CoverageEligibilityRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CoverageEligibilityRequest'.toFhirStringBuilder,
  );

  /// CoverageEligibilityResponse
  static FHIRAllTypesBuilder CoverageEligibilityResponse =
      FHIRAllTypesBuilder._(
    valueString: 'CoverageEligibilityResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CoverageEligibilityResponse'.toFhirStringBuilder,
  );

  /// DetectedIssue
  static FHIRAllTypesBuilder DetectedIssue = FHIRAllTypesBuilder._(
    valueString: 'DetectedIssue',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DetectedIssue'.toFhirStringBuilder,
  );

  /// Device
  static FHIRAllTypesBuilder Device = FHIRAllTypesBuilder._(
    valueString: 'Device',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Device'.toFhirStringBuilder,
  );

  /// DeviceDefinition
  static FHIRAllTypesBuilder DeviceDefinition = FHIRAllTypesBuilder._(
    valueString: 'DeviceDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DeviceDefinition'.toFhirStringBuilder,
  );

  /// DeviceMetric
  static FHIRAllTypesBuilder DeviceMetric = FHIRAllTypesBuilder._(
    valueString: 'DeviceMetric',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DeviceMetric'.toFhirStringBuilder,
  );

  /// DeviceRequest
  static FHIRAllTypesBuilder DeviceRequest = FHIRAllTypesBuilder._(
    valueString: 'DeviceRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DeviceRequest'.toFhirStringBuilder,
  );

  /// DeviceUseStatement
  static FHIRAllTypesBuilder DeviceUseStatement = FHIRAllTypesBuilder._(
    valueString: 'DeviceUseStatement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DeviceUseStatement'.toFhirStringBuilder,
  );

  /// DiagnosticReport
  static FHIRAllTypesBuilder DiagnosticReport = FHIRAllTypesBuilder._(
    valueString: 'DiagnosticReport',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DiagnosticReport'.toFhirStringBuilder,
  );

  /// DocumentManifest
  static FHIRAllTypesBuilder DocumentManifest = FHIRAllTypesBuilder._(
    valueString: 'DocumentManifest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DocumentManifest'.toFhirStringBuilder,
  );

  /// DocumentReference
  static FHIRAllTypesBuilder DocumentReference = FHIRAllTypesBuilder._(
    valueString: 'DocumentReference',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DocumentReference'.toFhirStringBuilder,
  );

  /// Encounter
  static FHIRAllTypesBuilder Encounter = FHIRAllTypesBuilder._(
    valueString: 'Encounter',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Encounter'.toFhirStringBuilder,
  );

  /// Endpoint
  static FHIRAllTypesBuilder Endpoint = FHIRAllTypesBuilder._(
    valueString: 'Endpoint',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Endpoint'.toFhirStringBuilder,
  );

  /// EnrollmentRequest
  static FHIRAllTypesBuilder EnrollmentRequest = FHIRAllTypesBuilder._(
    valueString: 'EnrollmentRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'EnrollmentRequest'.toFhirStringBuilder,
  );

  /// EnrollmentResponse
  static FHIRAllTypesBuilder EnrollmentResponse = FHIRAllTypesBuilder._(
    valueString: 'EnrollmentResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'EnrollmentResponse'.toFhirStringBuilder,
  );

  /// EpisodeOfCare
  static FHIRAllTypesBuilder EpisodeOfCare = FHIRAllTypesBuilder._(
    valueString: 'EpisodeOfCare',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'EpisodeOfCare'.toFhirStringBuilder,
  );

  /// EventDefinition
  static FHIRAllTypesBuilder EventDefinition = FHIRAllTypesBuilder._(
    valueString: 'EventDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'EventDefinition'.toFhirStringBuilder,
  );

  /// Evidence
  static FHIRAllTypesBuilder Evidence = FHIRAllTypesBuilder._(
    valueString: 'Evidence',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Evidence'.toFhirStringBuilder,
  );

  /// EvidenceReport
  static FHIRAllTypesBuilder EvidenceReport = FHIRAllTypesBuilder._(
    valueString: 'EvidenceReport',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'EvidenceReport'.toFhirStringBuilder,
  );

  /// EvidenceVariable
  static FHIRAllTypesBuilder EvidenceVariable = FHIRAllTypesBuilder._(
    valueString: 'EvidenceVariable',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'EvidenceVariable'.toFhirStringBuilder,
  );

  /// ExampleScenario
  static FHIRAllTypesBuilder ExampleScenario = FHIRAllTypesBuilder._(
    valueString: 'ExampleScenario',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ExampleScenario'.toFhirStringBuilder,
  );

  /// ExplanationOfBenefit
  static FHIRAllTypesBuilder ExplanationOfBenefit = FHIRAllTypesBuilder._(
    valueString: 'ExplanationOfBenefit',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ExplanationOfBenefit'.toFhirStringBuilder,
  );

  /// FamilyMemberHistory
  static FHIRAllTypesBuilder FamilyMemberHistory = FHIRAllTypesBuilder._(
    valueString: 'FamilyMemberHistory',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'FamilyMemberHistory'.toFhirStringBuilder,
  );

  /// Flag
  static FHIRAllTypesBuilder Flag = FHIRAllTypesBuilder._(
    valueString: 'Flag',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Flag'.toFhirStringBuilder,
  );

  /// Goal
  static FHIRAllTypesBuilder Goal = FHIRAllTypesBuilder._(
    valueString: 'Goal',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Goal'.toFhirStringBuilder,
  );

  /// GraphDefinition
  static FHIRAllTypesBuilder GraphDefinition = FHIRAllTypesBuilder._(
    valueString: 'GraphDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GraphDefinition'.toFhirStringBuilder,
  );

  /// Group
  static FHIRAllTypesBuilder Group = FHIRAllTypesBuilder._(
    valueString: 'Group',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Group'.toFhirStringBuilder,
  );

  /// GuidanceResponse
  static FHIRAllTypesBuilder GuidanceResponse = FHIRAllTypesBuilder._(
    valueString: 'GuidanceResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GuidanceResponse'.toFhirStringBuilder,
  );

  /// HealthcareService
  static FHIRAllTypesBuilder HealthcareService = FHIRAllTypesBuilder._(
    valueString: 'HealthcareService',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'HealthcareService'.toFhirStringBuilder,
  );

  /// ImagingStudy
  static FHIRAllTypesBuilder ImagingStudy = FHIRAllTypesBuilder._(
    valueString: 'ImagingStudy',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ImagingStudy'.toFhirStringBuilder,
  );

  /// Immunization
  static FHIRAllTypesBuilder Immunization = FHIRAllTypesBuilder._(
    valueString: 'Immunization',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Immunization'.toFhirStringBuilder,
  );

  /// ImmunizationEvaluation
  static FHIRAllTypesBuilder ImmunizationEvaluation = FHIRAllTypesBuilder._(
    valueString: 'ImmunizationEvaluation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ImmunizationEvaluation'.toFhirStringBuilder,
  );

  /// ImmunizationRecommendation
  static FHIRAllTypesBuilder ImmunizationRecommendation = FHIRAllTypesBuilder._(
    valueString: 'ImmunizationRecommendation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ImmunizationRecommendation'.toFhirStringBuilder,
  );

  /// ImplementationGuide
  static FHIRAllTypesBuilder ImplementationGuide = FHIRAllTypesBuilder._(
    valueString: 'ImplementationGuide',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ImplementationGuide'.toFhirStringBuilder,
  );

  /// Ingredient
  static FHIRAllTypesBuilder Ingredient = FHIRAllTypesBuilder._(
    valueString: 'Ingredient',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Ingredient'.toFhirStringBuilder,
  );

  /// InsurancePlan
  static FHIRAllTypesBuilder InsurancePlan = FHIRAllTypesBuilder._(
    valueString: 'InsurancePlan',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'InsurancePlan'.toFhirStringBuilder,
  );

  /// Invoice
  static FHIRAllTypesBuilder Invoice = FHIRAllTypesBuilder._(
    valueString: 'Invoice',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Invoice'.toFhirStringBuilder,
  );

  /// Library
  static FHIRAllTypesBuilder Library = FHIRAllTypesBuilder._(
    valueString: 'Library',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Library'.toFhirStringBuilder,
  );

  /// Linkage
  static FHIRAllTypesBuilder Linkage = FHIRAllTypesBuilder._(
    valueString: 'Linkage',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Linkage'.toFhirStringBuilder,
  );

  /// List_
  static FHIRAllTypesBuilder List_ = FHIRAllTypesBuilder._(
    valueString: 'List',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'List'.toFhirStringBuilder,
  );

  /// Location
  static FHIRAllTypesBuilder Location = FHIRAllTypesBuilder._(
    valueString: 'Location',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Location'.toFhirStringBuilder,
  );

  /// ManufacturedItemDefinition
  static FHIRAllTypesBuilder ManufacturedItemDefinition = FHIRAllTypesBuilder._(
    valueString: 'ManufacturedItemDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ManufacturedItemDefinition'.toFhirStringBuilder,
  );

  /// Measure
  static FHIRAllTypesBuilder Measure = FHIRAllTypesBuilder._(
    valueString: 'Measure',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Measure'.toFhirStringBuilder,
  );

  /// MeasureReport
  static FHIRAllTypesBuilder MeasureReport = FHIRAllTypesBuilder._(
    valueString: 'MeasureReport',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MeasureReport'.toFhirStringBuilder,
  );

  /// Media
  static FHIRAllTypesBuilder Media = FHIRAllTypesBuilder._(
    valueString: 'Media',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Media'.toFhirStringBuilder,
  );

  /// Medication
  static FHIRAllTypesBuilder Medication = FHIRAllTypesBuilder._(
    valueString: 'Medication',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Medication'.toFhirStringBuilder,
  );

  /// MedicationAdministration
  static FHIRAllTypesBuilder MedicationAdministration = FHIRAllTypesBuilder._(
    valueString: 'MedicationAdministration',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MedicationAdministration'.toFhirStringBuilder,
  );

  /// MedicationDispense
  static FHIRAllTypesBuilder MedicationDispense = FHIRAllTypesBuilder._(
    valueString: 'MedicationDispense',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MedicationDispense'.toFhirStringBuilder,
  );

  /// MedicationKnowledge
  static FHIRAllTypesBuilder MedicationKnowledge = FHIRAllTypesBuilder._(
    valueString: 'MedicationKnowledge',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MedicationKnowledge'.toFhirStringBuilder,
  );

  /// MedicationRequest
  static FHIRAllTypesBuilder MedicationRequest = FHIRAllTypesBuilder._(
    valueString: 'MedicationRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MedicationRequest'.toFhirStringBuilder,
  );

  /// MedicationStatement
  static FHIRAllTypesBuilder MedicationStatement = FHIRAllTypesBuilder._(
    valueString: 'MedicationStatement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MedicationStatement'.toFhirStringBuilder,
  );

  /// MedicinalProductDefinition
  static FHIRAllTypesBuilder MedicinalProductDefinition = FHIRAllTypesBuilder._(
    valueString: 'MedicinalProductDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MedicinalProductDefinition'.toFhirStringBuilder,
  );

  /// MessageDefinition
  static FHIRAllTypesBuilder MessageDefinition = FHIRAllTypesBuilder._(
    valueString: 'MessageDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MessageDefinition'.toFhirStringBuilder,
  );

  /// MessageHeader
  static FHIRAllTypesBuilder MessageHeader = FHIRAllTypesBuilder._(
    valueString: 'MessageHeader',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MessageHeader'.toFhirStringBuilder,
  );

  /// MolecularSequence
  static FHIRAllTypesBuilder MolecularSequence = FHIRAllTypesBuilder._(
    valueString: 'MolecularSequence',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MolecularSequence'.toFhirStringBuilder,
  );

  /// NamingSystem
  static FHIRAllTypesBuilder NamingSystem = FHIRAllTypesBuilder._(
    valueString: 'NamingSystem',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'NamingSystem'.toFhirStringBuilder,
  );

  /// NutritionOrder
  static FHIRAllTypesBuilder NutritionOrder = FHIRAllTypesBuilder._(
    valueString: 'NutritionOrder',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'NutritionOrder'.toFhirStringBuilder,
  );

  /// NutritionProduct
  static FHIRAllTypesBuilder NutritionProduct = FHIRAllTypesBuilder._(
    valueString: 'NutritionProduct',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'NutritionProduct'.toFhirStringBuilder,
  );

  /// Observation
  static FHIRAllTypesBuilder Observation = FHIRAllTypesBuilder._(
    valueString: 'Observation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Observation'.toFhirStringBuilder,
  );

  /// ObservationDefinition
  static FHIRAllTypesBuilder ObservationDefinition = FHIRAllTypesBuilder._(
    valueString: 'ObservationDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ObservationDefinition'.toFhirStringBuilder,
  );

  /// OperationDefinition
  static FHIRAllTypesBuilder OperationDefinition = FHIRAllTypesBuilder._(
    valueString: 'OperationDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'OperationDefinition'.toFhirStringBuilder,
  );

  /// OperationOutcome
  static FHIRAllTypesBuilder OperationOutcome = FHIRAllTypesBuilder._(
    valueString: 'OperationOutcome',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'OperationOutcome'.toFhirStringBuilder,
  );

  /// Organization
  static FHIRAllTypesBuilder Organization = FHIRAllTypesBuilder._(
    valueString: 'Organization',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Organization'.toFhirStringBuilder,
  );

  /// OrganizationAffiliation
  static FHIRAllTypesBuilder OrganizationAffiliation = FHIRAllTypesBuilder._(
    valueString: 'OrganizationAffiliation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'OrganizationAffiliation'.toFhirStringBuilder,
  );

  /// PackagedProductDefinition
  static FHIRAllTypesBuilder PackagedProductDefinition = FHIRAllTypesBuilder._(
    valueString: 'PackagedProductDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'PackagedProductDefinition'.toFhirStringBuilder,
  );

  /// Patient
  static FHIRAllTypesBuilder Patient = FHIRAllTypesBuilder._(
    valueString: 'Patient',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Patient'.toFhirStringBuilder,
  );

  /// PaymentNotice
  static FHIRAllTypesBuilder PaymentNotice = FHIRAllTypesBuilder._(
    valueString: 'PaymentNotice',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'PaymentNotice'.toFhirStringBuilder,
  );

  /// PaymentReconciliation
  static FHIRAllTypesBuilder PaymentReconciliation = FHIRAllTypesBuilder._(
    valueString: 'PaymentReconciliation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'PaymentReconciliation'.toFhirStringBuilder,
  );

  /// Person
  static FHIRAllTypesBuilder Person = FHIRAllTypesBuilder._(
    valueString: 'Person',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Person'.toFhirStringBuilder,
  );

  /// PlanDefinition
  static FHIRAllTypesBuilder PlanDefinition = FHIRAllTypesBuilder._(
    valueString: 'PlanDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'PlanDefinition'.toFhirStringBuilder,
  );

  /// Practitioner
  static FHIRAllTypesBuilder Practitioner = FHIRAllTypesBuilder._(
    valueString: 'Practitioner',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Practitioner'.toFhirStringBuilder,
  );

  /// PractitionerRole
  static FHIRAllTypesBuilder PractitionerRole = FHIRAllTypesBuilder._(
    valueString: 'PractitionerRole',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'PractitionerRole'.toFhirStringBuilder,
  );

  /// Procedure
  static FHIRAllTypesBuilder Procedure = FHIRAllTypesBuilder._(
    valueString: 'Procedure',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Procedure'.toFhirStringBuilder,
  );

  /// Provenance
  static FHIRAllTypesBuilder Provenance = FHIRAllTypesBuilder._(
    valueString: 'Provenance',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Provenance'.toFhirStringBuilder,
  );

  /// Questionnaire
  static FHIRAllTypesBuilder Questionnaire = FHIRAllTypesBuilder._(
    valueString: 'Questionnaire',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Questionnaire'.toFhirStringBuilder,
  );

  /// QuestionnaireResponse
  static FHIRAllTypesBuilder QuestionnaireResponse = FHIRAllTypesBuilder._(
    valueString: 'QuestionnaireResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'QuestionnaireResponse'.toFhirStringBuilder,
  );

  /// RegulatedAuthorization
  static FHIRAllTypesBuilder RegulatedAuthorization = FHIRAllTypesBuilder._(
    valueString: 'RegulatedAuthorization',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'RegulatedAuthorization'.toFhirStringBuilder,
  );

  /// RelatedPerson
  static FHIRAllTypesBuilder RelatedPerson = FHIRAllTypesBuilder._(
    valueString: 'RelatedPerson',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'RelatedPerson'.toFhirStringBuilder,
  );

  /// RequestGroup
  static FHIRAllTypesBuilder RequestGroup = FHIRAllTypesBuilder._(
    valueString: 'RequestGroup',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'RequestGroup'.toFhirStringBuilder,
  );

  /// ResearchDefinition
  static FHIRAllTypesBuilder ResearchDefinition = FHIRAllTypesBuilder._(
    valueString: 'ResearchDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ResearchDefinition'.toFhirStringBuilder,
  );

  /// ResearchElementDefinition
  static FHIRAllTypesBuilder ResearchElementDefinition = FHIRAllTypesBuilder._(
    valueString: 'ResearchElementDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ResearchElementDefinition'.toFhirStringBuilder,
  );

  /// ResearchStudy
  static FHIRAllTypesBuilder ResearchStudy = FHIRAllTypesBuilder._(
    valueString: 'ResearchStudy',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ResearchStudy'.toFhirStringBuilder,
  );

  /// ResearchSubject
  static FHIRAllTypesBuilder ResearchSubject = FHIRAllTypesBuilder._(
    valueString: 'ResearchSubject',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ResearchSubject'.toFhirStringBuilder,
  );

  /// RiskAssessment
  static FHIRAllTypesBuilder RiskAssessment = FHIRAllTypesBuilder._(
    valueString: 'RiskAssessment',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'RiskAssessment'.toFhirStringBuilder,
  );

  /// Schedule
  static FHIRAllTypesBuilder Schedule = FHIRAllTypesBuilder._(
    valueString: 'Schedule',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Schedule'.toFhirStringBuilder,
  );

  /// SearchParameter
  static FHIRAllTypesBuilder SearchParameter = FHIRAllTypesBuilder._(
    valueString: 'SearchParameter',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SearchParameter'.toFhirStringBuilder,
  );

  /// ServiceRequest
  static FHIRAllTypesBuilder ServiceRequest = FHIRAllTypesBuilder._(
    valueString: 'ServiceRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ServiceRequest'.toFhirStringBuilder,
  );

  /// Slot
  static FHIRAllTypesBuilder Slot = FHIRAllTypesBuilder._(
    valueString: 'Slot',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Slot'.toFhirStringBuilder,
  );

  /// Specimen
  static FHIRAllTypesBuilder Specimen = FHIRAllTypesBuilder._(
    valueString: 'Specimen',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Specimen'.toFhirStringBuilder,
  );

  /// SpecimenDefinition
  static FHIRAllTypesBuilder SpecimenDefinition = FHIRAllTypesBuilder._(
    valueString: 'SpecimenDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SpecimenDefinition'.toFhirStringBuilder,
  );

  /// StructureDefinition
  static FHIRAllTypesBuilder StructureDefinition = FHIRAllTypesBuilder._(
    valueString: 'StructureDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'StructureDefinition'.toFhirStringBuilder,
  );

  /// StructureMap
  static FHIRAllTypesBuilder StructureMap = FHIRAllTypesBuilder._(
    valueString: 'StructureMap',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'StructureMap'.toFhirStringBuilder,
  );

  /// Subscription
  static FHIRAllTypesBuilder Subscription = FHIRAllTypesBuilder._(
    valueString: 'Subscription',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Subscription'.toFhirStringBuilder,
  );

  /// SubscriptionStatus
  static FHIRAllTypesBuilder SubscriptionStatus = FHIRAllTypesBuilder._(
    valueString: 'SubscriptionStatus',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SubscriptionStatus'.toFhirStringBuilder,
  );

  /// SubscriptionTopic
  static FHIRAllTypesBuilder SubscriptionTopic = FHIRAllTypesBuilder._(
    valueString: 'SubscriptionTopic',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SubscriptionTopic'.toFhirStringBuilder,
  );

  /// Substance
  static FHIRAllTypesBuilder Substance = FHIRAllTypesBuilder._(
    valueString: 'Substance',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Substance'.toFhirStringBuilder,
  );

  /// SubstanceDefinition
  static FHIRAllTypesBuilder SubstanceDefinition = FHIRAllTypesBuilder._(
    valueString: 'SubstanceDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SubstanceDefinition'.toFhirStringBuilder,
  );

  /// SupplyDelivery
  static FHIRAllTypesBuilder SupplyDelivery = FHIRAllTypesBuilder._(
    valueString: 'SupplyDelivery',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SupplyDelivery'.toFhirStringBuilder,
  );

  /// SupplyRequest
  static FHIRAllTypesBuilder SupplyRequest = FHIRAllTypesBuilder._(
    valueString: 'SupplyRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SupplyRequest'.toFhirStringBuilder,
  );

  /// Task
  static FHIRAllTypesBuilder Task = FHIRAllTypesBuilder._(
    valueString: 'Task',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Task'.toFhirStringBuilder,
  );

  /// TerminologyCapabilities
  static FHIRAllTypesBuilder TerminologyCapabilities = FHIRAllTypesBuilder._(
    valueString: 'TerminologyCapabilities',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'TerminologyCapabilities'.toFhirStringBuilder,
  );

  /// TestReport
  static FHIRAllTypesBuilder TestReport = FHIRAllTypesBuilder._(
    valueString: 'TestReport',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'TestReport'.toFhirStringBuilder,
  );

  /// TestScript
  static FHIRAllTypesBuilder TestScript = FHIRAllTypesBuilder._(
    valueString: 'TestScript',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'TestScript'.toFhirStringBuilder,
  );

  /// ValueSet
  static FHIRAllTypesBuilder ValueSet = FHIRAllTypesBuilder._(
    valueString: 'ValueSet',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ValueSet'.toFhirStringBuilder,
  );

  /// VerificationResult
  static FHIRAllTypesBuilder VerificationResult = FHIRAllTypesBuilder._(
    valueString: 'VerificationResult',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'VerificationResult'.toFhirStringBuilder,
  );

  /// VisionPrescription
  static FHIRAllTypesBuilder VisionPrescription = FHIRAllTypesBuilder._(
    valueString: 'VisionPrescription',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'VisionPrescription'.toFhirStringBuilder,
  );

  /// Parameters
  static FHIRAllTypesBuilder Parameters = FHIRAllTypesBuilder._(
    valueString: 'Parameters',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Parameters'.toFhirStringBuilder,
  );

  /// Type
  static FHIRAllTypesBuilder Type = FHIRAllTypesBuilder._(
    valueString: 'Type',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Type'.toFhirStringBuilder,
  );

  /// Any
  static FHIRAllTypesBuilder Any = FHIRAllTypesBuilder._(
    valueString: 'Any',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Any'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static FHIRAllTypesBuilder elementOnly =
      FHIRAllTypesBuilder._(valueString: '');

  /// List of all enum-like values
  static List<FHIRAllTypesBuilder> values = [
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
  FHIRAllTypesBuilder clone() => FHIRAllTypesBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  FHIRAllTypesBuilder withElement(ElementBuilder? newElement) {
    return FHIRAllTypesBuilder._(valueString: valueString, element: newElement);
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
  FHIRAllTypesBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
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
    return FHIRAllTypesBuilder._(
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
