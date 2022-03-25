New-Item -ItemType Directory -ErrorAction SilentlyContinue build
Push-Location build

try {
    cmake -DCMAKE_BUILD_TYPE=Release ../swiftshader -Thost=x64
    cmake --build .
}
finally {
    Pop-Location
}
