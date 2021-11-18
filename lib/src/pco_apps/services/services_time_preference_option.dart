/// This file was generated on 2021-11-18T13:57:09.767738


import '../../pco.dart';

/// This class represents a PCO Services TimePreferenceOption Object
/// 
/// Application: services
/// Id:          time_preference_option
/// Type:        TimePreferenceOption
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A Service Time a person prefers to be scheduled to.
/// 
/// Example:
/// 
/// {"type":"TimePreferenceOption","id":"1","attributes":{"day_of_week":1,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","description":"string","sort_index":"string","time_type":"string","minute_of_day":1,"starts_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/service_types/1/time_preference_options
/// 
class PcoServicesTimePreferenceOption extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'TimePreferenceOption';
  static const String typeId = 'time_preference_option';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'timepreferenceoption-servicetype-time_preference_options';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/time_preference_options';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kDayOfWeek = 'day_of_week';
  static const kDescription = 'description';
  static const kSortIndex = 'sort_index';
  static const kTimeType = 'time_type';
  static const kMinuteOfDay = 'minute_of_day';
  static const kStartsAt = 'starts_at';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  int get dayOfWeek => attributes[kDayOfWeek] ?? 0;
  String get description => attributes[kDescription] ?? '';
  String get sortIndex => attributes[kSortIndex] ?? '';
  String get timeType => attributes[kTimeType] ?? '';

  /// 0 for 12:00 am, 1 for 12:01 am, 100 for 1:00 am, through 2359 for 11:59pm
  int get minuteOfDay => attributes[kMinuteOfDay] ?? 0;
  DateTime get startsAt => DateTime.parse(attributes[kStartsAt] ?? '');




  PcoServicesTimePreferenceOption() : super(pcoApplication, typeString);
  PcoServicesTimePreferenceOption.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesTimePreferenceOption Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/time_preference_options;
  static Future<List<PcoServicesTimePreferenceOption>> getManyFromServiceTypeAndTimePreferenceOptionIds(String serviceTypeId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesTimePreferenceOption> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/time_preference_options';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTimePreferenceOption.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesTimePreferenceOption Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/time_preference_options;
  static Future<PcoServicesTimePreferenceOption?> getSingleFromServiceTypeAndTimePreferenceOptionIds(String serviceTypeId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesTimePreferenceOption?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/time_preference_options' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTimePreferenceOption.fromJson(res.data);
    }
    return retval;
  }




}
