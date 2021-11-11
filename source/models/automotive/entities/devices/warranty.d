module model.automotive.devices.warranty;

@safe:
import model.automotive;

// Relationship indicating that a specific warranty applies to a specific vehicle or device.
class DINDDeviceWarranty : DOOPEntity {
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
      "deviceId": OOPAttributeUUID.descriptions(["en":"Vehicle or device for which this warranty applies. "]),
      "deviceWarrantyId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances "]),
      "issuedOn": OOPAttributeTimestamp.descriptions(["en":"Date that the warranty is issued. "]),
      "validFrom": OOPAttributeString.descriptions(["en":"Last date for which the warranty is valid. "]),
      "validTo": OOPAttributeString.descriptions(["en":"First date for which the warranty is valid. "]),
      "warrantyId": OOPAttributeUUID.descriptions(["en":"Warranty that is applied to this device. "]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Device Warranty "]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Device Warranty "]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "indDeviceWarranty"; }
  override string entityClasses() { return "indDeviceWarranties"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto INDDeviceWarranty() { return new DINDDeviceWarranty; } 
auto INDDeviceWarranty(Json json) { return new DINDDeviceWarranty(json); } 

unittest {
  version(uim_entities) {
    assert(INDDeviceWarranty);
  
  auto entity = INDDeviceWarranty;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}