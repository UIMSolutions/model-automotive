module models.automotive.entities.devices.inspections.checklist;

@safe:
import models.automotive;

// Specific checklist of a given type, such as a pre-delivery inspection or a checklist used for a specific type of service.
class DATMDeviceInspectionChecklist : DOOPEntity {
  mixin(EntityThis!("ATMDeviceInspectionChecklist"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
          "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the territory."]),
          "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who last modified the territory."]),
          "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
          "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Unique identifier of the data import or data migration that created this record."]),
          "ownerId": UUIDAttributeClass, // Owner Id"]),
          "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
          "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
          "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
          "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
          "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
          "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
          "deviceId": UUIDAttributeClass, // Vehicle or device being inspected."]),
          "deviceInspectionChecklistId": UUIDAttributeClass, // Inspection checklist used for the inspection."]),
          "deviceInspectionChecklistTypeId": UUIDAttributeClass, // Type of inspection checklist."]),
          "stateCode": StringAttributeClass, // Status of the Device Inspection Checklist"]),
          "stateCode_display": StringAttributeClass, //
          "statusCode": StringAttributeClass, // Reason for the status of the Device Inspection Checklist"]),
          "statusCode_display": StringAttributeClass, //
       ])
      .registerPath("automotive_deviceinspectionchecklists");
  }
}
mixin(EntityCalls!("ATMDeviceInspectionChecklist"));

unittest {
  version(uim_entities) {
    assert(ATMDeviceInspectionChecklist);
  
  auto entity = ATMDeviceInspectionChecklist;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}