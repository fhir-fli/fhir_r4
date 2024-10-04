import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class StructureDefinition {
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
  final FhirUri url;
  final PrimitiveElement Url;
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement Version;
  final String name;
  final PrimitiveElement Name;
  final String title;
  final PrimitiveElement Title;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirBoolean experimental;
  final PrimitiveElement Experimental;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement Purpose;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  final List<Coding> keyword;
  final FhirCode fhirVersion;
  final PrimitiveElement FhirVersion;
  final List<StructureDefinitionMapping> mapping;
  final FhirCode kind;
  final PrimitiveElement Kind;
  final FhirBoolean abstract;
  final PrimitiveElement Abstract;
  final List<StructureDefinitionContext> context;
  final List<String> contextInvariant;
  final List<PrimitiveElement> ContextInvariant;
  final FhirUri type;
  final PrimitiveElement Type;
  final FhirCanonical baseDefinition;
  final FhirCode derivation;
  final PrimitiveElement Derivation;
  final StructureDefinitionSnapshot snapshot;
  final StructureDefinitionDifferential differential;
}

@Data()
@JsonCodable()
class StructureDefinitionMapping {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirId identity;
  final PrimitiveElement Identity;
  final FhirUri uri;
  final PrimitiveElement Uri;
  final String name;
  final PrimitiveElement Name;
  final String comment;
  final PrimitiveElement Comment;
}

@Data()
@JsonCodable()
class StructureDefinitionContext {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final String expression;
  final PrimitiveElement Expression;
}

@Data()
@JsonCodable()
class StructureDefinitionSnapshot {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<ElementDefinition> element;
}

@Data()
@JsonCodable()
class StructureDefinitionDifferential {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<ElementDefinition> element;
}

@Data()
@JsonCodable()
class StructureMap {
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
  final FhirUri url;
  final PrimitiveElement Url;
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement Version;
  final String name;
  final PrimitiveElement Name;
  final String title;
  final PrimitiveElement Title;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirBoolean experimental;
  final PrimitiveElement Experimental;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement Purpose;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  final List<StructureMapStructure> structure;
  final List<FhirCanonical> import;
  final List<StructureMapGroup> group;
}

@Data()
@JsonCodable()
class StructureMapStructure {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCanonical url;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final String alias;
  final PrimitiveElement Alias;
  final String documentation;
  final PrimitiveElement Documentation;
}

@Data()
@JsonCodable()
class StructureMapGroup {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirId name;
  final PrimitiveElement Name;
  final FhirId extends;
  final PrimitiveElement Extends;
  final FhirCode typeMode;
  final PrimitiveElement TypeMode;
  final String documentation;
  final PrimitiveElement Documentation;
  final List<StructureMapInput> input;
  final List<StructureMapRule> rule;
}

@Data()
@JsonCodable()
class StructureMapInput {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirId name;
  final PrimitiveElement Name;
  final String type;
  final PrimitiveElement Type;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final String documentation;
  final PrimitiveElement Documentation;
}

@Data()
@JsonCodable()
class StructureMapRule {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirId name;
  final PrimitiveElement Name;
  final List<StructureMapSource> source;
  final List<StructureMapTarget> target;
  final List<StructureMapRule> rule;
  final List<StructureMapDependent> dependent;
  final String documentation;
  final PrimitiveElement Documentation;
}

