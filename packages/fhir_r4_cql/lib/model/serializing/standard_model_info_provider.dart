import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class StandardModelInfoProvider implements ModelInfoProvider, NamespaceAware {
  NamespaceManager? namespaceManager;

  @override
  ModelInfo? load(ModelIdentifier modelIdentifier) {
    if (isQDMModelIdentifier(modelIdentifier)) {
      final localVersion = modelIdentifier.version ?? "";
      try {
        switch (localVersion) {
          case "4.1.2":
            return qdmmodelinfo;
          // case "4.2":
          //   return qdmmodelconfig42;
          case "4.2":
            return qdmmodelinfo42;
          case "4.3":
            return qdmmodelinfo43;
          case "5.0":
            return qdmmodelinfo50;
          case "5.0.1":
            return qdmmodelinfo501;
          case "5.0.2":
            return qdmmodelinfo502;
          case "5.3":
            return qdmmodelinfo53;
          case "5.4":
            return qdmmodelinfo54;
          case "5.5":
            return qdmmodelinfo55;
          case "5.6":
          case "":
            return qdmmodelinfo56;
          // case "null":
          //   return qdmmodelinfo50_withNegationTypes;
        }
      } catch (e) {
        // Do not throw, allow other providers to resolve
      }
    } else if (isFhirModelIdentifier(modelIdentifier)) {
      final localVersion = modelIdentifier.version ?? "";
      try {
        switch (localVersion) {
          case "1.0.0":
            return systemmodelinfo;
          case "1.0.2":
            return fhirmodelinfo102;
          case "1.6":
            return fhirmodelinfo16;
          case "1.4":
            return fhirmodelinfo14;
          case "1.8":
            return fhirmodelinfo18;
          case "3.0.0":
            return fhirmodelinfo300;
          case "3.0.1":
            return fhirmodelinfo301;
          case "3.2.0":
            return fhirmodelinfo320;
          case "4.0.0":
            return fhirmodelinfo400;
          case "4.0.1":
            {
              return fhirmodelinfo401;
            }
          // case "4.0.1":
          //   return newfhirmodelinfo401;
          // case "4.0.1":
          //   return fhirmodelinfo401withmetadata;
          // case "4.0.1":
          //   return matfhirmodelinfo401;
          case "4.0.1-1.5.1":
            return fhirmodelinfo401151;
        }
      } catch (e) {
        // Do not throw, allow other providers to resolve
      }
    } else if (isQuickModelIdentifier(modelIdentifier)) {
      final localVersion = modelIdentifier.version ?? "";
      try {
        switch (localVersion) {
          case "0.3.0":
            return quickmodelinfo030;
          case "3.0.0":
            return quickmodelinfo300;
          case "3.0.1":
            return quickfhirmodelinfo301;
          case "3.3.0":
            return quickmodelinfo330;
          case "null":
            return quickmodelinfo;
          // case "null":
          //   return quickmodelinfoold;
        }
      } catch (e) {
        // Do not throw, allow other providers to resolve
      }
    } else if (isQICoreModelIdentifier(modelIdentifier)) {
      final localVersion = modelIdentifier.version ?? "";
      try {
        switch (localVersion) {
          case "4.0.0":
            return qicoremodelinfo400;
          case "4.1.0":
            return qicoremodelinfo410;
          case "4.1.1":
            return qicoremodelinfo411;
          case "5.0.0":
            return qicoremodelinfo500;
        }
      } catch (e) {
        // Do not throw, allow other providers to resolve
      }
    } else if (isUsCoreModelIdentifier(modelIdentifier)) {
      final localVersion = modelIdentifier.version ?? "";
      try {
        switch (localVersion) {
          case "3.1.1":
            return uscoremodelinfo311;
          case "3.1.0":
            return uscoremodelinfo310;
        }
      } catch (e) {
        // Do not throw, allow other providers to resolve
      }
    } else if (isTestModelIdentifier(modelIdentifier)) {
      final localVersion = modelIdentifier.version ?? "";
      try {
        switch (localVersion) {
          case "null":
            return testmodelinfo;
          // case "null":
          //   return testmodelinfowithgenericssad1;
          // case "null":
          //   return testmodelinfowithgenericshappy;
        }
      } catch (e, s) {
        print(s);
      }
    } else if (isSimpleModelIdentifier(modelIdentifier)) {
      final localVersion = modelIdentifier.version ?? "";
      try {
        switch (localVersion) {
          case "1.0.0":
          case "":
          default:
            return simplemodelinfo;
        }
      } catch (e) {
        // Do not throw, allow other providers to resolve
      }
    } else if (isSystemModelIdentifier(modelIdentifier)) {
      final localVersion = modelIdentifier.version ?? "";
      try {
        switch (localVersion) {
          case "1.0.0":
          case "":
          default:
            return systemmodelinfo;
        }
      } catch (e) {
        // Do not throw, allow other providers to resolve
      }
    }
    return null;
  }

  @override
  void setNamespaceManager(NamespaceManager namespaceManager) {
    this.namespaceManager = namespaceManager;
  }

  bool isQDMModelIdentifier(ModelIdentifier modelIdentifier) {
    if (namespaceManager != null && namespaceManager!.hasNamespaces) {
      return modelIdentifier.id == "QDM" &&
          (modelIdentifier.system == null ||
              modelIdentifier.system == "urn:healthit-gov");
    }
    return modelIdentifier.id == "QDM";
  }

  bool isFhirModelIdentifier(ModelIdentifier modelIdentifier) {
    if (namespaceManager != null && namespaceManager!.hasNamespaces) {
      return modelIdentifier.id == "FHIR" &&
          (modelIdentifier.system == null ||
              modelIdentifier.system == "http://hl7.org/fhir");
    }
    return modelIdentifier.id == "FHIR";
  }

  bool isQuickModelIdentifier(ModelIdentifier modelIdentifier) {
    if (namespaceManager != null && namespaceManager!.hasNamespaces) {
      return modelIdentifier.id == "QUICK" &&
          (modelIdentifier.system == null ||
              modelIdentifier.system == "http://hl7.org/fhir");
    }
    return modelIdentifier.id == "QUICK";
  }

  bool isQICoreModelIdentifier(ModelIdentifier modelIdentifier) {
    if (namespaceManager != null && namespaceManager!.hasNamespaces) {
      return modelIdentifier.id == "QICORE" &&
          (modelIdentifier.system == null ||
              modelIdentifier.system == "http://hl7.org/fhir/us/qicore");
    }
    return modelIdentifier.id == "QICORE";
  }

  bool isUsCoreModelIdentifier(ModelIdentifier modelIdentifier) {
    if (namespaceManager != null && namespaceManager!.hasNamespaces) {
      return modelIdentifier.id.toLowerCase() == "uscore" &&
          (modelIdentifier.system == null ||
              modelIdentifier.system == "http://hl7.org/fhir/us/core");
    }
    return modelIdentifier.id.toLowerCase() == "uscore";
  }

  bool isTestModelIdentifier(ModelIdentifier modelIdentifier) {
    if (namespaceManager != null && namespaceManager!.hasNamespaces) {
      return (modelIdentifier.id == "GENTEST" ||
              modelIdentifier.id == 'Test') &&
          (modelIdentifier.system == null ||
              modelIdentifier.system == "http://example.com/gentest" ||
              modelIdentifier.system == "http://cqframework.org/test");
    }
    return modelIdentifier.id == "GENTEST" || modelIdentifier.id == 'Test';
  }

  bool isSimpleModelIdentifier(ModelIdentifier modelIdentifier) {
    if (namespaceManager != null && namespaceManager!.hasNamespaces) {
      return modelIdentifier.id == "Simple" &&
          (modelIdentifier.system == null ||
              modelIdentifier.system ==
                  "https://github.com/cqframework/cql-execution/simple");
    }
    return modelIdentifier.id == "Simple";
  }

  bool isSystemModelIdentifier(ModelIdentifier modelIdentifier) {
    if (namespaceManager != null && namespaceManager!.hasNamespaces) {
      return modelIdentifier.id == "System" &&
          (modelIdentifier.system == null ||
              modelIdentifier.system == "urn:hl7-org:elm-types:r1");
    }
    return modelIdentifier.id == "System";
  }

  @override
  void setPath(String path) {
    // TODO: implement setPath
  }
}
