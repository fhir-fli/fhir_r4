import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class OperationDefinition {
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
  final String version;
  final PrimitiveElement Version;
  final String name;
  final PrimitiveElement Name;
  final String title;
  final PrimitiveElement Title;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirCode kind;
  final PrimitiveElement Kind;
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
  final FhirBoolean affectsState;
  final PrimitiveElement AffectsState;
  final FhirCode code;
  final PrimitiveElement Code;
  final FhirMarkdown comment;
  final PrimitiveElement Comment;
  final FhirCanonical base;
  final List<FhirCode> resource;
  final List<PrimitiveElement> Resource;
  final FhirBoolean system;
  final PrimitiveElement System;
  final FhirBoolean type;
  final PrimitiveElement Type;
  final FhirBoolean instance;
  final PrimitiveElement Instance;
  final FhirCanonical inputProfile;
  final FhirCanonical outputProfile;
  final List<OperationDefinitionParameter> parameter;
  final List<OperationDefinitionOverload> overload;
}

@Data()
@JsonCodable()
class OperationDefinitionParameter {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode name;
  final PrimitiveElement Name;
  final FhirCode use;
  final PrimitiveElement Use;
  final FhirInteger min;
  final PrimitiveElement Min;
  final String max;
  final PrimitiveElement Max;
  final String documentation;
  final PrimitiveElement Documentation;
  final FhirCode type;
  final PrimitiveElement Type;
  final List<FhirCanonical> targetProfile;
  final FhirCode searchType;
  final PrimitiveElement SearchType;
  final OperationDefinitionBinding binding;
  final List<OperationDefinitionReferencedFrom> referencedFrom;
  final List<OperationDefinitionParameter> part;
}

@Data()
@JsonCodable()
class OperationDefinitionBinding {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode strength;
  final PrimitiveElement Strength;
  final FhirCanonical valueSet;
}

@Data()
@JsonCodable()
class OperationDefinitionReferencedFrom {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String source;
  final PrimitiveElement Source;
  final String sourceId;
  final PrimitiveElement SourceId;
}

@Data()
@JsonCodable()
class OperationDefinitionOverload {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<String> parameterName;
  final List<PrimitiveElement> ParameterName;
  final String comment;
  final PrimitiveElement Comment;
}

@Data()
@JsonCodable()
class OperationOutcome {
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
  final List<OperationOutcomeIssue> issue;
}

@Data()
@JsonCodable()
class OperationOutcomeIssue {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode severity;
  final PrimitiveElement Severity;
  final FhirCode code;
  final PrimitiveElement Code;
  final CodeableConcept details;
  final String diagnostics;
  final PrimitiveElement Diagnostics;
  final List<String> location;
  final List<PrimitiveElement> Location;
  final List<String> expression;
  final List<PrimitiveElement> Expression;
}


