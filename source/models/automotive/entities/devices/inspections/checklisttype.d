module models.automotive.entities.devices.inspections.checklisttype;

@safe:
import models.automotive;

// Type of checklist, such as pre-delivery or service.
class DDeviceInspectionChecklistTypeEntity: DOOPEntity {
  mixin(EntityThis!("DeviceInspectionChecklistTypeEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute,
        ModifiedOnBehalfByAttribute, 
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Shows whether the account is active or inactive. Inactive accounts are read-only and can't be edited unless they are reactivated.
        StatusCodeAttribute // Select the account's status.
      ])
      .addValues([ // individual values
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated.
        "importSequenceNumber": IntegerAttribute, //Unique identifier of the data import or data migration that created this record.
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record
        "owningUserId": UUIDAttribute, //Unique identifier of the user that owns the activity.
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record.
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created.
        "deviceInspectionChecklistTypeId": UUIDAttribute, // Unique identifier for entity instances
      ])
      .registerPath("automotive_devices.inspections.checklisttype");
  }
}
mixin(EntityCalls!("DeviceInspectionChecklistTypeEntity"));

version(test_library) {
  unittest {
    assert(DeviceInspectionChecklistTypeEntity);
  
    auto entity = DeviceInspectionChecklistTypeEntity;
  }
}