#### About

> CAN dump also known as CAN logging or CAN recording, refers to the process of capturing and string the data transmitted over a CAN bus. This data can include messages from various ECUs, such as sensor readings, control commands and other information.

> CAN dump is mostly used for troubleshooting, debugging and analyzing the behaviour of a CAN bus network. It allows engineers and technicians to monitor the CAN bus's data traffic to identify issues, diagnoze faults and analyze the performance of the network. It's used in automotive applications.

> CAN send refers to the process of transmitting messages or data onto a CAN bus. This involes sending CAN frames with specific IDs and data payloads to other devices or ECUs on network.

> CAN send is used for a range of purposes, such as controlling or configuring the ECUs, sending commands to actuators and communicating with other devices on the CAN bus. It allows for real time interaction with the CAN network, enabling features like remote control updates and reconfiguration of connected devices.


Reference - https://sgframework.readthedocs.io/en/latest/cantutorial.html


#### Example script

1. CAN send and CAN dump

> Sending via can0

```python can_simulator.py cansend can0 123 11 22 33 44 55 66 77 88```

> Recieving via can0

```python can_simulator.py candump can0```

2. Dealing with CAN databases - DBCs, ARXML etc.

>  Sending dbc messages 

```python can_dbc.py```

> Recieving messages

```candump vcan0 | cantools decode```


