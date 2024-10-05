import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class OperationDefinition extends DomainResource {
  final FhirUri? url;
  final Element? urlElement;
  final FhirString? version;
  final Element? versionElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? title;
  final Element? titleElement;
  final FhirCode? status;
  final Element? statusElement;
  final FhirCode? kind;
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
  final FhirCode? code;
  final Element? codeElement;
  final FhirMarkdown? comment;
  final Element? commentElement;
  final FhirCanonical? base;
  final List<FhirCode>? resource;
  final List<Element>? resourceElement;
  final FhirBoolean? system;
  final Element? systemElement;
  final FhirBoolean? type;
  final Element? typeElement;
  final FhirBoolean? instance;
  final Element? instanceElement;
  final FhirCanonical? inputProfile;
  final FhirCanonical? outputProfile;
  final List<OperationDefinitionParameter>? parameter;
  final List<OperationDefinitionOverload>? overload;

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
    this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    this.status,
    this.statusElement,
    this.kind,
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
    this.code,
    this.codeElement,
    this.comment,
    this.commentElement,
    this.base,
    this.resource,
    this.resourceElement,
    this.system,
    this.systemElement,
    this.type,
    this.typeElement,
    this.instance,
    this.instanceElement,
    this.inputProfile,
    this.outputProfile,
    this.parameter,
    this.overload,
  }): super(resourceType: R4ResourceType.OperationDefinition);

@override
OperationDefinition clone() => this;

}


@Data()
@JsonCodable()
class OperationDefinitionParameter {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? name;
  final Element? nameElement;
  final FhirCode? use;
  final Element? useElement;
  final FhirInteger? min;
  final Element? minElement;
  final FhirString? max;
  final Element? maxElement;
  final FhirString? documentation;
  final Element? documentationElement;
  final FhirCode? type;
  final Element? typeElement;
  final List<FhirCanonical>? targetProfile;
  final FhirCode? searchType;
  final Element? searchTypeElement;
  final OperationDefinitionBinding? binding;
  final List<OperationDefinitionReferencedFrom>? referencedFrom;
  final List<OperationDefinitionParameter>? part_;

  OperationDefinitionParameter({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.nameElement,
    this.use,
    this.useElement,
    this.min,
    this.minElement,
    this.max,
    this.maxElement,
    this.documentation,
    this.documentationElement,
    this.type,
    this.typeElement,
    this.targetProfile,
    this.searchType,
    this.searchTypeElement,
    this.binding,
    this.referencedFrom,
    this.part_,
  });

}


@Data()
@JsonCodable()
class OperationDefinitionBinding {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? strength;
  final Element? strengthElement;
  final FhirCanonical valueSet;

  OperationDefinitionBinding({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.strength,
    this.strengthElement,
    required this.valueSet,
  });

}


@Data()
@JsonCodable()
class OperationDefinitionReferencedFrom {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? source;
  final Element? sourceElement;
  final FhirString? sourceId;
  final Element? sourceIdElement;

  OperationDefinitionReferencedFrom({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.source,
    this.sourceElement,
    this.sourceId,
    this.sourceIdElement,
  });

}


@Data()
@JsonCodable()
class OperationDefinitionOverload {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<FhirString>? parameterName;
  final List<Element>? parameterNameElement;
  final FhirString? comment;
  final Element? commentElement;

  OperationDefinitionOverload({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.parameterName,
    this.parameterNameElement,
    this.comment,
    this.commentElement,
  });

}



