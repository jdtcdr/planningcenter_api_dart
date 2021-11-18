/// This file was generated on 2021-11-17T23:59:29.918441


import '../../pco.dart';

/// This class represents a PCO People ServiceTime Object
/// 
/// Application: people
/// Id:          service_time
/// Type:        ServiceTime
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A ServiceTime Resource
/// 
/// Example:
/// 
/// {"type":"ServiceTime","id":"1","attributes":{"start_time":1,"day":"value","description":"string"},"relationships":{"organization":{"data":{"type":"Organization","id":"1"}},"campus":{"data":{"type":"Campus","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/campuses/1/service_times
/// 
class PcoPeopleServiceTime extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'ServiceTime';
  static const String typeId = 'service_time';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'servicetime-campus-service_times';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/campuses/1/service_times';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kStartTime = 'start_time';
  static const kDay = 'day';
  static const kDescription = 'description';


  // getters and setters
  @override
  List<String> get createAllowed => ['start_time','day','description'];
  @override
  List<String> get updateAllowed => ['start_time','day','description'];

  int get startTime => attributes[kStartTime] ?? 0;

  /// Possible values: `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, or `saturday`
  String get day => attributes[kDay] ?? '';
  String get description => attributes[kDescription] ?? '';


  set startTime(int n) => attributes[kStartTime] = n;

  /// Possible values: `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, or `saturday`
  set day(String s) => attributes[kDay] = s;
  set description(String s) => attributes[kDescription] = s;


  PcoPeopleServiceTime() : super(pcoApplication, typeString);
  PcoPeopleServiceTime.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleServiceTime Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/campuses/1/service_times;
  static Future<List<PcoPeopleServiceTime>> getManyFromCampusAndServiceTimeIds(String campusId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleServiceTime> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/campuses/$campusId/service_times';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleServiceTime.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleServiceTime Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/campuses/1/service_times;
  static Future<PcoPeopleServiceTime?> getSingleFromCampusAndServiceTimeIds(String campusId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleServiceTime?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/campuses/$campusId/service_times' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleServiceTime.fromJson(res.data);
    }
    return retval;
  }




}
