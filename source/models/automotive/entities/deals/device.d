module model.automotive.deals.device;

@safe:
import model.automotive;

// Vehicle or device that is the subject of a deal, which may involve one or more vehicle or device.
class DINDDealDevice : DOOPEntity {
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
      "actualRevenueBase": OOPAttributeString.descriptions(["en":"Value of the actual revenue in base currency."]),
      "customerPrice": OOPAttributeString.descriptions(["en":"Price offered to the customer for the deal."]),
      "customerPriceBase": OOPAttributeString.descriptions(["en":"Value of the customer price in base currency."]),
      "dealDeviceId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
      "dealId": OOPAttributeUUID.descriptions(["en":"Parent deal of this deal device."]),
      "deviceId": OOPAttributeUUID.descriptions(["en":"Device of interest for this deal."]),
      "estimatedCost": OOPAttributeString.descriptions(["en":"What the deal is expected to cost."]),
      "estimatedCostBase": OOPAttributeString.descriptions(["en":"Value of the estimated cost in base currency."]),
      "estimatedRevenue": OOPAttributeString.descriptions(["en":"The revenue expected to be gained from the deal."]),
      "estimatedRevenueBase": OOPAttributeString.descriptions(["en":"Value of the estimated revenue in base currency."]),
      "retailPrice": OOPAttributeString.descriptions(["en":"The retail price of the device in this deal."]),
      "retailPriceBase": OOPAttributeString.descriptions(["en":"Value of the retail price in base currency."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Deal Device"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Deal Device"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Unique identifier of the currency associated with the entity."]),
    ]);
  }

  override string entityClass() { return "indDealDevice"; }
  override string entityClasses() { return "indDealDevices"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto INDDealDevice() { return new DINDDealDevice; } 
auto INDDealDevice(Json json) { return new DINDDealDevice(json); } 

unittest {
  version(uim_entities) {
    assert(INDDealDevice);

  auto entity = INDDealDevice;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}