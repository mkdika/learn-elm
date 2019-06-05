#!/bin/sh

set -e

rm -rf build/

mkdir build

js=${2:-"elm.js"}
min="$(echo $js | cut -d'.' -f1).min.$(echo $js | cut -d'.' -f2)"

elm make --optimize --output=build/$js $1

uglifyjs build/$js --compress 'pure_funcs="F2,F3,F4,F5,F6,F7,F8,F9,A2,A3,A4,A5,A6,A7,A8,A9",pure_getters,keep_fargs=false,unsafe_comps,unsafe' | uglifyjs --mangle --output=build/$min

echo "Compiled size:$(cat build/$js | wc -c | numfmt --to=iec)B  ($js)"
echo "Minified size:$(cat build/$min | wc -c | numfmt --to=iec)B  ($min)"
echo "Gzipped size: $(cat build/$min | gzip -c | wc -c | numfmt --to=iec)B"
