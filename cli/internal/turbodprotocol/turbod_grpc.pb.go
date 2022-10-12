// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.2.0
// - protoc             v3.12.4
// source: internal/turbodprotocol/turbod.proto

package turbodprotocol

import (
	context "context"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
// Requires gRPC-Go v1.32.0 or later.
const _ = grpc.SupportPackageIsVersion7

// TurbodClient is the client API for Turbod service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type TurbodClient interface {
	Hello(ctx context.Context, in *HelloRequest, opts ...grpc.CallOption) (*HelloResponse, error)
	Shutdown(ctx context.Context, in *ShutdownRequest, opts ...grpc.CallOption) (*ShutdownResponse, error)
	Status(ctx context.Context, in *StatusRequest, opts ...grpc.CallOption) (*StatusResponse, error)
	// Implement cache watching
	NotifyOutputsWritten(ctx context.Context, in *NotifyOutputsWrittenRequest, opts ...grpc.CallOption) (*NotifyOutputsWrittenResponse, error)
	GetChangedOutputs(ctx context.Context, in *GetChangedOutputsRequest, opts ...grpc.CallOption) (*GetChangedOutputsResponse, error)
}

type turbodClient struct {
	cc grpc.ClientConnInterface
}

func NewTurbodClient(cc grpc.ClientConnInterface) TurbodClient {
	return &turbodClient{cc}
}

func (c *turbodClient) Hello(ctx context.Context, in *HelloRequest, opts ...grpc.CallOption) (*HelloResponse, error) {
	out := new(HelloResponse)
	err := c.cc.Invoke(ctx, "/turbodprotocol.Turbod/Hello", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *turbodClient) Shutdown(ctx context.Context, in *ShutdownRequest, opts ...grpc.CallOption) (*ShutdownResponse, error) {
	out := new(ShutdownResponse)
	err := c.cc.Invoke(ctx, "/turbodprotocol.Turbod/Shutdown", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *turbodClient) Status(ctx context.Context, in *StatusRequest, opts ...grpc.CallOption) (*StatusResponse, error) {
	out := new(StatusResponse)
	err := c.cc.Invoke(ctx, "/turbodprotocol.Turbod/Status", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *turbodClient) NotifyOutputsWritten(ctx context.Context, in *NotifyOutputsWrittenRequest, opts ...grpc.CallOption) (*NotifyOutputsWrittenResponse, error) {
	out := new(NotifyOutputsWrittenResponse)
	err := c.cc.Invoke(ctx, "/turbodprotocol.Turbod/NotifyOutputsWritten", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *turbodClient) GetChangedOutputs(ctx context.Context, in *GetChangedOutputsRequest, opts ...grpc.CallOption) (*GetChangedOutputsResponse, error) {
	out := new(GetChangedOutputsResponse)
	err := c.cc.Invoke(ctx, "/turbodprotocol.Turbod/GetChangedOutputs", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// TurbodServer is the server API for Turbod service.
// All implementations must embed UnimplementedTurbodServer
// for forward compatibility
type TurbodServer interface {
	Hello(context.Context, *HelloRequest) (*HelloResponse, error)
	Shutdown(context.Context, *ShutdownRequest) (*ShutdownResponse, error)
	Status(context.Context, *StatusRequest) (*StatusResponse, error)
	// Implement cache watching
	NotifyOutputsWritten(context.Context, *NotifyOutputsWrittenRequest) (*NotifyOutputsWrittenResponse, error)
	GetChangedOutputs(context.Context, *GetChangedOutputsRequest) (*GetChangedOutputsResponse, error)
	mustEmbedUnimplementedTurbodServer()
}

// UnimplementedTurbodServer must be embedded to have forward compatible implementations.
type UnimplementedTurbodServer struct {
}

func (UnimplementedTurbodServer) Hello(context.Context, *HelloRequest) (*HelloResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Hello not implemented")
}
func (UnimplementedTurbodServer) Shutdown(context.Context, *ShutdownRequest) (*ShutdownResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Shutdown not implemented")
}
func (UnimplementedTurbodServer) Status(context.Context, *StatusRequest) (*StatusResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Status not implemented")
}
func (UnimplementedTurbodServer) NotifyOutputsWritten(context.Context, *NotifyOutputsWrittenRequest) (*NotifyOutputsWrittenResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method NotifyOutputsWritten not implemented")
}
func (UnimplementedTurbodServer) GetChangedOutputs(context.Context, *GetChangedOutputsRequest) (*GetChangedOutputsResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetChangedOutputs not implemented")
}
func (UnimplementedTurbodServer) mustEmbedUnimplementedTurbodServer() {}

// UnsafeTurbodServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to TurbodServer will
// result in compilation errors.
type UnsafeTurbodServer interface {
	mustEmbedUnimplementedTurbodServer()
}

func RegisterTurbodServer(s grpc.ServiceRegistrar, srv TurbodServer) {
	s.RegisterService(&Turbod_ServiceDesc, srv)
}

func _Turbod_Hello_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(HelloRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TurbodServer).Hello(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/turbodprotocol.Turbod/Hello",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TurbodServer).Hello(ctx, req.(*HelloRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _Turbod_Shutdown_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(ShutdownRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TurbodServer).Shutdown(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/turbodprotocol.Turbod/Shutdown",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TurbodServer).Shutdown(ctx, req.(*ShutdownRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _Turbod_Status_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(StatusRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TurbodServer).Status(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/turbodprotocol.Turbod/Status",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TurbodServer).Status(ctx, req.(*StatusRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _Turbod_NotifyOutputsWritten_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(NotifyOutputsWrittenRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TurbodServer).NotifyOutputsWritten(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/turbodprotocol.Turbod/NotifyOutputsWritten",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TurbodServer).NotifyOutputsWritten(ctx, req.(*NotifyOutputsWrittenRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _Turbod_GetChangedOutputs_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetChangedOutputsRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TurbodServer).GetChangedOutputs(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/turbodprotocol.Turbod/GetChangedOutputs",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TurbodServer).GetChangedOutputs(ctx, req.(*GetChangedOutputsRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// Turbod_ServiceDesc is the grpc.ServiceDesc for Turbod service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var Turbod_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "turbodprotocol.Turbod",
	HandlerType: (*TurbodServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "Hello",
			Handler:    _Turbod_Hello_Handler,
		},
		{
			MethodName: "Shutdown",
			Handler:    _Turbod_Shutdown_Handler,
		},
		{
			MethodName: "Status",
			Handler:    _Turbod_Status_Handler,
		},
		{
			MethodName: "NotifyOutputsWritten",
			Handler:    _Turbod_NotifyOutputsWritten_Handler,
		},
		{
			MethodName: "GetChangedOutputs",
			Handler:    _Turbod_GetChangedOutputs_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "internal/turbodprotocol/turbod.proto",
}
