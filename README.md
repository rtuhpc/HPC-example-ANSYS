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

After the CFD stage, the resulting **pressure distributions** are exported and used for **structural analysis**. These simulations — typically carried out on PCs — allow engineers to test different rotor materials under realistic loading conditions. This coupled workflow (CFD → Structural Analysis) highlights the importance of HPC: without fast, parallel generation of accurate pressure fields, downstream structural simulations would also be more time-consuming.

# Contents of this example

This example demonstrates a simplified workflow for preparing and running CFD simulations of a rotating system using ANSYS Fluent and an HPC cluster, followed by structural analysis based on the obtained results. An overview of all the files in this repository is below.

- `input` - directory containing Fluent simulation files
  - `FFF.cas.h5` – Fluent **case file**, containing the simulation setup: geometry, mesh, physics models, boundary conditions, and solver configuration
  - `FFF.dat.h5` – Fluent **data file**, containing the simulation results: pressure, velocity fields, turbulence quantities, convergence history, and other computed solution data

- `instruction.journal` – A Fluent **journal file** that automates the simulation workflow. It specifies which case file to load, how many iterations to run, which settings to modify, and how to save the output results. 

- `run_fluent.sh` – A **shell script** used to submit the Fluent job on the HPC cluster. It loads the required modules, calls Fluent in batch mode with the journal file, and manages resource settings such as CPU allocation, parallel execution, and log output.

- `README.md` - This readme file


The process begins by creating a simulation case in Fluent, including importing the geometry, creating the computational domain and mesh, and defining boundary conditions. Once the initial conditions — such as the working medium and rotational speed — are selected, a short preliminary simulation is performed to verify the case and generate the necessary **cas** and **dat** files.

These files are uploaded to the HPC cluster, where the main simulation is executed by adjusting the journal file settings and submitting the job. While the cluster performs the computation, additional cases with different speeds or media can be prepared locally and submitted in the same way.

When the HPC simulation is complete, the results (as **cas** and **dat** files) are downloaded. Using ANSYS Workbench/Results, the lift force can be extracted, and flow-field visualisation can be performed. 

Finally, the pressure field obtained from Fluent is transferred to a Static Structural module, where blade deformation and Von Mises stresses are computed. Different blade materials can be tested by repeating the structural analysis.


Comment for creators: All demo-cases should contain description of the provided files, at least the base level of the file tree.



# Software prerequisites

- **Git** — Used to access the prepared example directly from GitHub via the `clone` command.  
Alternatively, the repository can be downloaded as a `.zip` archive and transferred to the HPC cluster or a local workstation by other means.

- **ANSYS Workbench 2023** — Used for setting up the CFD case in Fluent, generating the mesh, defining boundary conditions, and exporting the necessary `.cas.h5` and `.dat.h5` files. Workbench is also used for post-processing: importing HPC-generated results, visualizing pressure and force distributions, and performing Structural Analysis to evaluate deformation and Von Mises stresses.

  - A free **ANSYS Student Version** (for personal and educational use) is available here: [https://www.ansys.com/academic/students/ansys-student"](https://www.ansys.com/academic/students/ansys-student)




## Running the example on an HPC cluster

## Obtaining the case

You can download this case directly from GitHub using the `git clone` command shown below.  
Alternatively, the repository can be downloaded as a `.zip` archive and transferred to the HPC cluster by any preferred method.

```bash
git clone https://github.com/rtuhpc/HPC-example-ANSYS.git
```

## Running the case on Moab cluster
## Running the case on SLURM cluster
## Post-processing and visualization
##
##


# Modification of the example
