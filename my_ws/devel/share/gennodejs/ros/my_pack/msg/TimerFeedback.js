// Auto-generated. Do not edit!

// (in-package my_pack.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TimerFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_elapsed = null;
      this.time_remaining = null;
    }
    else {
      if (initObj.hasOwnProperty('time_elapsed')) {
        this.time_elapsed = initObj.time_elapsed
      }
      else {
        this.time_elapsed = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('time_remaining')) {
        this.time_remaining = initObj.time_remaining
      }
      else {
        this.time_remaining = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimerFeedback
    // Serialize message field [time_elapsed]
    bufferOffset = _serializer.duration(obj.time_elapsed, buffer, bufferOffset);
    // Serialize message field [time_remaining]
    bufferOffset = _serializer.duration(obj.time_remaining, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimerFeedback
    let len;
    let data = new TimerFeedback(null);
    // Deserialize message field [time_elapsed]
    data.time_elapsed = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [time_remaining]
    data.time_remaining = _deserializer.duration(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_pack/TimerFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f7ef31d21e406bbd1f38a63801a29be7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Part 3: the feedback, to be sent periodically by the server during
    # execution.
    #
    # The amount of time that has elapsed from the start
    duration time_elapsed
    # The amount of time remaining until we're done
    duration time_remaining
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimerFeedback(null);
    if (msg.time_elapsed !== undefined) {
      resolved.time_elapsed = msg.time_elapsed;
    }
    else {
      resolved.time_elapsed = {secs: 0, nsecs: 0}
    }

    if (msg.time_remaining !== undefined) {
      resolved.time_remaining = msg.time_remaining;
    }
    else {
      resolved.time_remaining = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = TimerFeedback;
