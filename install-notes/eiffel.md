== Bootstrap Liberty Eiffel from git source ==
On Linux (and most other Unix-like systems) installation of Liberty from source is simple:

Check that the following Pre-requisites are available on your system:
* git
* GCC compiler
* castxml (or GCC-XML)
* Boehm-Demers-Weiser garbage collector dev-packages

On debian-like systems you may install them with:
 sudo apt-get install git build-essential castxml libgc-dev


Now clone the repository:
 git clone git://git.sv.gnu.org/liberty-eiffel.git

Change into the directory you created by this:
 cd liberty-eiffel

and execute
 ./install.sh -bootstrap

This will create a default liberty configuration in ~/.config/liberty-eiffel/, bootstrap the compiler and compile all the tools. Afterwards you just need to add <LibertyHome>/target/bin to your path, e. g. in .bashrc:
 PATH=$PATH:~/liberty-eiffel/target/bin
 export PATH

Now you can call [[Se|se]] as interface for all tools. For examples go to
 cd <LibertyHome>/tutorial
and compile with
 se compile hello_world.e -o hello_world
