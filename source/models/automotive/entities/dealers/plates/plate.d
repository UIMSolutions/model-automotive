module models.automotive.dealers.plates.plate;

@safe:
import models.automotive;;

// License plate applied temporarily to vehicles to provide services such as test drives.
class DINDDealerPlate : DOOPEntity {
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
      "issuedBy": OOPAttributeLink("aplUser").descriptions(["en":"Person who issued the dealer plate."]),
      "registrationNumber": OOPAttributeNumber.descriptions(["en":"Name of the dealer plate."]),
      "validFrom": OOPAttributeString.descriptions(["en":"First date for which the dealer plate is valid."]),
      "validTo": OOPAttributeString.descriptions(["en":"Last date for which the dealer plate is valid."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Dealer Plate"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Dealer Plate"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "indDealerPlate"; }
  override string entityClasses() { return "indDealerPlates"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto INDDealerPlate() { return new DINDDealerPlate; } 
auto INDDealerPlate(Json json) { return new DINDDealerPlate(json); } 

unittest {
  version(uim_entities) {
    assert(INDDealerPlate);

  auto entity = INDDealerPlate;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}