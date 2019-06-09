# FileIO
A simple Qt Quick project to apply File IO in QML through C++

# Usage
Read and write files in QML items through a QML FileIO type defined in C++.
# Key points
**fileio.h, fileio.cpp**
Realise basic I/O operations:
 - read from a file
 - write to a file (if no file of such file, a new file would be created. on Windows it is in the debug directory)
 - read the number of lines of the file
 
 **main.cpp**
Register the FileIO type in main.cpp

**main.qml**
Import the FileIO type

Define a FileIO item

Use it in other items and call its member functions




