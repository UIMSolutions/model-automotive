module models.automotive.deals.device_addon;

@safe:
import models.automotive;;

// Additional product or service offered with a given vehicle or device in a deal.
class DINDDealDeviceAddOn : DOOPEntity {
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
      "actualCost": OOPAttributeString.descriptions(["en":"Cost of the add-on added to the deal."]),
      "actualCostBase": OOPAttributeString.descriptions(["en":"Value of the actual cost in base currency."]),
      "customerPrice": OOPAttributeString.descriptions(["en":"Price the customer was charged for the add-on."]),
      "customerPriceBase": OOPAttributeString.descriptions(["en":"Value of the customer price in base currency."]),
      "dealDeviceAddOnId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
      "dealDeviceId": OOPAttributeUUID.descriptions(["en":"Parent deal for which the add-on is being added."]),
      "itemNumber": OOPAttributeNumber.descriptions(["en":"Unique number of the add-on."]),
      "retailPrice": OOPAttributeString.descriptions(["en":"Retail price of the add-on."]),
      "retailPriceBase": OOPAttributeString.descriptions(["en":"Value of the Retail Price in base currency."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Deal Device Add On"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Deal Device Add On"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Unique identifier of the currency associated with the entity."]),
    ]);
  }

  override string entityClass() { return "indDealDeviceAddOn"; }
  override string entityClasses() { return "indDealDeviceAddOns"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto INDDealDeviceAddOn() { return new DINDDealDeviceAddOn; } 
auto INDDealDeviceAddOn(Json json) { return new DINDDealDeviceAddOn(json); } 

unittest {
  version(uim_entities) {
    assert(INDDealDeviceAddOn);

  auto entity = INDDealDeviceAddOn;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}