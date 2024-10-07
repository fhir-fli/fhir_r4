import 'package:json_annotation/json_annotation.dart';

/// A list of all the concrete types defined in this version of the FHIR specification - Abstract Types, Data Types and Resource Types.
enum FHIRAllTypes {
  /// Display: Address
  /// Definition: An address expressed using postal conventions (as opposed to GPS or other location definition formats).  This data type may be used to convey addresses for use in delivering mail as well as for visiting locations which might not be valid for mail delivery.  There are a variety of postal address formats defined around the world.
  @JsonValue('Address')
  Address,

  /// Display: Age
  /// Definition: A duration of time during which an organism (or a process) has existed.
  @JsonValue('Age')
  Age,

  /// Display: Annotation
  /// Definition: A  text note which also  contains information about who made the statement and when.
  @JsonValue('Annotation')
  Annotation,

  /// Display: Attachment
  /// Definition: For referring to data content defined in other formats.
  @JsonValue('Attachment')
  Attachment,

  /// Display: BackboneElement
  /// Definition: Base definition for all elements that are defined inside a resource - but not those in a data type.
  @JsonValue('BackboneElement')
  BackboneElement,

  /// Display: CodeableConcept
  /// Definition: A concept that may be defined by a formal reference to a terminology or ontology or may be provided by text.
  @JsonValue('CodeableConcept')
  CodeableConcept,

  /// Display: CodeableReference
  /// Definition: A reference to a resource (by instance), or instead, a reference to a concept defined in a terminology or ontology (by class).
  @JsonValue('CodeableReference')
  CodeableReference,

  /// Display: Coding
  /// Definition: A reference to a code defined by a terminology system.
  @JsonValue('Coding')
  Coding,

  /// Display: ContactDetail
  /// Definition: Specifies contact information for a person or organization.
  @JsonValue('ContactDetail')
  ContactDetail,

  /// Display: ContactPoint
  /// Definition: Details for all kinds of technology mediated contact points for a person or organization, including telephone, email, etc.
  @JsonValue('ContactPoint')
  ContactPoint,

  /// Display: Contributor
  /// Definition: A contributor to the content of a knowledge asset, including authors, editors, reviewers, and endorsers.
  @JsonValue('Contributor')
  Contributor,

  /// Display: Count
  /// Definition: A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts that are not precisely quantified, including amounts involving arbitrary units and floating currencies.
  @JsonValue('Count')
  Count,

  /// Display: DataRequirement
  /// Definition: Describes a required data item for evaluation in terms of the type of data, and optional code or date-based filters of the data.
  @JsonValue('DataRequirement')
  DataRequirement,

  /// Display: Distance
  /// Definition: A length - a value with a unit that is a physical distance.
  @JsonValue('Distance')
  Distance,

  /// Display: Dosage
  /// Definition: Indicates how the medication is/was taken or should be taken by the patient.
  @JsonValue('Dosage')
  Dosage,

  /// Display: Duration
  /// Definition: A length of time.
  @JsonValue('Duration')
  Duration,

  /// Display: Element
  /// Definition: Base definition for all elements in a resource.
  @JsonValue('Element')
  Element,

  /// Display: ElementDefinition
  /// Definition: Captures constraints on each element within the resource, profile, or extension.
  @JsonValue('ElementDefinition')
  ElementDefinition,

  /// Display: Expression
  /// Definition: A expression that is evaluated in a specified context and returns a value. The context of use of the expression must specify the context in which the expression is evaluated, and how the result of the expression is used.
  @JsonValue('Expression')
  Expression,

  /// Display: Extension
  /// Definition: Optional Extension Element - found in all resources.
  @JsonValue('Extension')
  Extension,

  /// Display: HumanName
  /// Definition: A human's name with the ability to identify parts and usage.
  @JsonValue('HumanName')
  HumanName,

  /// Display: Identifier
  /// Definition: An identifier - identifies some entity uniquely and unambiguously. Typically this is used for business identifiers.
  @JsonValue('Identifier')
  Identifier,

