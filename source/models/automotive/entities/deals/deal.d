module model.automotive.deals.deal;

@safe:
import model.automotive;

// Business proposal for the sale of one or more vehicle or device, including optional trade-ins, add-ons and financial terms.
class DINDDeal : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Unique identifier of the data import or data migration that created this record."]),
      "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
      "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Exchange rate for the currency associated with the entity with respect to the base currency."]),
      "actualCost": OOPAttributeString.descriptions(["en":"Cost of the deal."]),
      "actualCostBase": OOPAttributeString.descriptions(["en":"Value of the actual cost in base currency."]),
      "actualRevenue": OOPAttributeString.descriptions(["en":"Revenue gained from the deal."]),
      "actualrevenue_Base": OOPAttributeString.descriptions(["en":"Value of the actual revenue in base currency."]),
      "businessOperationId": OOPAttributeUUID.descriptions(["en":"Department/team at dealership responsible for the deal."]),
      "commissionAmount": OOPAttributeString.descriptions(["en":"The amount of commission paid out for this deal."]),
      "commissionAmountBase": OOPAttributeString.descriptions(["en":"Value of the commission amount in base currency."]),
      "dealFileId": OOPAttributeUUID.descriptions(["en":"The file location of this deal."]),
      "dealId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
      "dealNumber": OOPAttributeNumber.descriptions(["en":"Unique number of the deal."]),
      "dealStatus": OOPAttributeString.descriptions(["en":"Status of the deal (scenario, offer or deal)."]),
      "dealStatus_display": OOPAttributeString.descriptions(["en":""]),
      "estimatedCost": OOPAttributeString.descriptions(["en":"What the deal is expected to cost."]),
      "estimatedCostBase": OOPAttributeString.descriptions(["en":"Value of the estimated cost in base currency."]),
      "estimatedRevenue": OOPAttributeString.descriptions(["en":"How much revenue the deal is expected to make."]),
      "estimatedRevenueBase": OOPAttributeString.descriptions(["en":"Value of the estimated revenue in base currency."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Deal"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Deal"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Unique identifier of the currency associated with the entity."]),
    ]);
  }

  override string entityClass() { return "indDeal"; }
  override string entityClasses() { return "indDeals"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto INDDeal() { return new DINDDeal; } 
auto INDDeal(Json json) { return new DINDDeal(json); } 

unittest {
  version(uim_entities) {
    assert(INDDeal);

  auto entity = INDDeal;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}