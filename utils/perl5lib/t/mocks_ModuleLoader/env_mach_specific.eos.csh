#!/usr/bin/env csh -f 
#===============================================================================
# Automatically generated module settings for eos
# DO NOT EDIT THIS FILE DIRECTLY!  Please edit env_mach_specific.xml 
# in your CASEROOT. This file is overwritten every time modules are loaded!
#===============================================================================

source /opt/modules/default/init/csh
module rm intel
module rm cray
module rm cray-parallel-netcdf
module rm cray-libsci
module rm cray-netcdf
module rm cray-netcdf-hdf5parallel
module rm netcdf
if ( $COMPILER == "intel" ) then
	module load intel/14.0.2.144
endif
if ( $COMPILER == "cray" ) then
	module load PrgEnv-cray
	module switch cce cce/8.1.9
	module load cray-libsci/12.1.00
endif
if ( $COMPILER == "gnu" ) then
	module load PrgEnv-gnu
	module switch gcc gcc/4.8.0
	module load cray-libsci/12.1.00
endif
module load cray-mpich/7.0.4
if ( $MPILIB == "mpi-serial" ) then
	module load cray-netcdf/4.3.2
endif
if ( $MPILIB != "mpi-serial" ) then
	module load cray-netcdf-hdf5parallel/4.3.2
	module load cray-parallel-netcdf/1.5.0
endif
module load cmake/2.8.11.2
setenv MPICH_ENV_DISPLAY 1
setenv MPICH_VERSION_DISPLAY 1
