/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.automotive.entities.devices.observations.observation;

@safe:
import models.automotive;

// Important observation on the state of a given vehicle or device, typically resulting from an inspection.
class DATMDeviceObservation : DEntity {
  mixin(EntityThis!("ATMDeviceObservation"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute,
        ModifiedOnBehalfByAttribute, 
        OwnerIdAttribute, 
        StateCodeAttribute, // Shows whether the account is active or inactive. Inactive accounts are read-only and can't be edited unless they are reactivated.
        StatusCodeAttribute // Select the account's status.
      ])
      .addValues([ // individual values
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated. "]),
        "importSequenceNumber": IntegerAttribute, //Unique identifier of the data import or data migration that created this record. "]),
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
      ])
      .registerPath("automotive_deviceobservations");
  }
}
mixin(EntityCalls!("ATMDeviceObservation"));

version(test_model_automotive) { unittest {
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