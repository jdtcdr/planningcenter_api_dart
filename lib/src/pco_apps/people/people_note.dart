/// This file was generated on 2022-03-04T15:29:14.459483


import '../../pco.dart';

/// This class represents a PCO People Note Object
/// 
/// - Application:        people
/// - Id:                 note
/// - Type:               Note
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/notes
/// 
/// Description:
/// A note is text with a category connected to a person’s profile.
/// 
/// Example:
/// ```json
/// {
///   "type": "Note",
///   "id": "1",
///   "attributes": {
///     "note": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "display_date": "2000-01-01T12:00:00Z",
///     "note_category_id": "primary_key",
///     "organization_id": "primary_key",
///     "person_id": "primary_key",
///     "created_by_id": "primary_key"
///   },
///   "relationships": {
///     "note_category": {
///       "data": {
///         "type": "NoteCategory",
///         "id": "1"
///       }
///     },
///     "organization": {
///       "data": {
///         "type": "Organization",
///         "id": "1"
///       }
///     },
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "created_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - category: include associated category 
/// - created_by: include associated created_by 
/// - person: include associated person 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `note`: (URLParameter), query on a specific note, example: ?where[note]=string
/// - `note_category_id`: (URLParameter), query on a specific note_category_id, example: ?where[note_category_id]=primary_key
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `display_date`: (URLParameter), prefix with a hyphen (-display_date) to reverse the order
/// - `id`: (URLParameter), prefix with a hyphen (-id) to reverse the order
/// - `note`: (URLParameter), prefix with a hyphen (-note) to reverse the order
/// - `note_category_id`: (URLParameter), prefix with a hyphen (-note_category_id) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `notecategory-note-category`: https://api.planningcenteronline.com/people/v2/notes/1/category
/// - `person-note-created_by`: https://api.planningcenteronline.com/people/v2/notes/1/created_by
/// - `person-note-person`: https://api.planningcenteronline.com/people/v2/notes/1/person
/// 
/// All Inbound Edges:
/// - `note-organization-notes`: https://api.planningcenteronline.com/people/v2/notes
/// - `note-person-notes`: https://api.planningcenteronline.com/people/v2/people/1/notes
/// 
/// All Actions:
/// NONE
///
class PcoPeopleNote extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Note';
  static const String kTypeId = 'note';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'note-organization-notes';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/notes';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/notes';

  /// possible includes with parameter ?include=a,b
  /// - `category`: include associated category 
  /// - `created_by`: include associated created_by 
  /// - `person`: include associated person 
  static List<String> get canInclude => ['category','created_by','person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `note`: (URLParameter), query on a specific note, example: ?where[note]=string
  /// - `note_category_id`: (URLParameter), query on a specific note_category_id, example: ?where[note_category_id]=primary_key
  static List<String> get canQuery => ['note','note_category_id'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `display_date`: (URLParameter), prefix with a hyphen (-display_date) to reverse the order
  /// - `id`: (URLParameter), prefix with a hyphen (-id) to reverse the order
  /// - `note`: (URLParameter), prefix with a hyphen (-note) to reverse the order
  /// - `note_category_id`: (URLParameter), prefix with a hyphen (-note_category_id) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','display_date','id','note','note_category_id','updated_at'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kId = 'id';
  static const kNote = 'note';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kDisplayDate = 'display_date';
  static const kNoteCategoryId = 'note_category_id';
  static const kOrganizationId = 'organization_id';
  static const kPersonId = 'person_id';
  static const kCreatedById = 'created_by_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['note','created_at','updated_at','display_date','note_category_id'];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get note => attributes[kNote] ?? '';
  DateTime get displayDate => DateTime.parse(attributes[kDisplayDate] ?? '');
  String get noteCategoryId => attributes[kNoteCategoryId] ?? '';
  String get organizationId => attributes[kOrganizationId] ?? '';
  String get personId => attributes[kPersonId] ?? '';
  String get createdById => attributes[kCreatedById] ?? '';
  

  // setters for object attributes

  set note(String s) => attributes[kNote] = s;
  set createdAt(DateTime d) => attributes[kCreatedAt] = d.toIso8601String();
  set updatedAt(DateTime d) => attributes[kUpdatedAt] = d.toIso8601String();
  set displayDate(DateTime d) => attributes[kDisplayDate] = d.toIso8601String();
  set noteCategoryId(String s) => attributes[kNoteCategoryId] = s;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoPeopleNote() : super(kPcoApplication, kTypeString);
  PcoPeopleNote.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleNote] objects (expecting many)
  /// using a path like this: `/people/v2/notes`
  static Future<PcoCollection<PcoPeopleNote>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNote.canInclude;
    var url = '/people/v2/notes';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNote>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleNote] objects (expecting many)
  /// using a path like this: `/people/v2/people/$peopleId/notes`
  static Future<PcoCollection<PcoPeopleNote>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNote.canInclude;
    var url = '/people/v2/people/$peopleId/notes';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNote>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleNoteCategory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/notes/1/category`
  Future<PcoCollection<PcoPeopleNoteCategory>> getCategory({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleNoteCategory.canInclude;
    var url = '$apiEndpoint/category';
    return PcoCollection.fromApiCall<PcoPeopleNoteCategory>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/notes/1/created_by`
  Future<PcoCollection<PcoPeoplePerson>> getCreatedBy({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '$apiEndpoint/created_by';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/notes/1/person`
  Future<PcoCollection<PcoPeoplePerson>> getPerson({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
