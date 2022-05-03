module models.automotive.entities.devices.warranties.warranty;

@safe:
import models.automotive;

// Relationship indicating that a specific warranty applies to a specific vehicle or device.
class DATMDeviceWarranty : DOOPEntity {
  mixin(EntityThis!("ATMDeviceWarranty"));
  
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
        "deviceId": UUIDAttributeClass, // Vehicle or device for which this warranty applies. "]),
        "deviceWarrantyId": UUIDAttributeClass, // Unique identifier for entity instances "]),
        "issuedOn": OOPTimestampAttribute.descriptions(["en":"Date that the warranty is issued. "]),
        "validFrom": StringAttributeClass, // Last date for which the warranty is valid. "]),
        "validTo": StringAttributeClass, // First date for which the warranty is valid. "]),
        "warrantyId": UUIDAttributeClass, // Warranty that is applied to this device. "]),
        "stateCode": StringAttributeClass, // Status of the Device Warranty "]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Device Warranty "]),
        "statusCode_display": StringAttributeClass, //
      ])
      .registerPath("automotive_devicewarranties");
  }
}
mixin(EntityCalls!("ATMDeviceWarranty"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ATMDeviceWarranty);
  
  auto entity = ATMDeviceWarranty;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}