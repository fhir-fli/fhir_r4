import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class TerminologyCapabilities extends DomainResource {
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
  final FhirMarkdown? copyright;
  final Element? copyrightElement;
  final FhirCode? kind;
  final Element? kindElement;
  final TerminologyCapabilitiesSoftware? software;
  final TerminologyCapabilitiesImplementation? implementation;
  final FhirBoolean? lockedDate;
  final Element? lockedDateElement;
  final List<TerminologyCapabilitiesCodeSystem>? codeSystem;
  final TerminologyCapabilitiesExpansion? expansion;
  final FhirCode? codeSearch;
  final Element? codeSearchElement;
  final TerminologyCapabilitiesValidateCode? validateCode;
  final TerminologyCapabilitiesTranslation? translation;
  final TerminologyCapabilitiesClosure? closure;

  TerminologyCapabilities({
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
    this.copyright,
    this.copyrightElement,
    this.kind,
    this.kindElement,
    this.software,
    this.implementation,
    this.lockedDate,
    this.lockedDateElement,
    this.codeSystem,
    this.expansion,
    this.codeSearch,
    this.codeSearchElement,
    this.validateCode,
    this.translation,
    this.closure,
  }): super(resourceType: R4ResourceType.TerminologyCapabilities);

@override
TerminologyCapabilities clone() => this;

}


@Data()
@JsonCodable()
class TerminologyCapabilitiesSoftware {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? version;
  final Element? versionElement;

  TerminologyCapabilitiesSoftware({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.nameElement,
    this.version,
    this.versionElement,
  });

}


@Data()
@JsonCodable()
class TerminologyCapabilitiesImplementation {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirUrl? url;
  final Element? urlElement;

  TerminologyCapabilitiesImplementation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.descriptionElement,
    this.url,
    this.urlElement,
  });

}


@Data()
@JsonCodable()
class TerminologyCapabilitiesCodeSystem {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCanonical? uri;
  final List<TerminologyCapabilitiesVersion>? version;
  final FhirBoolean? subsumption;
  final Element? subsumptionElement;

  TerminologyCapabilitiesCodeSystem({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.uri,
    this.version,
    this.subsumption,
    this.subsumptionElement,
  });

}


@Data()
@JsonCodable()
class TerminologyCapabilitiesVersion {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? code;
  final Element? codeElement;
  final FhirBoolean? isDefault;
  final Element? isDefaultElement;
  final FhirBoolean? compositional;
  final Element? compositionalElement;
  final List<FhirCode>? language;
  final List<Element>? languageElement;
  final List<TerminologyCapabilitiesFilter>? filter;
  final List<FhirCode>? property;
  final List<Element>? propertyElement;

  TerminologyCapabilitiesVersion({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.codeElement,
    this.isDefault,
    this.isDefaultElement,
    this.compositional,
    this.compositionalElement,
    this.language,
    this.languageElement,
    this.filter,
    this.property,
    this.propertyElement,
  });

}


@Data()
@JsonCodable()
class TerminologyCapabilitiesFilter {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? code;
  final Element? codeElement;
  final List<FhirCode>? op;
  final List<Element>? opElement;

  TerminologyCapabilitiesFilter({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.codeElement,
    this.op,
    this.opElement,
  });

}


@Data()
@JsonCodable()
class TerminologyCapabilitiesExpansion {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirBoolean? hierarchical;
  final Element? hierarchicalElement;
  final FhirBoolean? paging;
  final Element? pagingElement;
  final FhirBoolean? incomplete;
  final Element? incompleteElement;
  final List<TerminologyCapabilitiesParameter>? parameter;
  final FhirMarkdown? textFilter;
  final Element? textFilterElement;

  TerminologyCapabilitiesExpansion({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.hierarchical,
    this.hierarchicalElement,
    this.paging,
    this.pagingElement,
    this.incomplete,
    this.incompleteElement,
    this.parameter,
    this.textFilter,
    this.textFilterElement,
  });

}


@Data()
@JsonCodable()
class TerminologyCapabilitiesParameter {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? name;
  final Element? nameElement;
  final FhirString? documentation;
  final Element? documentationElement;

  TerminologyCapabilitiesParameter({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.nameElement,
    this.documentation,
    this.documentationElement,
  });

}


@Data()
@JsonCodable()
class TerminologyCapabilitiesValidateCode {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirBoolean? translations;
  final Element? translationsElement;

  TerminologyCapabilitiesValidateCode({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.translations,
    this.translationsElement,
  });

}


@Data()
@JsonCodable()
class TerminologyCapabilitiesTranslation {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirBoolean? needsMap;
  final Element? needsMapElement;

  TerminologyCapabilitiesTranslation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.needsMap,
    this.needsMapElement,
  });

}


@Data()
@JsonCodable()
class TerminologyCapabilitiesClosure {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirBoolean? translation;
  final Element? translationElement;

  TerminologyCapabilitiesClosure({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.translation,
    this.translationElement,
  });

}