@Data()
@JsonCodable()
class StructureMapSource {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirId context;
  final PrimitiveElement Context;
  final FhirInteger min;
  final PrimitiveElement Min;
  final String max;
  final PrimitiveElement Max;
  final String type;
  final PrimitiveElement Type;
  final String defaultValueBase64Binary;
  final PrimitiveElement DefaultValueBase64Binary;
  final bool defaultValueBoolean;
  final PrimitiveElement DefaultValueBoolean;
  final String defaultValueCanonical;
  final PrimitiveElement DefaultValueCanonical;
  final String defaultValueCode;
  final PrimitiveElement DefaultValueCode;
  final String defaultValueDate;
  final PrimitiveElement DefaultValueDate;
  final String defaultValueDateTime;
  final PrimitiveElement DefaultValueDateTime;
  final double defaultValueDecimal;
  final PrimitiveElement DefaultValueDecimal;
  final String defaultValueId;
  final PrimitiveElement DefaultValueId;
  final String defaultValueInstant;
  final PrimitiveElement DefaultValueInstant;
  final double defaultValueInteger;
  final PrimitiveElement DefaultValueInteger;
  final String defaultValueMarkdown;
  final PrimitiveElement DefaultValueMarkdown;
  final String defaultValueOid;
  final PrimitiveElement DefaultValueOid;
  final double defaultValuePositiveInt;
  final PrimitiveElement DefaultValuePositiveInt;
  final String defaultValueString;
  final PrimitiveElement DefaultValueString;
  final String defaultValueTime;
  final PrimitiveElement DefaultValueTime;
  final double defaultValueUnsignedInt;
  final PrimitiveElement DefaultValueUnsignedInt;
  final String defaultValueUri;
  final PrimitiveElement DefaultValueUri;
  final String defaultValueUrl;
  final PrimitiveElement DefaultValueUrl;
  final String defaultValueUuid;
  final PrimitiveElement DefaultValueUuid;
  final Address defaultValueAddress;
  final Age defaultValueAge;
  final Annotation defaultValueAnnotation;
  final Attachment defaultValueAttachment;
  final CodeableConcept defaultValueCodeableConcept;
  final Coding defaultValueCoding;
  final ContactPoint defaultValueContactPoint;
  final Count defaultValueCount;
  final Distance defaultValueDistance;
  final FhirDuration defaultValueDuration;
  final HumanName defaultValueHumanName;
  final Identifier defaultValueIdentifier;
  final Money defaultValueMoney;
  final Period defaultValuePeriod;
  final Quantity defaultValueQuantity;
  final Range defaultValueRange;
  final Ratio defaultValueRatio;
  final Reference defaultValueReference;
  final SampledData defaultValueSampledData;
  final Signature defaultValueSignature;
  final Timing defaultValueTiming;
  final ContactDetail defaultValueContactDetail;
  final Contributor defaultValueContributor;
  final DataRequirement defaultValueDataRequirement;
  final FhirExpression defaultValueExpression;
  final ParameterDefinition defaultValueParameterDefinition;
  final RelatedArtifact defaultValueRelatedArtifact;
  final TriggerDefinition defaultValueTriggerDefinition;
  final UsageContext defaultValueUsageContext;
  final Dosage defaultValueDosage;
  final FhirMeta defaultValueMeta;
  final String element;
  final PrimitiveElement Element;
  final FhirCode listMode;
  final PrimitiveElement ListMode;
  final FhirId variable;
  final PrimitiveElement Variable;
  final String condition;
  final PrimitiveElement Condition;
  final String check;
  final PrimitiveElement Check;
  final String logMessage;
  final PrimitiveElement LogMessage;
}

@Data()
@JsonCodable()
class StructureMapTarget {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirId context;
  final PrimitiveElement Context;
  final FhirCode contextType;
  final PrimitiveElement ContextType;
  final String element;
  final PrimitiveElement Element;
  final FhirId variable;
  final PrimitiveElement Variable;
  final List<FhirCode> listMode;
  final List<PrimitiveElement> ListMode;
  final FhirId listRuleId;
  final PrimitiveElement ListRuleId;
  final FhirCode transform;
  final PrimitiveElement Transform;
  final List<StructureMapParameter> parameter;
}

@Data()
@JsonCodable()
class StructureMapParameter {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String valueId;
  final PrimitiveElement ValueId;
  final String valueString;
  final PrimitiveElement ValueString;
  final bool valueBoolean;
  final PrimitiveElement ValueBoolean;
  final double valueInteger;
  final PrimitiveElement ValueInteger;
  final double valueDecimal;
  final PrimitiveElement ValueDecimal;
}

@Data()
@JsonCodable()
class StructureMapDependent {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirId name;
  final PrimitiveElement Name;
  final List<String> variable;
  final List<PrimitiveElement> Variable;
}


