module models.automotive.devices.style;

@safe:
import models.automotive;;

// Distinctive form or type of vehicle or device such as sedan or station wagon car, wheeled or crawler excavator, and so on.
class DINDDeviceStyle : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated. "]), 
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Unique identifier of the data import or data migration that created this record. "]), 
      "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id "]), 
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team. "]), 
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record "]), 
      "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity. "]), 
      "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record. "]), 
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only. "]), 
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created. "]), 
      "entityImage": OOPAttributeString.descriptions(["en":""]), 
      "code": OOPAttributeString.descriptions(["en":"Unique code for the style. "]), 
      "deviceStyleId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances "]), 
      "deviceTypeId": OOPAttributeUUID.descriptions(["en":"Device type for which this style is applicable. "]), 
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Device Style "]), 
      "stateCode_display": OOPAttributeString.descriptions(["en":""]), 
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Device Style "]), 
      "statusCode_display": OOPAttributeString.descriptions(["en":""]), 
    ]);
  }

  override string entityClass() { return "indDeviceStyle"; }
  override string entityClasses() { return "indDeviceStyles"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto INDDeviceStyle() { return new DINDDeviceStyle; } 
auto INDDeviceStyle(Json json) { return new DINDDeviceStyle(json); } 

unittest {
  version(uim_entities) {
    assert(INDDeviceStyle);
  
  auto entity = INDDeviceStyle;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}