module models.automotive.dealers.plates.device_assignment;

@safe:
import models.automotive;;

// Record of which dealer plates were used on which vehicle or device over time.
class DINDDealerPlateDeviceAssignment : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Unique identifier of the data import or data migration that created this record."]),
      "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
      "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "businessOperationId": OOPAttributeUUID.descriptions(["en":"Department/team at dealership responsible for dealer plate."]),
      "comments": OOPAttributeString.descriptions(["en":"Note or remarks about the dealer plate."]),
      "dealerPlateId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
      "deviceId": OOPAttributeUUID.descriptions(["en":"The vehicle for this dealer plate assignment."]),
      "testDriveId": OOPAttributeUUID.descriptions(["en":"Test drive of the vehicle."]),
      "validFrom": OOPAttributeString.descriptions(["en":"First date for which the dealer plate assignment is valid."]),
      "validTo": OOPAttributeString.descriptions(["en":"Last date for which the dealer plate assignment is valid."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Dealer Plate Device Assignment 	automotive/"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":"automotive/"]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Dealer Plate Device Assignment 	automotive/"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":"automotive/"]),
    ]);
  }

  override string entityClass() { return "indDealerPlateDeviceAssignment"; }
  override string entityClasses() { return "indDealerPlateDeviceAssignments"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto INDDealerPlateDeviceAssignment() { return new DINDDealerPlateDeviceAssignment; } 
auto INDDealerPlateDeviceAssignment(Json json) { return new DINDDealerPlateDeviceAssignment(json); } 

unittest {
  version(uim_entities) {
    assert(INDDealerPlateDeviceAssignment);

  auto entity = INDDealerPlateDeviceAssignment;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}