module models.automotive.devices.state;

@safe:
import models.automotive;;

// Describes state of a vehicle or device, such as New, Used or Scrapped.
class DINDDeviceState : DOOPEntity {
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
      "deviceStateId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances "]),
      "inventoryStatus": OOPAttributeString.descriptions(["en":"Inventory status of the device (available, not available, fleet, on loan, etc.). "]),
      "inventoryStatus_display": OOPAttributeString.descriptions(["en":""]),
      "ownershipStatus": OOPAttributeString.descriptions(["en":"Is the vehicle or device titled or untitled? "]),
      "ownershipStatus_display": OOPAttributeString.descriptions(["en":""]),
      "ownershipType": OOPAttributeString.descriptions(["en":"Ownership category (financing provider, customer or dealer)? "]),
      "ownershipType_display": OOPAttributeString.descriptions(["en":""]),
      "tradeStatus": OOPAttributeString.descriptions(["en":"Indicates whether the vehicle or device is new, certified used or used. "]),
      "tradeStatus_display": OOPAttributeString.descriptions(["en":""]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Device State "]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Device State "]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "indDeviceState"; }
  override string entityClasses() { return "indDeviceStates"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto INDDeviceState() { return new DINDDeviceState; } 
auto INDDeviceState(Json json) { return new DINDDeviceState(json); } 

unittest {
  version(uim_entities) {
    assert(INDDeviceState);
  
  auto entity = INDDeviceState;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}