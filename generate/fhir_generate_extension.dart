extension FhirGenerate on String {
  bool get shouldGenerate {
    const List<String> excludedTypes = <String>[
      'resourcelist',
      'base64binary',
      'boolean',
      'canonical',
      'code',
      'date',
      'datetime',
      'decimal',
      'id',
      'instant',
      'integer',
      'markdown',
      'oid',
      'positiveint',
      'string',
      'time',
      'unsignedint',
      'uri',
      'url',
      'uuid',
      'xhtml',
      'resource',
      'domainresource',
      'backboneelement',
      'element',
      'moneyquantity',
      'simplequantity',
    ];
    return !excludedTypes.contains(toLowerCase());
  }

  String get fhirToDartTypes =>
      const <String, String>{
        'string': 'FhirString',
        'base64binary': 'FhirBase64Binary',
        'boolean': 'FhirBoolean',
        'canonical': 'FhirCanonical',
        'code': 'FhirCode',
        'date': 'FhirDate',
        'decimal': 'FhirDecimal',
        'datetime': 'FhirDateTime',
        'uri': 'FhirUri',
        'url': 'FhirUrl',
        'id': 'FhirId',
        'instant': 'FhirInstant',
        'integer': 'FhirInteger',
        'integer64': 'FhirInteger64',
        'markdown': 'FhirMarkdown',
        'oid': 'FhirOid',
        'positiveint': 'FhirPositiveInt',
        'time': 'FhirTime',
        'unsignedint': 'FhirUnsignedInt',
        'uuid': 'FhirUuid',
        'duration': 'FhirDuration',
        'xhtml': 'FhirMarkdown',
        'meta': 'FhirMeta',
        'expression': 'FhirExpression',
        'list': 'FhirList',
        'extension': 'FhirExtension',
        'resourceList': 'Resource',
        'group': 'FhirGroup',
        'endpoint': 'FhirEndpoint',
        'http://hl7.org/fhirpath/system.string': 'FhirString',
      }[toLowerCase()] ??
      this;

  bool get isPrimitiveType => <String>[
        'base64binary',
        'fhirbase64binary',
        'fhir.base64binary',
        'bool',
        'boolean',
        'fhirboolean',
        'fhir.boolean',
        'canonical',
        'fhircanonical',
        'code',
        'fhircode',
        'fhir.code',
        'date',
        'fhirdate',
        'fhir.date',
        'datetime',
        'fhirdatetime',
        'fhir.datetime',
        'double',
        'decimal',
        'fhirdecimal',
        'fhir.decimal',
        'num',
        'id',
        'fhirid',
        'instant',
        'fhirinstant',
        'int',
        'integer',
        'fhirinteger',
        'fhir.integer',
        'integer64',
        'fhirinteger64',
        'markdown',
        'fhirmarkdown',
        'oid',
        'fhiroid',
        'positiveint',
        'fhirpositiveint',
        'string',
        'fhirstring',
        'fhir.string',
        'time',
        'fhirtime',
        'fhir.time',
        'unsignedint',
        'fhirunsignedint',
        'uri',
        'fhiruri',
        'fhir.uri',
        'url',
        'fhirurl',
        'uuid',
        'fhiruuid',
      ].contains(toLowerCase());

  bool get isDataType {
    return <String>[
      'address',
      'annotation',
      'attachment',
      'codeableconcept',
      'codeablereference',
      'coding',
      'contactdetail',
      'contactpoint',
      'contributor',
      'datarequirement',
      'expression',
      'extension',
      'fhirextension',
      'humanname',
      'identifier',
      'meta',
      'fhirmeta',
      'money',
      'narrative',
      'parameterdefinition',
      'period',
      'quantity',
      'range',
      'ratio',
      'ratiorange',
      'reference',
      'relatedartifact',
      'sampleddata',
      'signature',
      'triggerdefinition',
      'usagecontext',
    ].contains(toLowerCase());
  }

  bool get isQuantity {
    return <String>[
      'age',
      'count',
      'distance',
      'duration',
      'fhirduration',
    ].contains(toLowerCase());
  }

  bool get isBackboneType {
    return <String>[
      'dosage',
      'elementdefinition',
      'marketingstatus',
      'population',
      'prodcharacteristic',
      'productshelflife',
      'timing',
    ].contains(toLowerCase());
  }

  bool get isResourceType => <String>[
        'account',
        'activitydefinition',
        'administrableproductdefinition',
        'adverseevent',
        'allergyintolerance',
        'appointment',
        'appointmentresponse',
        'auditevent',
        'basic',
        'binary',
        'biologicallyderivedproduct',
        'bodystructure',
        'bundle',
        'capabilitystatement',
        'careplan',
        'careteam',
        'catalogentry',
        'chargeitem',
        'chargeitemdefinition',
        'citation',
        'claim',
        'claimresponse',
        'clinicalimpression',
        'clinicalusedefinition',
        'codesystem',
        'communication',
        'communicationrequest',
        'compartmentdefinition',
        'composition',
        'conceptmap',
        'condition',
        'consent',
        'contract',
        'coverage',
        'coverageeligibilityrequest',
        'coverageeligibilityresponse',
        'detectedissue',
        'device',
        'devicedefinition',
        'devicemetric',
        'devicerequest',
        'deviceusestatement',
        'diagnosticreport',
        'documentmanifest',
        'documentreference',
        'encounter',
        'endpoint',
        'enrollmentrequest',
        'enrollmentresponse',
        'episodeofcare',
        'eventdefinition',
        'evidence',
        'evidencereport',
        'evidencevariable',
        'examplescenario',
        'explanationofbenefit',
        'familymemberhistory',
        'flag',
        'goal',
        'graphdefinition',
        'group',
        'guidanceresponse',
        'healthcareservice',
        'imagingstudy',
        'immunization',
        'immunizationevaluation',
        'immunizationrecommendation',
        'implementationguide',
        'ingredient',
        'insuranceplan',
        'invoice',
        'library',
        'linkage',
        'list',
        'location',
        'manufactureditemdefinition',
        'measure',
        'measurereport',
        'media',
        'medication',
        'medicationadministration',
        'medicationdispense',
        'medicationknowledge',
        'medicationrequest',
        'medicationstatement',
        'medicinalproductdefinition',
        'messagedefinition',
        'messageheader',
        'molecularsequence',
        'namingsystem',
        'nutritionorder',
        'nutritionproduct',
        'observation',
        'observationdefinition',
        'operationdefinition',
        'operationoutcome',
        'organization',
        'organizationaffiliation',
        'packagedproductdefinition',
        'parameters',
        'patient',
        'paymentnotice',
        'paymentreconciliation',
        'person',
        'plandefinition',
        'practitioner',
        'practitionerrole',
        'procedure',
        'provenance',
        'questionnaire',
        'questionnaireresponse',
        'regulatedauthorization',
        'relatedperson',
        'requestgroup',
        'researchdefinition',
        'researchelementdefinition',
        'researchstudy',
        'researchsubject',
        'riskassessment',
        'schedule',
        'searchparameter',
        'servicerequest',
        'slot',
        'specimen',
        'specimendefinition',
        'structuredefinition',
        'structuremap',
        'subscription',
        'subscriptionstatus',
        'subscriptiontopic',
        'substance',
        'substancedefinition',
        'supplydelivery',
        'supplyrequest',
        'task',
        'terminologycapabilities',
        'testreport',
        'testscript',
        'valueset',
        'verificationresult',
        'visionprescription',
        'fhirlist',
        'fhirgroup',
        'fhirendpoint',
      ].contains(toLowerCase());

  String get fhirFieldToDartName => const <String>[
        'abstract',
        'else',
        'import',
        'show',
        'as',
        'enum',
        'in',
        'static',
        'assert',
        'export',
        'interface',
        'super',
        'async',
        'extends',
        'is',
        'switch',
        'await',
        'extension',
        'late',
        'sync',
        'break',
        'external',
        'library',
        'this',
        'case',
        'factory',
        'mixin',
        'throw',
        'catch',
        'false',
        'new',
        'true',
        'class',
        'final',
        'null',
        'try',
        'const',
        'finally',
        'on',
        'typedef',
        'continue',
        'for',
        'operator',
        'var',
        'covariant',
        'function',
        'part',
        'void',
        'default',
        'get',
        'required',
        'while',
        'deferred',
        'hide',
        'rethrow',
        'with',
        'do',
        'if',
        'return',
        'yield',
        'dynamic',
        'implements',
        'set',
      ].contains(this)
          ? '${this}_'
          : this;

  bool isSuperField(String className, bool isBackboneElement, bool isElement) {
    if (className.isResourceType) {
      // Super fields for DomainResource
      return <String>[
        'id',
        'meta',
        'implicitrules',
        'implicitruleselement',
        'language',
        'languageelement',
        'text',
        'contained',
        'extension',
        'modifierextension',
      ].contains(toLowerCase());
    } else if (className.isBackboneType || isBackboneElement) {
      // Super fields for BackboneType && BackboneElement
      return <String>[
        'id',
        'extension',
        'modifierextension',
      ].contains(toLowerCase());
    } else if (className.isDataType || isElement) {
      // Super fields for DataType
      return <String>[
        'id',
        'extension',
      ].contains(toLowerCase());
    } else if (className.isQuantity) {
      // Super fields for Quantity
      return <String>[
        'id',
        'extension',
        'value',
        'valueelement',
        'comparator',
        'comparatorelement',
        'unit',
        'unitelement',
        'system',
        'systemelement',
        'code',
        'codeelement',
      ].contains(toLowerCase());
    }
    return false;
  }

  String get properFileName {
    final RegExp upperCase = RegExp(r'(?<!^)([A-Z])');
    final String snakeCase = replaceAllMapped(upperCase, (Match match) {
      return '_${match.group(1)!.toLowerCase()}';
    });
    return snakeCase.toLowerCase();
  }

  String get capitalize {
    if (isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + substring(1);
  }

  String get camelCase {
    final List<String> parts = split(RegExp(r'[^A-Za-z0-9]'))
        .where((String part) => part.isNotEmpty)
        .toList();
    if (parts.isEmpty) {
      return '';
    }
    final StringBuffer camelCaseString =
        StringBuffer(parts.first.toLowerCase());
    for (int i = 1; i < parts.length; i++) {
      final String part = parts[i];
      camelCaseString
          .write(part[0].toUpperCase() + part.substring(1).toLowerCase());
    }
    return camelCaseString.toString();
  }

  // Convert a string to snake_case
  String get snakeCase {
    return replaceAllMapped(
      RegExp(r'([a-z0-9])([A-Z])'),
      (Match match) => '${match.group(1)}_${match.group(2)?.toLowerCase()}',
    ).toLowerCase().replaceAll('-', '_');
  }

// Helper function to convert enum value format
  String get enumValue {
    return replaceAll('-', '_').replaceAll(' ', '_').camelCase;
  }

  String get splitOffVersion {
    final int lastPipeIndex = lastIndexOf('|');

    if (lastPipeIndex == -1) {
      // No version number present, return the input string as is
      return this;
    }

    // Split the base string and version
    return substring(0, lastPipeIndex);
  }

  String get upperCamelCase {
    return
        // Replace hyphens, underscores, spaces, and slashes with a space (temporary)
        replaceAll(RegExp(r'[-_/()]'), ' ')
            // Split by space and capitalize each word
            .split(' ')
            .where((String word) => word.isNotEmpty) // Remove any empty words
            .map((String word) => word[0].toUpperCase() + word.substring(1))
            // Join back together without spaces
            .join();
  }
}