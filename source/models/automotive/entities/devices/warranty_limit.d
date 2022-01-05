module models.automotive.devices.warranty_limit;

@safe:
import models.automotive;;

// Limits of a specific warranty on a specific vehicle or device, such as maximum mileage or specific expiration date.
class DINDDeviceWarrantyLimit : DOOPEntity {
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
      "deviceId": OOPAttributeUUID.descriptions(["en":"Device for which this warranty limit applies. "]),
      "deviceMeasureId": OOPAttributeUUID.descriptions(["en":"Metric used in tracking this warranty. "]),
      "deviceWarrantyLimitId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances "]),
      "unitId": OOPAttributeUUID.descriptions(["en":"Component by which the warranty metric is to be measured. "]),
      "value": OOPAttributeString.descriptions(["en":"Value of the warranty limit. "]),
      "warrantyLimitId": OOPAttributeUUID.descriptions(["en":"Parent warranty limit for this device warranty limit. "]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Device Warranty Limit "]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Device Warranty Limit "]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "indDeviceWarrantyLimit"; }
  override string entityClasses() { return "indDeviceWarrantyLimits"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto INDDeviceWarrantyLimit() { return new DINDDeviceWarrantyLimit; } 
auto INDDeviceWarrantyLimit(Json json) { return new DINDDeviceWarrantyLimit(json); } 

unittest {
  version(uim_entities) {
    assert(INDDeviceWarrantyLimit);
  
  auto entity = INDDeviceWarrantyLimit;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}