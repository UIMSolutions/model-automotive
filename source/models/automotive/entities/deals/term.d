module models.automotive.entities.deals.term;

@safe:
import models.automotive;

// Terms applicable a given type of deal.
class DATMDealTerm : DOOPEntity {
  mixin(EntityThis!("ATMDealTerm"));
  
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
        "dealTermId": UUIDAttribute, // Unique identifier for entity instances"]),
        "dealTypeId": UUIDAttribute, // Type of deal associated with these terms."]),
        "stateCode": StringAttribute, // Status of the Deal Term"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Deal Term"]),
        "statusCode_display": StringAttribute, //
      ])
      .registerPath("automotive_dealterms");
  }
}
mixin(EntityCalls!("ATMDealTerm"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDealTerm);

  auto entity = ATMDealTerm;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}