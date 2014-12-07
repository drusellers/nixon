#r "tools/FAKE/tools/FakeLib.dll" // include Fake lib
open Fake


Target "Build" (fun _ ->
    trace "Build stuff..."
)


Run "Build"
