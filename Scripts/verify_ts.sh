sh Scripts/clean.sh
sh Scripts/rebuild_ts.sh

cd Languages/TypeScript
git clone https://github.com/zencrypted/der.ts
bun build ./main.ts --outdir ./dist --target browser
bun run main.ts
