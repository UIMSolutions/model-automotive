module models.automotive.entities.deals.customer;

@safe:
import models.automotive;

// Customer associated with a given deal.
class DATMDealCustomer : DOOPEntity {
  mixin(EntityThis!("ATMDealCustomer"));
  
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
        "customerId": UUIDAttribute, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "dealCustomerId": UUIDAttribute, // Unique identifier for entity instances"]),
        "dealId": UUIDAttribute, // Parent deal for this deal customer."]),
      ])
      .addValues([
        StateCodeAttribute,
        StatusCodeAttribute
      ])
      .addValues([
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "comments": StringAttribute, // Notes and remarks regarding the deal customer."]),
        "role": StringAttribute, // Role of the customer on this deal (buyer, co-buyer, primary driver or corporation)."]),
        "role_display": StringAttribute, //
        "customerIdType": StringAttribute, // The type of customer, either Account or Contact."]),
      ])
      .registerPath("automotive_dealcustomers");
  }
}
mixin(EntityCalls!("ATMDealCustomer"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDealCustomer);

  auto entity = ATMDealCustomer;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}