module models.automotive.entities.devices.component;

@safe:
import models.automotive;

// Physical or logical part of a vehicle or device.
class DDeviceComponentEntity : DOOPEntity {
  mixin(EntityThis!("DeviceComponentEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, 
        ModifiedOnBehalfByAttribute, 
        OwnerIdAttribute, 
        StateCodeAttribute, 
        StatusCodeAttribute 
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
        "entityImage": StringAttribute, //
        "behavior": StringAttribute, // Describes if the component is fixed, movable or replaceable.
        "behavior_display": StringAttribute, //
        "componentDeviceId": UUIDAttribute, // Reference to a separate sub-device that the component may represent.
        "configurationOptionId": UUIDAttribute, // Specific option for the component on the device.
        "deviceComponentId": UUIDAttribute, // Unique identifier for entity instances
        "deviceId": UUIDAttribute, // Parent vehicle or device that contains the component.
        "deviceMeterId": UUIDAttribute, // Reference to a meter that the component may represent.
        "deviceSensorId": UUIDAttribute, // Reference to a sensor that the component may represent.
        "itemName": StringAttribute, // Name of the component.
        "parentComponentId": UUIDAttribute, // Larger component for which the component is a part.
        "quantity": StringAttribute, // Number of component needed.
        "serialNumber": IntegerAttribute, //Unique number for component.
        "specificationAccessoryId": UUIDAttribute, // Accessory for which the component is a part.
        "type": StringAttribute, // Type of component (standard, option, accessory, device, meter, sensor or custom).
        "type_display": StringAttribute, //
      ])
      .registerPath("automotive_devices.components");
  }
}
mixin(EntityCalls!("DeviceComponentEntity"));

version(test_library) {
  unittest {
    assert(DeviceComponentEntity);
  
    auto entity = DeviceComponentEntity;
  }
}