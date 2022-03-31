New-Item -ItemType Directory -ErrorAction SilentlyContinue build
Push-Location build

try {
    cmake ../swiftshader -Thost=x64
    cmake --build . --config Release
}
finally {
    Pop-Location
}
