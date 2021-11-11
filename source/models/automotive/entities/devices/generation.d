module model.automotive.devices.generation;

@safe:
import model.automotive;

// Specific period in the evolution of a device class over time.
class DINDDeviceGeneration : DOOPEntity {
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
      "code": OOPAttributeString.descriptions(["en":"Unique code of the specific generation of this device."]),
      "deviceBrandId": OOPAttributeUUID.descriptions(["en":"Brand of the device."]),
      "deviceClassId": OOPAttributeUUID.descriptions(["en":"Class of the device."]),
      "deviceGenerationId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
      "fromYear": OOPAttributeString.descriptions(["en":"Year the generation was introduced."]),
      "toYear": OOPAttributeString.descriptions(["en":"Last year of the generation."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Device Generation"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Device Generation"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "indDeviceGeneration"; }
  override string entityClasses() { return "indDeviceGenerations"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto INDDeviceGeneration() { return new DINDDeviceGeneration; } 
auto INDDeviceGeneration(Json json) { return new DINDDeviceGeneration(json); } 

unittest {
  version(uim_entities) {
    assert(INDDeviceGeneration);
  
  auto entity = INDDeviceGeneration;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}