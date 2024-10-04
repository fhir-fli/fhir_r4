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
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement urlElement;
  final String version;
  final PrimitiveElement versionElement;
  final String name;
  final PrimitiveElement nameElement;
  final String title;
  final PrimitiveElement titleElement;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirCode kind;
  final PrimitiveElement kindElement;
  final FhirBoolean experimental;
  final PrimitiveElement experimentalElement;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final String publisher;
  final PrimitiveElement publisherElement;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement purposeElement;
  final FhirBoolean affectsState;
  final PrimitiveElement affectsStateElement;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final FhirMarkdown comment;
  final PrimitiveElement commentElement;
  final FhirCanonical base;
  final List<FhirCode> resource;
  final List<PrimitiveElement> resourceElement;
  final FhirBoolean system;
  final PrimitiveElement systemElement;
  final FhirBoolean type;
  final PrimitiveElement typeElement;
  final FhirBoolean instance;
  final PrimitiveElement instanceElement;
  final FhirCanonical inputProfile;
  final FhirCanonical outputProfile;
  final List<OperationDefinitionParameter> parameter;
  final List<OperationDefinitionOverload> overload;
  const OperationDefinition({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.url,
    required this.urlElement,
    required this.version,
    required this.versionElement,
    required this.name,
    required this.nameElement,
    required this.title,
    required this.titleElement,
    required this.status,
    required this.statusElement,
    required this.kind,
    required this.kindElement,
    required this.experimental,
    required this.experimentalElement,
    required this.date,
    required this.dateElement,
    required this.publisher,
    required this.publisherElement,
    required this.contact,
    required this.description,
    required this.descriptionElement,
    required this.useContext,
    required this.jurisdiction,
    required this.purpose,
    required this.purposeElement,
    required this.affectsState,
    required this.affectsStateElement,
    required this.code,
    required this.codeElement,
    required this.comment,
    required this.commentElement,
    required this.base,
    required this.resource,
    required this.resourceElement,
    required this.system,
    required this.systemElement,
    required this.type,
    required this.typeElement,
    required this.instance,
    required this.instanceElement,
    required this.inputProfile,
    required this.outputProfile,
    required this.parameter,
    required this.overload,
  });
}

@Data()
@JsonCodable()
class OperationDefinitionParameter {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode name;
  final PrimitiveElement nameElement;
  final FhirCode use;
  final PrimitiveElement useElement;
  final FhirInteger min;
  final PrimitiveElement minElement;
  final String max;
  final PrimitiveElement maxElement;
  final String documentation;
  final PrimitiveElement documentationElement;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final List<FhirCanonical> targetProfile;
  final FhirCode searchType;
  final PrimitiveElement searchTypeElement;
  final OperationDefinitionBinding binding;
  final List<OperationDefinitionReferencedFrom> referencedFrom;
  final List<OperationDefinitionParameter> part_;
  const OperationDefinitionParameter({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.name,
    required this.nameElement,
    required this.use,
    required this.useElement,
    required this.min,
    required this.minElement,
    required this.max,
    required this.maxElement,
    required this.documentation,
    required this.documentationElement,
    required this.type,
    required this.typeElement,
    required this.targetProfile,
    required this.searchType,
    required this.searchTypeElement,
    required this.binding,
    required this.referencedFrom,
    required this.part_,
  });
}

@Data()
@JsonCodable()
class OperationDefinitionBinding {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode strength;
  final PrimitiveElement strengthElement;
  final FhirCanonical valueSet;
  const OperationDefinitionBinding({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.strength,
    required this.strengthElement,
    required this.valueSet,
  });
}

@Data()
@JsonCodable()
class OperationDefinitionReferencedFrom {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String source;
  final PrimitiveElement sourceElement;
  final String sourceId;
  final PrimitiveElement sourceIdElement;
  const OperationDefinitionReferencedFrom({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.source,
    required this.sourceElement,
    required this.sourceId,
    required this.sourceIdElement,
  });
}

@Data()
@JsonCodable()
class OperationDefinitionOverload {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<String> parameterName;
  final List<PrimitiveElement> parameterNameElement;
  final String comment;
  final PrimitiveElement commentElement;
  const OperationDefinitionOverload({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.parameterName,
    required this.parameterNameElement,
    required this.comment,
    required this.commentElement,
  });
}

@Data()
@JsonCodable()
class OperationOutcome {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<OperationOutcomeIssue> issue;
  const OperationOutcome({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.issue,
  });
}

@Data()
@JsonCodable()
class OperationOutcomeIssue {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode severity;
  final PrimitiveElement severityElement;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final CodeableConcept details;
  final String diagnostics;
  final PrimitiveElement diagnosticsElement;
  final List<String> location;
  final List<PrimitiveElement> locationElement;
  final List<String> expression;
  final List<PrimitiveElement> expressionElement;
  const OperationOutcomeIssue({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.severity,
    required this.severityElement,
    required this.code,
    required this.codeElement,
    required this.details,
    required this.diagnostics,
    required this.diagnosticsElement,
    required this.location,
    required this.locationElement,
    required this.expression,
    required this.expressionElement,
  });
}


