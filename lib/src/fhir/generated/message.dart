import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class MessageDefinition {
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
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement versionElement;
  final String name;
  final PrimitiveElement nameElement;
  final String title;
  final PrimitiveElement titleElement;
  final List<FhirCanonical> replaces;
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
  final FhirCanonical base;
  final List<FhirCanonical> parent;
  final Coding eventCoding;
  final String eventUri;
  final PrimitiveElement eventUriElement;
  final FhirCode category;
  final PrimitiveElement categoryElement;
  final List<MessageDefinitionFocus> focus;
  final FhirCode responseRequired;
  final PrimitiveElement responseRequiredElement;
  final List<MessageDefinitionAllowedResponse> allowedResponse;
  final List<FhirCanonical> graph;
}

@Data()
@JsonCodable()
class MessageDefinitionFocus {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final FhirCanonical profile;
  final FhirUnsignedInt min;
  final PrimitiveElement minElement;
  final String max;
  final PrimitiveElement maxElement;
}

@Data()
@JsonCodable()
class MessageDefinitionAllowedResponse {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCanonical message;
  final FhirMarkdown situation;
  final PrimitiveElement situationElement;
}

@Data()
@JsonCodable()
class MessageHeader {
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
  final Coding eventCoding;
  final String eventUri;
  final PrimitiveElement eventUriElement;
  final List<MessageHeaderDestination> destination;
  final Reference sender;
  final Reference enterer;
  final Reference author;
  final MessageHeaderSource source;
  final Reference responsible;
  final CodeableConcept reason;
  final MessageHeaderResponse response;
  final List<Reference> focus;
  final FhirCanonical definition;
}

@Data()
@JsonCodable()
class MessageHeaderDestination {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement nameElement;
  final Reference target;
  final FhirUrl endpoint;
  final PrimitiveElement endpointElement;
  final Reference receiver;
}

@Data()
@JsonCodable()
class MessageHeaderSource {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement nameElement;
  final String software;
  final PrimitiveElement softwareElement;
  final String version;
  final PrimitiveElement versionElement;
  final ContactPoint contact;
  final FhirUrl endpoint;
  final PrimitiveElement endpointElement;
}

@Data()
@JsonCodable()
class MessageHeaderResponse {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirId identifier;
  final PrimitiveElement identifierElement;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final Reference details;
}


