@echo off

echo "Convert to uf2 format: flash.uf2"
python .\uf2conv.py dist\default\production\SAMD21_ATSHA204A.X.production.hex -o flash.uf2
echo "Finished"