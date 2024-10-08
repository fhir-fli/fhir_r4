// import '../../../fhir_r4.dart';

// /// A more advanced way to change an enum to a string, mostly used for
// /// Resource types, but also for some enum specifically defined for requests
// String? enumToString<T>(T enumValue) {
//   switch (enumValue) {
//     case Compartment _:
//       return CompartmentEnumMap[enumValue];
//     case Summary _:
//       return SummaryEnumMap[enumValue];
//     case R4ResourceType _:
//       return Resource.resourceTypeToString(enumValue as R4ResourceType);
//     case Mode _:
//       return ModeEnumMap[enumValue];
//     default:
//       return enumValue.toString();
//   }
// }

// /// Simple enum to String function, just takes whatever is after the "." and
// /// returns it as a String
// String? simpleEnumToString<T>(T enumValue) =>
//     enumValue?.toString().split('.').last;
