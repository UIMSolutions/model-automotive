module models.automotive.devices.measurement;

@safe:
import models.automotive;;

// Record of usage measurements for a given vehicle or device over time.
class DINDDeviceMeasurement : DOOPEntity {
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
      "deviceId": OOPAttributeUUID.descriptions(["en":"Device for this device measurement. "]),
      "deviceMeasureId": OOPAttributeUUID.descriptions(["en":"Type of measurement for this meter. "]),
      "deviceMeasurementId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances "]),
      "deviceMeterId": OOPAttributeUUID.descriptions(["en":"Meter from which this usage measurement was taken. "]),
      "measuredById": OOPAttributeUUID.descriptions(["en":"Person who recorded the measurement. "]),
      "measuredOn": OOPAttributeTimestamp.descriptions(["en":"Date that the measurement was recorded. "]),
      "measuredValue": OOPAttributeString.descriptions(["en":"Value of the measurement. "]),
      "serviceOrderId": OOPAttributeUUID.descriptions(["en":"Parent service order for when this measurement was taken. "]),
      "value": OOPAttributeString.descriptions(["en":"Value of the measurement. "]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Device Measurement "]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Device Measurement "]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "indDeviceMeasurement"; }
  override string entityClasses() { return "indDeviceMeasurements"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto INDDeviceMeasurement() { return new DINDDeviceMeasurement; } 
auto INDDeviceMeasurement(Json json) { return new DINDDeviceMeasurement(json); } 

unittest {
  version(uim_entities) {
    assert(INDDeviceMeasurement);
  
  auto entity = INDDeviceMeasurement;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}