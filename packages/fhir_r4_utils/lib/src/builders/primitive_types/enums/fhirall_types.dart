// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A list of all the concrete types defined in this version of the FHIR
/// specification - Abstract Types, Data Types and Resource Types.
class FHIRAllTypesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  FHIRAllTypesBuilder._({
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
  factory FHIRAllTypesBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return FHIRAllTypesBuilder._(
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

  /// Create empty [FHIRAllTypesBuilder] with element only
  factory FHIRAllTypesBuilder.empty() =>
      FHIRAllTypesBuilder._(validatedValue: '');

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
      validatedValue: value,
      element: element,
    );
  }

  /// Address
  static FHIRAllTypesBuilder Address = FHIRAllTypesBuilder._(
    validatedValue: 'Address',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Address'.toFhirStringBuilder,
  );

  /// Age
  static FHIRAllTypesBuilder Age = FHIRAllTypesBuilder._(
    validatedValue: 'Age',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Age'.toFhirStringBuilder,
  );

  /// Annotation
  static FHIRAllTypesBuilder Annotation = FHIRAllTypesBuilder._(
    validatedValue: 'Annotation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Annotation'.toFhirStringBuilder,
  );

  /// Attachment
  static FHIRAllTypesBuilder Attachment = FHIRAllTypesBuilder._(
    validatedValue: 'Attachment',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Attachment'.toFhirStringBuilder,
  );

  /// BackboneElement
  static FHIRAllTypesBuilder BackboneElement = FHIRAllTypesBuilder._(
    validatedValue: 'BackboneElement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BackboneElement'.toFhirStringBuilder,
  );

  /// CodeableConcept
  static FHIRAllTypesBuilder CodeableConcept = FHIRAllTypesBuilder._(
    validatedValue: 'CodeableConcept',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CodeableConcept'.toFhirStringBuilder,
  );

  /// CodeableReference
  static FHIRAllTypesBuilder CodeableReference = FHIRAllTypesBuilder._(
    validatedValue: 'CodeableReference',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CodeableReference'.toFhirStringBuilder,
  );

  /// Coding
  static FHIRAllTypesBuilder Coding = FHIRAllTypesBuilder._(
    validatedValue: 'Coding',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Coding'.toFhirStringBuilder,
  );

  /// ContactDetail
  static FHIRAllTypesBuilder ContactDetail = FHIRAllTypesBuilder._(
    validatedValue: 'ContactDetail',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ContactDetail'.toFhirStringBuilder,
  );

  /// ContactPoint
  static FHIRAllTypesBuilder ContactPoint = FHIRAllTypesBuilder._(
    validatedValue: 'ContactPoint',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ContactPoint'.toFhirStringBuilder,
  );

  /// Contributor
  static FHIRAllTypesBuilder Contributor = FHIRAllTypesBuilder._(
    validatedValue: 'Contributor',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Contributor'.toFhirStringBuilder,
  );

  /// Count
  static FHIRAllTypesBuilder Count = FHIRAllTypesBuilder._(
    validatedValue: 'Count',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Count'.toFhirStringBuilder,
  );

  /// DataRequirement
  static FHIRAllTypesBuilder DataRequirement = FHIRAllTypesBuilder._(
    validatedValue: 'DataRequirement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DataRequirement'.toFhirStringBuilder,
  );

  /// Distance
  static FHIRAllTypesBuilder Distance = FHIRAllTypesBuilder._(
    validatedValue: 'Distance',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Distance'.toFhirStringBuilder,
  );

  /// Dosage
  static FHIRAllTypesBuilder Dosage = FHIRAllTypesBuilder._(
    validatedValue: 'Dosage',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Dosage'.toFhirStringBuilder,
  );

  /// Duration
  static FHIRAllTypesBuilder Duration = FHIRAllTypesBuilder._(
    validatedValue: 'Duration',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Duration'.toFhirStringBuilder,
  );

  /// Element_
  static FHIRAllTypesBuilder Element_ = FHIRAllTypesBuilder._(
    validatedValue: 'Element',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Element'.toFhirStringBuilder,
  );

  /// ElementDefinition
  static FHIRAllTypesBuilder ElementDefinition = FHIRAllTypesBuilder._(
    validatedValue: 'ElementDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ElementDefinition'.toFhirStringBuilder,
  );

  /// Expression
  static FHIRAllTypesBuilder Expression = FHIRAllTypesBuilder._(
    validatedValue: 'Expression',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Expression'.toFhirStringBuilder,
  );

  /// Extension
  static FHIRAllTypesBuilder Extension = FHIRAllTypesBuilder._(
    validatedValue: 'Extension',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Extension'.toFhirStringBuilder,
  );

  /// HumanName
  static FHIRAllTypesBuilder HumanName = FHIRAllTypesBuilder._(
    validatedValue: 'HumanName',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'HumanName'.toFhirStringBuilder,
  );

  /// Identifier
  static FHIRAllTypesBuilder Identifier = FHIRAllTypesBuilder._(
    validatedValue: 'Identifier',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Identifier'.toFhirStringBuilder,
  );

  /// MarketingStatus
  static FHIRAllTypesBuilder MarketingStatus = FHIRAllTypesBuilder._(
    validatedValue: 'MarketingStatus',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MarketingStatus'.toFhirStringBuilder,
  );

  /// Meta
  static FHIRAllTypesBuilder Meta = FHIRAllTypesBuilder._(
    validatedValue: 'Meta',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Meta'.toFhirStringBuilder,
  );

  /// Money
  static FHIRAllTypesBuilder Money = FHIRAllTypesBuilder._(
    validatedValue: 'Money',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Money'.toFhirStringBuilder,
  );

  /// MoneyQuantity
  static FHIRAllTypesBuilder MoneyQuantity = FHIRAllTypesBuilder._(
    validatedValue: 'MoneyQuantity',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MoneyQuantity'.toFhirStringBuilder,
  );

  /// Narrative
  static FHIRAllTypesBuilder Narrative = FHIRAllTypesBuilder._(
    validatedValue: 'Narrative',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Narrative'.toFhirStringBuilder,
  );

  /// ParameterDefinition
  static FHIRAllTypesBuilder ParameterDefinition = FHIRAllTypesBuilder._(
    validatedValue: 'ParameterDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ParameterDefinition'.toFhirStringBuilder,
  );

  /// Period
  static FHIRAllTypesBuilder Period = FHIRAllTypesBuilder._(
    validatedValue: 'Period',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Period'.toFhirStringBuilder,
  );

  /// Population
  static FHIRAllTypesBuilder Population = FHIRAllTypesBuilder._(
    validatedValue: 'Population',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Population'.toFhirStringBuilder,
  );

  /// ProdCharacteristic
  static FHIRAllTypesBuilder ProdCharacteristic = FHIRAllTypesBuilder._(
    validatedValue: 'ProdCharacteristic',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ProdCharacteristic'.toFhirStringBuilder,
  );

  /// ProductShelfLife
  static FHIRAllTypesBuilder ProductShelfLife = FHIRAllTypesBuilder._(
    validatedValue: 'ProductShelfLife',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ProductShelfLife'.toFhirStringBuilder,
  );

  /// Quantity
  static FHIRAllTypesBuilder Quantity = FHIRAllTypesBuilder._(
    validatedValue: 'Quantity',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Quantity'.toFhirStringBuilder,
  );

  /// Range
  static FHIRAllTypesBuilder Range = FHIRAllTypesBuilder._(
    validatedValue: 'Range',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Range'.toFhirStringBuilder,
  );

  /// Ratio
  static FHIRAllTypesBuilder Ratio = FHIRAllTypesBuilder._(
    validatedValue: 'Ratio',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Ratio'.toFhirStringBuilder,
  );

  /// RatioRange
  static FHIRAllTypesBuilder RatioRange = FHIRAllTypesBuilder._(
    validatedValue: 'RatioRange',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'RatioRange'.toFhirStringBuilder,
  );

  /// Reference
  static FHIRAllTypesBuilder Reference = FHIRAllTypesBuilder._(
    validatedValue: 'Reference',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Reference'.toFhirStringBuilder,
  );

  /// RelatedArtifact
  static FHIRAllTypesBuilder RelatedArtifact = FHIRAllTypesBuilder._(
    validatedValue: 'RelatedArtifact',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'RelatedArtifact'.toFhirStringBuilder,
  );

  /// SampledData
  static FHIRAllTypesBuilder SampledData = FHIRAllTypesBuilder._(
    validatedValue: 'SampledData',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SampledData'.toFhirStringBuilder,
  );

  /// Signature
  static FHIRAllTypesBuilder Signature = FHIRAllTypesBuilder._(
    validatedValue: 'Signature',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Signature'.toFhirStringBuilder,
  );

  /// SimpleQuantity
  static FHIRAllTypesBuilder SimpleQuantity = FHIRAllTypesBuilder._(
    validatedValue: 'SimpleQuantity',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SimpleQuantity'.toFhirStringBuilder,
  );

  /// Timing
  static FHIRAllTypesBuilder Timing = FHIRAllTypesBuilder._(
    validatedValue: 'Timing',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Timing'.toFhirStringBuilder,
  );

  /// TriggerDefinition
  static FHIRAllTypesBuilder TriggerDefinition = FHIRAllTypesBuilder._(
    validatedValue: 'TriggerDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'TriggerDefinition'.toFhirStringBuilder,
  );

  /// UsageContext
  static FHIRAllTypesBuilder UsageContext = FHIRAllTypesBuilder._(
    validatedValue: 'UsageContext',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'UsageContext'.toFhirStringBuilder,
  );

  /// base64Binary
  static FHIRAllTypesBuilder base64Binary = FHIRAllTypesBuilder._(
    validatedValue: 'base64Binary',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'base64Binary'.toFhirStringBuilder,
  );

  /// boolean
  static FHIRAllTypesBuilder boolean = FHIRAllTypesBuilder._(
    validatedValue: 'boolean',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'boolean'.toFhirStringBuilder,
  );

  /// canonical
  static FHIRAllTypesBuilder canonical = FHIRAllTypesBuilder._(
    validatedValue: 'canonical',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'canonical'.toFhirStringBuilder,
  );

  /// code
  static FHIRAllTypesBuilder code = FHIRAllTypesBuilder._(
    validatedValue: 'code',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'code'.toFhirStringBuilder,
  );

  /// date
  static FHIRAllTypesBuilder date = FHIRAllTypesBuilder._(
    validatedValue: 'date',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'date'.toFhirStringBuilder,
  );

  /// dateTime
  static FHIRAllTypesBuilder dateTime = FHIRAllTypesBuilder._(
    validatedValue: 'dateTime',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'dateTime'.toFhirStringBuilder,
  );

  /// decimal
  static FHIRAllTypesBuilder decimal = FHIRAllTypesBuilder._(
    validatedValue: 'decimal',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'decimal'.toFhirStringBuilder,
  );

  /// id
  static FHIRAllTypesBuilder id_ = FHIRAllTypesBuilder._(
    validatedValue: 'id',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'id'.toFhirStringBuilder,
  );

  /// instant
  static FHIRAllTypesBuilder instant = FHIRAllTypesBuilder._(
    validatedValue: 'instant',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'instant'.toFhirStringBuilder,
  );

  /// integer
  static FHIRAllTypesBuilder integer = FHIRAllTypesBuilder._(
    validatedValue: 'integer',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'integer'.toFhirStringBuilder,
  );

  /// markdown
  static FHIRAllTypesBuilder markdown = FHIRAllTypesBuilder._(
    validatedValue: 'markdown',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'markdown'.toFhirStringBuilder,
  );

  /// oid
  static FHIRAllTypesBuilder oid = FHIRAllTypesBuilder._(
    validatedValue: 'oid',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'oid'.toFhirStringBuilder,
  );

  /// positiveInt
  static FHIRAllTypesBuilder positiveInt = FHIRAllTypesBuilder._(
    validatedValue: 'positiveInt',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'positiveInt'.toFhirStringBuilder,
  );

  /// string
  static FHIRAllTypesBuilder string = FHIRAllTypesBuilder._(
    validatedValue: 'string',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'string'.toFhirStringBuilder,
  );

  /// time
  static FHIRAllTypesBuilder time = FHIRAllTypesBuilder._(
    validatedValue: 'time',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'time'.toFhirStringBuilder,
  );

  /// unsignedInt
  static FHIRAllTypesBuilder unsignedInt = FHIRAllTypesBuilder._(
    validatedValue: 'unsignedInt',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'unsignedInt'.toFhirStringBuilder,
  );

  /// uri
  static FHIRAllTypesBuilder uri = FHIRAllTypesBuilder._(
    validatedValue: 'uri',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'uri'.toFhirStringBuilder,
  );

  /// url
  static FHIRAllTypesBuilder url = FHIRAllTypesBuilder._(
    validatedValue: 'url',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'url'.toFhirStringBuilder,
  );

  /// uuid
  static FHIRAllTypesBuilder uuid = FHIRAllTypesBuilder._(
    validatedValue: 'uuid',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'uuid'.toFhirStringBuilder,
  );

  /// xhtml
  static FHIRAllTypesBuilder xhtml = FHIRAllTypesBuilder._(
    validatedValue: 'xhtml',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'XHTML'.toFhirStringBuilder,
  );

  /// Resource
  static FHIRAllTypesBuilder Resource = FHIRAllTypesBuilder._(
    validatedValue: 'Resource',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Resource'.toFhirStringBuilder,
  );

  /// Binary
  static FHIRAllTypesBuilder Binary = FHIRAllTypesBuilder._(
    validatedValue: 'Binary',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Binary'.toFhirStringBuilder,
  );

  /// Bundle
  static FHIRAllTypesBuilder Bundle = FHIRAllTypesBuilder._(
    validatedValue: 'Bundle',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Bundle'.toFhirStringBuilder,
  );

  /// DomainResource
  static FHIRAllTypesBuilder DomainResource = FHIRAllTypesBuilder._(
    validatedValue: 'DomainResource',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DomainResource'.toFhirStringBuilder,
  );

  /// Account
  static FHIRAllTypesBuilder Account = FHIRAllTypesBuilder._(
    validatedValue: 'Account',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Account'.toFhirStringBuilder,
  );

  /// ActivityDefinition
  static FHIRAllTypesBuilder ActivityDefinition = FHIRAllTypesBuilder._(
    validatedValue: 'ActivityDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ActivityDefinition'.toFhirStringBuilder,
  );

  /// AdministrableProductDefinition
  static FHIRAllTypesBuilder AdministrableProductDefinition =
      FHIRAllTypesBuilder._(
    validatedValue: 'AdministrableProductDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'AdministrableProductDefinition'.toFhirStringBuilder,
  );

  /// AdverseEvent
  static FHIRAllTypesBuilder AdverseEvent = FHIRAllTypesBuilder._(
    validatedValue: 'AdverseEvent',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'AdverseEvent'.toFhirStringBuilder,
  );

  /// AllergyIntolerance
  static FHIRAllTypesBuilder AllergyIntolerance = FHIRAllTypesBuilder._(
    validatedValue: 'AllergyIntolerance',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'AllergyIntolerance'.toFhirStringBuilder,
  );

  /// Appointment
  static FHIRAllTypesBuilder Appointment = FHIRAllTypesBuilder._(
    validatedValue: 'Appointment',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Appointment'.toFhirStringBuilder,
  );

  /// AppointmentResponse
  static FHIRAllTypesBuilder AppointmentResponse = FHIRAllTypesBuilder._(
    validatedValue: 'AppointmentResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'AppointmentResponse'.toFhirStringBuilder,
  );

  /// AuditEvent
  static FHIRAllTypesBuilder AuditEvent = FHIRAllTypesBuilder._(
    validatedValue: 'AuditEvent',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'AuditEvent'.toFhirStringBuilder,
  );

  /// Basic
  static FHIRAllTypesBuilder Basic = FHIRAllTypesBuilder._(
    validatedValue: 'Basic',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Basic'.toFhirStringBuilder,
  );

  /// BiologicallyDerivedProduct
  static FHIRAllTypesBuilder BiologicallyDerivedProduct = FHIRAllTypesBuilder._(
    validatedValue: 'BiologicallyDerivedProduct',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BiologicallyDerivedProduct'.toFhirStringBuilder,
  );

  /// BodyStructure
  static FHIRAllTypesBuilder BodyStructure = FHIRAllTypesBuilder._(
    validatedValue: 'BodyStructure',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BodyStructure'.toFhirStringBuilder,
  );

  /// CapabilityStatement
  static FHIRAllTypesBuilder CapabilityStatement = FHIRAllTypesBuilder._(
    validatedValue: 'CapabilityStatement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CapabilityStatement'.toFhirStringBuilder,
  );

  /// CarePlan
  static FHIRAllTypesBuilder CarePlan = FHIRAllTypesBuilder._(
    validatedValue: 'CarePlan',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CarePlan'.toFhirStringBuilder,
  );

  /// CareTeam
  static FHIRAllTypesBuilder CareTeam = FHIRAllTypesBuilder._(
    validatedValue: 'CareTeam',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CareTeam'.toFhirStringBuilder,
  );

  /// CatalogEntry
  static FHIRAllTypesBuilder CatalogEntry = FHIRAllTypesBuilder._(
    validatedValue: 'CatalogEntry',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CatalogEntry'.toFhirStringBuilder,
  );

  /// ChargeItem
  static FHIRAllTypesBuilder ChargeItem = FHIRAllTypesBuilder._(
    validatedValue: 'ChargeItem',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ChargeItem'.toFhirStringBuilder,
  );

  /// ChargeItemDefinition
  static FHIRAllTypesBuilder ChargeItemDefinition = FHIRAllTypesBuilder._(
    validatedValue: 'ChargeItemDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ChargeItemDefinition'.toFhirStringBuilder,
  );

  /// Citation
  static FHIRAllTypesBuilder Citation = FHIRAllTypesBuilder._(
    validatedValue: 'Citation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Citation'.toFhirStringBuilder,
  );

  /// Claim
  static FHIRAllTypesBuilder Claim = FHIRAllTypesBuilder._(
    validatedValue: 'Claim',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Claim'.toFhirStringBuilder,
  );

  /// ClaimResponse
  static FHIRAllTypesBuilder ClaimResponse = FHIRAllTypesBuilder._(
    validatedValue: 'ClaimResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ClaimResponse'.toFhirStringBuilder,
  );

  /// ClinicalImpression
  static FHIRAllTypesBuilder ClinicalImpression = FHIRAllTypesBuilder._(
    validatedValue: 'ClinicalImpression',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ClinicalImpression'.toFhirStringBuilder,
  );

  /// ClinicalUseDefinition
  static FHIRAllTypesBuilder ClinicalUseDefinition = FHIRAllTypesBuilder._(
    validatedValue: 'ClinicalUseDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ClinicalUseDefinition'.toFhirStringBuilder,
  );

  /// CodeSystem
  static FHIRAllTypesBuilder CodeSystem = FHIRAllTypesBuilder._(
    validatedValue: 'CodeSystem',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CodeSystem'.toFhirStringBuilder,
  );

  /// Communication
  static FHIRAllTypesBuilder Communication = FHIRAllTypesBuilder._(
    validatedValue: 'Communication',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Communication'.toFhirStringBuilder,
  );

  /// CommunicationRequest
  static FHIRAllTypesBuilder CommunicationRequest = FHIRAllTypesBuilder._(
    validatedValue: 'CommunicationRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CommunicationRequest'.toFhirStringBuilder,
  );

  /// CompartmentDefinition
  static FHIRAllTypesBuilder CompartmentDefinition = FHIRAllTypesBuilder._(
    validatedValue: 'CompartmentDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CompartmentDefinition'.toFhirStringBuilder,
  );

  /// Composition
  static FHIRAllTypesBuilder Composition = FHIRAllTypesBuilder._(
    validatedValue: 'Composition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Composition'.toFhirStringBuilder,
  );

  /// ConceptMap
  static FHIRAllTypesBuilder ConceptMap = FHIRAllTypesBuilder._(
    validatedValue: 'ConceptMap',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ConceptMap'.toFhirStringBuilder,
  );

  /// Condition
  static FHIRAllTypesBuilder Condition = FHIRAllTypesBuilder._(
    validatedValue: 'Condition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Condition'.toFhirStringBuilder,
  );

  /// Consent
  static FHIRAllTypesBuilder Consent = FHIRAllTypesBuilder._(
    validatedValue: 'Consent',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Consent'.toFhirStringBuilder,
  );

  /// Contract
  static FHIRAllTypesBuilder Contract = FHIRAllTypesBuilder._(
    validatedValue: 'Contract',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Contract'.toFhirStringBuilder,
  );

  /// Coverage
  static FHIRAllTypesBuilder Coverage = FHIRAllTypesBuilder._(
    validatedValue: 'Coverage',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Coverage'.toFhirStringBuilder,
  );

  /// CoverageEligibilityRequest
  static FHIRAllTypesBuilder CoverageEligibilityRequest = FHIRAllTypesBuilder._(
    validatedValue: 'CoverageEligibilityRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CoverageEligibilityRequest'.toFhirStringBuilder,
  );

  /// CoverageEligibilityResponse
  static FHIRAllTypesBuilder CoverageEligibilityResponse =
      FHIRAllTypesBuilder._(
    validatedValue: 'CoverageEligibilityResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CoverageEligibilityResponse'.toFhirStringBuilder,
  );

  /// DetectedIssue
  static FHIRAllTypesBuilder DetectedIssue = FHIRAllTypesBuilder._(
    validatedValue: 'DetectedIssue',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DetectedIssue'.toFhirStringBuilder,
  );

  /// Device
  static FHIRAllTypesBuilder Device = FHIRAllTypesBuilder._(
    validatedValue: 'Device',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Device'.toFhirStringBuilder,
  );

  /// DeviceDefinition
  static FHIRAllTypesBuilder DeviceDefinition = FHIRAllTypesBuilder._(
    validatedValue: 'DeviceDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DeviceDefinition'.toFhirStringBuilder,
  );

  /// DeviceMetric
  static FHIRAllTypesBuilder DeviceMetric = FHIRAllTypesBuilder._(
    validatedValue: 'DeviceMetric',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DeviceMetric'.toFhirStringBuilder,
  );

  /// DeviceRequest
  static FHIRAllTypesBuilder DeviceRequest = FHIRAllTypesBuilder._(
    validatedValue: 'DeviceRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DeviceRequest'.toFhirStringBuilder,
  );

  /// DeviceUseStatement
  static FHIRAllTypesBuilder DeviceUseStatement = FHIRAllTypesBuilder._(
    validatedValue: 'DeviceUseStatement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DeviceUseStatement'.toFhirStringBuilder,
  );

  /// DiagnosticReport
  static FHIRAllTypesBuilder DiagnosticReport = FHIRAllTypesBuilder._(
    validatedValue: 'DiagnosticReport',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DiagnosticReport'.toFhirStringBuilder,
  );

  /// DocumentManifest
  static FHIRAllTypesBuilder DocumentManifest = FHIRAllTypesBuilder._(
    validatedValue: 'DocumentManifest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DocumentManifest'.toFhirStringBuilder,
  );

  /// DocumentReference
  static FHIRAllTypesBuilder DocumentReference = FHIRAllTypesBuilder._(
    validatedValue: 'DocumentReference',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DocumentReference'.toFhirStringBuilder,
  );

  /// Encounter
  static FHIRAllTypesBuilder Encounter = FHIRAllTypesBuilder._(
    validatedValue: 'Encounter',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Encounter'.toFhirStringBuilder,
  );

  /// Endpoint
  static FHIRAllTypesBuilder Endpoint = FHIRAllTypesBuilder._(
    validatedValue: 'Endpoint',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Endpoint'.toFhirStringBuilder,
  );

  /// EnrollmentRequest
  static FHIRAllTypesBuilder EnrollmentRequest = FHIRAllTypesBuilder._(
    validatedValue: 'EnrollmentRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'EnrollmentRequest'.toFhirStringBuilder,
  );

  /// EnrollmentResponse
  static FHIRAllTypesBuilder EnrollmentResponse = FHIRAllTypesBuilder._(
    validatedValue: 'EnrollmentResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'EnrollmentResponse'.toFhirStringBuilder,
  );

  /// EpisodeOfCare
  static FHIRAllTypesBuilder EpisodeOfCare = FHIRAllTypesBuilder._(
    validatedValue: 'EpisodeOfCare',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'EpisodeOfCare'.toFhirStringBuilder,
  );

  /// EventDefinition
  static FHIRAllTypesBuilder EventDefinition = FHIRAllTypesBuilder._(
    validatedValue: 'EventDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'EventDefinition'.toFhirStringBuilder,
  );

  /// Evidence
  static FHIRAllTypesBuilder Evidence = FHIRAllTypesBuilder._(
    validatedValue: 'Evidence',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Evidence'.toFhirStringBuilder,
  );

  /// EvidenceReport
  static FHIRAllTypesBuilder EvidenceReport = FHIRAllTypesBuilder._(
    validatedValue: 'EvidenceReport',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'EvidenceReport'.toFhirStringBuilder,
  );

  /// EvidenceVariable
  static FHIRAllTypesBuilder EvidenceVariable = FHIRAllTypesBuilder._(
    validatedValue: 'EvidenceVariable',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'EvidenceVariable'.toFhirStringBuilder,
  );

  /// ExampleScenario
  static FHIRAllTypesBuilder ExampleScenario = FHIRAllTypesBuilder._(
    validatedValue: 'ExampleScenario',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ExampleScenario'.toFhirStringBuilder,
  );

  /// ExplanationOfBenefit
  static FHIRAllTypesBuilder ExplanationOfBenefit = FHIRAllTypesBuilder._(
    validatedValue: 'ExplanationOfBenefit',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ExplanationOfBenefit'.toFhirStringBuilder,
  );

  /// FamilyMemberHistory
  static FHIRAllTypesBuilder FamilyMemberHistory = FHIRAllTypesBuilder._(
    validatedValue: 'FamilyMemberHistory',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'FamilyMemberHistory'.toFhirStringBuilder,
  );

  /// Flag
  static FHIRAllTypesBuilder Flag = FHIRAllTypesBuilder._(
    validatedValue: 'Flag',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Flag'.toFhirStringBuilder,
  );

  /// Goal
  static FHIRAllTypesBuilder Goal = FHIRAllTypesBuilder._(
    validatedValue: 'Goal',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Goal'.toFhirStringBuilder,
  );

  /// GraphDefinition
  static FHIRAllTypesBuilder GraphDefinition = FHIRAllTypesBuilder._(
    validatedValue: 'GraphDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GraphDefinition'.toFhirStringBuilder,
  );

  /// Group
  static FHIRAllTypesBuilder Group = FHIRAllTypesBuilder._(
    validatedValue: 'Group',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Group'.toFhirStringBuilder,
  );

  /// GuidanceResponse
  static FHIRAllTypesBuilder GuidanceResponse = FHIRAllTypesBuilder._(
    validatedValue: 'GuidanceResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GuidanceResponse'.toFhirStringBuilder,
  );

  /// HealthcareService
  static FHIRAllTypesBuilder HealthcareService = FHIRAllTypesBuilder._(
    validatedValue: 'HealthcareService',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'HealthcareService'.toFhirStringBuilder,
  );

  /// ImagingStudy
  static FHIRAllTypesBuilder ImagingStudy = FHIRAllTypesBuilder._(
    validatedValue: 'ImagingStudy',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ImagingStudy'.toFhirStringBuilder,
  );

  /// Immunization
  static FHIRAllTypesBuilder Immunization = FHIRAllTypesBuilder._(
    validatedValue: 'Immunization',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Immunization'.toFhirStringBuilder,
  );

  /// ImmunizationEvaluation
  static FHIRAllTypesBuilder ImmunizationEvaluation = FHIRAllTypesBuilder._(
    validatedValue: 'ImmunizationEvaluation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ImmunizationEvaluation'.toFhirStringBuilder,
  );

  /// ImmunizationRecommendation
  static FHIRAllTypesBuilder ImmunizationRecommendation = FHIRAllTypesBuilder._(
    validatedValue: 'ImmunizationRecommendation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ImmunizationRecommendation'.toFhirStringBuilder,
  );

  /// ImplementationGuide
  static FHIRAllTypesBuilder ImplementationGuide = FHIRAllTypesBuilder._(
    validatedValue: 'ImplementationGuide',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ImplementationGuide'.toFhirStringBuilder,
  );

  /// Ingredient
  static FHIRAllTypesBuilder Ingredient = FHIRAllTypesBuilder._(
    validatedValue: 'Ingredient',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Ingredient'.toFhirStringBuilder,
  );

  /// InsurancePlan
  static FHIRAllTypesBuilder InsurancePlan = FHIRAllTypesBuilder._(
    validatedValue: 'InsurancePlan',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'InsurancePlan'.toFhirStringBuilder,
  );

  /// Invoice
  static FHIRAllTypesBuilder Invoice = FHIRAllTypesBuilder._(
    validatedValue: 'Invoice',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Invoice'.toFhirStringBuilder,
  );

  /// Library
  static FHIRAllTypesBuilder Library = FHIRAllTypesBuilder._(
    validatedValue: 'Library',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Library'.toFhirStringBuilder,
  );

  /// Linkage
  static FHIRAllTypesBuilder Linkage = FHIRAllTypesBuilder._(
    validatedValue: 'Linkage',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Linkage'.toFhirStringBuilder,
  );

  /// List_
  static FHIRAllTypesBuilder List_ = FHIRAllTypesBuilder._(
    validatedValue: 'List',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'List'.toFhirStringBuilder,
  );

  /// Location
  static FHIRAllTypesBuilder Location = FHIRAllTypesBuilder._(
    validatedValue: 'Location',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Location'.toFhirStringBuilder,
  );

  /// ManufacturedItemDefinition
  static FHIRAllTypesBuilder ManufacturedItemDefinition = FHIRAllTypesBuilder._(
    validatedValue: 'ManufacturedItemDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ManufacturedItemDefinition'.toFhirStringBuilder,
  );

  /// Measure
  static FHIRAllTypesBuilder Measure = FHIRAllTypesBuilder._(
    validatedValue: 'Measure',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Measure'.toFhirStringBuilder,
  );

  /// MeasureReport
  static FHIRAllTypesBuilder MeasureReport = FHIRAllTypesBuilder._(
    validatedValue: 'MeasureReport',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MeasureReport'.toFhirStringBuilder,
  );

  /// Media
  static FHIRAllTypesBuilder Media = FHIRAllTypesBuilder._(
    validatedValue: 'Media',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Media'.toFhirStringBuilder,
  );

  /// Medication
  static FHIRAllTypesBuilder Medication = FHIRAllTypesBuilder._(
    validatedValue: 'Medication',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Medication'.toFhirStringBuilder,
  );

  /// MedicationAdministration
  static FHIRAllTypesBuilder MedicationAdministration = FHIRAllTypesBuilder._(
    validatedValue: 'MedicationAdministration',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MedicationAdministration'.toFhirStringBuilder,
  );

  /// MedicationDispense
  static FHIRAllTypesBuilder MedicationDispense = FHIRAllTypesBuilder._(
    validatedValue: 'MedicationDispense',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MedicationDispense'.toFhirStringBuilder,
  );

  /// MedicationKnowledge
  static FHIRAllTypesBuilder MedicationKnowledge = FHIRAllTypesBuilder._(
    validatedValue: 'MedicationKnowledge',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MedicationKnowledge'.toFhirStringBuilder,
  );

  /// MedicationRequest
  static FHIRAllTypesBuilder MedicationRequest = FHIRAllTypesBuilder._(
    validatedValue: 'MedicationRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MedicationRequest'.toFhirStringBuilder,
  );

  /// MedicationStatement
  static FHIRAllTypesBuilder MedicationStatement = FHIRAllTypesBuilder._(
    validatedValue: 'MedicationStatement',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MedicationStatement'.toFhirStringBuilder,
  );

  /// MedicinalProductDefinition
  static FHIRAllTypesBuilder MedicinalProductDefinition = FHIRAllTypesBuilder._(
    validatedValue: 'MedicinalProductDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MedicinalProductDefinition'.toFhirStringBuilder,
  );

  /// MessageDefinition
  static FHIRAllTypesBuilder MessageDefinition = FHIRAllTypesBuilder._(
    validatedValue: 'MessageDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MessageDefinition'.toFhirStringBuilder,
  );

  /// MessageHeader
  static FHIRAllTypesBuilder MessageHeader = FHIRAllTypesBuilder._(
    validatedValue: 'MessageHeader',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MessageHeader'.toFhirStringBuilder,
  );

  /// MolecularSequence
  static FHIRAllTypesBuilder MolecularSequence = FHIRAllTypesBuilder._(
    validatedValue: 'MolecularSequence',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MolecularSequence'.toFhirStringBuilder,
  );

  /// NamingSystem
  static FHIRAllTypesBuilder NamingSystem = FHIRAllTypesBuilder._(
    validatedValue: 'NamingSystem',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'NamingSystem'.toFhirStringBuilder,
  );

  /// NutritionOrder
  static FHIRAllTypesBuilder NutritionOrder = FHIRAllTypesBuilder._(
    validatedValue: 'NutritionOrder',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'NutritionOrder'.toFhirStringBuilder,
  );

  /// NutritionProduct
  static FHIRAllTypesBuilder NutritionProduct = FHIRAllTypesBuilder._(
    validatedValue: 'NutritionProduct',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'NutritionProduct'.toFhirStringBuilder,
  );

  /// Observation
  static FHIRAllTypesBuilder Observation = FHIRAllTypesBuilder._(
    validatedValue: 'Observation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Observation'.toFhirStringBuilder,
  );

  /// ObservationDefinition
  static FHIRAllTypesBuilder ObservationDefinition = FHIRAllTypesBuilder._(
    validatedValue: 'ObservationDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ObservationDefinition'.toFhirStringBuilder,
  );

  /// OperationDefinition
  static FHIRAllTypesBuilder OperationDefinition = FHIRAllTypesBuilder._(
    validatedValue: 'OperationDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'OperationDefinition'.toFhirStringBuilder,
  );

  /// OperationOutcome
  static FHIRAllTypesBuilder OperationOutcome = FHIRAllTypesBuilder._(
    validatedValue: 'OperationOutcome',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'OperationOutcome'.toFhirStringBuilder,
  );

  /// Organization
  static FHIRAllTypesBuilder Organization = FHIRAllTypesBuilder._(
    validatedValue: 'Organization',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Organization'.toFhirStringBuilder,
  );

  /// OrganizationAffiliation
  static FHIRAllTypesBuilder OrganizationAffiliation = FHIRAllTypesBuilder._(
    validatedValue: 'OrganizationAffiliation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'OrganizationAffiliation'.toFhirStringBuilder,
  );

  /// PackagedProductDefinition
  static FHIRAllTypesBuilder PackagedProductDefinition = FHIRAllTypesBuilder._(
    validatedValue: 'PackagedProductDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'PackagedProductDefinition'.toFhirStringBuilder,
  );

  /// Patient
  static FHIRAllTypesBuilder Patient = FHIRAllTypesBuilder._(
    validatedValue: 'Patient',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Patient'.toFhirStringBuilder,
  );

  /// PaymentNotice
  static FHIRAllTypesBuilder PaymentNotice = FHIRAllTypesBuilder._(
    validatedValue: 'PaymentNotice',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'PaymentNotice'.toFhirStringBuilder,
  );

  /// PaymentReconciliation
  static FHIRAllTypesBuilder PaymentReconciliation = FHIRAllTypesBuilder._(
    validatedValue: 'PaymentReconciliation',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'PaymentReconciliation'.toFhirStringBuilder,
  );

  /// Person
  static FHIRAllTypesBuilder Person = FHIRAllTypesBuilder._(
    validatedValue: 'Person',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Person'.toFhirStringBuilder,
  );

  /// PlanDefinition
  static FHIRAllTypesBuilder PlanDefinition = FHIRAllTypesBuilder._(
    validatedValue: 'PlanDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'PlanDefinition'.toFhirStringBuilder,
  );

  /// Practitioner
  static FHIRAllTypesBuilder Practitioner = FHIRAllTypesBuilder._(
    validatedValue: 'Practitioner',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Practitioner'.toFhirStringBuilder,
  );

  /// PractitionerRole
  static FHIRAllTypesBuilder PractitionerRole = FHIRAllTypesBuilder._(
    validatedValue: 'PractitionerRole',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'PractitionerRole'.toFhirStringBuilder,
  );

  /// Procedure
  static FHIRAllTypesBuilder Procedure = FHIRAllTypesBuilder._(
    validatedValue: 'Procedure',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Procedure'.toFhirStringBuilder,
  );

  /// Provenance
  static FHIRAllTypesBuilder Provenance = FHIRAllTypesBuilder._(
    validatedValue: 'Provenance',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Provenance'.toFhirStringBuilder,
  );

  /// Questionnaire
  static FHIRAllTypesBuilder Questionnaire = FHIRAllTypesBuilder._(
    validatedValue: 'Questionnaire',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Questionnaire'.toFhirStringBuilder,
  );

  /// QuestionnaireResponse
  static FHIRAllTypesBuilder QuestionnaireResponse = FHIRAllTypesBuilder._(
    validatedValue: 'QuestionnaireResponse',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'QuestionnaireResponse'.toFhirStringBuilder,
  );

  /// RegulatedAuthorization
  static FHIRAllTypesBuilder RegulatedAuthorization = FHIRAllTypesBuilder._(
    validatedValue: 'RegulatedAuthorization',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'RegulatedAuthorization'.toFhirStringBuilder,
  );

  /// RelatedPerson
  static FHIRAllTypesBuilder RelatedPerson = FHIRAllTypesBuilder._(
    validatedValue: 'RelatedPerson',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'RelatedPerson'.toFhirStringBuilder,
  );

  /// RequestGroup
  static FHIRAllTypesBuilder RequestGroup = FHIRAllTypesBuilder._(
    validatedValue: 'RequestGroup',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'RequestGroup'.toFhirStringBuilder,
  );

  /// ResearchDefinition
  static FHIRAllTypesBuilder ResearchDefinition = FHIRAllTypesBuilder._(
    validatedValue: 'ResearchDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ResearchDefinition'.toFhirStringBuilder,
  );

  /// ResearchElementDefinition
  static FHIRAllTypesBuilder ResearchElementDefinition = FHIRAllTypesBuilder._(
    validatedValue: 'ResearchElementDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ResearchElementDefinition'.toFhirStringBuilder,
  );

  /// ResearchStudy
  static FHIRAllTypesBuilder ResearchStudy = FHIRAllTypesBuilder._(
    validatedValue: 'ResearchStudy',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ResearchStudy'.toFhirStringBuilder,
  );

  /// ResearchSubject
  static FHIRAllTypesBuilder ResearchSubject = FHIRAllTypesBuilder._(
    validatedValue: 'ResearchSubject',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ResearchSubject'.toFhirStringBuilder,
  );

  /// RiskAssessment
  static FHIRAllTypesBuilder RiskAssessment = FHIRAllTypesBuilder._(
    validatedValue: 'RiskAssessment',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'RiskAssessment'.toFhirStringBuilder,
  );

  /// Schedule
  static FHIRAllTypesBuilder Schedule = FHIRAllTypesBuilder._(
    validatedValue: 'Schedule',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Schedule'.toFhirStringBuilder,
  );

  /// SearchParameter
  static FHIRAllTypesBuilder SearchParameter = FHIRAllTypesBuilder._(
    validatedValue: 'SearchParameter',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SearchParameter'.toFhirStringBuilder,
  );

  /// ServiceRequest
  static FHIRAllTypesBuilder ServiceRequest = FHIRAllTypesBuilder._(
    validatedValue: 'ServiceRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ServiceRequest'.toFhirStringBuilder,
  );

  /// Slot
  static FHIRAllTypesBuilder Slot = FHIRAllTypesBuilder._(
    validatedValue: 'Slot',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Slot'.toFhirStringBuilder,
  );

  /// Specimen
  static FHIRAllTypesBuilder Specimen = FHIRAllTypesBuilder._(
    validatedValue: 'Specimen',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Specimen'.toFhirStringBuilder,
  );

  /// SpecimenDefinition
  static FHIRAllTypesBuilder SpecimenDefinition = FHIRAllTypesBuilder._(
    validatedValue: 'SpecimenDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SpecimenDefinition'.toFhirStringBuilder,
  );

  /// StructureDefinition
  static FHIRAllTypesBuilder StructureDefinition = FHIRAllTypesBuilder._(
    validatedValue: 'StructureDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'StructureDefinition'.toFhirStringBuilder,
  );

  /// StructureMap
  static FHIRAllTypesBuilder StructureMap = FHIRAllTypesBuilder._(
    validatedValue: 'StructureMap',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'StructureMap'.toFhirStringBuilder,
  );

  /// Subscription
  static FHIRAllTypesBuilder Subscription = FHIRAllTypesBuilder._(
    validatedValue: 'Subscription',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Subscription'.toFhirStringBuilder,
  );

  /// SubscriptionStatus
  static FHIRAllTypesBuilder SubscriptionStatus = FHIRAllTypesBuilder._(
    validatedValue: 'SubscriptionStatus',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SubscriptionStatus'.toFhirStringBuilder,
  );

  /// SubscriptionTopic
  static FHIRAllTypesBuilder SubscriptionTopic = FHIRAllTypesBuilder._(
    validatedValue: 'SubscriptionTopic',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SubscriptionTopic'.toFhirStringBuilder,
  );

  /// Substance
  static FHIRAllTypesBuilder Substance = FHIRAllTypesBuilder._(
    validatedValue: 'Substance',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Substance'.toFhirStringBuilder,
  );

  /// SubstanceDefinition
  static FHIRAllTypesBuilder SubstanceDefinition = FHIRAllTypesBuilder._(
    validatedValue: 'SubstanceDefinition',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SubstanceDefinition'.toFhirStringBuilder,
  );

  /// SupplyDelivery
  static FHIRAllTypesBuilder SupplyDelivery = FHIRAllTypesBuilder._(
    validatedValue: 'SupplyDelivery',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SupplyDelivery'.toFhirStringBuilder,
  );

  /// SupplyRequest
  static FHIRAllTypesBuilder SupplyRequest = FHIRAllTypesBuilder._(
    validatedValue: 'SupplyRequest',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SupplyRequest'.toFhirStringBuilder,
  );

  /// Task
  static FHIRAllTypesBuilder Task = FHIRAllTypesBuilder._(
    validatedValue: 'Task',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Task'.toFhirStringBuilder,
  );

  /// TerminologyCapabilities
  static FHIRAllTypesBuilder TerminologyCapabilities = FHIRAllTypesBuilder._(
    validatedValue: 'TerminologyCapabilities',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'TerminologyCapabilities'.toFhirStringBuilder,
  );

  /// TestReport
  static FHIRAllTypesBuilder TestReport = FHIRAllTypesBuilder._(
    validatedValue: 'TestReport',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'TestReport'.toFhirStringBuilder,
  );

  /// TestScript
  static FHIRAllTypesBuilder TestScript = FHIRAllTypesBuilder._(
    validatedValue: 'TestScript',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'TestScript'.toFhirStringBuilder,
  );

  /// ValueSet
  static FHIRAllTypesBuilder ValueSet = FHIRAllTypesBuilder._(
    validatedValue: 'ValueSet',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ValueSet'.toFhirStringBuilder,
  );

  /// VerificationResult
  static FHIRAllTypesBuilder VerificationResult = FHIRAllTypesBuilder._(
    validatedValue: 'VerificationResult',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'VerificationResult'.toFhirStringBuilder,
  );

  /// VisionPrescription
  static FHIRAllTypesBuilder VisionPrescription = FHIRAllTypesBuilder._(
    validatedValue: 'VisionPrescription',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'VisionPrescription'.toFhirStringBuilder,
  );

  /// Parameters
  static FHIRAllTypesBuilder Parameters = FHIRAllTypesBuilder._(
    validatedValue: 'Parameters',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Parameters'.toFhirStringBuilder,
  );

  /// Type
  static FHIRAllTypesBuilder Type = FHIRAllTypesBuilder._(
    validatedValue: 'Type',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Type'.toFhirStringBuilder,
  );

  /// Any
  static FHIRAllTypesBuilder Any = FHIRAllTypesBuilder._(
    validatedValue: 'Any',
    system: 'http://hl7.org/fhir/ValueSet/all-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Any'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static FHIRAllTypesBuilder elementOnly =
      FHIRAllTypesBuilder._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  FHIRAllTypesBuilder withElement(ElementBuilder? newElement) {
    return FHIRAllTypesBuilder._(validatedValue: value, element: newElement);
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
  FHIRAllTypesBuilder copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return FHIRAllTypesBuilder._(
      validatedValue: newValue ?? value,
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
