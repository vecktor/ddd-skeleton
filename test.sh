pip=$(which pip)
pushd $PWD
cd "$(dirname $(which poetry))/../lib/poetry/_vendor/"
cd "py$( python -V | grep -o '[23]\.[0-9]\+')"
cd poetry/core/_vendor
sed -i '' 's/packaging==20.4/packaging==20.5/' vendor.txt
$pip install -t $PWD --upgrade -r vendor.txt
unset pip
popd
