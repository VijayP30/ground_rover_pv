// Auto-generated. Do not edit!

// (in-package swiftnav_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let s16_Vec3 = require('./s16_Vec3.js');

//-----------------------------------------------------------

class imu {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tow = null;
      this.acc = null;
      this.gyr = null;
    }
    else {
      if (initObj.hasOwnProperty('tow')) {
        this.tow = initObj.tow
      }
      else {
        this.tow = 0;
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = new s16_Vec3();
      }
      if (initObj.hasOwnProperty('gyr')) {
        this.gyr = initObj.gyr
      }
      else {
        this.gyr = new s16_Vec3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type imu
    // Serialize message field [tow]
    bufferOffset = _serializer.int32(obj.tow, buffer, bufferOffset);
    // Serialize message field [acc]
    bufferOffset = s16_Vec3.serialize(obj.acc, buffer, bufferOffset);
    // Serialize message field [gyr]
    bufferOffset = s16_Vec3.serialize(obj.gyr, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type imu
    let len;
    let data = new imu(null);
    // Deserialize message field [tow]
    data.tow = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [acc]
    data.acc = s16_Vec3.deserialize(buffer, bufferOffset);
    // Deserialize message field [gyr]
    data.gyr = s16_Vec3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swiftnav_driver/imu';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b2387b2ae5c3f1cac7484571dd69baad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 tow
    s16_Vec3 acc
    s16_Vec3 gyr
    ================================================================================
    MSG: swiftnav_driver/s16_Vec3
    int16 x
    int16 y
    int16 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new imu(null);
    if (msg.tow !== undefined) {
      resolved.tow = msg.tow;
    }
    else {
      resolved.tow = 0
    }

    if (msg.acc !== undefined) {
      resolved.acc = s16_Vec3.Resolve(msg.acc)
    }
    else {
      resolved.acc = new s16_Vec3()
    }

    if (msg.gyr !== undefined) {
      resolved.gyr = s16_Vec3.Resolve(msg.gyr)
    }
    else {
      resolved.gyr = new s16_Vec3()
    }

    return resolved;
    }
};

module.exports = imu;
