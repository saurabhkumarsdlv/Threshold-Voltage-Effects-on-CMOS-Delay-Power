# Low-Power Addition with Borrow-Save Adders under Threshold Voltage Variability

This repository contains a simulation of low-power addition using Borrow-Save Adders under threshold voltage variability. The primary focus is on analyzing the impact of threshold voltage (Vth) on various performance metrics such as delay and power consumption.

## Overview

This simulation is based on the alpha-power law model for delay and the exponential leakage model for power consumption. The models are used to study the relationship between threshold voltage and the delay, leakage power, and total power of the system. 

### Key Parameters:
- **Vdd**: Supply voltage (1.0 V)
- **Alpha**: Alpha-power law exponent (1.5)
- **n**: Subthreshold slope factor (1.5)
- **Vt**: Thermal voltage (0.025 V)
- **C**: Load capacitance (1e-15 F)
- **f**: Frequency (1 GHz)
- **activity**: Switching activity (0.1)

## Simulation Models

1. **Delay Model (Alpha-Power Law)**:
   The delay is modeled as:
   \[	ext{Delay} = rac{Vdd}{(Vdd - Vth)^{lpha}}\]
   where `Vdd` is the supply voltage and `Vth` is the threshold voltage.

2. **Leakage Power Model**:
   The leakage power is modeled as:
   \[P_{	ext{leak}} = \exp \left( - rac{Vth}{n \cdot Vt} 
ight)\]
   where `n` is the subthreshold slope factor and `Vt` is the thermal voltage.

3. **Dynamic Power Model**:
   The dynamic power is given by:
   \[P_{	ext{dyn}} = 	ext{activity} 	imes C 	imes Vdd^2 	imes f\]
   where `activity` is the switching activity, `C` is the load capacitance, `Vdd` is the supply voltage, and `f` is the frequency.

4. **Total Power**:
   The total power is the sum of dynamic and leakage power:
   \[P_{	ext{total}} = P_{	ext{dyn}} + P_{	ext{leak}}\]

## Results

The following plots are generated:
1. **Delay vs Threshold Voltage**: A plot showing the variation of delay with respect to the threshold voltage `Vth`.
2. **Power vs Threshold Voltage**: A plot comparing leakage power and total power against `Vth`.

## Usage

1. Clone the repository:
   ```bash
   git clone [https://github.com/your-username/low-power-addition.git](https://github.com/saurabhkumarsdlv/Threshold-Voltage-Effects-on-CMOS-Delay-Power)
   cd low-power-addition
   ```

2. Run the MATLAB code:
   Open the provided `.m` file in MATLAB and execute the script. It will generate the delay and power plots based on the threshold voltage sweep.

## Dependencies

- MATLAB (R2020a or later recommended)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any questions or suggestions, feel free to contact me at [your-email@example.com].
