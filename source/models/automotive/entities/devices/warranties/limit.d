module models.automotive.entities.devices.warranties.limit;

@safe:
import models.automotive;

// Limits of a specific warranty on a specific vehicle or device, such as maximum mileage or specific expiration date.
class DATMDeviceWarrantyLimit : DOOPEntity {
  mixin(EntityThis!("ATMDeviceWarrantyLimit"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated. "]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Unique identifier of the data import or data migration that created this record. "]),
        "ownerId": UUIDAttributeClass, // Owner Id "]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team. "]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record "]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity. "]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record. "]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only. "]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created. "]),
        "deviceId": UUIDAttributeClass, // Device for which this warranty limit applies. "]),
        "deviceMeasureId": UUIDAttributeClass, // Metric used in tracking this warranty. "]),
        "deviceWarrantyLimitId": UUIDAttributeClass, // Unique identifier for entity instances "]),
        "unitId": UUIDAttributeClass, // Component by which the warranty metric is to be measured. "]),
        "value": StringAttributeClass, // Value of the warranty limit. "]),
        "warrantyLimitId": UUIDAttributeClass, // Parent warranty limit for this device warranty limit. "]),
        "stateCode": StringAttributeClass, // Status of the Device Warranty Limit "]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Device Warranty Limit "]),
        "statusCode_display": StringAttributeClass, //
      ])
      .registerPath("automotive_devicewarrantylimits");
  }
}
mixin(EntityCalls!("ATMDeviceWarrantyLimit"));

unittest {
  version(uim_entities) {
    assert(ATMDeviceWarrantyLimit);
  
  auto entity = ATMDeviceWarrantyLimit;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}