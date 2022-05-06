module models.automotive.entities.dealers.plates.device_assignment;

@safe:
import models.automotive;

// Record of which dealer plates were used on which vehicle or device over time.
class DATMDealerPlateDeviceAssignment : DOOPEntity {
  mixin(EntityThis!("ATMDealerPlateDeviceAssignment"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who modified the record."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttribute, //Unique identifier of the data import or data migration that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, //Unique identifier of the user that owns the activity."]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "businessOperationId": UUIDAttribute, // Department/team at dealership responsible for dealer plate."]),
        "dealerPlateId": UUIDAttribute, // Unique identifier for entity instances"]),
        "deviceId": UUIDAttribute, // The vehicle for this dealer plate assignment."]),
        "testDriveId": UUIDAttribute, // Test drive of the vehicle."]),
      ])
      .addValues([
        StateCodeAttribute,
        StatusCodeAttribute
      ])
      .addValues([
        "comments": StringAttribute, //Note or remarks about the dealer plate.
        "ownerIdType": StringAttribute, //The type of owner, either User or Team.
        "utcConversionTimeZoneCode": StringAttribute, //Time zone code that was in use when the record was created.
        "validFrom": StringAttribute, //First date for which the dealer plate assignment is valid.
        "validTo": StringAttribute, //Last date for which the dealer plate assignment is valid.
      ])
      .registerPath("automotive_dealerplatedeviceassignments");
  }
}
mixin(EntityCalls!("ATMDealerPlateDeviceAssignment"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDealerPlateDeviceAssignment);

  auto entity = ATMDealerPlateDeviceAssignment;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}