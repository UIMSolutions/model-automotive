module models.automotive.entities.devices.sensor;

@safe:
import models.automotive;

// Sensor attached to or as part of a vehicle or device. May provide signals of device health or usage.
class DATMDeviceSensor : DOOPEntity {
  mixin(EntityThis!("ATMDeviceSensor"));
  
  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who modified the record."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated. "]),
        "importSequenceNumber": IntegerAttribute, //Unique identifier of the data import or data migration that created this record. "]),
        "ownerId": UUIDAttribute, // Owner Id "]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team. "]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record "]),
        "owningUserId": UUIDAttribute, //Unique identifier of the user that owns the activity. "]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record. "]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only. "]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created. "]),
        "deviceMeterId": UUIDAttribute, // Meter on the vehicle or device that is associated with this sensor. "]),
        "deviceSensorId": UUIDAttribute, // Unique identifier for entity instances "]),
        "IoTSensorReference": StringAttribute, // Name of the related IoT sensor for this device. "]),
        "serialNumber": IntegerAttribute, //Unique number of the device sensor. "]),
        "stateCode": StringAttribute, // Status of the Device Sensor "]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Device Sensor "]),
        "statusCode_display": StringAttribute, //
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