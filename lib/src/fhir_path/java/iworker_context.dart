// ignore_for_file: avoid_positional_boolean_parameters, public_member_api_docs
// ignore_for_file: require_trailing_commas, one_member_abstracts

import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

abstract class IWorkerContext {
  // // Inner Classes

  // // Methods
  String getVersion();
  // String getSpecUrl();
  // UcumService? getUcumService();

  // IParser getParser(ParserType type);
  // IParser getParserFromType(String type);
  // IParser newJsonParser();
  // IParser newXmlParser();
  // IResourceValidator newValidator();

  T? fetchResource<T extends Resource>(Type classType, String uri);
  T fetchResourceWithException<T extends Resource>(Type classType, String uri);
  T fetchResourceWithVersion<T extends Resource>(
      Type classType, String uri, String version);
  T fetchResourceForSource<T extends Resource>(
      Type classType, String uri, CanonicalResource canonicalForSource);
  Resource? fetchResourceById(String type, String uri);

  // bool hasResource<T extends Resource>(Type classType, String uri);

  // void cacheResource(Resource resource);
  // void cacheResourceFromPackage(
  //     Resource resource, PackageVersion packageDetails);
  // void cachePackage(
  //     PackageDetails packageDetails, List<PackageVersion> dependencies);

  // List<String> getResourceNames();
  // Set<String> getResourceNamesAsSet();
  // List<String> getTypeNames();
  // List<StructureDefinition> allStructures();
  List<StructureDefinition> getStructures();
  // List<CanonicalResource> allConformanceResources();

  // void generateSnapshot(StructureDefinition p);
  // void generateSnapshotConditional(StructureDefinition mr, bool ifLogical);

  // Parameters getExpansionParameters();
  // void setExpansionParameters(Parameters parameters);

  // CodeSystem? fetchCodeSystem(String system);
  // CodeSystem? fetchCodeSystemWithVersion(String system, String version);
  // bool supportsSystem(String system);

  // List<ConceptMap> findMapsForSource(String url);
  // ValueSetExpansionOutcome expandVS(
  //     ValueSet source, bool cacheOk, bool hierarchical);
  // ValueSetExpansionOutcome expandVSWithOptions(
  //     ValueSet source, bool cacheOk, bool hierarchical, bool incompleteOk);

  // ValueSetExpansionOutcome expandVSWithBinding(
  //     ElementDefinitionBinding binding, bool cacheOk, bool hierarchical);

  // ValueSetExpansionOutcome expandVSWithConceptSet(
  //     Concept inc, bool hierarchical);

  // Locale getLocale();
  // void setLocale(Locale locale);

  String formatMessage(String message, List<Object> messageArguments);
  String formatMessagePlural(
      int plural, String message, List<Object> messageArguments);
  // void setValidationMessageLanguage(Locale locale);

  // ValidationResult validateCode(
  //     ValidationOptions options, String code, ValueSet vs);
  // ValidationResult validateCodeWithSystem(ValidationOptions options,
  //     String system, String version, String code, String display);
  // ValidationResult validateCodeWithValueSet(ValidationOptions options,
  //     String system, String version, String code, String display, ValueSet 
  // vs);

  // ValidationResult validateCodeWithCodeableConcept(
  //     ValidationOptions options, CodeableConcept code, ValueSet vs);
  // ValidationResult validateCodeWithCoding(
  //     ValidationOptions options, Coding code, ValueSet vs);

  // ValidationResult validateCodeBatch(ValidationOptions options,
  //     List<CodingValidationRequest> codes, ValueSet vs);

  // String getAbbreviation(String name);
  // String oidToUri(String code);
  // bool hasCache();

  // void setLogger(ILoggingService logger);
  // ILoggingService getLogger();

  // bool isNoTerminologyServer();
  // Set<String> getCodeSystemsUsed();

  // TranslationServices translator();
  // List<StructureMap> listTransforms();
  // StructureMap? getTransform(String url);

  // String? getOverrideVersionNs();
  // void setOverrideVersionNs(String value);

  StructureDefinition? fetchTypeDefinition(String typeName);
  // StructureDefinition? fetchRawProfile(String url);

  // void setUcumService(UcumService ucumService);

  // String getLinkForUrl(String corePath, String url);

  // Map<String, List<int>> getBinaries();

  // int loadFromPackage(NpmPackage pi, IContextResourceLoader loader);
  // int loadFromPackageWithTypes(
  //     NpmPackage pi, IContextResourceLoader loader, List<String> types);
  // int loadFromPackageWithDependencies(NpmPackage pi,
  //     IContextResourceLoader loader, BasePackageCacheManager pcm);

  // bool hasPackage(String id, String version);
  // bool hasPackageWithDetails(PackageVersion pack);
  // PackageDetails? getPackage(PackageVersion pack);

  // int getClientRetryCount();
  // void setClientRetryCount(int value);

  // TimeTracker clock();
  // PackageVersion? getPackageForUrl(String url);
}

class CodingValidationRequest {
  final Coding coding;
  ValidationResult? result;
  CacheToken? cacheToken;

  CodingValidationRequest(this.coding);

  bool hasResult() => result != null;
}

class PackageVersion {
  PackageVersion(String source)
      : id = source.split('#')[0],
        version = source.split('#')[1] {
    if (!source.contains('#')) {
      throw ArgumentError('Source must contain # to split id and version');
    }
  }

  PackageVersion.custom(this.id, this.version);

  final String id;
  final String version;

  bool isExamplesPackage() =>
      id.startsWith('hl7.fhir.') && id.endsWith('.examples');

  @override
  String toString() => '$id#$version';
}

class PackageDetails extends PackageVersion {
  PackageDetails(String id, String version, this.name, this.canonical, this.web)
      : super.custom(id, version);

  final String name;
  final String canonical;
  final String web;
}

abstract class ICanonicalResourceLocator {
  void findResource(Object caller, String url);
}

abstract class IContextResourceLoader {
  List<String> getTypes();

  Future<Bundle> loadBundle(Stream<List<int>> stream, bool isJson);
  Future<Resource> loadResource(Stream<List<int>> stream, bool isJson);
  String? getResourcePath(Resource resource);
  Future<IContextResourceLoader> getNewLoader(NpmPackage npm);
  String getVersion();
}
