module models.automotive.entities.deals.file;

@safe:
import models.automotive;

// Container for deals relating to a given opportunity.
class DATMDealFile : DOOPEntity {
  mixin(EntityThis!("ATMDealFile"));
  
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
        "dealFileId": UUIDAttribute, // Unique identifier for entity instances"]),
        "opportunityId": UUIDAttribute, // Parent opportunity of the deal."]),
        "stateCode": StringAttribute, // Status of the Deal File"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Deal File"]),
        "statusCode_display": StringAttribute, //
      ])
      .registerPath("automotive_dealfiles");
  }
}
mixin(EntityCalls!("ATMDealFile"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDealFile);

  auto entity = ATMDealFile;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}