# ExampleProject

## Building in Release Mode on macOS

1. Ensure you have CMake and Xcode installed.
2. Run the build script with Release mode:
   ```bash
   ./build.sh Release
   ```
3. The script configures CMake with the Xcode generator and builds the project in the `build` directory.

## Viewing Disassembly on macOS

1. After building, run the disassembly script:
   ```bash
   ./show_disassembly.sh
   ```
2. This uses `otool -tV` to display the disassembly of `build/example_executable`.
