for %%x in (proto\*.proto) do (
    python -m grpc_tools.protoc -Iproto --python_out=src %%x
)
for %%x in (grpc\*.proto) do (
    python -m grpc_tools.protoc -Iproto -Igrpc --grpc_python_out=src %%x
)
