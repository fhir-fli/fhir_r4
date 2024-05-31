import 'dart:convert';
import 'dart:io';

const Map<String, String> primitiveTypes = <String, String>{
  'string': 'String',
  'base64Binary': 'FhirBase64Binary',
  'boolean': 'FhirBoolean',
  'canonical': 'FhirCanonical',
  'code': 'FhirCode',
  'date': 'FhirDate',
  'decimal': 'FhirDecimal',
  'dateTime': 'FhirDateTime',
  'uri': 'FhirUri',
  'url': 'FhirUrl',
  'id': 'FhirId',
  'instant': 'FhirInstant',
  'integer': 'FhirInteger',
  'integer64': 'FhirInteger64',
  'markdown': 'FhirMarkdown',
  'oid': 'FhirOid',
  'positiveInt': 'FhirPositiveInt',
  'time': 'FhirTime',
  'unsignedInt': 'FhirUnsignedInt',
  'uuid': 'FhirUuid',
  'Duration': 'FhirDuration',
  'xhtml': 'FhirXhtml',
  'Meta': 'FhirMeta',
  'Expression': 'FhirExpression',
  'Element': 'FhirElement',
  'Extension': 'FhirExtension',
  'Period': 'Period',
  'Reference': 'Reference',
  'Address': 'Address',
  'Age': 'Age',
  'Annotation': 'Annotation',
  'Attachment': 'Attachment',
  'CodeableConcept': 'CodeableConcept',
  'CodeableReference': 'CodeableReference',
  'Coding': 'Coding',
  'ContactPoint': 'ContactPoint',
  'Count': 'Count',
  'Distance': 'Distance',
  'HumanName': 'HumanName',
  'Identifier': 'Identifier',
  'Money': 'Money',
  'Quantity': 'Quantity',
  'Range': 'Range',
  'Ratio': 'Ratio',
  'RatioRange': 'RatioRange',
  'SampledData': 'SampledData',
  'Signature': 'Signature',
  'Timing': 'Timing',
  'ContactDetail': 'ContactDetail',
  'DataRequirement': 'DataRequirement',
  'ParameterDefinition': 'ParameterDefinition',
  'RelatedArtifact': 'RelatedArtifact',
  'TriggerDefinition': 'TriggerDefinition',
  'UsageContext': 'UsageContext',
  'Availability': 'Availability',
  'ExtendedContactDetail': 'ExtendedContactDetail',
  'Dosage': 'Dosage',
};

const Map<String, String> allTypes = <String, String>{
  'base64Binary': 'primitive_types',
  'boolean': 'primitive_types',
  'canonical': 'primitive_types',
  'code': 'primitive_types',
  'date': 'primitive_types',
  'dateTime': 'primitive_types',
  'decimal': 'primitive_types',
  'id': 'primitive_types',
  'instant': 'primitive_types',
  'integer': 'primitive_types',
  'integer64': 'primitive_types',
  'markdown': 'primitive_types',
  'oid': 'primitive_types',
  'positiveInt': 'primitive_types',
  'string': 'primitive_types',
  'time': 'primitive_types',
  'unsignedInt': 'primitive_types',
  'uri': 'primitive_types',
  'url': 'primitive_types',
  'uuid': 'primitive_types',
  'xhtml': 'primitive_types',
  'Element': 'basic_types',
  'DataType': 'abstract_types',
  'PrimitiveType': 'abstract_types',
  'BackboneType': 'abstract_types',
  'Extension': 'basic_types',
  'Address': 'general_types',
  'Age': 'general_types',
  'Annotation': 'general_types',
  'Attachment': 'general_types',
  'Availability': 'metadata_types',
  'Base': 'abstract_types',
  'CodeableConcept': 'general_types',
  'CodeableReference': 'special_types',
  'Coding': 'general_types',
  'ContactDetail': 'metadata_types',
  'ContactPoint': 'general_types',
  'Contributor': 'metadata_types',
  'Count': 'general_types',
  'DataRequirement': 'metadata_types',
  'Distance': 'general_types',
  'Dosage': 'special_types',
  'Duration': 'general_types',
  'ElementDefinition': 'special_types',
  'Expression': 'metadata_types',
  'ExtendedContactDetail': 'metadata_types',
  'HumanName': 'general_types',
  'Identifier': 'general_types',
  'MarketingStatus': 'draft_types',
  'Meta': 'special_types',
  'Money': 'general_types',
  'MonetaryComponent': 'metadata_types',
  'Narrative': 'special_types',
  'ParameterDefinition': 'metadata_types',
  'Period': 'general_types',
  'Quantity': 'general_types',
  'Range': 'general_types',
  'Ratio': 'general_types',
  'RatioRange': 'general_types',
  'Reference': 'special_types',
  'RelatedArtifact': 'metadata_types',
  'SampledData': 'general_types',
  'Signature': 'general_types',
  'Timing': 'general_types',
  'TriggerDefinition': 'metadata_types',
  'UsageContext': 'metadata_types',
  'VirtualServiceDetail': 'metadata_types',
};

