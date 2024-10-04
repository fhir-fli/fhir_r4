import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class TerminologyCapabilities {
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
  final FhirMarkdown copyright;
  final PrimitiveElement copyrightElement;
  final FhirCode kind;
  final PrimitiveElement kindElement;
  final TerminologyCapabilitiesSoftware software;
  final TerminologyCapabilitiesImplementation implementation;
  final FhirBoolean lockedDate;
  final PrimitiveElement lockedDateElement;
  final List<TerminologyCapabilitiesCodeSystem> codeSystem;
  final TerminologyCapabilitiesExpansion expansion;
  final FhirCode codeSearch;
  final PrimitiveElement codeSearchElement;
  final TerminologyCapabilitiesValidateCode validateCode;
  final TerminologyCapabilitiesTranslation translation;
  final TerminologyCapabilitiesClosure closure;
  const TerminologyCapabilities({
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
    required this.copyright,
    required this.copyrightElement,
    required this.kind,
    required this.kindElement,
    required this.software,
    required this.implementation,
    required this.lockedDate,
    required this.lockedDateElement,
    required this.codeSystem,
    required this.expansion,
    required this.codeSearch,
    required this.codeSearchElement,
    required this.validateCode,
    required this.translation,
    required this.closure,
  });
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesSoftware {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement nameElement;
  final String version;
  final PrimitiveElement versionElement;
  const TerminologyCapabilitiesSoftware({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.name,
    required this.nameElement,
    required this.version,
    required this.versionElement,
  });
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesImplementation {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement descriptionElement;
  final FhirUrl url;
  final PrimitiveElement urlElement;
  const TerminologyCapabilitiesImplementation({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.description,
    required this.descriptionElement,
    required this.url,
    required this.urlElement,
  });
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesCodeSystem {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCanonical uri;
  final List<TerminologyCapabilitiesVersion> version;
  final FhirBoolean subsumption;
  final PrimitiveElement subsumptionElement;
  const TerminologyCapabilitiesCodeSystem({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.uri,
    required this.version,
    required this.subsumption,
    required this.subsumptionElement,
  });
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesVersion {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String code;
  final PrimitiveElement codeElement;
  final FhirBoolean isDefault;
  final PrimitiveElement isDefaultElement;
  final FhirBoolean compositional;
  final PrimitiveElement compositionalElement;
  final List<FhirCode> language;
  final List<PrimitiveElement> languageElement;
  final List<TerminologyCapabilitiesFilter> filter;
  final List<FhirCode> property;
  final List<PrimitiveElement> propertyElement;
  const TerminologyCapabilitiesVersion({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.codeElement,
    required this.isDefault,
    required this.isDefaultElement,
    required this.compositional,
    required this.compositionalElement,
    required this.language,
    required this.languageElement,
    required this.filter,
    required this.property,
    required this.propertyElement,
  });
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesFilter {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final List<FhirCode> op;
  final List<PrimitiveElement> opElement;
  const TerminologyCapabilitiesFilter({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.codeElement,
    required this.op,
    required this.opElement,
  });
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesExpansion {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean hierarchical;
  final PrimitiveElement hierarchicalElement;
  final FhirBoolean paging;
  final PrimitiveElement pagingElement;
  final FhirBoolean incomplete;
  final PrimitiveElement incompleteElement;
  final List<TerminologyCapabilitiesParameter> parameter;
  final FhirMarkdown textFilter;
  final PrimitiveElement textFilterElement;
  const TerminologyCapabilitiesExpansion({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.hierarchical,
    required this.hierarchicalElement,
    required this.paging,
    required this.pagingElement,
    required this.incomplete,
    required this.incompleteElement,
    required this.parameter,
    required this.textFilter,
    required this.textFilterElement,
  });
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesParameter {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode name;
  final PrimitiveElement nameElement;
  final String documentation;
  final PrimitiveElement documentationElement;
  const TerminologyCapabilitiesParameter({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.name,
    required this.nameElement,
    required this.documentation,
    required this.documentationElement,
  });
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesValidateCode {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean translations;
  final PrimitiveElement translationsElement;
  const TerminologyCapabilitiesValidateCode({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.translations,
    required this.translationsElement,
  });
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesTranslation {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean needsMap;
  final PrimitiveElement needsMapElement;
  const TerminologyCapabilitiesTranslation({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.needsMap,
    required this.needsMapElement,
  });
}

@Data()
@JsonCodable()
class TerminologyCapabilitiesClosure {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean translation;
  final PrimitiveElement translationElement;
  const TerminologyCapabilitiesClosure({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.translation,
    required this.translationElement,
  });
}


