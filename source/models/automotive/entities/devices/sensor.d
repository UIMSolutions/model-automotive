module models.automotive.entities.devices.sensor;

@safe:
import models.automotive;

// Sensor attached to or as part of a vehicle or device. May provide signals of device health or usage.
class DATMDeviceSensor : DOOPEntity {
  mixin(EntityThis!("ATMDeviceSensor"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who modified the record."]),
        "overriddenCreatedOn": TimestampAttributeClass, //Date and time that the record was migrated. "]),
        "importSequenceNumber": IntegerAttributeClass, //Unique identifier of the data import or data migration that created this record. "]),
        "ownerId": UUIDAttributeClass, // Owner Id "]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team. "]),
        "owningBusinessUnitId": UUIDAttributeClass, //Unique identifier for the business unit that owns the record "]),
        "owningUserId": UUIDAttributeClass, //Unique identifier of the user that owns the activity. "]),
        "owningTeamId": UUIDAttributeClass, //Unique identifier for the team that owns the record. "]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only. "]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created. "]),
        "deviceMeterId": UUIDAttributeClass, // Meter on the vehicle or device that is associated with this sensor. "]),
        "deviceSensorId": UUIDAttributeClass, // Unique identifier for entity instances "]),
        "IoTSensorReference": StringAttributeClass, // Name of the related IoT sensor for this device. "]),
        "serialNumber": IntegerAttributeClass, //Unique number of the device sensor. "]),
        "stateCode": StringAttributeClass, // Status of the Device Sensor "]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Device Sensor "]),
        "statusCode_display": StringAttributeClass, //
      ])
      .registerPath("automotive_devicesensors");
  }
}
mixin(EntityCalls!("ATMDeviceSensor")); 

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDeviceSensor);
  
  auto entity = ATMDeviceSensor;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}