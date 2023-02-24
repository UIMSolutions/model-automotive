module models.automotive.entities.deals.customer;

@safe:
import models.automotive;

// Customer associated with a given deal.
class DDealCustomerEntity : DOOPEntity {
  mixin(EntityThis!("DealCustomerEntity"));
  
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
        "customerId": UUIDAttribute, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "dealCustomerId": UUIDAttribute, // Unique identifier for entity instances"]),
        "dealId": UUIDAttribute, // Parent deal for this deal customer."]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "comments": StringAttribute, // Notes and remarks regarding the deal customer."]),
        "role": StringAttribute, // Role of the customer on this deal (buyer, co-buyer, primary driver or corporation)."]),
        "role_display": StringAttribute, //
        "customerIdType": StringAttribute, // The type of customer, either Account or Contact."]),
      ])
      .registerPath("automotive_deals.customers");
  }
}
mixin(EntityCalls!("DealCustomerEntity"));

version(test_model_automotive) { unittest {
    assert(DealCustomerEntity);

    auto entity = DealCustomerEntity;
  }
}