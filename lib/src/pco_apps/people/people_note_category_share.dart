/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:17:42.742597
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


import '../../pco.dart';

/// This class represents a PCO People NoteCategoryShare Object
/// 
/// - Application:        people
/// - Id:                 note_category_share
/// - Type:               NoteCategoryShare
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/note_categories/1/shares
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/note_categories/1/shares
/// 
/// ## Description
/// A note category share defines who can view notes in a category.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `group` (rw) -> PCO: `group`
/// - `personId` (rw) -> PCO: `person_id`
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
/// - `notecategoryshare-notecategory-shares`: https://api.planningcenteronline.com/people/v2/note_categories/1/shares
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "NoteCategoryShare",
///   "id": "1",
///   "attributes": {
///     "group": "value",
///     "person_id": "primary_key"
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "note_category": {
///       "data": {
///         "type": "NoteCategory",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleNoteCategoryShare extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'NoteCategoryShare';
  static const String kTypeId = 'note_category_share';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/note_categories/1/shares';
  static const String kCreatePathTemplate = 'https://api.planningcenteronline.com/people/v2/note_categories/1/shares';

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
  static const kGroup = 'group';
  static const kPersonId = 'person_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['group', 'person_id'];

  @override
  List<String> get updateAllowed => ['group', 'person_id'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get group => attributes[kGroup] ?? '';
  String get personId => attributes[kPersonId] ?? '';  
  
  // setters for object attributes
  
  /// Possible values: `No Access`, `Viewer`, `Editor`, or `Manager`
  
  /// pass `null` to remove key from attributes
  set group(String? x) => (x == null) ? attributes.remove(kGroup) : attributes[kGroup] = x;
  
  /// pass `null` to remove key from attributes
  set personId(String? x) => (x == null) ? attributes.remove(kPersonId) : attributes[kPersonId] = x;  


  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships
  
  




  // Class Constructors
  PcoPeopleNoteCategoryShare.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);
  PcoPeopleNoteCategoryShare.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleNoteCategoryShare] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/note_categories/$noteCategoryId/shares`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleNoteCategoryShare(String noteCategoryId, { String? group, String? personId }) {
    var obj = PcoPeopleNoteCategoryShare.empty();
    obj._apiPathOverride = 'https://api.planningcenteronline.com/people/v2/note_categories/$noteCategoryId/shares';
    if (group != null) obj.group = group;
    if (personId != null) obj.personId = personId;
    return obj;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleNoteCategoryShare] objects (expecting one)
  /// using a path like this: `/people/v2/note_categories/$noteCategoryId/shares`
  static Future<PcoCollection<PcoPeopleNoteCategoryShare>> getSharesFromNoteCategory(String noteCategoryId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNoteCategoryShare.canInclude;
    var url = '/people/v2/note_categories/$noteCategoryId/shares';
    
    return PcoCollection.fromApiCall<PcoPeopleNoteCategoryShare>(url, query: query, apiVersion:kApiVersion);
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
