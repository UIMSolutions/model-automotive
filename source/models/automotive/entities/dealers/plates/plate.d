module models.automotive.entities.dealers.plates.plate;

@safe:
import models.automotive;

// License plate applied temporarily to vehicles to provide services such as test drives.
class DATMDealerPlate : DOOPEntity {
  mixin(EntityThis!("ATMDealerPlate"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who modified the record."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttribute, //Unique identifier of the data import or data migration that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, //Unique identifier of the user that owns the activity."]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "businessOperationId": UUIDAttribute, // Department/team at dealership responsible for dealer plate."]),
        "comments": StringAttribute, // Note or remarks about the dealer plate."]),
        "dealerPlateId": UUIDAttribute, // Unique identifier for entity instances"]),
        "issuedBy": UUIDAttribute, //Person who issued the dealer plate."]),
        "registrationNumber": IntegerAttribute, //Name of the dealer plate."]),
        "validFrom": StringAttribute, // First date for which the dealer plate is valid."]),
        "validTo": StringAttribute, // Last date for which the dealer plate is valid."]),
        "stateCode": StringAttribute, // Status of the Dealer Plate"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Dealer Plate"]),
        "statusCode_display": StringAttribute, //
      ])
      .registerPath("automotive_dealerplates");
  }
}
mixin(EntityCalls!("ATMDealerPlate"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDealerPlate);

  auto entity = ATMDealerPlate;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}