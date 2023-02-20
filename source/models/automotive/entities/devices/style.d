module models.automotive.entities.devices.style;

@safe:
import models.automotive;

// Distinctive form or type of vehicle or device such as sedan or station wagon car, wheeled or crawler excavator, and so on.
class DDeviceStyleEntity : DOOPEntity {
  mixin(EntityThis!("DeviceStyleEntity"));
  
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
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated. "]), 
        "importSequenceNumber": IntegerAttribute, //Unique identifier of the data import or data migration that created this record. "]), 
        "ownerIdType": StringAttribute, // The type of owner, either User or Team. "]), 
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record "]), 
        "owningUserId": UUIDAttribute, //Unique identifier of the user that owns the activity. "]), 
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record. "]), 
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only. "]), 
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created. "]), 
        "entityImage": StringAttribute, // 
        "code": StringAttribute, // Unique code for the style. "]), 
        "deviceStyleId": UUIDAttribute, // Unique identifier for entity instances "]), 
        "deviceTypeId": UUIDAttribute, // Device type for which this style is applicable. "]), 
      ])
      .registerPath("automotive_devices.styles");
  }
}
mixin(EntityCalls!("DeviceStyleEntity"));

version(test_library) {
  unittest {
    assert(DeviceStyleEntity);
  
    auto entity = DeviceStyleEntity;
  }
}