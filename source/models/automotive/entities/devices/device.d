module models.automotive.entities.devices.device;

@safe:
import models.automotive;

// Physical piece of equipment of considerable value such as a vehicle or a device such as an excavator, that can be tracked through its entire life cycle of trade, ownership and service and may be related to one or more customers over time.
class DDeviceEntity : DOOPEntity {
  mixin(EntityThis!("DeviceEntity"));
  
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
        "entityImage": StringAttribute, //
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the entity with respect to the base currency."]),
        "businessOperationId": UUIDAttribute, // Department/team at business operation responsible for vehicle or device."]),
        "chassisNumber": IntegerAttribute, //Unique number for the vehicle's engine; last 6 digits of the VIN."]),
        "condition": StringAttribute, // Current condition of the vehicle or device (excellent, good, fair, poor or unknown)."]),
        "condition_display": StringAttribute, //
        "deviceBrandId": UUIDAttribute, // Brand of the vehicle or device."]),
        "deviceClassId": UUIDAttribute, // Class of the vehicle or device."]),
        "deviceGenerationId": UUIDAttribute, // Generation of the vehicle or device's model."]),
        "deviceId": UUIDAttribute, // Unique identifier for entity instances"]),
        "deviceModelCodeId": UUIDAttribute, // Configuration of the vehicle or device model."]),
        "deviceModelId": UUIDAttribute, // Model of the vehicle or device."]),
        "deviceNumber": IntegerAttribute, //Unique number of the vehicle or device."]),
        "deviceStateId": UUIDAttribute, // Status of the vehicle or device, which may represent a given combination of inventory, ownership and trade status."]),
        "deviceStyleId": UUIDAttribute, // Body style of the vehicle or device."]),
        "deviceTypeId": UUIDAttribute, // Type of this vehicle or device."]),
        "deviceVariantId": UUIDAttribute, // Specific configuration for this vehicle or device."]),
        "listPrice": StringAttribute, // Sale price of vehicle or device."]),
        "listPriceBase": StringAttribute, // Value of the List Price in base currency."]),
        "listPriceComments": StringAttribute, // Comments regarding the listed price for this vehicle or device."]),
        "registrationNumber": IntegerAttribute, //Registration number for this vehicle or device."]),
        "specificationId": UUIDAttribute, // Specification tied to this vehicle or device."]),
        "Url": UrlAttribute, // Webpage for vehicle or device."]),
        "vendorsStockNumber": IntegerAttribute, //Stock number for vehicle or device."]),
        "VIN": StringAttribute, // Unique code used to identify an vehicle or device."]),
        "year": StringAttribute, // Manufacture year of the vehicle or device."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the entity."]),
      ])
      .registerPath("automotive_devices");
  }
}
mixin(EntityCalls!("DeviceEntity"));

version(test_model_automotive) { unittest {
    assert(DeviceEntity);
  
    auto entity = DeviceEntity;
  }
}