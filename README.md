node-template
=============

A template for nodejs projects that uses javascript. Mainly this is about build system, etc.

How to Install NodeJS
---

Refer to [INSTALL.md](INSTALL.md)

Using this Template
---

### Build Targets
* All build targets can be found in [build/make.coffee](build/make.coffee)
* Uses shelljs for platform compatibility
* Copy build/ directory, run, run.bat to a new project
* If you add new target that could be useful, please commit it back to this project

### Run Build Targets
* For all platform, make sure node is installed as instructed above
* For Ubuntu/OS X, uses 
 
    ./run \<target_name\>

* For Windows (work in progress...)
  
    run.bat \<target_name\>


