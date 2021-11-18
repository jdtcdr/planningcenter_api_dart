/// This file was generated on 2021-11-17T23:59:27.108768


import '../../pco.dart';

/// This class represents a PCO Services ItemNoteCategory Object
/// 
/// Application: services
/// Id:          item_note_category
/// Type:        ItemNoteCategory
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A category of plan item notes for an entire Service Type.
/// 
/// Example:
/// 
/// {"type":"ItemNoteCategory","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","deleted_at":"2000-01-01T12:00:00Z","name":"string","sequence":1,"updated_at":"2000-01-01T12:00:00Z","frequently_used":true},"relationships":{"service_type":{"data":{"type":"ServiceType","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/service_types/1/item_note_categories
/// 
class PcoServicesItemNoteCategory extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'ItemNoteCategory';
  static const String typeId = 'item_note_category';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'itemnotecategory-servicetype-item_note_categories';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/item_note_categories';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kDeletedAt = 'deleted_at';
  static const kName = 'name';
  static const kSequence = 'sequence';
  static const kFrequentlyUsed = 'frequently_used';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  DateTime get deletedAt => DateTime.parse(attributes[kDeletedAt] ?? '');
  String get name => attributes[kName] ?? '';
  int get sequence => attributes[kSequence] ?? 0;
  bool get isFrequentlyUsed => attributes[kFrequentlyUsed] == true;




  PcoServicesItemNoteCategory() : super(pcoApplication, typeString);
  PcoServicesItemNoteCategory.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesItemNoteCategory Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_notes/1/item_note_category;
  static Future<List<PcoServicesItemNoteCategory>> getManyFromSongAndScheduledItemAndItemNoteAndItemNoteCategoryIds(String songId,String scheduledItemId,String itemNoteId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesItemNoteCategory> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/songs/$songId/last_scheduled_item/$scheduledItemId/item_notes/$itemNoteId/item_note_category';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesItemNoteCategory.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesItemNoteCategory Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/item_note_categories;
  static Future<List<PcoServicesItemNoteCategory>> getManyFromServiceTypeAndItemNoteCategoryIds(String serviceTypeId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesItemNoteCategory> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/item_note_categories';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesItemNoteCategory.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesItemNoteCategory Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_notes/1/item_note_category;
  static Future<PcoServicesItemNoteCategory?> getSingleFromSongAndScheduledItemAndItemNoteAndItemNoteCategoryIds(String songId,String scheduledItemId,String itemNoteId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesItemNoteCategory?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/songs/$songId/last_scheduled_item/$scheduledItemId/item_notes/$itemNoteId/item_note_category' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesItemNoteCategory.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesItemNoteCategory Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/item_note_categories;
  static Future<PcoServicesItemNoteCategory?> getSingleFromServiceTypeAndItemNoteCategoryIds(String serviceTypeId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesItemNoteCategory?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/item_note_categories' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesItemNoteCategory.fromJson(res.data);
    }
    return retval;
  }




}
