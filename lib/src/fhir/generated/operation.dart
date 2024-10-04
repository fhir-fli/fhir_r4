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
}


