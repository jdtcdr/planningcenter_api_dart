/// This file was generated on 2022-03-04T20:00:53.375721


import '../../pco.dart';

/// This class represents a PCO Services Organization Object
/// 
/// - Application:        services
/// - Id:                 organization
/// - Type:               Organization
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2
/// 
/// Description:
/// The root level of an organization where account-level settings are applied.
/// 
/// Example:
/// ```json
/// {
///   "type": "Organization",
///   "id": "1",
///   "attributes": {
///     "ccli": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "date_format": 1,
///     "music_stand_enabled": true,
///     "name": "string",
///     "projector_enabled": true,
///     "time_zone": "string",
///     "twenty_four_hour_time": true,
///     "updated_at": "2000-01-01T12:00:00Z",
///     "owner_name": "string",
///     "required_to_set_download_permission": "string",
///     "secret": "string",
///     "allow_mp3_download": true,
///     "calendar_starts_on_sunday": true,
///     "ccli_connected": true,
///     "ccli_reporting_enabled": true,
///     "extra_file_storage_allowed": true,
///     "file_storage_exceeded": true,
///     "file_storage_size": true,
///     "file_storage_size_used": true,
///     "file_storage_extra_enabled": true,
///     "rehearsal_mix_enabled": true,
///     "legacy_id": "primary_key",
///     "file_storage_extra_charges": 1,
///     "people_allowed": 1,
///     "people_remaining": 1,
///     "beta": true
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `attachmenttype-organization-attachment_types`: https://api.planningcenteronline.com/services/v2/attachment_types
/// - `emailtemplate-organization-email_templates`: https://api.planningcenteronline.com/services/v2/email_templates
/// - `folder-organization-folders`: https://api.planningcenteronline.com/services/v2/folders
/// - `media-organization-media`: https://api.planningcenteronline.com/services/v2/media
/// - `person-organization-people`: https://api.planningcenteronline.com/services/v2/people
/// - `organization-organization-plans`: https://api.planningcenteronline.com/services/v2/plans
/// - `reporttemplate-organization-report_templates`: https://api.planningcenteronline.com/services/v2/report_templates
/// - `series-organization-series`: https://api.planningcenteronline.com/services/v2/series
/// - `servicetype-organization-service_types`: https://api.planningcenteronline.com/services/v2/service_types
/// - `song-organization-songs`: https://api.planningcenteronline.com/services/v2/songs
/// - `taggroup-organization-tag_groups`: https://api.planningcenteronline.com/services/v2/tag_groups
/// - `team-organization-teams`: https://api.planningcenteronline.com/services/v2/teams
/// 
/// All Inbound Edges:
/// - `organization-organization-plans`: https://api.planningcenteronline.com/services/v2/plans
/// 
/// All Actions:
/// NONE
///
class PcoServicesOrganization extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Organization';
  static const String kTypeId = 'organization';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// 
  static List<String> get canOrderBy => [];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kCcli = 'ccli';
  static const kCreatedAt = 'created_at';
  static const kDateFormat = 'date_format';
  static const kMusicStandEnabled = 'music_stand_enabled';
  static const kName = 'name';
  static const kProjectorEnabled = 'projector_enabled';
  static const kTimeZone = 'time_zone';
  static const kTwentyFourHourTime = 'twenty_four_hour_time';
  static const kUpdatedAt = 'updated_at';
  static const kOwnerName = 'owner_name';
  static const kRequiredToSetDownloadPermission = 'required_to_set_download_permission';
  static const kSecret = 'secret';
  static const kAllowMp3Download = 'allow_mp3_download';
  static const kCalendarStartsOnSunday = 'calendar_starts_on_sunday';
  static const kCcliConnected = 'ccli_connected';
  static const kCcliReportingEnabled = 'ccli_reporting_enabled';
  static const kExtraFileStorageAllowed = 'extra_file_storage_allowed';
  static const kFileStorageExceeded = 'file_storage_exceeded';
  static const kFileStorageSize = 'file_storage_size';
  static const kFileStorageSizeUsed = 'file_storage_size_used';
  static const kFileStorageExtraEnabled = 'file_storage_extra_enabled';
  static const kRehearsalMixEnabled = 'rehearsal_mix_enabled';
  static const kLegacyId = 'legacy_id';
  static const kFileStorageExtraCharges = 'file_storage_extra_charges';
  static const kPeopleAllowed = 'people_allowed';
  static const kPeopleRemaining = 'people_remaining';
  static const kBeta = 'beta';


  // getters and setters
  @override
  List<String> get createAllowed => [];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes

  String get ccli => attributes[kCcli] ?? '';
  int get dateFormat => attributes[kDateFormat] ?? 0;
  bool get isMusicStandEnabled => attributes[kMusicStandEnabled] == true;
  String get name => attributes[kName] ?? '';
  bool get isProjectorEnabled => attributes[kProjectorEnabled] == true;
  String get timeZone => attributes[kTimeZone] ?? '';
  bool get isTwentyFourHourTime => attributes[kTwentyFourHourTime] == true;
  String get ownerName => attributes[kOwnerName] ?? '';
  String get requiredToSetDownloadPermission => attributes[kRequiredToSetDownloadPermission] ?? '';
  String get secret => attributes[kSecret] ?? '';
  bool get isAllowMp3Download => attributes[kAllowMp3Download] == true;
  bool get isCalendarStartsOnSunday => attributes[kCalendarStartsOnSunday] == true;
  bool get isCcliConnected => attributes[kCcliConnected] == true;
  bool get isCcliReportingEnabled => attributes[kCcliReportingEnabled] == true;
  bool get isExtraFileStorageAllowed => attributes[kExtraFileStorageAllowed] == true;
  bool get isFileStorageExceeded => attributes[kFileStorageExceeded] == true;
  bool get isFileStorageSize => attributes[kFileStorageSize] == true;
  bool get isFileStorageSizeUsed => attributes[kFileStorageSizeUsed] == true;
  bool get isFileStorageExtraEnabled => attributes[kFileStorageExtraEnabled] == true;
  bool get isRehearsalMixEnabled => attributes[kRehearsalMixEnabled] == true;
  String get legacyId => attributes[kLegacyId] ?? '';
  int get fileStorageExtraCharges => attributes[kFileStorageExtraCharges] ?? 0;
  int get peopleAllowed => attributes[kPeopleAllowed] ?? 0;
  int get peopleRemaining => attributes[kPeopleRemaining] ?? 0;
  bool get isBeta => attributes[kBeta] == true;
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesOrganization() : super(kPcoApplication, kTypeString);
  PcoServicesOrganization.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesOrganization] objects (expecting many)
  /// using a path like this: `/services/v2`
  static Future<PcoCollection<PcoServicesOrganization>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesOrganization.canInclude;
    var url = '/services/v2';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesOrganization>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesAttachmentType] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/attachment_types`
  Future<PcoCollection<PcoServicesAttachmentType>> getAttachmentTypes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachmentType.canInclude;
    var url = '$apiEndpoint/attachment_types';
    return PcoCollection.fromApiCall<PcoServicesAttachmentType>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesEmailTemplate] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/email_templates`
  Future<PcoCollection<PcoServicesEmailTemplate>> getEmailTemplates({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesEmailTemplate.canInclude;
    var url = '$apiEndpoint/email_templates';
    return PcoCollection.fromApiCall<PcoServicesEmailTemplate>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesFolder] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/folders`
  Future<PcoCollection<PcoServicesFolder>> getFolders({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesFolder.canInclude;
    var url = '$apiEndpoint/folders';
    return PcoCollection.fromApiCall<PcoServicesFolder>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesMedia] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/media`
  /// 
  /// Available Query Filters:
  /// - `archived`
  /// - `audio`
  /// - `background_audio`
  /// - `background_image`
  /// - `background_video`
  /// - `countdown`
  /// - `document`
  /// - `drama`
  /// - `image`
  /// - `not_archived`
  /// - `powerpoint`
  /// - `song_video`
  /// - `video`
  Future<PcoCollection<PcoServicesMedia>> getMedia({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesMedia.canInclude;
    var url = '$apiEndpoint/media';
    return PcoCollection.fromApiCall<PcoServicesMedia>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people`
  Future<PcoCollection<PcoServicesPerson>> getPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '$apiEndpoint/people';
    return PcoCollection.fromApiCall<PcoServicesPerson>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesOrganization] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/plans`
  Future<PcoCollection<PcoServicesOrganization>> getPlans({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesOrganization.canInclude;
    var url = '$apiEndpoint/plans';
    return PcoCollection.fromApiCall<PcoServicesOrganization>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesReportTemplate] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/report_templates`
  /// 
  /// Available Query Filters:
  /// - `matrix`
  /// - `people`
  /// - `plans`
  /// - `without_defaults`
  Future<PcoCollection<PcoServicesReportTemplate>> getReportTemplates({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesReportTemplate.canInclude;
    var url = '$apiEndpoint/report_templates';
    return PcoCollection.fromApiCall<PcoServicesReportTemplate>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesSeries] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/series`
  Future<PcoCollection<PcoServicesSeries>> getSeries({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSeries.canInclude;
    var url = '$apiEndpoint/series';
    return PcoCollection.fromApiCall<PcoServicesSeries>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesServiceType] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types`
  /// 
  /// Available Query Filters:
  /// - `no_parent`
  Future<PcoCollection<PcoServicesServiceType>> getServiceTypes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesServiceType.canInclude;
    var url = '$apiEndpoint/service_types';
    return PcoCollection.fromApiCall<PcoServicesServiceType>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesSong] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/songs`
  Future<PcoCollection<PcoServicesSong>> getSongs({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSong.canInclude;
    var url = '$apiEndpoint/songs';
    return PcoCollection.fromApiCall<PcoServicesSong>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTagGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/tag_groups`
  /// 
  /// Available Query Filters:
  /// - `arrangement`
  /// - `media`
  /// - `person`
  /// - `song`
  Future<PcoCollection<PcoServicesTagGroup>> getTagGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTagGroup.canInclude;
    var url = '$apiEndpoint/tag_groups';
    return PcoCollection.fromApiCall<PcoServicesTagGroup>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/teams`
  Future<PcoCollection<PcoServicesTeam>> getTeams({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '$apiEndpoint/teams';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
