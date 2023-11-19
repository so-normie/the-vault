---
title: Mechanical Physics
created: 2023-09-03 08:46
updated: 2023-11-18T02:44
authors:
  - Edmund Leibert III
tags:
  - 🔴-academic/📚-educational-resource/name/🗒️-physics
  - 🔴-academic/📚-educational-resource/source-format/miscellaneous
  - 🔴-academic/📚-educational-resource/discipline/physics
  - 🔴-academic/📚-educational-resource/name/🗒️-physics/🔖-bookmark/mechanical-physics
  - study-note
cards-deck: 🔴 Academic::📚 Educational Resourceysics::Mechanical Physics
version: v0.1
---

# Mechanical Physics

﹇<br>
What is the formula for work? 

#card 

$W = Fs$ constant force in direction of straight-line displacement

⌂
<br>﹈<br>^1697747703527



﹇<br>
What is Newton’s Second Law of Motion?

#card 

Newton's second law of motion pertains to the behavior of objects for which all existing forces are not balanced. The second law states that the acceleration of an object is dependent upon two variables - the [net force](http://www.physicsclassroom.com/Class/newtlaws/u2l2d.cfm) acting upon the object and the mass of the object. 

The acceleration of an object depends directly upon the net force acting upon the object, and inversely upon the mass of the object. As the force acting upon an object is increased, the acceleration of the object is increased. As the mass of an object is increased, the acceleration of the object is decreased.

⌂
<br>﹈<br>^1697747703533



﹇<br>
Are components vectors?

#card 

**No**. Components are not considered vectors.

![|600](the-vault/assets/images/physics-img.png)

⌂
<br>﹈<br>^1697747703538



﹇<br>
Assume that you are tasked with finding the magnitude of some arbitrary force $\vec{\boldsymbol{F}}$. Is it possible to find this value if you are only given $F_x$ and the angle $\theta$ measured from the $x$-axis to the vector?

#card 

Yes, it is possible.

`\begin{proof}[**Solution**]`
<br>
Recall that…
$$
\begin{align}
\sin{(\theta)} &= \frac{F_{x}}{F} \\
F &= \frac{F_{x}}{\sin{(\theta)}} \qquad\qquad\qquad \text{Reordered terms}
\end{align}
$$
`\end{proof}`

⌂
<br>﹈<br>^1697747703553


﹇<br>
A cable holds a $1130\:\text{kg}$ car in place on a ramp. The cable makes an angle of $31^{\circ}$ above the ramp, and itself rises at $25^{\circ}$ above the horizontal.

(a) Draw a free-body diagram (FBD) for the car.<br>
(b) Find the tension in the cable<br>
(c) How hard does the surface of the ramp push on the car?

#card 


`\begin{proof}[**Solution for (a)**]`
<br>
![problem-2.excalidraw|350](the-vault/assets/excalidraw/problem-2.excalidraw.svg)

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
<br>﹈<br>^1697747703574




