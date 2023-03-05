/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.automotive.entities.deals.deal;

@safe:
import models.automotive;

// Business proposal for the sale of one or more vehicle or device, including optional trade-ins, add-ons and financial terms.
class DDealEntity : DEntity {
  mixin(EntityThis!("DealEntity"));
  
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
        "actualCost": StringAttribute, // Cost of the deal."]),
        "actualCostBase": StringAttribute, // Value of the actual cost in base currency."]),
        "actualRevenue": StringAttribute, // Revenue gained from the deal."]),
        "actualrevenue_Base": StringAttribute, // Value of the actual revenue in base currency."]),
        "businessOperationId": UUIDAttribute, // Department/team at dealership responsible for the deal."]),
        "commissionAmount": StringAttribute, // The amount of commission paid out for this deal."]),
        "commissionAmountBase": StringAttribute, // Value of the commission amount in base currency."]),
        "dealFileId": UUIDAttribute, // The file location of this deal."]),
        "dealId": UUIDAttribute, // Unique identifier for entity instances"]),
        "dealNumber": IntegerAttribute, //Unique number of the deal."]),
        "dealStatus": StringAttribute, // Status of the deal (scenario, offer or deal)."]),
        "dealStatus_display": StringAttribute, //
        "estimatedCost": StringAttribute, // What the deal is expected to cost."]),
        "estimatedCostBase": StringAttribute, // Value of the estimated cost in base currency."]),
        "estimatedRevenue": StringAttribute, // How much revenue the deal is expected to make."]),
        "estimatedRevenueBase": StringAttribute, // Value of the estimated revenue in base currency."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the entity."]),
      ])
      .registerPath("automotive_deals");
  }
}
mixin(EntityCalls!("DealEntity"));

version(test_model_automotive) { unittest {
    assert(DealEntity);

    auto entity = DealEntity;
  }
}