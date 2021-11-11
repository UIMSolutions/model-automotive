module model.automotive.devices.meter;

@safe:
import model.automotive;

// Usage meter attached to a specific vehicle or device, such as odometer or fuel gauge.
class DINDMeter : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the territory."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who last modified the territory."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated. "]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Unique identifier of the data import or data migration that created this record. "]),
      "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id "]),
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team. "]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record "]),
      "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity. "]),
      "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record. "]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only. "]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created. "]),
      "deviceId": OOPAttributeUUID.descriptions(["en":"Parent device for this device meter. "]),
      "deviceMeasureId": OOPAttributeUUID.descriptions(["en":"Type of measurement for this device meter. "]),
      "deviceMeterId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances "]),
      "expectedMaximum": OOPAttributeString.descriptions(["en":"The anticipated maximum amount. "]),
      "expectedMinimum": OOPAttributeString.descriptions(["en":"The anticipated minimum amount. "]),
      "isPrimary": OOPAttributeString.descriptions(["en":"Is this the primary device? "]),
      "offset": OOPAttributeString.descriptions(["en":"Any variation from the original settings. "]),
      "serialNumber": OOPAttributeNumber.descriptions(["en":"Unique number of the device meter. "]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Device Meter "]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Device Meter "]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "indDeviceMeter"; }
  override string entityClasses() { return "indDeviceMeters"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto INDMeter() { return new DINDMeter; } 
auto INDMeter(Json json) { return new DINDMeter(json); } 

unittest {
  version(uim_entities) {
    assert(INDMeter);
  
  auto entity = INDMeter;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}