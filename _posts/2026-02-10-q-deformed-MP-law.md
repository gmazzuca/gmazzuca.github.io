---
layout: post
title: The q-deformed Marchenko-Pastur law
date: 2023-04-24 21:01:00
description: We present our work on the q-deformation of the Marchenko-Pasteur Law
tags: q-deformation, orthogonal_polynomials, random-matrix-theory
categories: research
giscus_comments: true
tikzjax: true
---

The Marchenko-Pastur law is arguably one of the most famous results in Random Matrix Theory (RMT). It describes the universal limiting spectral distribution of large sample covariance matrices (Wishart matrices). But what happens when we step away from the continuous world and look at "quantum" or discrete deformations of these classical ensembles?

In our recent preprint, **"$q$-deformation of the Marchenko-Pastur law"** (joint work with Sung-Soo Byun and Yeong-Gwang Jung), we explore a $q$-analog of the Laguerre Unitary Ensemble (LUE) and derive its limiting distribution.

We found that the $q$-deformation isn't just a minor tweak—it introduces a rich structure featuring a **phase transition** and the emergence of a **saturated region** where the eigenvalue density hits a hard upper bound.

### The Setup: From Continuous to Discrete

In the classical LUE, eigenvalues live on the continuous positive real axis. In our $q$-deformed model (the little $q$-LUE), the particles are supported on a discrete exponential lattice:
$$\{1, q, q^2, \dots \}$$
where $$q \in (0,1)$$ is the deformation parameter.

To see nontrivial behavior as the system size $N \to \infty$, we work in a double scaling regime where $q$ approaches 1 at a specific rate:
$$q = e^{-\lambda/N}, \qquad \lambda \ge 0.$$

As $\lambda \to 0$, we recover the classical Marchenko-Pastur law. However, for $\lambda > 0$, the discrete nature of the lattice imposes a structural constraint on the particle density.

### A Phase Transition: Band vs. Saturated Regions

The most striking feature of the $q$-deformed Marchenko-Pastur law is a phase transition governed by the parameter $\lambda$.

1.  **Subcritical Regime ($\lambda < \lambda_c$):** The limiting density is supported on a single interval (a "band"), similar to the classical case, though the shape is distorted.
2.  **Supercritical Regime ($\lambda > \lambda_c$):** The density hits an upper constraint imposed by the lattice structure. This creates a **saturated region** where the density is "frozen" at the maximum possible value $1/(\lambda x)$, adjacent to the fluctuating **band region**.

This phenomenon is visually quite distinct. In the video below, you can see the transition.

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include video.liquid path="assets/video/QDeformedMarcenkoPasteur.mp4" class="img-fluid rounded z-depth-1" controls=true autoplay=true %}
    </div>
</div>
<div class="caption">
    An example of the q-deformed law for c=2
</div>

### Three Complementary Approaches

In the paper, we derive this limiting distribution using three distinct but complementary mathematical frameworks. This "trinity" of methods highlights the rich structure of the model:

#### 1. The Method of Moments (Combinatorics)

We computed the spectral moments $m_{N,p} = \mathbb{E}[\sum x_j^p]$ exactly. This involved using the **Flajolet-Viennot theory**, which relates moments of orthogonal polynomials to weighted lattice paths (Motzkin paths).
For the $q$-case, we introduced a specific statistic on **bipartite matchings** (counting "crossings") to handle the $q$-weights.

<script type="text/tikz">
\begin{tikzpicture}[scale=0.7]
        \foreach \i in {1,2,...,6}{\fill[black] (2*\i+2,0) circle (2pt);}
        \foreach \i in {1,2,...,6}{\fill[black] (2*\i+2,3) circle (2pt);}
        \fill[black] (0,3) circle (2pt);
        \fill[black] (2,3) circle (2pt);
        \fill[black] (16,1.5) circle (2pt);
        \draw (6,0) -- (12, 3);
        \draw (10,0) -- (0, 3);
        \draw (12,0) -- (6, 3);
        \draw (8,0) -- (8, 3);
        \draw[dashed] (2,3) -- (16,1.5);
        \draw[dashed] (4,3) -- (16,1.5);
        \draw[dashed] (10,3) -- (16,1.5);
        \draw[dashed] (14,3) -- (16,1.5);
        \draw[dashed] (4,0) -- (16,1.5);
        \draw[dashed] (14,0) -- (16,1.5);
        \node at (16,1) {$\infty$};
    \end{tikzpicture}
</script>
<div class="caption">
    An example of bipartite matching
</div>

#### 2. Potential Theory (Large Deviations)

We viewed the eigenvalues as a log-gas system. The limiting density is the minimizer of a specific energy functional. Crucially, the discrete lattice translates into an **upper constraint** on the density measure:
$$\frac{d\mu}{dx} \le \frac{1}{\lambda x}.$$
We solved the Euler-Lagrange variational problem with this constraint to independently derive the density and prove a Large Deviation Principle.

#### 3. Zeros of Orthogonal Polynomials

Finally, we analyzed the asymptotic zero distribution of the **little $q$-Laguerre polynomials**. Using the recurrence coefficients and the difference equations, we recovered the same limiting measure.

### Why does this matter?

Beyond the intrinsic interest in $q$-special functions, this model exhibits behavior analogous to **frozen vs. liquid regions** in random tiling models (like the Aztec diamond) and last passage percolation. The "saturated" region in our spectral density corresponds to the "frozen" regions in those geometric models.

This work provides a unified understanding of how classical spectral laws behave under discretization, bridging the gap between continuous Random Matrix Theory and discrete integrable probability.

---

_You can find the full preprint on [arXiv](https://arxiv.org/abs/2601.09427)._