  /// Display: MarketingStatus
  /// Definition: The marketing status describes the date when a medicinal product is actually put on the market or the date as of which it is no longer available.
  @JsonValue('MarketingStatus')
  MarketingStatus,

  /// Display: Meta
  /// Definition: The metadata about a resource. This is content in the resource that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
  @JsonValue('Meta')
  Meta,

  /// Display: Money
  /// Definition: An amount of economic utility in some recognized currency.
  @JsonValue('Money')
  Money,

  /// Display: MoneyQuantity
  @JsonValue('MoneyQuantity')
  MoneyQuantity,

  /// Display: Narrative
  /// Definition: A human-readable summary of the resource conveying the essential clinical and business information for the resource.
  @JsonValue('Narrative')
  Narrative,

  /// Display: ParameterDefinition
  /// Definition: The parameters to the module. This collection specifies both the input and output parameters. Input parameters are provided by the caller as part of the $evaluate operation. Output parameters are included in the GuidanceResponse.
  @JsonValue('ParameterDefinition')
  ParameterDefinition,

  /// Display: Period
  /// Definition: A time period defined by a start and end date and optionally time.
  @JsonValue('Period')
  Period,

  /// Display: Population
  /// Definition: A populatioof people with some set of grouping criteria.
  @JsonValue('Population')
  Population,

  /// Display: ProdCharacteristic
  /// Definition: The marketing status describes the date when a medicinal product is actually put on the market or the date as of which it is no longer available.
  @JsonValue('ProdCharacteristic')
  ProdCharacteristic,

  /// Display: ProductShelfLife
  /// Definition: The shelf-life and storage information for a medicinal product item or container can be described using this class.
  @JsonValue('ProductShelfLife')
  ProductShelfLife,

  /// Display: Quantity
  /// Definition: A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts that are not precisely quantified, including amounts involving arbitrary units and floating currencies.
  @JsonValue('Quantity')
  Quantity,

  /// Display: Range
  /// Definition: A set of ordered Quantities defined by a low and high limit.
  @JsonValue('Range')
  Range,

  /// Display: Ratio
  /// Definition: A relationship of two Quantity values - expressed as a numerator and a denominator.
  @JsonValue('Ratio')
  Ratio,

  /// Display: RatioRange
  /// Definition: A range of ratios expressed as a low and high numerator and a denominator.
  @JsonValue('RatioRange')
  RatioRange,

  /// Display: Reference
  /// Definition: A reference from one resource to another.
  @JsonValue('Reference')
  Reference,

  /// Display: RelatedArtifact
  /// Definition: Related artifacts such as additional documentation, justification, or bibliographic references.
  @JsonValue('RelatedArtifact')
  RelatedArtifact,

  /// Display: SampledData
  /// Definition: A series of measurements taken by a device, with upper and lower limits. There may be more than one dimension in the data.
  @JsonValue('SampledData')
  SampledData,

  /// Display: Signature
  /// Definition: A signature along with supporting context. The signature may be a digital signature that is cryptographic in nature, or some other signature acceptable to the domain. This other signature may be as simple as a graphical image representing a hand-written signature, or a signature ceremony Different signature approaches have different utilities.
  @JsonValue('Signature')
  Signature,

  /// Display: SimpleQuantity
  @JsonValue('SimpleQuantity')
  SimpleQuantity,

  /// Display: Timing
  /// Definition: Specifies an event that may occur multiple times. Timing schedules are used to record when things are planned, expected or requested to occur. The most common usage is in dosage instructions for medications. They are also used when planning care of various kinds, and may be used for reporting the schedule to which past regular activities were carried out.
  @JsonValue('Timing')
  Timing,

  /// Display: TriggerDefinition
  /// Definition: A description of a triggering event. Triggering events can be named events, data events, or periodic, as determined by the type element.
  @JsonValue('TriggerDefinition')
  TriggerDefinition,

