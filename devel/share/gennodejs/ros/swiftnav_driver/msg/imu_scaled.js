// Auto-generated. Do not edit!

// (in-package swiftnav_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class imu_scaled {
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
        this.acc = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('gyr')) {
        this.gyr = initObj.gyr
      }
      else {
        this.gyr = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type imu_scaled
    // Serialize message field [tow]
    bufferOffset = _serializer.int32(obj.tow, buffer, bufferOffset);
    // Serialize message field [acc]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.acc, buffer, bufferOffset);
    // Serialize message field [gyr]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.gyr, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type imu_scaled
    let len;
    let data = new imu_scaled(null);
    // Deserialize message field [tow]
    data.tow = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [acc]
    data.acc = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [gyr]
    data.gyr = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swiftnav_driver/imu_scaled';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3bec1428d9809c2fe2f8b896685b9fc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 tow
    geometry_msgs/Vector3 acc
    geometry_msgs/Vector3 gyr
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new imu_scaled(null);
    if (msg.tow !== undefined) {
      resolved.tow = msg.tow;
    }
    else {
      resolved.tow = 0
    }

    if (msg.acc !== undefined) {
      resolved.acc = geometry_msgs.msg.Vector3.Resolve(msg.acc)
    }
    else {
      resolved.acc = new geometry_msgs.msg.Vector3()
    }

    if (msg.gyr !== undefined) {
      resolved.gyr = geometry_msgs.msg.Vector3.Resolve(msg.gyr)
    }
    else {
      resolved.gyr = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = imu_scaled;
