## About

- Simulation modes refer to different ways that you can run a simulation of a dynamic system or model. Simulink offers several simulation modes, with the most common ones being.
- 1. Normal mode : Simulink simulates the model from the start time to the end time, calculating the system's behaviour over time, step by step.
2. Accelerator mode : This mode precompiles the model to improve simulation performance. It's useful when you need to run the simulation repeatedly with different input values.
3. Rapid Accelerator mode - It is even faster simulation by generating optimized C code for the model. It's typically used for real time and hardware in loop simulations.
4. External mode - It allows us to connect our simulink model in real time and tune parameters during simulation. It's useful for hardware tuning or real time testing.