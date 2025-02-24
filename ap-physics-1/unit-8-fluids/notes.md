# Unit 8: Fluids

Fluids are substances that flow, including liquids and gases. This unit covers fluid statics, dynamics, and the principles governing fluid behavior.

## 8.1 Fluid Statics

Fluid statics deals with fluids at rest and the forces exerted by them.

| **Concept**               | **Description**                                                                 | **Equation/Key Points**                                                                 |
|--------------------------|---------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| **Density**               | Mass per unit volume of a substance.                                            | $\rho = \frac{m}{V}$                                                                   |
| **Pressure**              | Force exerted per unit area.                                                    | $P = \frac{F}{A}$                                                                      |
| **Hydrostatic Pressure**  | Pressure due to the weight of a fluid column.                                   | $P = P_0 + \rho g h$                                                                   |
| **Pascal's Principle**    | Pressure applied to a confined fluid is transmitted equally in all directions.  | $\Delta P = \frac{F_1}{A_1} = \frac{F_2}{A_2}$                                         |
| **Buoyant Force**         | The upward force exerted by a fluid on an immersed object.                      | $F_b = \rho_{\text{fluid}} V_{\text{displaced}} g$                                     |

## 8.2 Fluid Dynamics

Fluid dynamics deals with fluids in motion and the forces acting on them.

| **Concept**               | **Description**                                                                 | **Equation/Key Points**                                                                 |
|--------------------------|---------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| **Continuity Equation**   | The product of cross-sectional area and flow speed is constant for an incompressible fluid. | $A_1 v_1 = A_2 v_2$                                                                   |
| **Bernoulli's Equation**  | Relates pressure, speed, and height in a fluid.                                 | $P_1 + \frac{1}{2} \rho v_1^2 + \rho g h_1 = P_2 + \frac{1}{2} \rho v_2^2 + \rho g h_2$ |
| **Viscosity**             | A measure of a fluid's resistance to flow.                                      | $\eta = \frac{F \cdot d}{A \cdot v}$                                                   |
| **Laminar Flow**          | Smooth, orderly flow of fluid layers.                                           | -                                                                                       |
| **Turbulent Flow**        | Chaotic, irregular flow of fluid.                                               | -                                                                                       |

## 8.3 Applications of Fluid Principles

| **Application**           | **Description**                                                                 | **Equation/Key Points**                                                                 |
|--------------------------|---------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| **Hydraulic Systems**     | Use Pascal's Principle to amplify force.                                        | $\frac{F_1}{A_1} = \frac{F_2}{A_2}$                                                    |
| **Aerodynamics**          | Study of air flow around objects, such as airplane wings.                       | Bernoulli's Equation                                                                    |
| **Blood Flow**            | Blood circulation in the human body follows fluid dynamics principles.          | Continuity Equation                                                                     |

## 8.4 Archimedes' Principle

Archimedes' Principle explains buoyancy and floating objects.

| **Concept**               | **Description**                                                                 | **Equation/Key Points**                                                                 |
|--------------------------|---------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| **Buoyant Force**         | The upward force on an object immersed in a fluid.                              | $F_b = \rho_{\text{fluid}} V_{\text{displaced}} g$                                     |
| **Floating Objects**      | An object floats when the buoyant force equals its weight.                      | $F_b = mg$                                                                             |
| **Density Comparison**    | An object floats if its density is less than the fluid's density.               | $\rho_{\text{object}} < \rho_{\text{fluid}}$                                           |

## 8.5 Surface Tension and Capillary Action

Surface tension and capillary action are phenomena caused by cohesive forces in liquids.

| **Concept**               | **Description**                                                                 | **Equation/Key Points**                                                                 |
|--------------------------|---------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| **Surface Tension**       | The energy required to increase the surface area of a liquid.                   | $\gamma = \frac{F}{L}$                                                                 |
| **Capillary Action**      | The ability of a liquid to flow in narrow spaces without external forces.       | $h = \frac{2 \gamma \cos \theta}{\rho g r}$                                            |

## 8.6 Practice Problems

1. **Problem 1**: A block of wood with a volume of 0.01 m³ is fully submerged in water. Calculate the buoyant force acting on the block. (Density of water = 1000 kg/m³, $g = 9.8 \, \text{m/s}^2$)
   - **Solution**: $F_b = \rho_{\text{fluid}} V_{\text{displaced}} g = 1000 \cdot 0.01 \cdot 9.8 = 98 \, \text{N}$.

2. **Problem 2**: Water flows through a pipe with a cross-sectional area of 0.02 m² at a speed of 3 m/s. If the pipe narrows to 0.01 m², what is the new speed of the water?
   - **Solution**: $A_1 v_1 = A_2 v_2$ <br> $0.02 \cdot 3 = 0.01 \cdot v_2$ <br> $v_2 = 6 \, \text{m/s}$.

3. **Problem 3**: A fluid with a density of 800 kg/m³ flows through a horizontal pipe. At one point, the pressure is 120 kPa and the speed is 2 m/s. If the pipe narrows and the speed increases to 4 m/s, what is the new pressure? (Use Bernoulli's Equation)
   - **Solution**: $P_1 + \frac{1}{2} \rho v_1^2 = P_2 + \frac{1}{2} \rho v_2^2$ <br> $120,000 + \frac{1}{2} \cdot 800 \cdot 2^2 = P_2 + \frac{1}{2} \cdot 800 \cdot 4^2$ <br> $120,000 + 1600 = P_2 + 6400$ <br> $P_2 = 115,200 \, \text{Pa}$.