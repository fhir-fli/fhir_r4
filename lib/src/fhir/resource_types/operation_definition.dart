import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class OperationDefinition extends DomainResource {
  OperationDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.url,
    this.urlElement,
    this.version,
    this.versionElement,
    required this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    required this.status,
    this.statusElement,
    required this.kind,
    this.kindElement,
    this.experimental,
    this.experimentalElement,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.purposeElement,
    this.affectsState,
    this.affectsStateElement,
    required this.code,
    this.codeElement,
    this.comment,
    this.commentElement,
    this.base,
    this.baseElement,
    this.resource,
    this.resourceElement,
    required this.system,
    this.systemElement,
    required this.type,
    this.typeElement,
    required this.instance,
    this.instanceElement,
    this.inputProfile,
    this.inputProfileElement,
    this.outputProfile,
    this.outputProfileElement,
    this.parameter,
    this.overload,
  }) : super(resourceType: R4ResourceType.OperationDefinition);

  final FhirUri? url;
  final Element? urlElement;
  final FhirString? version;
  final Element? versionElement;
  final FhirString name;
  final Element? nameElement;
  final FhirString? title;
  final Element? titleElement;
  final FhirCode status;
  final Element? statusElement;
  final FhirCode kind;
  final Element? kindElement;
  final FhirBoolean? experimental;
  final Element? experimentalElement;
  final FhirDateTime? date;
  final Element? dateElement;
  final FhirString? publisher;
  final Element? publisherElement;
  final List<ContactDetail>? contact;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<UsageContext>? useContext;
  final List<CodeableConcept>? jurisdiction;
  final FhirMarkdown? purpose;
  final Element? purposeElement;
  final FhirBoolean? affectsState;
  final Element? affectsStateElement;
  final FhirCode code;
  final Element? codeElement;
  final FhirMarkdown? comment;
  final Element? commentElement;
  final FhirCanonical? base;
  final Element? baseElement;
  final List<FhirCode>? resource;
  final List<Element>? resourceElement;
  final FhirBoolean system;
  final Element? systemElement;
  final FhirBoolean type;
  final Element? typeElement;
  final FhirBoolean instance;
  final Element? instanceElement;
  final FhirCanonical? inputProfile;
  final Element? inputProfileElement;
  final FhirCanonical? outputProfile;
  final Element? outputProfileElement;
  final List<OperationDefinitionParameter>? parameter;
  final List<OperationDefinitionOverload>? overload;
  @override
  OperationDefinition clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class OperationDefinitionParameter extends BackboneElement {
  OperationDefinitionParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    required this.use,
    this.useElement,
    required this.min,
    this.minElement,
    required this.max,
    this.maxElement,
    this.documentation,
    this.documentationElement,
    this.type,
    this.typeElement,
    this.targetProfile,
    this.targetProfileElement,
    this.searchType,
    this.searchTypeElement,
    this.binding,
    this.referencedFrom,
    this.part_,
  });

  final FhirCode name;
  final Element? nameElement;
  final FhirCode use;
  final Element? useElement;
  final FhirInteger min;
  final Element? minElement;
  final FhirString max;
  final Element? maxElement;
  final FhirString? documentation;
  final Element? documentationElement;
  final FhirCode? type;
  final Element? typeElement;
  final List<FhirCanonical>? targetProfile;
  final List<Element>? targetProfileElement;
  final FhirCode? searchType;
  final Element? searchTypeElement;
  final OperationDefinitionBinding? binding;
  final List<OperationDefinitionReferencedFrom>? referencedFrom;
  final List<OperationDefinitionParameter>? part_;
  @override
  OperationDefinitionParameter clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class OperationDefinitionBinding extends BackboneElement {
  OperationDefinitionBinding({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.strength,
    this.strengthElement,
    required this.valueSet,
    this.valueSetElement,
  });

  final FhirCode strength;
  final Element? strengthElement;
  final FhirCanonical valueSet;
  final Element? valueSetElement;
  @override
  OperationDefinitionBinding clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class OperationDefinitionReferencedFrom extends BackboneElement {
  OperationDefinitionReferencedFrom({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.source,
    this.sourceElement,
    this.sourceId,
    this.sourceIdElement,
  });

  final FhirString source;
  final Element? sourceElement;
  final FhirString? sourceId;
  final Element? sourceIdElement;
  @override
  OperationDefinitionReferencedFrom clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class OperationDefinitionOverload extends BackboneElement {
  OperationDefinitionOverload({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.parameterName,
    this.parameterNameElement,
    this.comment,
    this.commentElement,
  });

  final List<FhirString>? parameterName;
  final List<Element>? parameterNameElement;
  final FhirString? comment;
  final Element? commentElement;
  @override
  OperationDefinitionOverload clone() => throw UnimplementedError();
}