const Map<String, String> resourceTypes = <String, String>{
  'conformance': 'foundation',
  'terminology': 'foundation',
  'security': 'foundation',
  'documents': 'foundation',
  'other': 'foundation',
  'individuals': 'base',
  'entities1': 'base',
  'entities2': 'base',
  'workflow': 'base',
  'management': 'base',
  'summary': 'clinical',
  'diagnostics': 'clinical',
  'medications': 'clinical',
  'care_provision': 'clinical',
  'request_and_response': 'clinical',
  'support': 'financial',
  'billing': 'financial',
  'payment': 'financial',
  'general': 'financial',
  'public_health_and_research': 'specialized',
  'definitional_artifacts': 'specialized',
  'evidence_based_medicine': 'specialized',
  'quality_reporting_and_testing': 'specialized',
  'medication_definition': 'specialized',
};

void main() {
  // Load the JSON schema
  final File schemaFile = File('path_to_your_schema_file.json');
  final String schemaContent = schemaFile.readAsStringSync();
  final Map<String, dynamic> schema =
      json.decode(schemaContent) as Map<String, dynamic>;

  // Generate Dart classes from the "definitions" section
  final Map<String, dynamic> definitions =
      schema['definitions'] as Map<String, dynamic>;

  definitions.forEach((String key, dynamic value) {
    if (key == 'Extension') {
      generateAndSaveClass(key, value as Map<String, dynamic>, true);
    } else {
      generateAndSaveClass(key, value as Map<String, dynamic>, false);
    }
  });
}

void generateAndSaveClass(
    String key, Map<String, dynamic> definition, bool isExtension) {
  String dartClass;
  if (isExtension) {
    dartClass = generateFhirExtensionClass(definition);
  } else {
    dartClass = generateClass(key, definition);
  }

  final String directory = determineDirectory(key);
  final File outputFile = File(
      'path_to_your_output_directory/$directory/${key.toLowerCase()}.dart');
  outputFile.createSync(recursive: true);
  outputFile.writeAsStringSync(dartClass);
}

String generateFhirExtensionClass(Map<String, dynamic> definition) {
  // Implement the generation logic for FhirExtension
}

String generateClass(String className, Map<String, dynamic> definition) {
  final StringBuffer buffer = StringBuffer();

  final String description =
      definition['description']?.toString() ?? 'No description available';
  final Map<String, dynamic>? properties =
      definition['properties'] as Map<String, dynamic>?;

  buffer.writeln(formatComment('/// [$className] $description'));
  buffer.writeln('@freezed');
  buffer.writeln(
      'class $className with ${className.substring(0, 1).toUpperCase()}${className.substring(1).toLowerCase()} {');
  buffer.writeln('  const $className._();');
  buffer.writeln();
  buffer.writeln('  const factory $className({');

  if (properties != null) {
    properties.forEach((String key, dynamic value) {
      final String propertyDescription =
          value['description']?.toString() ?? 'No description available';
      final String? ref = value[r'$ref']?.toString().split('/').last;
      final String type = ref != null
          ? convertType(ref)
          : determineType(key, value as Map<String, dynamic>);
      final bool isArray = value['type'] == 'array';

      buffer.writeln(formatComment('/// [$key] $propertyDescription'));
      if (key.startsWith('_')) {
        buffer.writeln(
            "    @JsonKey(name: '$key') $type? ${key.substring(1)}Element,");
      } else if (isArray) {
        buffer.writeln("    @JsonKey(name: '$key') List<$type>? $key,");
      } else {
        buffer.writeln("    @JsonKey(name: '$key') $type? $key,");
      }
    });
  }

  buffer.writeln('  }) = _\$$className;');
  buffer.writeln();
  buffer.writeln('  @override');
  buffer.writeln("  String get fhirType => '$className';");
  buffer.writeln();
  buffer.writeln('  factory $className.fromJson(Map<String, dynamic> json) =>');
  buffer.writeln('      _\$${className}FromJson(json);');
  buffer.writeln();
  buffer
      .writeln('  factory $className.fromYaml(dynamic yaml) => yaml is String');
  buffer.writeln('      ? $className.fromJson(');
  buffer.writeln(
      '          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)');
  buffer.writeln('      : yaml is YamlMap');
  buffer.writeln(
      '          ? $className.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)');
  buffer.writeln('          : throw ArgumentError(');
  buffer.writeln(
      "              '$className cannot be constructed from input provided,'");
  buffer.writeln(
      "              ' it is neither a yaml string nor a yaml map.');");
  buffer.writeln();
  buffer.writeln('  factory $className.fromJsonString(String source) {');
  buffer.writeln('    final dynamic json = jsonDecode(source);');
  buffer.writeln('    if (json is Map<String, dynamic>) {');
  buffer.writeln('      return _\$${className}FromJson(json);');
  buffer.writeln('    } else {');
  buffer.writeln(
      r"      throw FormatException('FormatException:\nYou passed $json\n'");
  buffer.writeln(
      "          'This does not properly decode to a Map<String,dynamic>.');");
  buffer.writeln('    }');
  buffer.writeln('  }');
  buffer.writeln('  @override');
  buffer.writeln('  String toJsonString() => jsonEncode(toJson());');
  buffer.writeln('}');

  return buffer.toString();
}

