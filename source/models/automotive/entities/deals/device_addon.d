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
        "actualCost": StringAttributeClass, // Cost of the add-on added to the deal."]),
        "actualCostBase": StringAttributeClass, // Value of the actual cost in base currency."]),
        "customerPrice": StringAttributeClass, // Price the customer was charged for the add-on."]),
        "customerPriceBase": StringAttributeClass, // Value of the customer price in base currency."]),
        "dealDeviceAddOnId": UUIDAttributeClass, // Unique identifier for entity instances"]),
        "dealDeviceId": UUIDAttributeClass, // Parent deal for which the add-on is being added."]),
        "itemNumber": OOPIntegerAttribute.descriptions(["en":"Unique number of the add-on."]),
        "retailPrice": StringAttributeClass, // Retail price of the add-on."]),
        "retailPriceBase": StringAttributeClass, // Value of the Retail Price in base currency."]),
        "stateCode": StringAttributeClass, // Status of the Deal Device Add On"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Deal Device Add On"]),
        "statusCode_display": StringAttributeClass, //
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Unique identifier of the currency associated with the entity."]),
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