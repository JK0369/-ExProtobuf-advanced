# download-protobuf.sh

echo "Run Protobuf"
cd Protobuf
find . -name "*pb.swift" -exec rm {} \;
protoc --swift_out=. ./*.proto

echo "------------------------Success Generate-------------------------" # <-
find . -name "*pb.swift" -exec ls {} \;
echo "-----------------------------------------------------------------"
find . -name "*pb.swift" -exec mv {} ../ExMyTest/Protobuf \;
