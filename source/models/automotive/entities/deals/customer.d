module models.automotive.entities.deals.customer;

@safe:
import models.automotive;

// Customer associated with a given deal.
class DATMDealCustomer : DOOPEntity {
  mixin(EntityThis!("ATMDealCustomer"));
  
  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Unique identifier of the data import or data migration that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "customerId": OOPUUIDAttribute.descriptions(["en":"The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "dealCustomerId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
        "dealId": OOPUUIDAttribute.descriptions(["en":"Parent deal for this deal customer."]),
      ])
      .addValues([
        StateCodeAttributeClass,
        StatusCodeAttributeClass
      ])
      .addValues([
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "comments": OOPStringAttribute.descriptions(["en":"Notes and remarks regarding the deal customer."]),
        "role": OOPStringAttribute.descriptions(["en":"Role of the customer on this deal (buyer, co-buyer, primary driver or corporation)."]),
        "role_display": OOPStringAttribute.descriptions(["en":""]),
        "customerIdType": OOPStringAttribute.descriptions(["en":"The type of customer, either Account or Contact."]),
      ])
      .registerPath("automotive_dealcustomers");
  }
}
mixin(EntityCalls!("ATMDealCustomer"));

unittest {
  version(uim_entities) {
    assert(ATMDealCustomer);

  auto entity = ATMDealCustomer;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}