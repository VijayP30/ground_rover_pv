// Auto-generated. Do not edit!

// (in-package swiftnav_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class imu_aux {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.imu_type = null;
      this.temp = null;
      this.imu_conf = null;
    }
    else {
      if (initObj.hasOwnProperty('imu_type')) {
        this.imu_type = initObj.imu_type
      }
      else {
        this.imu_type = 0;
      }
      if (initObj.hasOwnProperty('temp')) {
        this.temp = initObj.temp
      }
      else {
        this.temp = 0;
      }
      if (initObj.hasOwnProperty('imu_conf')) {
        this.imu_conf = initObj.imu_conf
      }
      else {
        this.imu_conf = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type imu_aux
    // Serialize message field [imu_type]
    bufferOffset = _serializer.uint8(obj.imu_type, buffer, bufferOffset);
    // Serialize message field [temp]
    bufferOffset = _serializer.int16(obj.temp, buffer, bufferOffset);
    // Serialize message field [imu_conf]
    bufferOffset = _serializer.uint8(obj.imu_conf, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type imu_aux
    let len;
    let data = new imu_aux(null);
    // Deserialize message field [imu_type]
    data.imu_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [temp]
    data.temp = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [imu_conf]
    data.imu_conf = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swiftnav_driver/imu_aux';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '249814da45ee16df652b831c1a2441a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 imu_type
    int16 temp
    uint8 imu_conf
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new imu_aux(null);
    if (msg.imu_type !== undefined) {
      resolved.imu_type = msg.imu_type;
    }
    else {
      resolved.imu_type = 0
    }

    if (msg.temp !== undefined) {
      resolved.temp = msg.temp;
    }
    else {
      resolved.temp = 0
    }

    if (msg.imu_conf !== undefined) {
      resolved.imu_conf = msg.imu_conf;
    }
    else {
      resolved.imu_conf = 0
    }

    return resolved;
    }
};

module.exports = imu_aux;
