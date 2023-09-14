
WALLETADDRESS="AViewKey1jzKRbu6EQfaygCjsunrmk28Ye7iuxFJeJtv9hFiq9zCZ"
PRIVATEKEY="APrivateKey1zkp4z4wAnUA7smk51CUa81Y3dmU9GrKuWLeNrTkRcRdsTeq"

APPNAME="Sample"
PATHTOAPP=$(realpath -q $APPNAME)

RECORD="{
 owner: aleo1szqfrk3lpc689kkd6sz5nzepp5nfqlfzaefvceq04y4rda4avy9q9z6z87.private,
  microcredits: 35000000u64.private,
  _nonce: 3201685955777796744331073248019906037501544016139686496655565940960749959142group.public

}"

cd .. && snarkos developer deploy "${APPNAME}.aleo" --private-key "${PRIVATEKEY}" --query "https://vm.aleo.org/api" --path "./${APPNAME}/build/" --broadcast "https://vm.aleo.org/api/testnet3/transaction/broadcast" --fee 1000000 --record "${RECORD}"``
