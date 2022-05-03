module models.automotive.entities.deals.device;

@safe:
import models.automotive;

// Vehicle or device that is the subject of a deal, which may involve one or more vehicle or device.
class DATMDealDevice : DOOPEntity {
  mixin(EntityThis!("ATMDealDevice"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Unique identifier of the data import or data migration that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "exchangeRate": StringAttributeClass, // Exchange rate for the currency associated with the entity with respect to the base currency."]),
        "actualCost": StringAttributeClass, // Cost of the deal."]),
        "actualCostBase": StringAttributeClass, // Value of the actual cost in base currency."]),
        "actualRevenue": StringAttributeClass, // Revenue gained from the deal."]),
        "actualRevenueBase": StringAttributeClass, // Value of the actual revenue in base currency."]),
        "customerPrice": StringAttributeClass, // Price offered to the customer for the deal."]),
        "customerPriceBase": StringAttributeClass, // Value of the customer price in base currency."]),
        "dealDeviceId": UUIDAttributeClass, // Unique identifier for entity instances"]),
        "dealId": UUIDAttributeClass, // Parent deal of this deal device."]),
        "deviceId": UUIDAttributeClass, // Device of interest for this deal."]),
        "estimatedCost": StringAttributeClass, // What the deal is expected to cost."]),
        "estimatedCostBase": StringAttributeClass, // Value of the estimated cost in base currency."]),
        "estimatedRevenue": StringAttributeClass, // The revenue expected to be gained from the deal."]),
        "estimatedRevenueBase": StringAttributeClass, // Value of the estimated revenue in base currency."]),
        "retailPrice": StringAttributeClass, // The retail price of the device in this deal."]),
        "retailPriceBase": StringAttributeClass, // Value of the retail price in base currency."]),
        "stateCode": StringAttributeClass, // Status of the Deal Device"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Deal Device"]),
        "statusCode_display": StringAttributeClass, //
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Unique identifier of the currency associated with the entity."]),
      ])
      .registerPath("automotive_dealdevices");
  }
}
mixin(EntityCalls!("ATMDealDevice"));

unittest {
  version(uim_entities) {
    assert(ATMDealDevice);

  auto entity = ATMDealDevice;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}