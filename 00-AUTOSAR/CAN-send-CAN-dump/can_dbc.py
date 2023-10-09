import cantools
from can.message import Message
import can

# Load the DBC file
db = cantools.db.load_file('sample_dbc.dbc')

# Fetch the message by message name
msg = db.get_message_by_name('CCVS1')

# Define the data to encode, including the value for "WheelBasedVehicleSpeed"
data = {
    'WheelBasedVehicleSpeed': 60,  # Provide a value for WheelBasedVehicleSpeed here
}

# Encode the message to 8 bit to send via bus
msg_data = msg.encode(data)

bus = can.interface.Bus(bustype='socketcan', channel='vcan0', bitrate = 256000)
msg = can.Message(arbitration_id=msg.frame_id, data = msg_data, is_extended_id=False)
try:
    bus.send(msg)
    print("Message sent on {}".format(bus.channel_info))
except can.CanError:
    print("Message not sent")
