---
layout: page
title: undergraduate research
permalink: /undergraduate-research/
description: Completed work and possible projects in mathematical modeling and integrable systems.
nav: true
nav_order: 4
_styles: >
  .undergraduate-research .research-project { margin: 2.5rem 0; }
  .undergraduate-research .research-project h2 { margin-top: 0; }
  .undergraduate-research .research-project figure { margin: 0; }
  .undergraduate-research .research-project video { display: block; width: 100%; height: auto; border-radius: 0.35rem; }
  .undergraduate-research .research-project .caption { margin-top: 0.5rem; text-align: left; }
  .undergraduate-research .research-project ul { padding-left: 1.3rem; }
---

<div class="undergraduate-research">
  <p>
    Undergraduate research is a chance to turn a mathematical question into a working model, a computation, and a clear explanation. The first project below is completed; the other three are proposed directions. Each video is a short conceptual illustration of the idea.
  </p>

  <section class="research-project" aria-labelledby="lba-heading">
    <div class="row align-items-start">
      <div class="col-md-7">
        <h2 id="lba-heading">Completed project: decisions with the LBA model</h2>
        <p>
          With Haley Daniel, we studied the linear ballistic accumulator (LBA) model of choice and response time. Independent accumulators start with random evidence, rise at randomly chosen but constant speeds, and race to a threshold. Haley derived response-time distributions, implemented the model in Python, and compared simulations with brightness-discrimination data under speed and accuracy instructions. <a href="{% post_url 2026-05-04-LBA_model %}">Read the project post</a> for the derivation and results.
        </p>
        <h3>Proposed reading</h3>
        <ul>
          <li><a href="https://doi.org/10.1016/j.cogpsych.2007.12.002">Brown and Heathcote (2008), “The simplest complete model of choice response time: Linear ballistic accumulation”</a> — the original LBA paper.</li>
          <li><a href="https://doi.org/10.1111/1467-9280.00067">Ratcliff and Rouder (1998), “Modeling response times for two-choice decisions”</a> — the experimental context and a diffusion-model comparison.</li>
        </ul>
      </div>
      <div class="col-md-5 mt-3 mt-md-0">
        {% include video.liquid path="assets/video/undergrad_lba.mp4" class="img-fluid" autoplay=true playsinline=true controls=true loop=true muted=true cache_bust=true title="Two evidence accumulators race toward a decision threshold" caption="The first accumulator to reach the threshold determines the choice." %}
      </div>
    </div>
  </section>

  <hr>

  <section class="research-project" aria-labelledby="toda-heading">
    <div class="row align-items-start">
      <div class="col-md-7">
        <h2 id="toda-heading">Proposed project: Toda invariants in the FPUT chain</h2>
        <p>
          The Toda lattice is integrable; the nearby Fermi–Pasta–Ulam–Tsingou (FPUT) chain generally is not. Build both periodic chains with matching low-energy initial data, use a symplectic integrator, and calculate the first few Toda invariants from the Lax matrix along each trajectory. Compare their nearly constant values in Toda with their slow drift in FPUT. Repeat across energies and chain lengths to measure when the adiabatic approximation breaks down. The numerical goal is evidence for slow variation, with the time scale and assumptions guided by the theorem below.
        </p>
        <h3>Proposed reading</h3>
        <ul>
          <li><a href="https://doi.org/10.1007/s00220-020-03866-2">Grava, Maspero, Mazzuca, and Ponno (2020), “Adiabatic Invariants for the FPUT and Toda Chain in the Thermodynamic Limit”</a> — the rigorous result and its assumptions.</li>
          <li><a href="https://doi.org/10.1103/PhysRevE.99.022146">Goldfriend and Kurchan (2019), “Equilibration of Quasi-Integrable Systems”</a> — numerical evidence of slow motion through Toda-invariant space.</li>
        </ul>
      </div>
      <div class="col-md-5 mt-3 mt-md-0">
        {% include video.liquid path="assets/video/undergrad_toda_fput.mp4" class="img-fluid" autoplay=true playsinline=true controls=true loop=true muted=true cache_bust=true title="Schematic comparison of a conserved Toda quantity and a slowly changing FPUT quantity" caption="Schematic: a Toda invariant stays fixed while its FPUT counterpart drifts slowly." %}
      </div>
    </div>
  </section>

  <hr>

  <section class="research-project" aria-labelledby="covid-heading">
    <div class="row align-items-start">
      <div class="col-md-7">
        <h2 id="covid-heading">Proposed project: a patch model for COVID-19 spread</h2>
        <p>
          Divide a region into a few connected patches, each with susceptible, exposed, infectious, and recovered groups. Let a travel matrix move people between patches and let local contact rates control transmission. Implement a small SEIR model, check that population is conserved, and explore how travel restrictions or different contact rates change the timing and size of outbreaks. Start with synthetic data so that the role of each assumption is visible; fitting real data would require careful attention to reporting bias and changing behavior.
        </p>
        <h3>Proposed reading</h3>
        <ul>
          <li><a href="https://doi.org/10.1371/journal.pcbi.1011123">Iyaniwura et al. (2023), “Understanding the impact of mobility on COVID-19 spread”</a> — a gravity and metapopulation model.</li>
          <li><a href="https://doi.org/10.1038/s41586-020-2923-3">Chang et al. (2021), “Mobility network models of COVID-19 explain inequities and inform reopening”</a> — an SEIR model driven by mobility networks.</li>
        </ul>
      </div>
      <div class="col-md-5 mt-3 mt-md-0">
        {% include video.liquid path="assets/video/undergrad_covid_patches.mp4" class="img-fluid" autoplay=true playsinline=true controls=true loop=true muted=true cache_bust=true title="Illustration of infections moving between three connected population patches" caption="Travel links connect local SEIR dynamics across patches." %}
      </div>
    </div>
  </section>

  <hr>

  <section class="research-project" aria-labelledby="kdv-heading">
    <div class="row align-items-start">
      <div class="col-md-7">
        <h2 id="kdv-heading">Proposed project: the scattering transform for KdV</h2>
        <p>
          The Korteweg–de Vries (KdV) equation describes nonlinear dispersive waves. Its inverse scattering transform converts an initial wave profile into scattering data for an associated Schrödinger operator; the data evolve simply, then reconstruct the wave. Begin with a single soliton, compute its bound-state eigenvalue, and verify that the reconstructed soliton travels at the predicted speed. A second stage could compare a two-soliton solution before and after its interaction and measure the phase shift.
        </p>
        <h3>Proposed reading</h3>
        <ul>
          <li><a href="https://people.sissa.it/~grava/Integrable_KdV-2024.pdf">Tamara Grava, “KdV equation, direct and inverse scattering” (lecture notes, 2024)</a> — a guided introduction to the scattering transform and soliton solutions.</li>
          <li><a href="https://doi.org/10.1103/PhysRevLett.19.1095">Gardner, Greene, Kruskal, and Miura (1967), “Method for Solving the Korteweg-deVries Equation”</a> — the original inverse scattering method.</li>
          <li><a href="https://doi.org/10.1002/cpa.3160210503">Lax (1968), “Integrals of Nonlinear Equations of Evolution and Solitary Waves”</a> — the operator formulation and conserved spectrum.</li>
          <li><a href="https://doi.org/10.1002/cpa.3160320202">Deift and Trubowitz (1979), “Inverse scattering on the line”</a> — Deift and Trubowitz's foundational treatment of one-dimensional scattering.</li>
        </ul>
      </div>
      <div class="col-md-5 mt-3 mt-md-0">
        {% include video.liquid path="assets/video/undergrad_kdv_scattering.mp4" class="img-fluid" autoplay=true playsinline=true controls=true loop=true muted=true cache_bust=true title="A KdV soliton travels while its scattering eigenvalue remains fixed" caption="A soliton moves, while its associated spectral value remains fixed." %}
      </div>
    </div>
  </section>
</div>