  /// Display: UsageContext
  /// Definition: Specifies clinical/business/etc. metadata that can be used to retrieve, index and/or categorize an artifact. This metadata can either be specific to the applicable population (e.g., age category, DRG) or the specific context of care (e.g., venue, care setting, provider of care).
  @JsonValue('UsageContext')
  UsageContext,

  /// Display: base64Binary
  /// Definition: A stream of bytes
  @JsonValue('base64Binary')
  base64Binary,

  /// Display: boolean
  /// Definition: Value of "true" or "false"
  @JsonValue('boolean')
  boolean,

  /// Display: canonical
  /// Definition: A URI that is a reference to a canonical URL on a FHIR resource
  @JsonValue('canonical')
  canonical,

  /// Display: code
  /// Definition: A string which has at least one character and no leading or trailing whitespace and where there is no whitespace other than single spaces in the contents
  @JsonValue('code')
  code,

  /// Display: date
  /// Definition: A date or partial date (e.g. just year or year + month). There is no time zone. The format is a union of the schema types gYear, gYearMonth and date.  Dates SHALL be valid dates.
  @JsonValue('date')
  date,

  /// Display: dateTime
  /// Definition: A date, date-time or partial date (e.g. just year or year + month).  If hours and minutes are specified, a time zone SHALL be populated. The format is a union of the schema types gYear, gYearMonth, date and dateTime. Seconds must be provided due to schema type constraints but may be zero-filled and may be ignored.                 Dates SHALL be valid dates.
  @JsonValue('dateTime')
  dateTime,

  /// Display: decimal
  /// Definition: A rational number with implicit precision
  @JsonValue('decimal')
  decimal,

  /// Display: id
  /// Definition: Any combination of letters, numerals, "-" and ".", with a length limit of 64 characters.  (This might be an integer, an unprefixed OID, UUID or any other identifier pattern that meets these constraints.)  Ids are case-insensitive.
  @JsonValue('id')
  id,

  /// Display: instant
  /// Definition: An instant in time - known at least to the second
  @JsonValue('instant')
  instant,

  /// Display: integer
  /// Definition: A whole number
  @JsonValue('integer')
  integer,

  /// Display: markdown
  /// Definition: A string that may contain Github Flavored Markdown syntax for optional processing by a mark down presentation engine
  @JsonValue('markdown')
  markdown,

  /// Display: oid
  /// Definition: An OID represented as a URI
  @JsonValue('oid')
  oid,

  /// Display: positiveInt
  /// Definition: An integer with a value that is positive (e.g. >0)
  @JsonValue('positiveInt')
  positiveInt,

  /// Display: string
  /// Definition: A sequence of Unicode characters
  @JsonValue('string')
  string,

  /// Display: time
  /// Definition: A time during the day, with no date specified
  @JsonValue('time')
  time,

  /// Display: unsignedInt
  /// Definition: An integer with a value that is not negative (e.g. >= 0)
  @JsonValue('unsignedInt')
  unsignedInt,

  /// Display: uri
  /// Definition: String of characters used to identify a name or a resource
  @JsonValue('uri')
  uri,

  /// Display: url
  /// Definition: A URI that is a literal reference
  @JsonValue('url')
  url,

  /// Display: uuid
  /// Definition: A UUID, represented as a URI
  @JsonValue('uuid')
  uuid,

  /// Display: XHTML
  /// Definition: XHTML format, as defined by W3C, but restricted usage (mainly, no active content)
  @JsonValue('xhtml')
  xhtml,

  /// Display: Resource
  /// Definition: --- Abstract Type! ---This is the base resource type for everything.
  @JsonValue('Resource')
  Resource,

  /// Display: Type
  /// Definition: A place holder that means any kind of data type
  @JsonValue('Type')
  Type,

  /// Display: Any
  /// Definition: A place holder that means any kind of resource
  @JsonValue('Any')
  Any,
  ;

