# Summary


# Table of contents

- [Problem background](#problem-background)
- [Contents of this example](#contents-of-this-example)
- [Software prerequisites](#software-prerequisites)
- [Running the example on an HPC cluster](#running-the-example-on-an-hpc-cluster)
- [Modification of the example](#modification-of-the-example)

# Problem background

High-fidelity numerical modelling of rotating systems — such as propellers — requires substantial computational power due to the complex, highly unsteady, and three-dimensional flow phenomena involved. When using **ANSYS Fluent** to perform **Computational Fluid Dynamics (CFD) simulations** of a rotating propeller, the governing equations of fluid dynamics must be solved on a fine computational mesh to accurately capture pressure distribution, turbulence behaviour, and rotational flow structures. As mesh resolution increases, so do memory requirements and overall computational workload.

In engineering practice, analysing a single operating condition is rarely sufficient. To evaluate and optimise system performance, it is necessary to run **multiple simulation cases in parallel**, varying key parameters such as:

- **Rotational speed**
- **Working medium** (air or water)
- **Rotor geometry** (blade shape, diameter, pitch, etc.)

Running these cases sequentially on a standard personal computer (PC) would be inefficient and extremely time-consuming. A **high-performance computing (HPC) cluster** enables simulations to be distributed across many processors, significantly reducing computation time. HPC resources also enable the simultaneous execution of numerous variations.

Therefore, HPC is essential for performing efficient, parallelised, and high-resolution simulations of rotating systems, enabling more reliable performance assessment and supporting better design improvements.



# Contents of this example

Comment for creators: All demo-cases should contain description of the provided files, at least the base level of the file tree.

After the CFD stage, the resulting **pressure distributions** are exported and used for **structural analysis**. These simulations — typically carried out on PCs — allow engineers to test different rotor materials under realistic loading conditions. This coupled workflow (CFD → Structural Analysis) highlights the importance of HPC: without fast, parallel generation of accurate pressure fields, downstream structural simulations would be slow and limited.

# Software prerequisites

Comment for creators: Assumption here is that the case will be used in an HPC environment, not a personal computer. Therefore, long description of software installs is not required. However, this section should also point out alternative ways of launching this case, if applicable.


## Running the example on an HPC cluster

## Obtaining the case
## Running the case on Moab cluster
## Running the case on SLURM cluster
## Post-processing and visualization
##
##


# Modification of the example
