module models.automotive.entities.dealers.plates.device_assignment;

@safe:
import models.automotive;

// Record of which dealer plates were used on which vehicle or device over time.
class DDealerPlateDeviceAssignmentEntity : DOOPEntity {
  mixin(EntityThis!("DealerPlateDeviceAssignmentEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, 
        ModifiedOnBehalfByAttribute, 
        OwnerIdAttribute, 
        StateCodeAttribute, 
        StatusCodeAttribute 
      ])
      .addValues([ // individual values
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttribute, //Unique identifier of the data import or data migration that created this record."]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, //Unique identifier of the user that owns the activity."]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "businessOperationId": UUIDAttribute, // Department/team at dealership responsible for dealer plate."]),
        "dealerPlateId": UUIDAttribute, // Unique identifier for entity instances"]),
        "deviceId": UUIDAttribute, // The vehicle for this dealer plate assignment."]),
        "testDriveId": UUIDAttribute, // Test drive of the vehicle."]),
        "comments": StringAttribute, //Note or remarks about the dealer plate.
        "ownerIdType": StringAttribute, //The type of owner, either User or Team.
        "utcConversionTimeZoneCode": StringAttribute, //Time zone code that was in use when the record was created.
        "validFrom": StringAttribute, //First date for which the dealer plate assignment is valid.
        "validTo": StringAttribute, //Last date for which the dealer plate assignment is valid.
      ])
      .registerPath("automotive_dealers.plates.device_assignments");
  }
}
mixin(EntityCalls!("DealerPlateDeviceAssignmentEntity"));

version(test_library) {
  unittest {
    assert(DealerPlateDeviceAssignmentEntity);

    auto entity = DealerPlateDeviceAssignmentEntity;
  }
}