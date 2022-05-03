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
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the territory."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who last modified the territory."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated. "]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Unique identifier of the data import or data migration that created this record. "]),
        "ownerId": UUIDAttributeClass, // Owner Id "]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team. "]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record "]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity. "]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record. "]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only. "]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created. "]),
        "deviceId": UUIDAttributeClass, // Vehicle or device for which the observation applies. "]),
        "deviceInspectionId": UUIDAttributeClass, // Parent inspection record for the observation. "]),
        "deviceObservationId": UUIDAttributeClass, // Unique identifier for entity instances "]),
        "deviceObservationTypeId": UUIDAttributeClass, // The observation documented for this vehicle or device. "]),
        "serviceAppointmentId": UUIDAttributeClass, // Parent service appointment booked when this observation was documented. "]),
        "serviceOrderId": UUIDAttributeClass, // Parent service order being worked when this observation was documented. "]),
        "severity": StringAttributeClass, // Severity level (observation, warning of failure). "]),
        "severity_display": StringAttributeClass, //
        "stateCode": StringAttributeClass, // Status of the Device Observation "]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Device Observation "]),
        "statusCode_display": StringAttributeClass, //
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