<!--!
\page tc_backend TC Backend                                                               
-->
<!-- 
Documentation Inclusion:
This README is integrated as a standalone page in the P4 compiler documentation.

Refer to the full page here: [TC Backend](https://p4lang.github.io/p4c/pr-preview/4850/tc_backend.html)
-->
<!--!
\internal
-->
# TC Backend
<!--!
\endinternal
-->

<!--!
[TOC]
-->
TC backend aims to generate files for the P4TC implementation in Linux kernel (from 6.3.x version). P4TC is an implementation of the Programming Protocol-independent Packet Processors (P4) that is kernel based, building on top of Linux TC.

For more info on P4TC, Please refer:

* [What Is P4TC](https://github.com/p4tc-dev/docs/blob/main/why-p4tc.md)
* [P4TC examples](https://github.com/p4tc-dev/p4tc-examples-pub)
* [P4TC tutorial](https://github.com/p4tc-dev/p4tc-tutorial-pub)

The p4c-pna-p4tc compiler accepts the P4-16 programs written for the pna.p4 architecture model.

This backend generates three different outputs as explained below:

* A 'template' file which is a shell script that form template definitions for the different P4 objects (tables, registers, actions etc).
* A 'c' file that has parser and the rest of the software datapath generated in ebpf and need to be compiled into binaries.
* A 'json' introspection file used for control plane.

The backend for TC reuses code from the p4c-ebpf for generating c file. 

## How to use it?

The sample p4 programs are located in the [`testdata/p4tc_samples` directory](../../testdata/p4tc_samples).

To generate the 'template' file, 'c' file and 'json' file:

    p4c-pna-p4tc simple_exact_example.p4 -o exact.template -c exact.c -i exact.json

## Contacts

Sosutha Sethuramapandian <sosutha.sethuramapandian@intel.com>

Usha Gupta <usha.gupta@intel.com>
