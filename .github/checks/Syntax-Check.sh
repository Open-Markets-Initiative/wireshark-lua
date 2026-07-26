set -o errexit
set -o pipefail

find . -name '*.lua' | xargs -n 1 luac5.4 -p
