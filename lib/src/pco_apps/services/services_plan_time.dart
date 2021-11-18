/// This file was generated on 2021-11-18T13:57:09.744070


import '../../pco.dart';

/// This class represents a PCO Services PlanTime Object
/// 
/// Application: services
/// Id:          plan_time
/// Type:        PlanTime
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A time in a plan.
/// 
/// Example:
/// 
/// {"type":"PlanTime","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","name":"string","time_type":1,"recorded":true,"team_reminders":[],"starts_at":"2000-01-01T12:00:00Z","ends_at":"2000-01-01T12:00:00Z","live_starts_at":"2000-01-01T12:00:00Z","live_ends_at":"2000-01-01T12:00:00Z"},"relationships":{"assigned_teams":{"data":[{"type":"Team","id":"1"}]}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/people/1/next_plan_time
/// 
class PcoServicesPlanTime extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'PlanTime';
  static const String typeId = 'plan_time';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = '';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/next_plan_time';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kName = 'name';
  static const kTimeType = 'time_type';
  static const kRecorded = 'recorded';
  static const kTeamReminders = 'team_reminders';
  static const kStartsAt = 'starts_at';
  static const kEndsAt = 'ends_at';
  static const kLiveStartsAt = 'live_starts_at';
  static const kLiveEndsAt = 'live_ends_at';


  // getters and setters
  @override
  List<String> get createAllowed => ['starts_at','ends_at','name','time_type','team_reminders'];
  @override
  List<String> get updateAllowed => ['starts_at','ends_at','name','time_type','team_reminders'];

  String get name => attributes[kName] ?? '';

  /// Possible values are:
  ///- rehearsal
  ///- service
  ///- other
  int get timeType => attributes[kTimeType] ?? 0;
  bool get isRecorded => attributes[kRecorded] == true;

  /// A Hash that maps a Team ID to a reminder value. If nothing is specified, no reminder is set for that team. A reminder value is an integer (0-7) equal to the number of days before the selected time a reminder should be sent.
  List get teamReminders => attributes[kTeamReminders] ?? [];

  /// Planned start time.
  DateTime get startsAt => DateTime.parse(attributes[kStartsAt] ?? '');

  /// Planned end time.
  DateTime get endsAt => DateTime.parse(attributes[kEndsAt] ?? '');

  /// Start time as recorded by Services LIVE.
  DateTime get liveStartsAt => DateTime.parse(attributes[kLiveStartsAt] ?? '');

  /// End time as recorded by Services LIVE.
  DateTime get liveEndsAt => DateTime.parse(attributes[kLiveEndsAt] ?? '');


  set name(String s) => attributes[kName] = s;

  /// Possible values are:
  ///- rehearsal
  ///- service
  ///- other
  set timeType(int n) => attributes[kTimeType] = n;

  /// A Hash that maps a Team ID to a reminder value. If nothing is specified, no reminder is set for that team. A reminder value is an integer (0-7) equal to the number of days before the selected time a reminder should be sent.
  set teamReminders(List a) => attributes[kTeamReminders] = a;

  /// Planned start time.
  set startsAt(DateTime d) => attributes[kStartsAt] = d.toIso8601String();

  /// Planned end time.
  set endsAt(DateTime d) => attributes[kEndsAt] = d.toIso8601String();


  PcoServicesPlanTime() : super(pcoApplication, typeString);
  PcoServicesPlanTime.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesPlanTime Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/time;
  static Future<List<PcoServicesPlanTime>> getManyFromPeopleAndUpPlanAndNeededPositionAndTimeIds(String peopleId,String upPlanId,String neededPositionId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesPlanTime> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/next_up_plans/$upPlanId/needed_positions/$neededPositionId/time';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlanTime.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPlanTime Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/declined_plan_times;
  static Future<List<PcoServicesPlanTime>> getManyFromPeopleAndPlanPeopleAndDeclinedPlanTimeIds(String peopleId,String planPeopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesPlanTime> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/plan_people/$planPeopleId/declined_plan_times';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlanTime.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPlanTime Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_times;
  static Future<List<PcoServicesPlanTime>> getManyFromPeopleAndPlanPeopleAndPlanTimeIds(String peopleId,String planPeopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesPlanTime> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/plan_people/$planPeopleId/plan_times';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlanTime.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPlanTime Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/plan_times;
  static Future<List<PcoServicesPlanTime>> getManyFromServiceTypeAndPlanAndPlanTimeIds(String serviceTypeId,String planId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesPlanTime> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/plan_times';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlanTime.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPlanTime Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/declined_plan_times;
  static Future<List<PcoServicesPlanTime>> getManyFromPeopleAndScheduleAndDeclinedPlanTimeIds(String peopleId,String scheduleId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesPlanTime> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/schedules/$scheduleId/declined_plan_times';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlanTime.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPlanTime Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/plan_times;
  static Future<List<PcoServicesPlanTime>> getManyFromPeopleAndScheduleAndPlanTimeIds(String peopleId,String scheduleId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesPlanTime> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/schedules/$scheduleId/plan_times';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlanTime.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPlanTime Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_times;
  static Future<List<PcoServicesPlanTime>> getManyFromServiceTypeAndPlanTimeIds(String serviceTypeId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesPlanTime> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plan_times';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlanTime.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesPlanTime Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/time;
  static Future<PcoServicesPlanTime?> getSingleFromPeopleAndUpPlanAndNeededPositionAndTimeIds(String peopleId,String upPlanId,String neededPositionId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesPlanTime?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/next_up_plans/$upPlanId/needed_positions/$neededPositionId/time' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlanTime.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesPlanTime Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/declined_plan_times;
  static Future<PcoServicesPlanTime?> getSingleFromPeopleAndPlanPeopleAndDeclinedPlanTimeIds(String peopleId,String planPeopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesPlanTime?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/plan_people/$planPeopleId/declined_plan_times' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlanTime.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesPlanTime Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_times;
  static Future<PcoServicesPlanTime?> getSingleFromPeopleAndPlanPeopleAndPlanTimeIds(String peopleId,String planPeopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesPlanTime?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/plan_people/$planPeopleId/plan_times' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlanTime.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesPlanTime Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/plan_times;
  static Future<PcoServicesPlanTime?> getSingleFromServiceTypeAndPlanAndPlanTimeIds(String serviceTypeId,String planId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesPlanTime?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/plan_times' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlanTime.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesPlanTime Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/declined_plan_times;
  static Future<PcoServicesPlanTime?> getSingleFromPeopleAndScheduleAndDeclinedPlanTimeIds(String peopleId,String scheduleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesPlanTime?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/schedules/$scheduleId/declined_plan_times' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlanTime.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesPlanTime Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/plan_times;
  static Future<PcoServicesPlanTime?> getSingleFromPeopleAndScheduleAndPlanTimeIds(String peopleId,String scheduleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesPlanTime?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/schedules/$scheduleId/plan_times' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlanTime.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesPlanTime Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_times;
  static Future<PcoServicesPlanTime?> getSingleFromServiceTypeAndPlanTimeIds(String serviceTypeId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesPlanTime?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plan_times' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlanTime.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoServicesSplitTeamRehearsalAssignment objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments
Future<List<PcoServicesSplitTeamRehearsalAssignment>> getSplitTeamRehearsalAssignments({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesSplitTeamRehearsalAssignment> retval = [];
  var url = '$apiEndpoint/split_team_rehearsal_assignments';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesSplitTeamRehearsalAssignment.fromJson(itemData));
    }
  }
  return retval;
}
    

}
