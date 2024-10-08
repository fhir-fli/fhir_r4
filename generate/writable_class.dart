class WritableClass {
  WritableClass({
    required this.className,
    required this.classPath,
    required this.comment,
    this.isResource = false,
    this.isDomainResource = false,
    this.isDataType = false,
    this.isQuantity = false,
    this.isBackboneType = false,
    this.isBackboneElement = false,
    this.isElement = false,
  });

  final String className;
  final String classPath;
  final String comment;
  bool isResource;
  bool isDomainResource;
  bool isDataType;
  bool isQuantity;
  bool isBackboneType;
  bool isBackboneElement;
  bool isElement;
  final List<Field> fields = <Field>[];

  void addField(Field field) {
    field.setSuperField(this);
    fields.add(field);
  }

  String get extendsClause => isDataType
      ? 'extends DataType'
      : isQuantity
          ? 'extends Quantity'
          : isBackboneType
              ? 'extends BackboneType'
              : isBackboneElement
                  ? 'extends BackboneElement'
                  : isDomainResource
                      ? 'extends DomainResource'
                      : isResource
                          ? 'extends Resource'
                          : isElement
                              ? 'extends Element'
                              : '';
}

class Field {
  Field({
    required this.name,
    required this.type,
    required this.path,
    required this.comment,
    required this.isList,
    required this.isRequired,
    required this.needsElement,
  });

  final String name;
  final String type;
  final String comment;
  final String path;
  final bool needsElement;
  final bool isList;
  final bool isRequired;
  bool isSuper = false;

  void setSuperField(WritableClass writableClass) {
    isSuper = isSuperField(writableClass);
  }

  bool isSuperField(WritableClass writableClass) {
    if (writableClass.isDomainResource) {
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
      ].contains(name.toLowerCase());
    } else if (writableClass.isResource) {
      // Super fields for Resource
      return <String>[
        'id',
        'meta',
        'implicitrules',
        'implicitruleselement',
        'language',
        'languageelement',
      ].contains(name.toLowerCase());
    } else if (writableClass.isBackboneType ||
        writableClass.isBackboneElement) {
      // Super fields for BackboneType && BackboneElement
      return <String>[
        'id',
        'extension',
        'modifierextension',
      ].contains(name.toLowerCase());
    } else if (writableClass.isDataType || writableClass.isElement) {
      // Super fields for DataType
      return <String>[
        'id',
        'extension',
      ].contains(name.toLowerCase());
    } else if (writableClass.isQuantity) {
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
      ].contains(name.toLowerCase());
    }
    return false;
  }
}
