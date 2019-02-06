#!/bin/sh

cp Assembly-CSharp.dll ../'Managed\Assembly-CSharp.dll'
mono QModManager.exe
cd ..
mv 'Managed\Assembly-CSharp.dll' Assembly-CSharp.dll 
mv 'Managed\Assembly-CSharp.qoriginal.dll' Assembly-CSharp.qoriginal.dll 
mv Assembly-CSharp.dll Assembly-CSharp.qoriginal.dll Managed
