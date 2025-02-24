# Unit 5: Torque and Rotational Dynamics

Rotational dynamics deals with the motion of objects that rotate about an axis, introducing concepts like torque, angular momentum, and rotational inertia.

---

## 5.1 Torque

Torque is the rotational equivalent of force and causes objects to rotate.

| **Concept**               | **Description**                                                                 | **Equation/Key Points**                                                                 |
|--------------------------|---------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| **Torque**                | The product of force and the lever arm (distance from the pivot point).         | $\tau = rF \sin \theta$                                                                |
| **Units**                 | Torque is measured in newton-meters (N·m).                                      | $1 \, \text{N} \cdot \text{m}$                                                         |
| **Direction**             | Torque is a vector quantity with direction determined by the right-hand rule.   | Clockwise: negative <br> Counterclockwise: positive                                     |
| **Lever Arm**             | The perpendicular distance from the pivot point to the line of action of the force. | $r_{\perp} = r \sin \theta$                                                            |

---

## 5.2 Rotational Inertia (Moment of Inertia)

Rotational inertia is the resistance of an object to changes in its rotational motion.

| **Concept**               | **Description**                                                                 | **Equation/Key Points**                                                                 |
|--------------------------|---------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| **Moment of Inertia**     | Depends on the mass distribution relative to the axis of rotation.              | $I = \sum m_i r_i^2$                                                                   |
| **Common Shapes**         | - Point mass: $I = mr^2$ <br> - Solid sphere: $I = \frac{2}{5}mr^2$ <br> - Rod (center): $I = \frac{1}{12}mL^2$ |                                                                                         |

---

## 5.3 Rotational Kinematics

Rotational kinematics describes the motion of rotating objects without considering the forces involved.

| **Concept**               | **Description**                                                                 | **Equation/Key Points**                                                                 |
|--------------------------|---------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| **Angular Displacement**  | The angle through which an object rotates.                                      | $\Delta \theta = \theta_f - \theta_i$                                                  |
| **Angular Velocity**      | The rate of change of angular displacement.                                     | $\omega = \frac{\Delta \theta}{\Delta t}$                                              |
| **Angular Acceleration**  | The rate of change of angular velocity.                                         | $\alpha = \frac{\Delta \omega}{\Delta t}$                                              |
| **Equations of Motion**   | - $\omega_f = \omega_i + \alpha t$ <br> - $\Delta \theta = \omega_i t + \frac{1}{2} \alpha t^2$ <br> - $\omega_f^2 = \omega_i^2 + 2 \alpha \Delta \theta$ |                                                                                         |

---

## 5.4 Rotational Dynamics

Rotational dynamics relates torque to angular acceleration.

| **Concept**               | **Description**                                                                 | **Equation/Key Points**                                                                 |
|--------------------------|---------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| **Newton's Second Law for Rotation** | The net torque equals the moment of inertia times angular acceleration.      | $\sum \tau = I \alpha$                                                                 |
| **Rotational Kinetic Energy** | The energy due to rotational motion.                                       | $KE_{\text{rot}} = \frac{1}{2} I \omega^2$                                             |

---

## 5.5 Angular Momentum

Angular momentum is the rotational equivalent of linear momentum.

| **Concept**               | **Description**                                                                 | **Equation/Key Points**                                                                 |
|--------------------------|---------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| **Angular Momentum**      | The product of moment of inertia and angular velocity.                         | $\vec{L} = I \vec{\omega}$                                                             |
| **Conservation of Angular Momentum** | The total angular momentum of a system remains constant if no external torque acts on it. | $\vec{L}_{\text{initial}} = \vec{L}_{\text{final}}$                                   |

---

## 5.6 Rolling Motion

Rolling motion combines translational and rotational motion.

| **Concept**               | **Description**                                                                 | **Equation/Key Points**                                                                 |
|--------------------------|---------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| **Condition for Rolling Without Slipping** | The point of contact with the ground has zero instantaneous velocity.       | $v = r \omega$                                                                         |
| **Total Kinetic Energy**  | The sum of translational and rotational kinetic energy.                        | $KE_{\text{total}} = \frac{1}{2}mv^2 + \frac{1}{2}I \omega^2$                          |

---

## 5.7 Applications of Rotational Dynamics

| **Application**           | **Description**                                                                 | **Equation/Key Points**                                                                 |
|--------------------------|---------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| **Pulleys**               | Rotational motion is used to analyze systems with pulleys.                     | $\tau = rF$                                                                            |
| **Gyroscopes**            | Devices that use angular momentum to maintain orientation.                      | $\vec{L} = I \vec{\omega}$                                                             |
| **Spinning Tops**         | Stability is due to conservation of angular momentum.                           | $\vec{L}_{\text{initial}} = \vec{L}_{\text{final}}$                                    |

---

## 5.8 Practice Problems

1. **Problem 1**: A force of 10 N is applied perpendicular to a wrench at a distance of 0.5 m from the pivot point. Calculate the torque.
   - **Solution**: $\tau = rF \sin \theta = 0.5 \cdot 10 \cdot \sin 90^\circ = 5 \, \text{N} \cdot \text{m}$.

2. **Problem 2**: A solid sphere of mass 2 kg and radius 0.1 m rolls without slipping. Calculate its moment of inertia.
   - **Solution**: $I = \frac{2}{5}mr^2 = \frac{2}{5} \cdot 2 \cdot (0.1)^2 = 0.008 \, \text{kg} \cdot \text{m}^2$.

3. **Problem 3**: A disk with a moment of inertia of 0.1 kg·m² accelerates from rest to an angular velocity of 10 rad/s in 5 seconds. Calculate the torque applied.
   - **Solution**: $\alpha = \frac{\Delta \omega}{\Delta t} = \frac{10}{5} = 2 \, \text{rad/s}^2$ <br> $\tau = I \alpha = 0.1 \cdot 2 = 0.2 \, \text{N} \cdot \text{m}$.

---

Let me know when you’re ready for **Unit 6: Energy and Momentum of Rotating Systems**!
