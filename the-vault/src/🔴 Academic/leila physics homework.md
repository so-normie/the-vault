---
created: 2023-10-18T00:20
updated: 2023-10-19T21:52
cards-deck: Default
---

﹇<br>
A cable holds a $1130\:\text{kg}$ car in place on a ramp. The cable makes an angle of $31^{\circ}$ above the ramp, and itself rises at $25^{\circ}$ above the horizontal.

(a) Draw a free-body diagram (FBD) for the car. <br>(b) Find the tension in the cable <br>(c) How hard does the surface of the ramp push on the car?

#card 

`\begin{proof}[**Solution for (a)**]`
<br>
![problem-2.excalidraw.light|400](the-vault/assets/excalidraw/problem-2.excalidraw.light.svg)


`\end{proof}`

`\begin{proof}[**Solution for (b)**]`
<br>
First and foremost, from Newton’s first law of motion, when an object is in equilibrium in an inertial frame of reference—that is, either at rest or moving with constant velocity—the vector sum of forces acting on it (i.e., the _net external force_) must be zero.

Therefore, referring to the current system drawn, the _net external force_ on the car can be represented as…

$$
\begin{equation}
\sum \vec{\boldsymbol{F}} = 0
\end{equation}
$$

Focus further on the component form…

$$
\begin{equation}
\sum F_{x} = 0 \;\;\;\; \text{...and...} \;\;\;\; \sum F_{x} = 0 
\end{equation}
$$

So, referring back to our free-body diagram, solve for the tension force (i.e., $\vec{\boldsymbol{T}}$) by first finding $T_x$…

$$
\begin{align}
w_x &= T_x \\
|\vec{\boldsymbol{w}}| \cdot \sin (25.0^{\circ}) &= T_{x} \qquad\qquad\qquad \\
(m_{\text{car}} \cdot g) \cdot \sin (25.0^{\circ}) &= T_{x} \qquad\qquad\qquad \text{Definition that} \left|\vec{\boldsymbol{w}}\right| = m_{car} \cdot g \\
(1130\:\text{kg} \cdot 9.81\:\text{m}/\text{s}^2) \cdot \sin (25.0^{\circ}) &= T_{x} \qquad\qquad\qquad \text{} \\
T_{x} &= 4686\:\text{N} \\
\end{align}
$$

With $T_x$, use this to compute $|\vec{\boldsymbol{T}}|$ (i.e., $T$)…

$$
\begin{align}
\cos{(31^{\circ})} &= \frac{T_{x}}{T} \\
T &= T_{x} \cdot \cos{(31^{\circ})} \\
T &= 4686\:\text{N} \cdot \cos{(31^{\circ})} \\
\Aboxed{T &= 5.47\:\text{kN}} \\
\end{align}
$$
`\end{proof}`

`\begin{proof}[**Solution for (c)**]`
<br>
Referring to the $y$-axis of our Free-Body Diagram, and knowing that the _net external forces_ along $x$-axis equals zero, we can state the following…

$$
\begin{align}
n + T_{y} &= w_{y} \\
n + |\vec{\boldsymbol{T}}| \cdot \sin (31.0^{\circ}) &= |\vec{\boldsymbol{w}}| \cdot \sin (25.0^{\circ}) \\
n &= |\vec{\boldsymbol{w}}| \cdot \sin (25.0^{\circ}) - |\vec{\boldsymbol{T}}| \cdot \sin (31.0^{\circ}) \\
n &= (1130\:\text{kg} \cdot 9.81\:\text{m}/\text{s}^2) \cdot \cos (25.0^{\circ}) - 5.47\:\text{kN} \cdot \sin (31.0^{\circ}) \\
\Aboxed{n &= 7.23\:\text{kN}}
\end{align}
$$
`\end{proof}`

⌂
<br>﹈<br>^1697748990981








