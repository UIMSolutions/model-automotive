module models.automotive.entities.deals.term;

@safe:
import models.automotive;

// Terms applicable a given type of deal.
class DDealTermEntity : DOOPEntity {
  mixin(EntityThis!("DealTermEntity"));
  
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
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, //Unique identifier of the user that owns the activity."]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "dealTermId": UUIDAttribute, // Unique identifier for entity instances"]),
        "dealTypeId": UUIDAttribute, // Type of deal associated with these terms."]),
      ])
      .registerPath("automotive_deals.terms");
  }
}
mixin(EntityCalls!("DealTermEntity"));

version(test_library) { unittest {
    assert(DealTermEntity);

    auto entity = DealTermEntity;
  }
}