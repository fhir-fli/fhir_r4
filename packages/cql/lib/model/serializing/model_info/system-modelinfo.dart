// ignore_for_file: file_names

import '../../../cql.dart';

final systemmodelinfo = ModelInfo.fromJson({
  "name": "System",
  "url": "urn:hl7-org:elm-types:r1",
  "targetQualifier": "system",
  "version": "1.0.0",
  "typeInfo": [
    {"type": "SimpleTypeInfo", "name": "Any"},
    {"type": "SimpleTypeInfo", "name": "Boolean", "baseType": "Any"},
    {"type": "SimpleTypeInfo", "name": "Integer", "baseType": "Any"},
    {"type": "SimpleTypeInfo", "name": "Long", "baseType": "Any"},
    {"type": "SimpleTypeInfo", "name": "Decimal", "baseType": "Any"},
    {"type": "SimpleTypeInfo", "name": "String", "baseType": "Any"},
    {"type": "SimpleTypeInfo", "name": "DateTime", "baseType": "Any"},
    {"type": "SimpleTypeInfo", "name": "Date", "baseType": "Any"},
    {"type": "SimpleTypeInfo", "name": "Time", "baseType": "Any"},
    {
      "type": "ClassInfo",
      "name": "Quantity",
      "baseType": "Any",
      "retrievable": false,
      "element": [
        {"name": "value", "type": "Decimal"},
        {"name": "unit", "type": "String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Ratio",
      "baseType": "Any",
      "retrievable": false,
      "element": [
        {"name": "numerator", "type": "Quantity"},
        {"name": "denominator", "type": "Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Code",
      "baseType": "Any",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "String"},
        {"name": "system", "type": "String"},
        {"name": "version", "type": "String"},
        {"name": "display", "type": "String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Concept",
      "baseType": "Any",
      "retrievable": false,
      "element": [
        {
          "name": "codes",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "display", "type": "String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Vocabulary",
      "baseType": "Any",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "String"},
        {"name": "version", "type": "String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet",
      "baseType": "Vocabulary",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "CodeSystem",
      "baseType": "Vocabulary",
      "retrievable": false
    }
  ]
});
