---
layout: project
title:  Interactive Hyperelasticity Web Application
summary:
    An interactive application created to investigate the impact of
    boundary conditions and other parameters on hyperelastic materials.
course: Computer Simulation and Modeling
date: May 2012
papers:
  - title: Project report for Computer Simulation & Modeling
    filename: hyperelasticity.report.pdf
code: https://github.com/jmdeldin/interactive-hyperelasticity
images:
- title: Screenshot of the website (top).
  caption:

    Screenshot of the hyperelasticity demo showing a tricontour plot of
    the solution (top), the shape outline of the material before and
    after deforming it (bottom left), and a cartoon shape plot (bottom
    right). The most recent plot is saved each time the user deforms a
    material, so he or she can compare the effects of each parameter.

  filename: 'hyper.top.png'

- title: Screenshot of the website's controls.
  caption:

    Screenshot showing the controls for the hyperelasticity problem.
    Each control is documented to minimize a user's memory load.

  filename: 'hyper.bot.png'
---

### Background

Hyperelastic materials are materials like rubber and foam that can
experience large elastic strain from small forces and retain their
original properties after the applied forces are removed. Materials are
hyperelastic if a scalar function exists to relate a material's strain
energy-density to its deformation gradient. These are nonlinear models
because the deformation is not directly proportional to the stress
applied. Due to the non-linearity, it is difficult to understand the
impact of various input parameters without "seeing" them applied.

### What was the assignment?

For my final project in Computer Simulation and Modeling, I created an
interactive website that enables users to adjust various input
parameters and visualize their effects on a material. My goal was to
create a site that make modeling hyperelasticity more accessible to
a wider audience (e.g., students, not just material scientists).

I wrote the frontend using Python, Flask, and JavaScript, while the
backend utilized FEniCS for modeling hyperelasticity and Matplotlib for
visualizing the deformation.

### What am I most proud of?

For me, Simulation was the hardest class I've taken. I have a very weak
physics and calculus background, so I'm most proud that I could
understand and implement a potential educational tool.

### What did I learn from the project?

- Learning how to use a finite element solver (and tackling the daunting
  task of not knowing where to begin)
- Applying usability principles to a domain renowned for being unusable
  and opaque from text to code

### What would I do differently?

I would explore shading the deformed outlines to provide an accurate
representation instead of just shading the corners. It would be
interesting to create a drag-and-drop interface for users to adjust
boundaries on the fly, but the technical challenge is DOLFIN, FEniCS'
solver, is slow to run.
