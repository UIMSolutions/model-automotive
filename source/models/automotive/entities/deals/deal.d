module models.automotive.entities.deals.deal;

@safe:
import models.automotive;

// Business proposal for the sale of one or more vehicle or device, including optional trade-ins, add-ons and financial terms.
class DATMDeal : DOOPEntity {
  mixin(EntityThis!("ATMDeal"));
  
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
        "actualrevenue_Base": StringAttributeClass, // Value of the actual revenue in base currency."]),
        "businessOperationId": UUIDAttributeClass, // Department/team at dealership responsible for the deal."]),
        "commissionAmount": StringAttributeClass, // The amount of commission paid out for this deal."]),
        "commissionAmountBase": StringAttributeClass, // Value of the commission amount in base currency."]),
        "dealFileId": UUIDAttributeClass, // The file location of this deal."]),
        "dealId": UUIDAttributeClass, // Unique identifier for entity instances"]),
        "dealNumber": OOPIntegerAttribute.descriptions(["en":"Unique number of the deal."]),
        "dealStatus": StringAttributeClass, // Status of the deal (scenario, offer or deal)."]),
        "dealStatus_display": StringAttributeClass, //
        "estimatedCost": StringAttributeClass, // What the deal is expected to cost."]),
        "estimatedCostBase": StringAttributeClass, // Value of the estimated cost in base currency."]),
        "estimatedRevenue": StringAttributeClass, // How much revenue the deal is expected to make."]),
        "estimatedRevenueBase": StringAttributeClass, // Value of the estimated revenue in base currency."]),
        "stateCode": StringAttributeClass, // Status of the Deal"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Deal"]),
        "statusCode_display": StringAttributeClass, //
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Unique identifier of the currency associated with the entity."]),
      ])
      .registerPath("automotive_deals");
  }
}
mixin(EntityCalls!("ATMDeal"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDeal);

  auto entity = ATMDeal;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}