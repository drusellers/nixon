if test ! -e .nuget; then
    mkdir .nuget
    url=https://www.nuget.org/nuget.exe
    wget -O .nuget/nuget.exe $url 2>/dev/null || curl -o .nuget/nuget.exe --location $url /dev/null
    cp $cachedir/nuget.exe .nuget/nuget.exe
fi

if test ! -d packages/FAKE; then
    mono .nuget/nuget.exe install FAKE -o packages -ExcludeVersion
fi


mono packages/FAKE/tools/FAKE.exe build.fsx
