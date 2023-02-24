module models.automotive.entities.devices.measures.measurement;

@safe:
import models.automotive;

// Record of usage measurements for a given vehicle or device over time.
class DATMDeviceMeasurement : DOOPEntity {
  mixin(EntityThis!("ATMDeviceMeasurement"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the territory."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who last modified the territory."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated. "]),
        "importSequenceNumber": IntegerAttribute, //Unique identifier of the data import or data migration that created this record. "]),
        "ownerId": UUIDAttribute, // Owner Id "]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team. "]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record "]),
        "owningUserId": UUIDAttribute, //Unique identifier of the user that owns the activity. "]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record. "]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only. "]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created. "]),
        "deviceId": UUIDAttribute, // Device for this device measurement. "]),
        "deviceMeasureId": UUIDAttribute, // Type of measurement for this meter. "]),
        "deviceMeasurementId": UUIDAttribute, // Unique identifier for entity instances "]),
        "deviceMeterId": UUIDAttribute, // Meter from which this usage measurement was taken. "]),
        "measuredById": UUIDAttribute, // Person who recorded the measurement. "]),
        "measuredOn": TimestampAttribute, //Date that the measurement was recorded. "]),
        "measuredValue": StringAttribute, // Value of the measurement. "]),
        "serviceOrderId": UUIDAttribute, // Parent service order for when this measurement was taken. "]),
        "value": StringAttribute, // Value of the measurement. "]),
        "stateCode": StringAttribute, // Status of the Device Measurement "]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Device Measurement "]),
        "statusCode_display": StringAttribute, //
      ])
      .registerPath("automotive_devicemeasurements");
  }
}
mixin(EntityCalls!("ATMDeviceMeasurement"));

version(test_model_automotive) { unittest {
    assert(APLFeedback);
    assert(ATMDeviceMeasurement);
  
  auto entity = ATMDeviceMeasurement;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}