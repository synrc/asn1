#!/bin/bash
set -e

rm -rf Languages/TypeScript/generated

ASN1_LANG=typescript ASN1_OUTPUT=Languages/TypeScript/generated elixir asn1.ex

# Clone der.ts if not present
if [ ! -d "Languages/TypeScript/der.ts" ]; then
    cd Languages/TypeScript
    git clone https://github.com/zencrypted/der.ts
    cd ../..
fi