  @override
  String toString() {
    switch (this) {
      case Address:
        return 'Address';
      case Age:
        return 'Age';
      case Annotation:
        return 'Annotation';
      case Attachment:
        return 'Attachment';
      case BackboneElement:
        return 'BackboneElement';
      case CodeableConcept:
        return 'CodeableConcept';
      case CodeableReference:
        return 'CodeableReference';
      case Coding:
        return 'Coding';
      case ContactDetail:
        return 'ContactDetail';
      case ContactPoint:
        return 'ContactPoint';
      case Contributor:
        return 'Contributor';
      case Count:
        return 'Count';
      case DataRequirement:
        return 'DataRequirement';
      case Distance:
        return 'Distance';
      case Dosage:
        return 'Dosage';
      case Duration:
        return 'Duration';
      case Element:
        return 'Element';
      case ElementDefinition:
        return 'ElementDefinition';
      case Expression:
        return 'Expression';
      case Extension:
        return 'Extension';
      case HumanName:
        return 'HumanName';
      case Identifier:
        return 'Identifier';
      case MarketingStatus:
        return 'MarketingStatus';
      case Meta:
        return 'Meta';
      case Money:
        return 'Money';
      case MoneyQuantity:
        return 'MoneyQuantity';
      case Narrative:
        return 'Narrative';
      case ParameterDefinition:
        return 'ParameterDefinition';
      case Period:
        return 'Period';
      case Population:
        return 'Population';
      case ProdCharacteristic:
        return 'ProdCharacteristic';
      case ProductShelfLife:
        return 'ProductShelfLife';
      case Quantity:
        return 'Quantity';
      case Range:
        return 'Range';
      case Ratio:
        return 'Ratio';
      case RatioRange:
        return 'RatioRange';
      case Reference:
        return 'Reference';
      case RelatedArtifact:
        return 'RelatedArtifact';
      case SampledData:
        return 'SampledData';
      case Signature:
        return 'Signature';
      case SimpleQuantity:
        return 'SimpleQuantity';
      case Timing:
        return 'Timing';
      case TriggerDefinition:
        return 'TriggerDefinition';
      case UsageContext:
        return 'UsageContext';
      case base64Binary:
        return 'base64Binary';
      case boolean:
        return 'boolean';
      case canonical:
        return 'canonical';
      case code:
        return 'code';
      case date:
        return 'date';
      case dateTime:
        return 'dateTime';
      case decimal:
        return 'decimal';
      case id:
        return 'id';
      case instant:
        return 'instant';
      case integer:
        return 'integer';
      case markdown:
        return 'markdown';
      case oid:
        return 'oid';
      case positiveInt:
        return 'positiveInt';
      case string:
        return 'string';
      case time:
        return 'time';
      case unsignedInt:
        return 'unsignedInt';
      case uri:
        return 'uri';
      case url:
        return 'url';
      case uuid:
        return 'uuid';
      case xhtml:
        return 'xhtml';
      case Resource:
        return 'Resource';
      case Type:
        return 'Type';
      case Any:
        return 'Any';
    }
  }

