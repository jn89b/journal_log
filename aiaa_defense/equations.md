
Vanilla Optimization
https://latex.codecogs.com/eqneditor/editor.php 
```
\begin{equation}
    \min_{x(t),u(t)} J(u(t), x(t))
\end{equation}
\text{subject to}
\begin{equation}
    \dot{x}(t) = f(x(t), u(t))
\end{equation}
\begin{equation}
    x(0) = \bar{x}_0
\end{equation}
\begin{equation}
    x(T) = \bar{x}_T
\end{equation}
\begin{equation}
    u_{\min} \leq u(t) \leq u_{\max}
\end{equation}
\begin{equation}
    x_{\min} \leq x(t) \leq x_{\max}
\end{equation}
\begin{equation}
    x(t) \in R, \quad \text{where } R \subset \mathbb{R}^{n_x}
\end{equation}
```
Kinematic Equation for aircraft
```
\begin{align}
    \dot{x}_f &= v \cos(\theta_f) \cos(\psi_f) \\
    \dot{y}_f &= v \cos(\theta_f) \sin(\psi_f) \\
    \dot{z}_f &= -v \sin(\theta_f) \\
    \dot{\phi}_f &= u_{\phi} \\
    \dot{\theta}_f &= u_{\theta} \\
    \dot{\psi}_f &= u_{\psi} + \left( g \frac{\tan(\phi_f)}{v} \right) \\
    \dot{v} &= \sqrt{\dot{x}_f^2 + \dot{y}_f^2 + \dot{z}_f^2} + v_{cmd}
\end{align}
```
Formal cost function definition

```
\begin{align}
    \min_{\mathbf{u}(t)} \quad & J = \int_{t_0}^{t_f} L(\mathbf{x}(t), \mathbf{u}(t), t) \, dt + M(\mathbf{x}(t_f), t_f) \\
    \text{subject to} \quad & \dot{\mathbf{x}}(t) = \mathbf{f}(\mathbf{x}(t), \mathbf{u}(t), t), \quad t \in [t_0, t_f] \\
    & \mathbf{x}(t_0) = \mathbf{x}_0 \\
    & \mathbf{x}(t_f) = \mathbf{x}_f \\
    & \mathbf{u}_{\min} \leq \mathbf{u}(t) \leq \mathbf{u}_{\max} \\
    & \mathbf{x}_{\min} \leq \mathbf{x}(t) \leq \mathbf{x}_{\max} \\
    & \mathbf{g}(\mathbf{x}(t), \mathbf{u}(t), t) \leq 0
\end{align}
```

\text{Minimize} \quad J = \int_{t_0}^{t_f} \left( (\mathbf{x}(t) - \mathbf{x}_{\text{ref}})^T Q (\mathbf{x}(t) - \mathbf{x}_{\text{ref}}) + \mathbf{u}(t)^T R \mathbf{u}(t))


Effector Cost function Directional 
$\text{Min} \quad J = \int_{t_0}^{T} -h_{ED}(x(t), u(t)) \, dt$

$h_{\text{ED}(x(t),u(t))} = \left( \frac{\gamma P}{4 \pi (\Delta r)^2} \right) + \zeta u_{v_{\text{cmd}}}$

<!-- $\gamma = e^{-\left(\frac{\Delta r}{R_E}\right)} e^{-\left(\frac{\Delta \theta}{\theta_E}\right)} e^{-\left(\frac{\Delta \psi}{\psi_E}\right)}
$ -->

$\gamma = e^{-\left(\frac{\Delta r}{R_E} + \frac{\Delta \theta}{\theta_E} + \frac{\Delta \psi}{\psi_E}\right)}$

$\zeta = \begin{cases} 
1 & \text{if } \gamma > \epsilon, \\
0
\end{cases}
$