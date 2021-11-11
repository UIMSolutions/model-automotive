module model.automotive.devices.class_;

@safe:
import model.automotive;

// Family of vehicles or devices for the specific brand provided by the manufacturer.
class DINDDeviceClass : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the territory."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who last modified the territory."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Unique identifier of the data import or data migration that created this record."]),
      "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
      "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "entityImage": OOPAttributeString.descriptions(["en":""]),
      "code": OOPAttributeString.descriptions(["en":"Unique number for the device class."]),
      "deviceBrandId": OOPAttributeUUID.descriptions(["en":"Brand that produces the device."]),
      "deviceClassId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
      "deviceTypeId": OOPAttributeUUID.descriptions(["en":"Type of device class."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Device Class"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Device Class"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "indDeviceClass"; }
  override string entityClasses() { return "indDeviceClasses"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto INDDeviceClass() { return new DINDDeviceClass; } 
auto INDDeviceClass(Json json) { return new DINDDeviceClass(json); } 

unittest {
  version(uim_entities) {
    assert(INDDeviceClass);
  
  auto entity = INDDeviceClass;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}