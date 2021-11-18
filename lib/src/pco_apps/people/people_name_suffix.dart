/// This file was generated on 2021-11-17T23:59:29.896075


import '../../pco.dart';

/// This class represents a PCO People NameSuffix Object
/// 
/// Application: people
/// Id:          name_suffix
/// Type:        NameSuffix
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A name suffix is one of Sr., Jr., etc.
/// 
/// Example:
/// 
/// {"type":"NameSuffix","id":"1","attributes":{"value":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/name_suffixes
/// 
class PcoPeopleNameSuffix extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'NameSuffix';
  static const String typeId = 'name_suffix';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'namesuffix-organization-name_suffixes';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/name_suffixes';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kValue = 'value';


  // getters and setters
  @override
  List<String> get createAllowed => ['value'];
  @override
  List<String> get updateAllowed => ['value'];

  String get value => attributes[kValue] ?? '';


  set value(String s) => attributes[kValue] = s;


  PcoPeopleNameSuffix() : super(pcoApplication, typeString);
  PcoPeopleNameSuffix.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleNameSuffix Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/name_suffixes;
  static Future<List<PcoPeopleNameSuffix>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleNameSuffix> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/name_suffixes';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleNameSuffix.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleNameSuffix Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/name_suffix;
  static Future<List<PcoPeopleNameSuffix>> getManyFromPeopleAndNameSuffixIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleNameSuffix> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/name_suffix';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleNameSuffix.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleNameSuffix Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/name_suffixes;
  static Future<PcoPeopleNameSuffix?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleNameSuffix?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/name_suffixes' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleNameSuffix.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleNameSuffix Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/name_suffix;
  static Future<PcoPeopleNameSuffix?> getSingleFromPeopleAndNameSuffixIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleNameSuffix?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/name_suffix' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleNameSuffix.fromJson(res.data);
    }
    return retval;
  }




}
