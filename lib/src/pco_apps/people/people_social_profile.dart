/// This file was generated on 2021-11-17T23:59:29.919012


import '../../pco.dart';

/// This class represents a PCO People SocialProfile Object
/// 
/// Application: people
/// Id:          social_profile
/// Type:        SocialProfile
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A social profile represents a members's Twitter, Facebook, or other social media account.
/// 
/// Example:
/// 
/// {"type":"SocialProfile","id":"1","attributes":{"site":"string","url":"string","verified":true,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/social_profiles
/// 
class PcoPeopleSocialProfile extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'SocialProfile';
  static const String typeId = 'social_profile';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'socialprofile-organization-social_profiles';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/social_profiles';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kSite = 'site';
  static const kUrl = 'url';
  static const kVerified = 'verified';


  // getters and setters
  @override
  List<String> get createAllowed => ['site','url','verified'];
  @override
  List<String> get updateAllowed => ['site','url','verified'];

  String get site => attributes[kSite] ?? '';
  String get url => attributes[kUrl] ?? '';
  bool get isVerified => attributes[kVerified] == true;


  set site(String s) => attributes[kSite] = s;
  set url(String s) => attributes[kUrl] = s;
  set isVerified(bool b) => attributes[kVerified] = b;


  PcoPeopleSocialProfile() : super(pcoApplication, typeString);
  PcoPeopleSocialProfile.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleSocialProfile Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/social_profiles;
  static Future<List<PcoPeopleSocialProfile>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleSocialProfile> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/social_profiles';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleSocialProfile.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleSocialProfile Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/social_profiles;
  static Future<List<PcoPeopleSocialProfile>> getManyFromPeopleAndSocialProfileIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleSocialProfile> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/social_profiles';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleSocialProfile.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleSocialProfile Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/social_profiles;
  static Future<PcoPeopleSocialProfile?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleSocialProfile?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/social_profiles' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleSocialProfile.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleSocialProfile Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/social_profiles;
  static Future<PcoPeopleSocialProfile?> getSingleFromPeopleAndSocialProfileIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleSocialProfile?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/social_profiles' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleSocialProfile.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/social_profiles/1/person
Future<List<PcoPeoplePerson>> getPersons({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/person';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData));
    }
  }
  return retval;
}
    

}
