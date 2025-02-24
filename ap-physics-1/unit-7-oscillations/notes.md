# Unit 7: Oscillations

Oscillations are repetitive motions around an equilibrium position. This unit covers simple harmonic motion, pendulums, and damped/driven oscillations.

---

## 7.1 Simple Harmonic Motion (SHM)

Simple harmonic motion is a type of periodic motion where the restoring force is directly proportional to the displacement.

| **Concept**               | **Description**                                                                 | **Equation/Key Points**                                                                 |
|--------------------------|---------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| **Displacement**          | The position of the object relative to equilibrium.                             | $x(t) = A \cos(\omega t + \phi)$                                                       |
| **Amplitude**             | The maximum displacement from equilibrium.                                      | $A$                                                                                    |
| **Angular Frequency**     | The rate of oscillation in radians per second.                                  | $\omega = \sqrt{\frac{k}{m}}$                                                          |
| **Period**                | The time for one complete oscillation.                                          | $T = \frac{2\pi}{\omega}$                                                              |
| **Frequency**             | The number of oscillations per unit time.                                       | $f = \frac{1}{T}$                                                                      |
| **Phase Constant**        | Determines the initial position of the oscillator.                              | $\phi$                                                                                 |

---

## 7.2 Energy in Simple Harmonic Motion

Energy in SHM is conserved and oscillates between kinetic and potential forms.

| **Concept**               | **Description**                                                                 | **Equation/Key Points**                                                                 |
|--------------------------|---------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| **Potential Energy**      | Energy stored due to displacement from equilibrium.                             | $PE = \frac{1}{2}kx^2$                                                                 |
| **Kinetic Energy**        | Energy due to motion.                                                           | $KE = \frac{1}{2}mv^2$                                                                 |
| **Total Mechanical Energy** | The sum of kinetic and potential energy.                                      | $E_{\text{total}} = \frac{1}{2}kA^2$                                                   |

---

## 7.3 Pendulums

Pendulums exhibit simple harmonic motion for small angles.

| **Concept**               | **Description**                                                                 | **Equation/Key Points**                                                                 |
|--------------------------|---------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| **Simple Pendulum**       | A mass swinging on a string.                                                   | $T = 2\pi \sqrt{\frac{L}{g}}$                                                          |
| **Physical Pendulum**     | A rigid body swinging about a pivot.                                           | $T = 2\pi \sqrt{\frac{I}{mgh}}$                                                        |
| **Torsional Pendulum**    | A disk suspended by a wire that twists.                                        | $T = 2\pi \sqrt{\frac{I}{\kappa}}$                                                     |

---

## 7.4 Damped Oscillations

Damped oscillations occur when a resistive force (e.g., friction) reduces the amplitude over time.

| **Concept**               | **Description**                                                                 | **Equation/Key Points**                                                                 |
|--------------------------|---------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| **Damping Force**         | A force that opposes motion and reduces amplitude.                             | $F_d = -bv$                                                                            |
| **Underdamped**           | Oscillations gradually decrease in amplitude.                                  | $x(t) = A e^{-\frac{b}{2m}t} \cos(\omega_d t + \phi)$                                  |
| **Overdamped**            | The system returns to equilibrium without oscillating.                         | $x(t) = C_1 e^{-\gamma_1 t} + C_2 e^{-\gamma_2 t}$                                     |
| **Critically Damped**     | The system returns to equilibrium as quickly as possible without oscillating.  | $x(t) = (C_1 + C_2 t) e^{-\gamma t}$                                                   |

---

## 7.5 Driven Oscillations and Resonance

Driven oscillations occur when an external force is applied to the system.

| **Concept**               | **Description**                                                                 | **Equation/Key Points**                                                                 |
|--------------------------|---------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| **Driving Force**         | An external force that sustains oscillations.                                   | $F(t) = F_0 \cos(\omega_d t)$                                                          |
| **Resonance**             | Maximum amplitude occurs when the driving frequency matches the natural frequency. | $\omega_d = \omega_0$                                                                 |
| **Amplitude at Resonance** | The amplitude is maximized at resonance.                                       | $A_{\text{max}} = \frac{F_0}{b \omega_0}$                                              |

---

## 7.6 Applications of Oscillations

| **Application**           | **Description**                                                                 | **Equation/Key Points**                                                                 |
|--------------------------|---------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| **Clocks**                | Pendulums are used to regulate timekeeping.                                     | $T = 2\pi \sqrt{\frac{L}{g}}$                                                          |
| **Musical Instruments**   | Strings and air columns oscillate to produce sound.                             | $f_n = \frac{n}{2L} \sqrt{\frac{T}{\mu}}$                                              |
| **Seismometers**          | Measure ground motion during earthquakes.                                       | $x(t) = A \cos(\omega t + \phi)$                                                       |

---

## 7.7 Practice Problems

1. **Problem 1**: A mass of 0.5 kg is attached to a spring with a spring constant of 200 N/m. Calculate the period of oscillation.
   - **Solution**: $\omega = \sqrt{\frac{k}{m}} = \sqrt{\frac{200}{0.5}} = 20 \, \text{rad/s}$ <br> $T = \frac{2\pi}{\omega} = \frac{2\pi}{20} = 0.314 \, \text{s}$.

2. **Problem 2**: A simple pendulum has a length of 1 m. Calculate its period on Earth ($g = 9.8 \, \text{m/s}^2$).
   - **Solution**: $T = 2\pi \sqrt{\frac{L}{g}} = 2\pi \sqrt{\frac{1}{9.8}} \approx 2.01 \, \text{s}$.

3. **Problem 3**: A damped oscillator has a mass of 2 kg, a damping constant of 0.5 kg/s, and a spring constant of 50 N/m. Calculate the angular frequency of the damped oscillations.
   - **Solution**: $\omega_0 = \sqrt{\frac{k}{m}} = \sqrt{\frac{50}{2}} = 5 \, \text{rad/s}$ <br> $\omega_d = \sqrt{\omega_0^2 - \left(\frac{b}{2m}\right)^2} = \sqrt{25 - \left(\frac{0.5}{4}\right)^2} \approx 4.99 \, \text{rad/s}$.

---

Let me know when you’re ready for **Unit 8: Fluids**!
