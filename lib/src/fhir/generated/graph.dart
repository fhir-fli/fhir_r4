import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class GraphDefinition {
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
  final FhirCode start;
  final PrimitiveElement startElement;
  final FhirCanonical profile;
  final List<GraphDefinitionLink> link;
}

@Data()
@JsonCodable()
class GraphDefinitionLink {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String path;
  final PrimitiveElement pathElement;
  final String sliceName;
  final PrimitiveElement sliceNameElement;
  final FhirInteger min;
  final PrimitiveElement minElement;
  final String max;
  final PrimitiveElement maxElement;
  final String description;
  final PrimitiveElement descriptionElement;
  final List<GraphDefinitionTarget> target;
}

@Data()
@JsonCodable()
class GraphDefinitionTarget {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final String params;
  final PrimitiveElement paramsElement;
  final FhirCanonical profile;
  final List<GraphDefinitionCompartment> compartment;
  final List<GraphDefinitionLink> link;
}

@Data()
@JsonCodable()
class GraphDefinitionCompartment {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode use;
  final PrimitiveElement useElement;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final FhirCode rule;
  final PrimitiveElement ruleElement;
  final String expression;
  final PrimitiveElement expressionElement;
  final String description;
  final PrimitiveElement descriptionElement;
}


