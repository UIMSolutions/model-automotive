module models.automotive.entities.deals.device;

@safe:
import models.automotive;

// Vehicle or device that is the subject of a deal, which may involve one or more vehicle or device.
class DATMDealDevice : DOOPEntity {
  mixin(EntityThis!("ATMDealDevice"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

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
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the entity with respect to the base currency."]),
        "actualCost": StringAttribute, // Cost of the deal."]),
        "actualCostBase": StringAttribute, // Value of the actual cost in base currency."]),
        "actualRevenue": StringAttribute, // Revenue gained from the deal."]),
        "actualRevenueBase": StringAttribute, // Value of the actual revenue in base currency."]),
        "customerPrice": StringAttribute, // Price offered to the customer for the deal."]),
        "customerPriceBase": StringAttribute, // Value of the customer price in base currency."]),
        "dealDeviceId": UUIDAttribute, // Unique identifier for entity instances"]),
        "dealId": UUIDAttribute, // Parent deal of this deal device."]),
        "deviceId": UUIDAttribute, // Device of interest for this deal."]),
        "estimatedCost": StringAttribute, // What the deal is expected to cost."]),
        "estimatedCostBase": StringAttribute, // Value of the estimated cost in base currency."]),
        "estimatedRevenue": StringAttribute, // The revenue expected to be gained from the deal."]),
        "estimatedRevenueBase": StringAttribute, // Value of the estimated revenue in base currency."]),
        "retailPrice": StringAttribute, // The retail price of the device in this deal."]),
        "retailPriceBase": StringAttribute, // Value of the retail price in base currency."]),
        "stateCode": StringAttribute, // Status of the Deal Device"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Deal Device"]),
        "statusCode_display": StringAttribute, //
        "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the entity."]),
      ])
      .registerPath("automotive_dealdevices");
  }
}
mixin(EntityCalls!("ATMDealDevice"));

version(test_model_automotive) { unittest {
    assert(APLFeedback);
    assert(ATMDealDevice);

  auto entity = ATMDealDevice;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}