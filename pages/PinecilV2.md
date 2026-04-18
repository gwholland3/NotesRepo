General Resources:
- PINE64 product page: [link](https://pine64.com/product/pinecil-smart-mini-portable-soldering-iron/)Amazon product page: [link](https://www.amazon.com/PINECIL-Smart-Mini-Portable-Soldering/dp/B096X6SG13)Pine64 Wiki: [link](https://wiki.pine64.org/wiki/Main_Page)Pinecil Wiki: [link](https://wiki.pine64.org/wiki/Pinecil)

## Firmware
The PinecilV2 runs IronOS:
- GitHub: [link](https://github.com/Ralim/IronOS)Releases: [link](https://github.com/Ralim/IronOS/releases/)Docs: [link](https://ralim.github.io/IronOS/)Changelog: [link](https://ralim.github.io/IronOS/History/)PINE64 docs: [link](https://wiki.pine64.org/wiki/Pinecil_Firmware)
There are two recommended tools for flashing firmware.

### [BLISP](https://github.com/pine64/blisp)
- CLI tool
- Available for macOS via [Homebrew](https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/b/blisp.rb)Requires the new firmware to be pre-downloaded

### [PineFlash](https://github.com/Spagett1/PineFlash)
- GUI tool
- Uses BLISP under the hood for PinecilV2
- Available for macOS, but must be [built](https://github.com/Spagett1/PineFlash?tab=readme-ov-file#building_construction-build-from-code) locally
- Downloads new firmware for you

Flashing the firmware:
- Power on the Pinecil into Flash Mode: [instructions](https://wiki.pine64.org/wiki/Pinecil_Firmware#Flash_Mode)Then, follow macOS instructions in PINE64 docs [here](https://wiki.pine64.org/wiki/Pinecil_Firmware#Update_V2:_Linux_and_Mac)