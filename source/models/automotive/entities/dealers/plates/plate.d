module models.automotive.entities.dealers.plates.plate;

@safe:
import models.automotive;

// License plate applied temporarily to vehicles to provide services such as test drives.
class DDealerPlateEntity : DOOPEntity {
  mixin(EntityThis!("DealerPlateEntity"));
  
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
        "businessOperationId": UUIDAttribute, // Department/team at dealership responsible for dealer plate."]),
        "comments": StringAttribute, // Note or remarks about the dealer plate."]),
        "dealerPlateId": UUIDAttribute, // Unique identifier for entity instances"]),
        "issuedBy": UUIDAttribute, //Person who issued the dealer plate."]),
        "registrationNumber": IntegerAttribute, //Name of the dealer plate."]),
        "validFrom": StringAttribute, // First date for which the dealer plate is valid."]),
        "validTo": StringAttribute, // Last date for which the dealer plate is valid."]),
      ])
      .registerPath("automotive_dealers.plates");
  }
}
mixin(EntityCalls!("DealerPlateEntity"));

version(test_model_automotive) { unittest {
    assert(DealerPlateEntity);

    auto entity = DealerPlateEntity;
  }
}