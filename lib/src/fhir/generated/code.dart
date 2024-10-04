import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class CodeSystem {
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
  final FhirBoolean caseSensitive;
  final PrimitiveElement CaseSensitive;
  final FhirCanonical valueSet;
  final FhirCode hierarchyMeaning;
  final PrimitiveElement HierarchyMeaning;
  final FhirBoolean compositional;
  final PrimitiveElement Compositional;
  final FhirBoolean versionNeeded;
  final PrimitiveElement VersionNeeded;
  final FhirCode content;
  final PrimitiveElement Content;
  final FhirCanonical supplements;
  final FhirUnsignedInt count;
  final PrimitiveElement Count;
  final List<CodeSystemFilter> filter;
  final List<CodeSystemProperty> property;
  final List<CodeSystemConcept> concept;
}

@Data()
@JsonCodable()
class CodeSystemFilter {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final String description;
  final PrimitiveElement Description;
  final List<FhirCode> operator;
  final List<PrimitiveElement> Operator;
  final String value;
  final PrimitiveElement Value;
}

@Data()
@JsonCodable()
class CodeSystemProperty {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final FhirUri uri;
  final PrimitiveElement Uri;
  final String description;
  final PrimitiveElement Description;
  final FhirCode type;
  final PrimitiveElement Type;
}

@Data()
@JsonCodable()
class CodeSystemConcept {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final String display;
  final PrimitiveElement Display;
  final String definition;
  final PrimitiveElement Definition;
  final List<CodeSystemDesignation> designation;
  final List<CodeSystemProperty1> property;
  final List<CodeSystemConcept> concept;
}

@Data()
@JsonCodable()
class CodeSystemDesignation {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode language;
  final PrimitiveElement Language;
  final Coding use;
  final String value;
  final PrimitiveElement Value;
}

@Data()
@JsonCodable()
class CodeSystemProperty1 {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final String valueCode;
  final PrimitiveElement ValueCode;
  final Coding valueCoding;
  final String valueString;
  final PrimitiveElement ValueString;
  final double valueInteger;
  final PrimitiveElement ValueInteger;
  final bool valueBoolean;
  final PrimitiveElement ValueBoolean;
  final String valueDateTime;
  final PrimitiveElement ValueDateTime;
  final double valueDecimal;
  final PrimitiveElement ValueDecimal;
}


