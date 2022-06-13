/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:17:42.807938
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO Calendar ReportTemplate Object
///
/// - Application:        calendar
/// - Id:                 report_template
/// - Type:               ReportTemplate
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/report_templates
/// - Create Endpoint:    NONE
///
/// ## Description
/// A template for generating a report.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `body` (rw) -> PCO: `body`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `description` (rw) -> PCO: `description`
/// - `title` (rw) -> PCO: `title`
/// - `updatedAt` (ro) -> PCO: `updated_at`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// NONE
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// NONE
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// NONE
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `reporttemplate-organization-report_templates`: https://api.planningcenteronline.com/calendar/v2/report_templates
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "ReportTemplate",
///   "id": "1",
///   "attributes": {
///     "body": "string",
///     "created_at": "string",
///     "description": "string",
///     "title": "string",
///     "updated_at": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCalendarReportTemplate extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'ReportTemplate';
  static const String kTypeId = 'report_template';
  static const String kApiVersion = '2020-04-08';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/calendar/v2/report_templates';
  static const String kCreatePathTemplate = 'null';

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
  String get createPathTemplate => kCreatePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kBody = 'body';
  static const kCreatedAt = 'created_at';
  static const kDescription = 'description';
  static const kTitle = 'title';
  static const kUpdatedAt = 'updated_at';

  // getters and setters
  @override
  List<String> get createAllowed => ['body', 'description', 'title'];

  @override
  List<String> get updateAllowed => ['body', 'description', 'title'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get body => attributes[kBody] ?? '';
  String get description => attributes[kDescription] ?? '';
  String get title => attributes[kTitle] ?? '';

  // setters for object attributes

  /// The contents of the report template

  /// pass `null` to remove key from attributes
  set body(String? x) =>
      (x == null) ? attributes.remove(kBody) : attributes[kBody] = x;

  /// A summarization of the report

  /// pass `null` to remove key from attributes
  set description(String? x) => (x == null)
      ? attributes.remove(kDescription)
      : attributes[kDescription] = x;

  /// The title of the report

  /// pass `null` to remove key from attributes
  set title(String? x) =>
      (x == null) ? attributes.remove(kTitle) : attributes[kTitle] = x;

  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships

  // Class Constructors
  PcoCalendarReportTemplate.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoCalendarReportTemplate.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoCalendarReportTemplate] objects (expecting many)
  /// using a path like this: `/calendar/v2/report_templates`
  static Future<PcoCollection<PcoCalendarReportTemplate>> get(
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarReportTemplate.canInclude;
    var url = '/calendar/v2/report_templates';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarReportTemplate>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
