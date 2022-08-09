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

class gps_loc {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tow = null;
      this.loc = null;
    }
    else {
      if (initObj.hasOwnProperty('tow')) {
        this.tow = initObj.tow
      }
      else {
        this.tow = 0;
      }
      if (initObj.hasOwnProperty('loc')) {
        this.loc = initObj.loc
      }
      else {
        this.loc = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gps_loc
    // Serialize message field [tow]
    bufferOffset = _serializer.int32(obj.tow, buffer, bufferOffset);
    // Serialize message field [loc]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.loc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gps_loc
    let len;
    let data = new gps_loc(null);
    // Deserialize message field [tow]
    data.tow = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [loc]
    data.loc = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swiftnav_driver/gps_loc';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be07eed9e736cdda9531572e561caca9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 tow
    geometry_msgs/Point loc
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new gps_loc(null);
    if (msg.tow !== undefined) {
      resolved.tow = msg.tow;
    }
    else {
      resolved.tow = 0
    }

    if (msg.loc !== undefined) {
      resolved.loc = geometry_msgs.msg.Point.Resolve(msg.loc)
    }
    else {
      resolved.loc = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = gps_loc;
