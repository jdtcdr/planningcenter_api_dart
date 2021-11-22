/// This file was generated on 2021-11-22T16:37:09.145940


import '../../pco.dart';

/// This class represents a PCO People PeopleImportConflict Object
/// 
/// Application: people
/// Id:          people_import_conflict
/// Type:        PeopleImportConflict
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A PeopleImportConflict is a record of change that will occur if the parent PeopleImport is completed.
/// 
/// Example:
/// 
/// {"type":"PeopleImportConflict","id":"1","attributes":{"kind":"string","name":"string","message":"string","data":"string","conflicting_changes":"string","ignore":true,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @kind (URLParameter), query on a specific kind, example: ?where[kind]=string
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// possible orderings with parameter ?order=

///
class PcoPeoplePeopleImportConflict extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'PeopleImportConflict';
  static const String kTypeId = 'people_import_conflict';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'peopleimportconflict-peopleimport-conflicts';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @kind (URLParameter), query on a specific kind, example: ?where[kind]=string
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  static List<String> get canQuery => ['kind','name'];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kKind = 'kind';
  static const kName = 'name';
  static const kMessage = 'message';
  static const kData = 'data';
  static const kConflictingChanges = 'conflicting_changes';
  static const kIgnore = 'ignore';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get kind => attributes[kKind] ?? '';
  String get name => attributes[kName] ?? '';
  String get message => attributes[kMessage] ?? '';
  String get data => attributes[kData] ?? '';
  String get conflictingChanges => attributes[kConflictingChanges] ?? '';
  bool get isIgnore => attributes[kIgnore] == true;




  PcoPeoplePeopleImportConflict() : super(kPcoApplication, kTypeString);
  PcoPeoplePeopleImportConflict.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeoplePeopleImportConflict Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts;
  static Future<List<PcoPeoplePeopleImportConflict>> getManyFromPeopleImportAndConflictIds(String peopleImportId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePeopleImportConflict> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePeopleImportConflict.canInclude;
    var url = '/people/v2/people_imports/$peopleImportId/conflicts';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePeopleImportConflict.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeoplePeopleImportConflict Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts;
  static Future<PcoPeoplePeopleImportConflict?> getSingleFromPeopleImportAndConflictIds(String peopleImportId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePeopleImportConflict?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePeopleImportConflict.canInclude;
    var url = '/people/v2/people_imports/$peopleImportId/conflicts' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePeopleImportConflict.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }





}
