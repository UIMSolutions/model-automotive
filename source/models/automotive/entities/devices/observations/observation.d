module models.automotive.entities.devices.observations.observation;

@safe:
import models.automotive;

// Important observation on the state of a given vehicle or device, typically resulting from an inspection.
class DATMDeviceObservation : DOOPEntity {
  mixin(EntityThis!("ATMDeviceObservation"));
  
  override void initialize() {
    super.initialize;

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
        "deviceId": UUIDAttribute, // Vehicle or device for which the observation applies. "]),
        "deviceInspectionId": UUIDAttribute, // Parent inspection record for the observation. "]),
        "deviceObservationId": UUIDAttribute, // Unique identifier for entity instances "]),
        "deviceObservationTypeId": UUIDAttribute, // The observation documented for this vehicle or device. "]),
        "serviceAppointmentId": UUIDAttribute, // Parent service appointment booked when this observation was documented. "]),
        "serviceOrderId": UUIDAttribute, // Parent service order being worked when this observation was documented. "]),
        "severity": StringAttribute, // Severity level (observation, warning of failure). "]),
        "severity_display": StringAttribute, //
        "stateCode": StringAttribute, // Status of the Device Observation "]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Device Observation "]),
        "statusCode_display": StringAttribute, //
      ])
      .registerPath("automotive_deviceobservations");
  }
}
mixin(EntityCalls!("ATMDeviceObservation"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDeviceObservation);
  
  auto entity = ATMDeviceObservation;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}