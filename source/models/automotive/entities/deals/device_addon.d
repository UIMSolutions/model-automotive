module models.automotive.entities.deals.device_addon;

@safe:
import models.automotive;

// Additional product or service offered with a given vehicle or device in a deal.
class DDealDeviceAddOnEntity : DOOPEntity {
  mixin(EntityThis!("DealDeviceAddOnEntity"));
  
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
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the entity with respect to the base currency."]),
        "actualCost": StringAttribute, // Cost of the add-on added to the deal."]),
        "actualCostBase": StringAttribute, // Value of the actual cost in base currency."]),
        "customerPrice": StringAttribute, // Price the customer was charged for the add-on."]),
        "customerPriceBase": StringAttribute, // Value of the customer price in base currency."]),
        "dealDeviceAddOnId": UUIDAttribute, // Unique identifier for entity instances"]),
        "dealDeviceId": UUIDAttribute, // Parent deal for which the add-on is being added."]),
        "itemNumber": IntegerAttribute, //Unique number of the add-on."]),
        "retailPrice": StringAttribute, // Retail price of the add-on."]),
        "retailPriceBase": StringAttribute, // Value of the Retail Price in base currency."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the entity."]),
      ])
      .registerPath("automotive_deals.device_addons");
  }
}
mixin(EntityCalls!("DealDeviceAddOnEntity"));

version(test_model_automotive) { unittest {
    assert(DealDeviceAddOnEntity);

    auto entity = DealDeviceAddOnEntity;
  }
}