String determineType(String key, Map<String, dynamic> value) {
  final String type = value['type'] as String? ?? 'dynamic';
  final String pattern = value['pattern'] as String? ?? '';
  final String? ref = value[r'$ref']?.toString().split('/').last;

  if (ref != null) {
    return convertType(ref);
  }

  value.forEach((String key, value) {
    if (key.toLowerCase().contains('instant') ||
        value.toString().toLowerCase().contains('instant')) {
      print('key: $key, value: $value');
    }
  });

  if (type == 'string') {
    switch (pattern) {
      case r'^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}\u003d\u003d|[A-Za-z0-9+/]{3}\u003d)?$':
      case r'^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$':
        return 'FhirBase64Binary';
      case r'^\S*$':
        return key.endsWith('Uri')
            ? 'FhirUri'
            : key.endsWith('Url')
                ? 'FhirUrl'
                : 'FhirCanonical';
      case r'^[^\s]+( [^\s]+)*$':
        return 'FhirCode';
      case r'^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$':
        return 'FhirDate';
      case r'^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$':
        return 'FhirDateTime';
      case r'^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\\.[0-9]{1,9})?(Z|(\\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$':
      case r'^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$':
        return 'FhirInstant';
      case r'^[A-Za-z0-9\-\.]{1,64}$':
        return 'FhirId';
      case r'^(urn:oid:[0-2](\.(0|[1-9][0-9]*))+$':
      case r'^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$':
        return 'FhirOid';
      case r'^[0]|[-+]?[1-9][0-9]*$':
        return key.endsWith('Integer')
            ? 'FhirInteger'
            : key.endsWith('Integer64')
                ? 'FhirInteger64'
                : 'FhirInteger';
      case r'^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$':
        return 'FhirUuid';
      case r'^[0]|([1-9][0-9]*)$':
        return key.endsWith('UnsignedInt') ? 'FhirUnsignedInt' : 'int';
      case r'^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?$':
        return 'FhirTime';
      default:
        return key.endsWith('Markdown')
            ? 'FhirMarkdown'
            : key.endsWith('String')
                ? 'String'
                : 'String';
    }
  } else if (type == 'boolean') {
    return 'FhirBoolean';
  } else if (type == 'number') {
    return key.endsWith('Decimal')
        ? 'FhirDecimal'
        : key.endsWith('Integer')
            ? 'FhirInteger'
            : key.endsWith('UnsignedInt')
                ? 'FhirUnsignedInt'
                : key.endsWith('PositiveInt')
                    ? 'FhirPositiveInt'
                    : 'double';
  } else if (type == 'integer') {
    return key.endsWith('Integer')
        ? 'FhirInteger'
        : key.endsWith('UnsignedInt')
            ? 'FhirUnsignedInt'
            : key.endsWith('PositiveInt')
                ? 'FhirPositiveInt'
                : 'int';
  } else if (type == 'decimal') {
    return key.endsWith('Decimal') ? 'FhirDecimal' : 'double';
  } else if (type == 'array') {
    final String itemType = value['items'][r'$ref'] != null
        ? convertType(value['items'][r'$ref'].toString().split('/').last)
        : determineType(key, value['items'] as Map<String, dynamic>);
    return 'List<$itemType>';
  } else {
    return 'dynamic';
  }
}

String convertType(String ref) {
  return primitiveTypes[ref] ?? ref;
}

String formatComment(String comment) {
  final StringBuffer buffer = StringBuffer();
  final List<String> words = comment.split(' ');
  String line = '/// ';
  for (final String word in words) {
    if ((line.length + word.length + 1) > 80) {
      buffer.writeln(line.trim());
      line = '/// $word ';
    } else {
      line += '$word ';
    }
  }
  buffer.writeln(line.trim());
  return buffer.toString();
}

String determineDirectory(String typeName) {
  // Check if it's a predefined type
  if (allTypes.containsKey(typeName)) {
    return allTypes[typeName]!;
  }

  // Check if it's a resource type
  final String? resourceType = resourceTypes[typeName];
  if (resourceType != null) {
    return 'resource_types/$resourceType';
  }

  // Default directory if no match found
  return 'resource_types/others';
}
