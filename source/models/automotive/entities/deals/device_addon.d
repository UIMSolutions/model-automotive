module models.automotive.entities.deals.device_addon;

@safe:
import models.automotive;

// Additional product or service offered with a given vehicle or device in a deal.
class DATMDealDeviceAddOn : DOOPEntity {
  mixin(EntityThis!("ATMDealDeviceAddOn"));
  
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
        "stateCode": StringAttribute, // Status of the Deal Device Add On"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Deal Device Add On"]),
        "statusCode_display": StringAttribute, //
        "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the entity."]),
      ])
      .registerPath("automotive_dealdeviceaddons");
  }
}
mixin(EntityCalls!("ATMDealDeviceAddOn"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDealDeviceAddOn);

  auto entity = ATMDealDeviceAddOn;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}