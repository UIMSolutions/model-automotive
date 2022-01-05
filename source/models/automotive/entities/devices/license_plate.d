module models.automotive.devices.license_plate;

@safe:
import models.automotive;;

// Record of license plates assigned to a given vehicle or device over time.
class DINDDeviceLicensePlate : DOOPEntity {
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
      "comments": OOPAttributeString.descriptions(["en":"Notes or remarks about the license plate."]),
      "deviceId": OOPAttributeUUID.descriptions(["en":"Vehicle for which the license plate is registered."]),
      "deviceLicensePlateId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
      "issuedBy": OOPAttributeLink("aplUser").descriptions(["en":"Issuer of the license plate."]),
      "registrationNumber": OOPAttributeNumber.descriptions(["en":"Name of the vehicle license plate."]),
      "validFrom": OOPAttributeString.descriptions(["en":"First day for which the license plate is valid."]),
      "validTo": OOPAttributeString.descriptions(["en":"Last day for which the license plate is valid."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Device License Plate"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Device License Plate"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "indDeviceLicensePlate"; }
  override string entityClasses() { return "indDeviceLicensePlates"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto INDDeviceLicensePlate() { return new DINDDeviceLicensePlate; } 
auto INDDeviceLicensePlate(Json json) { return new DINDDeviceLicensePlate(json); } 

unittest {
  version(uim_entities) {
    assert(INDDeviceLicensePlate);
  
  auto entity = INDDeviceLicensePlate;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}