import can
import sys
import time

def cansend(interface, arbitration_id, data):
    try:
        can_bus = can.interface.Bus(channel=interface, bustype='socketcan')
        msg = can.Message(arbitration_id=arbitration_id, data=data, extended_id=False)
        can_bus.send(msg)
        print(f"Sent: {msg}")
    except Exception as e:
        print(f"Error sending message: {e}")

def candump(interface):
    try:
        can_bus = can.interface.Bus(channel=interface, bustype='socketcan')
        print(f"Listening on {interface}...")
        while True:
            message = can_bus.recv()
            print(f"Received: {message}")
    except KeyboardInterrupt:
        print("Candump stopped by user.")
    except Exception as e:
        print(f"Error receiving message: {e}")

if len(sys.argv) < 2:
    print("Usage: python can_simulator.py [cansend/candump] [interface] [arbitration_id (for cansend)] [data (for cansend)]")
    sys.exit(1)

command = sys.argv[1]
interface = sys.argv[2]

if command == "cansend":
    if len(sys.argv) < 5:
        print("Usage: python can_simulator.py cansend [interface] [arbitration_id] [data]")
        sys.exit(1)
    arbitration_id = int(sys.argv[3], 16)
    data = [int(x, 16) for x in sys.argv[4:]]
    cansend(interface, arbitration_id, data)

elif command == "candump":
    candump(interface)

else:
    print("Invalid command. Use 'cansend' or 'candump'.")
