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
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Unique identifier of the data import or data migration that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "businessOperationId": UUIDAttributeClass, // Department/team at dealership responsible for dealer plate."]),
        "dealerPlateId": UUIDAttributeClass, // Unique identifier for entity instances"]),
        "deviceId": UUIDAttributeClass, // The vehicle for this dealer plate assignment."]),
        "testDriveId": UUIDAttributeClass, // Test drive of the vehicle."]),
      ])
      .addValues([
        StateCodeAttributeClass,
        StatusCodeAttributeClass
      ])
      .addValues([
        "comments": StringAttributeClass, //Note or remarks about the dealer plate.
        "ownerIdType": StringAttributeClass, //The type of owner, either User or Team.
        "utcConversionTimeZoneCode": StringAttributeClass, //Time zone code that was in use when the record was created.
        "validFrom": StringAttributeClass, //First date for which the dealer plate assignment is valid.
        "validTo": StringAttributeClass, //Last date for which the dealer plate assignment is valid.
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