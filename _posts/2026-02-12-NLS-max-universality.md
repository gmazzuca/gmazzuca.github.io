---
layout: post
title: Painleve' Universality Classes for the NLS equations
date: 2026-03-15 11:00:00
description: We present our work on Painleve' Univerality classes of the NLS equation
tags: NLS, PDE, RHP, Soliton-gas
categories: research
published: true
---

This is a brief overview of our new preprint, [**Painlevé Universality classes for the maximal amplitude solution of the Focusing Nonlinear Schrödinger Equation with randomness**](https://arxiv.org/abs/2602.05101), joint work with Aikaterini Gkogkou and Kenneth D. T-R McLaughlin.

In this paper, we investigate the behavior of extreme waves —- often referred to as "rogue waves"—- in the context of the focusing nonlinear Schrödinger (NLS) equation. Rogue waves are exceptionally large, spontaneous waves that seem to appear from nowhere and disappear without a trace. From a mathematical and physical standpoint, understanding the mechanisms that govern their formation is a fascinating challenge.

### What We Did

Our study focuses on multi-soliton solutions (specifically, $N$-soliton solutions) of the NLS equation. We were particularly interested in **extremal solutions**—those that achieve the theoretical maximal amplitude and diverge as the number of solitons $N \to \infty$.

A key question in the study of integrable systems and wave dynamics is how robust these solutions are when subjected to noise. To explore this, we introduced randomness into the system by drawing the discrete eigenvalues of these extremal solutions from sub-exponential probability distributions. Since the eigenvalues dictate the velocities and amplitudes of the solitons, this effectively randomizes the wave profiles.

### Main Findings: Universality and Painlevé Classes

Our main result is the establishment of **universality** for these extremal solutions. We proved that as $N$ becomes very large, the localized profile of the wave _does not_ dependent on the specific details of the random eigenvalue distribution. Instead, the macroscopic structure of the spectrum dictates the outcome.

Specifically, we identified two distinct universality classes for these rogue waves:

1. **The Painlevé-III Regime:** In the first configuration, the rescaled solutions converge locally to a deterministic profile governed by the Painlevé-III equation.
2. **The Painlevé-V Regime:** In the second configuration, the local wave profile is instead governed by the Painlevé-V equation.

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/RHP_PIII_vs_Averaged.png" class="img-fluid rounded z-depth-1" alt="Description of the first image" %}
    </div>
</div>
<div class="caption">
    Painlevé III rogue waves vs random maximal soliton solution ($50-100-200$ solitons). The poles are chosen as $\lambda_j = v_j + i\mu_j$, where $v_j$ are i.i.d. Gaussian random variables $\mathcal{N}(0,15)$ and $\mu_j$ are i.i.d. Chi-squared distribution of parameter $4$ ($\chi^2(4)$) in the left panel, and of parameter $2$  in the right one ($\chi^2(2)$). We averaged over $10$ realizations.
</div>

These findings demonstrate that the formation of Painlevé-type rogue waves is a highly robust, universal phenomenon that survives even when the underlying soliton parameters are randomized. It highlights a beautiful intersection between integrable systems, random matrix theory techniques, and nonlinear wave propagation.

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/RHP_PV_vs_Averaged.png" class="img-fluid rounded z-depth-1" alt="Description of the second image" %}
    </div>
</div>
<div class="caption">
    Painlevé V rogue waves vs random maximal soliton solution ($50-100-200$ solitons). The poles are chosen as $\lambda_j = -0.3j+v_j + i\mu_j $, where $v_j$ are i.i.d. Gaussian random variables $\mathcal{N}(0,15)$ and $\mu_j$ are i.i.d. Chi-squared distribution of parameter $4$ ($\chi^2(4)$) in the left panel, and of parameter $2$  in the right one ($\chi^2(2)$). We averaged over $10$ realizations.
</div>

For all the rigorous details, the Riemann-Hilbert analysis, and the proofs, you can read the full paper on arXiv: [arXiv:2602.05101](https://arxiv.org/abs/2602.05101).