  String toJson() => toString();
  FHIRAllTypes fromString(String str) {
    switch (str) {
      case 'Address':
        return FHIRAllTypes.Address;
      case 'Age':
        return FHIRAllTypes.Age;
      case 'Annotation':
        return FHIRAllTypes.Annotation;
      case 'Attachment':
        return FHIRAllTypes.Attachment;
      case 'BackboneElement':
        return FHIRAllTypes.BackboneElement;
      case 'CodeableConcept':
        return FHIRAllTypes.CodeableConcept;
      case 'CodeableReference':
        return FHIRAllTypes.CodeableReference;
      case 'Coding':
        return FHIRAllTypes.Coding;
      case 'ContactDetail':
        return FHIRAllTypes.ContactDetail;
      case 'ContactPoint':
        return FHIRAllTypes.ContactPoint;
      case 'Contributor':
        return FHIRAllTypes.Contributor;
      case 'Count':
        return FHIRAllTypes.Count;
      case 'DataRequirement':
        return FHIRAllTypes.DataRequirement;
      case 'Distance':
        return FHIRAllTypes.Distance;
      case 'Dosage':
        return FHIRAllTypes.Dosage;
      case 'Duration':
        return FHIRAllTypes.Duration;
      case 'Element':
        return FHIRAllTypes.Element;
      case 'ElementDefinition':
        return FHIRAllTypes.ElementDefinition;
      case 'Expression':
        return FHIRAllTypes.Expression;
      case 'Extension':
        return FHIRAllTypes.Extension;
      case 'HumanName':
        return FHIRAllTypes.HumanName;
      case 'Identifier':
        return FHIRAllTypes.Identifier;
      case 'MarketingStatus':
        return FHIRAllTypes.MarketingStatus;
      case 'Meta':
        return FHIRAllTypes.Meta;
      case 'Money':
        return FHIRAllTypes.Money;
      case 'MoneyQuantity':
        return FHIRAllTypes.MoneyQuantity;
      case 'Narrative':
        return FHIRAllTypes.Narrative;
      case 'ParameterDefinition':
        return FHIRAllTypes.ParameterDefinition;
      case 'Period':
        return FHIRAllTypes.Period;
      case 'Population':
        return FHIRAllTypes.Population;
      case 'ProdCharacteristic':
        return FHIRAllTypes.ProdCharacteristic;
      case 'ProductShelfLife':
        return FHIRAllTypes.ProductShelfLife;
      case 'Quantity':
        return FHIRAllTypes.Quantity;
      case 'Range':
        return FHIRAllTypes.Range;
      case 'Ratio':
        return FHIRAllTypes.Ratio;
      case 'RatioRange':
        return FHIRAllTypes.RatioRange;
      case 'Reference':
        return FHIRAllTypes.Reference;
      case 'RelatedArtifact':
        return FHIRAllTypes.RelatedArtifact;
      case 'SampledData':
        return FHIRAllTypes.SampledData;
      case 'Signature':
        return FHIRAllTypes.Signature;
      case 'SimpleQuantity':
        return FHIRAllTypes.SimpleQuantity;
      case 'Timing':
        return FHIRAllTypes.Timing;
      case 'TriggerDefinition':
        return FHIRAllTypes.TriggerDefinition;
      case 'UsageContext':
        return FHIRAllTypes.UsageContext;
      case 'base64Binary':
        return FHIRAllTypes.base64Binary;
      case 'boolean':
        return FHIRAllTypes.boolean;
      case 'canonical':
        return FHIRAllTypes.canonical;
      case 'code':
        return FHIRAllTypes.code;
      case 'date':
        return FHIRAllTypes.date;
      case 'dateTime':
        return FHIRAllTypes.dateTime;
      case 'decimal':
        return FHIRAllTypes.decimal;
      case 'id':
        return FHIRAllTypes.id;
      case 'instant':
        return FHIRAllTypes.instant;
      case 'integer':
        return FHIRAllTypes.integer;
      case 'markdown':
        return FHIRAllTypes.markdown;
      case 'oid':
        return FHIRAllTypes.oid;
      case 'positiveInt':
        return FHIRAllTypes.positiveInt;
      case 'string':
        return FHIRAllTypes.string;
      case 'time':
        return FHIRAllTypes.time;
      case 'unsignedInt':
        return FHIRAllTypes.unsignedInt;
      case 'uri':
        return FHIRAllTypes.uri;
      case 'url':
        return FHIRAllTypes.url;
      case 'uuid':
        return FHIRAllTypes.uuid;
      case 'xhtml':
        return FHIRAllTypes.xhtml;
      case 'Resource':
        return FHIRAllTypes.Resource;
      case 'Type':
        return FHIRAllTypes.Type;
      case 'Any':
        return FHIRAllTypes.Any;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  FHIRAllTypes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
