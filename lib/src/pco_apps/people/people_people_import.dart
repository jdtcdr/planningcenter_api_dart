/// This file was generated on 2021-11-18T13:57:10.010653


import '../../pco.dart';

/// This class represents a PCO People PeopleImport Object
/// 
/// Application: people
/// Id:          people_import
/// Type:        PeopleImport
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A PeopleImport is a record of an ongoing or previous import from a CSV file.
/// 
/// Example:
/// 
/// {"type":"PeopleImport","id":"1","attributes":{"attribs":"string","status":"value","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","processed_at":"2000-01-01T12:00:00Z","undone_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/people_imports
/// 
class PcoPeoplePeopleImport extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'PeopleImport';
  static const String typeId = 'people_import';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'peopleimport-organization-people_imports';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people_imports';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kAttribs = 'attribs';
  static const kStatus = 'status';
  static const kProcessedAt = 'processed_at';
  static const kUndoneAt = 'undone_at';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get attribs => attributes[kAttribs] ?? '';

  /// Possible values: `matching`, `processing_preview`, `previewing`, `processing_import`, `complete`, `undone`, or `undoing`
  String get status => attributes[kStatus] ?? '';
  DateTime get processedAt => DateTime.parse(attributes[kProcessedAt] ?? '');
  DateTime get undoneAt => DateTime.parse(attributes[kUndoneAt] ?? '');




  PcoPeoplePeopleImport() : super(pcoApplication, typeString);
  PcoPeoplePeopleImport.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeoplePeopleImport Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports;
  static Future<List<PcoPeoplePeopleImport>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePeopleImport> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people_imports';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePeopleImport.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeoplePeopleImport Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports;
  static Future<PcoPeoplePeopleImport?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePeopleImport?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people_imports' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePeopleImport.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeoplePeopleImportConflict objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts
Future<List<PcoPeoplePeopleImportConflict>> getPeopleImportConflictsConflicts({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePeopleImportConflict> retval = [];
  var url = '$apiEndpoint/conflicts';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePeopleImportConflict.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePeopleImportHistory objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/histories
Future<List<PcoPeoplePeopleImportHistory>> getPeopleImportHistoriesHistories({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePeopleImportHistory> retval = [];
  var url = '$apiEndpoint/histories';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePeopleImportHistory.fromJson(itemData));
    }
  }
  return retval;
}
    

}
