# FIR Low-Pass Filter Design and Verification (Blackman Window)

This repository contains a complete implementation and verification of a linear-phase FIR low-pass filter using a Blackman window. The project includes analytical coefficient derivation, MATLAB implementation, and time- and frequency-domain analysis to confirm expected filter behavior under fixed design constraints.

The work is presented as a self-contained technical case study suitable for a digital signal processing portfolio.

---

## Project Overview

The filter is designed using a windowed-sinc approach, starting from the ideal low-pass impulse response and applying a Blackman window to obtain a finite-length, realizable FIR filter. Key design parameters—including the window type and filter length—were fixed in advance, allowing the project to focus on correct formulation, implementation, and verification rather than open-ended optimization.

MATLAB is used to:
- compute FIR coefficients from analytical expressions
- evaluate magnitude and phase response
- demonstrate filtering of a noisy time-domain signal

The results illustrate the characteristic tradeoffs of the Blackman window, including strong sidelobe attenuation and a relatively wide transition band, while preserving linear-phase behavior.

---

## Repository Contents

- `Design and Verification of an FIR Low Pass Filter Using Blackman Window Method`  
  Full technical report PDF, including theory, results, and appendices.

- `FIR_Low_Pass_Filter`  
  MATLAB script implementing coefficient generation, frequency response analysis, and time-domain filtering.

- `HandCalculations`  
  Scanned hand derivations supporting the analytical development.

- `Plots`  
  Exported plots used in the report.

- `README.md`  
  Repository overview and documentation.

---

## Methods and Tools

- FIR filter formulation using the windowed-sinc method  
- Blackman window for sidelobe suppression  
- MATLAB for numerical implementation and verification  
- Time-domain and frequency-domain analysis  

---

## Notes

This project was completed under fixed design constraints and is intended to demonstrate a clear and correct FIR filter workflow rather than parameter optimization. Extensions such as alternative window functions or increased filter order are discussed in the report but are outside the scope of this implementation.

---

## Author

**John Renner**  
Department of Electrical Engineering  
University of New Haven
