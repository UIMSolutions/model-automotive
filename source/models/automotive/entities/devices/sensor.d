module models.automotive.devices.sensor;

@safe:
import models.automotive;;

// Sensor attached to or as part of a vehicle or device. May provide signals of device health or usage.
class DINDDeviceSensor : DOOPEntity {
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
      "deviceMeterId": OOPAttributeUUID.descriptions(["en":"Meter on the vehicle or device that is associated with this sensor. "]),
      "deviceSensorId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances "]),
      "IoTSensorReference": OOPAttributeString.descriptions(["en":"Name of the related IoT sensor for this device. "]),
      "serialNumber": OOPAttributeNumber.descriptions(["en":"Unique number of the device sensor. "]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Device Sensor "]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Device Sensor "]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "indDeviceSensor"; }
  override string entityClasses() { return "indDeviceSensors"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto INDDeviceSensor() { return new DINDDeviceSensor; } 
auto INDDeviceSensor(Json json) { return new DINDDeviceSensor(json); } 

unittest {
  version(uim_entities) {
    assert(INDDeviceSensor);
  
  auto entity = INDDeviceSensor;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}