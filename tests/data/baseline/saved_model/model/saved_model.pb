ԯ
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758��
t
value_out/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namevalue_out/bias
m
"value_out/bias/Read/ReadVariableOpReadVariableOpvalue_out/bias*
_output_shapes
:*
dtype0
|
value_out/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namevalue_out/kernel
u
$value_out/kernel/Read/ReadVariableOpReadVariableOpvalue_out/kernel*
_output_shapes

:*
dtype0
v
action_out/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameaction_out/bias
o
#action_out/bias/Read/ReadVariableOpReadVariableOpaction_out/bias*
_output_shapes
:*
dtype0

action_out/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*"
shared_nameaction_out/kernel
x
%action_out/kernel/Read/ReadVariableOpReadVariableOpaction_out/kernel*
_output_shapes
:	�*
dtype0
�
layer_val_hidden/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_namelayer_val_hidden/bias
{
)layer_val_hidden/bias/Read/ReadVariableOpReadVariableOplayer_val_hidden/bias*
_output_shapes
:*
dtype0
�
layer_val_hidden/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*(
shared_namelayer_val_hidden/kernel
�
+layer_val_hidden/kernel/Read/ReadVariableOpReadVariableOplayer_val_hidden/kernel*
_output_shapes
:	�*
dtype0
q
layer_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namelayer_4/bias
j
 layer_4/bias/Read/ReadVariableOpReadVariableOplayer_4/bias*
_output_shapes	
:�*
dtype0
z
layer_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namelayer_4/kernel
s
"layer_4/kernel/Read/ReadVariableOpReadVariableOplayer_4/kernel* 
_output_shapes
:
��*
dtype0
q
layer_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namelayer_3/bias
j
 layer_3/bias/Read/ReadVariableOpReadVariableOplayer_3/bias*
_output_shapes	
:�*
dtype0
z
layer_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namelayer_3/kernel
s
"layer_3/kernel/Read/ReadVariableOpReadVariableOplayer_3/kernel* 
_output_shapes
:
��*
dtype0
q
layer_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namelayer_2/bias
j
 layer_2/bias/Read/ReadVariableOpReadVariableOplayer_2/bias*
_output_shapes	
:�*
dtype0
z
layer_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namelayer_2/kernel
s
"layer_2/kernel/Read/ReadVariableOpReadVariableOplayer_2/kernel* 
_output_shapes
:
��*
dtype0
q
layer_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namelayer_1/bias
j
 layer_1/bias/Read/ReadVariableOpReadVariableOplayer_1/bias*
_output_shapes	
:�*
dtype0
z
layer_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namelayer_1/kernel
s
"layer_1/kernel/Read/ReadVariableOpReadVariableOplayer_1/kernel* 
_output_shapes
:
��*
dtype0
�
serving_default_observationsPlaceholder*(
_output_shapes
:����������*
dtype0*
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_observationslayer_1/kernellayer_1/biaslayer_2/kernellayer_2/biaslayer_3/kernellayer_3/biaslayer_4/kernellayer_4/biaslayer_val_hidden/kernellayer_val_hidden/biasvalue_out/kernelvalue_out/biasaction_out/kernelaction_out/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_802279

NoOpNoOp
�3
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�2
value�2B�2 B�2
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
 bias*
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias*
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias*
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias*
�
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

?kernel
@bias*
�
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

Gkernel
Hbias*
j
0
1
2
 3
'4
(5
/6
07
78
89
?10
@11
G12
H13*
j
0
1
2
 3
'4
(5
/6
07
78
89
?10
@11
G12
H13*
* 
�
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_3* 
6
Rtrace_0
Strace_1
Ttrace_2
Utrace_3* 
* 

Vserving_default* 

0
1*

0
1*
* 
�
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

\trace_0* 

]trace_0* 
^X
VARIABLE_VALUElayer_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElayer_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
 1*

0
 1*
* 
�
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ctrace_0* 

dtrace_0* 
^X
VARIABLE_VALUElayer_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElayer_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

'0
(1*

'0
(1*
* 
�
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

jtrace_0* 

ktrace_0* 
^X
VARIABLE_VALUElayer_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElayer_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

/0
01*

/0
01*
* 
�
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*

qtrace_0* 

rtrace_0* 
^X
VARIABLE_VALUElayer_4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElayer_4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

70
81*

70
81*
* 
�
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*

xtrace_0* 

ytrace_0* 
ga
VARIABLE_VALUElayer_val_hidden/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUElayer_val_hidden/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
@1*

?0
@1*
* 
�
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*

trace_0* 

�trace_0* 
a[
VARIABLE_VALUEaction_out/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEaction_out/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

G0
H1*

G0
H1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEvalue_out/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEvalue_out/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
0
1
2
3
4
5
6
7*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamelayer_1/kernellayer_1/biaslayer_2/kernellayer_2/biaslayer_3/kernellayer_3/biaslayer_4/kernellayer_4/biaslayer_val_hidden/kernellayer_val_hidden/biasaction_out/kernelaction_out/biasvalue_out/kernelvalue_out/biasConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__traced_save_802699
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer_1/kernellayer_1/biaslayer_2/kernellayer_2/biaslayer_3/kernellayer_3/biaslayer_4/kernellayer_4/biaslayer_val_hidden/kernellayer_val_hidden/biasaction_out/kernelaction_out/biasvalue_out/kernelvalue_out/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__traced_restore_802751��
�

�
C__inference_layer_2_layer_call_and_return_conditional_losses_801820

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_model_1_layer_call_fn_802027
observations
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	�

unknown_12:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallobservationsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_801994o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
(
_output_shapes
:����������
&
_user_specified_nameobservations
�
�
(__inference_layer_4_layer_call_fn_802522

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_layer_4_layer_call_and_return_conditional_losses_801854p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
C__inference_layer_4_layer_call_and_return_conditional_losses_802533

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_layer_2_layer_call_fn_802482

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_layer_2_layer_call_and_return_conditional_losses_801820p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_value_out_layer_call_fn_802581

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_value_out_layer_call_and_return_conditional_losses_801887o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
C__inference_layer_1_layer_call_and_return_conditional_losses_801803

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_model_1_layer_call_fn_802314

inputs
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	�

unknown_12:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_801994o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
L__inference_layer_val_hidden_layer_call_and_return_conditional_losses_801871

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�G
�
!__inference__wrapped_model_801788
observationsB
.model_1_layer_1_matmul_readvariableop_resource:
��>
/model_1_layer_1_biasadd_readvariableop_resource:	�B
.model_1_layer_2_matmul_readvariableop_resource:
��>
/model_1_layer_2_biasadd_readvariableop_resource:	�B
.model_1_layer_3_matmul_readvariableop_resource:
��>
/model_1_layer_3_biasadd_readvariableop_resource:	�B
.model_1_layer_4_matmul_readvariableop_resource:
��>
/model_1_layer_4_biasadd_readvariableop_resource:	�J
7model_1_layer_val_hidden_matmul_readvariableop_resource:	�F
8model_1_layer_val_hidden_biasadd_readvariableop_resource:B
0model_1_value_out_matmul_readvariableop_resource:?
1model_1_value_out_biasadd_readvariableop_resource:D
1model_1_action_out_matmul_readvariableop_resource:	�@
2model_1_action_out_biasadd_readvariableop_resource:
identity

identity_1��)model_1/action_out/BiasAdd/ReadVariableOp�(model_1/action_out/MatMul/ReadVariableOp�&model_1/layer_1/BiasAdd/ReadVariableOp�%model_1/layer_1/MatMul/ReadVariableOp�&model_1/layer_2/BiasAdd/ReadVariableOp�%model_1/layer_2/MatMul/ReadVariableOp�&model_1/layer_3/BiasAdd/ReadVariableOp�%model_1/layer_3/MatMul/ReadVariableOp�&model_1/layer_4/BiasAdd/ReadVariableOp�%model_1/layer_4/MatMul/ReadVariableOp�/model_1/layer_val_hidden/BiasAdd/ReadVariableOp�.model_1/layer_val_hidden/MatMul/ReadVariableOp�(model_1/value_out/BiasAdd/ReadVariableOp�'model_1/value_out/MatMul/ReadVariableOp�
%model_1/layer_1/MatMul/ReadVariableOpReadVariableOp.model_1_layer_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
model_1/layer_1/MatMulMatMulobservations-model_1/layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&model_1/layer_1/BiasAdd/ReadVariableOpReadVariableOp/model_1_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/layer_1/BiasAddBiasAdd model_1/layer_1/MatMul:product:0.model_1/layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������q
model_1/layer_1/ReluRelu model_1/layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
%model_1/layer_2/MatMul/ReadVariableOpReadVariableOp.model_1_layer_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
model_1/layer_2/MatMulMatMul"model_1/layer_1/Relu:activations:0-model_1/layer_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&model_1/layer_2/BiasAdd/ReadVariableOpReadVariableOp/model_1_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/layer_2/BiasAddBiasAdd model_1/layer_2/MatMul:product:0.model_1/layer_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������q
model_1/layer_2/ReluRelu model_1/layer_2/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
%model_1/layer_3/MatMul/ReadVariableOpReadVariableOp.model_1_layer_3_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
model_1/layer_3/MatMulMatMul"model_1/layer_2/Relu:activations:0-model_1/layer_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&model_1/layer_3/BiasAdd/ReadVariableOpReadVariableOp/model_1_layer_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/layer_3/BiasAddBiasAdd model_1/layer_3/MatMul:product:0.model_1/layer_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������q
model_1/layer_3/ReluRelu model_1/layer_3/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
%model_1/layer_4/MatMul/ReadVariableOpReadVariableOp.model_1_layer_4_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
model_1/layer_4/MatMulMatMul"model_1/layer_3/Relu:activations:0-model_1/layer_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&model_1/layer_4/BiasAdd/ReadVariableOpReadVariableOp/model_1_layer_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/layer_4/BiasAddBiasAdd model_1/layer_4/MatMul:product:0.model_1/layer_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������q
model_1/layer_4/ReluRelu model_1/layer_4/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
.model_1/layer_val_hidden/MatMul/ReadVariableOpReadVariableOp7model_1_layer_val_hidden_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model_1/layer_val_hidden/MatMulMatMul"model_1/layer_4/Relu:activations:06model_1/layer_val_hidden/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
/model_1/layer_val_hidden/BiasAdd/ReadVariableOpReadVariableOp8model_1_layer_val_hidden_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 model_1/layer_val_hidden/BiasAddBiasAdd)model_1/layer_val_hidden/MatMul:product:07model_1/layer_val_hidden/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
model_1/layer_val_hidden/ReluRelu)model_1/layer_val_hidden/BiasAdd:output:0*
T0*'
_output_shapes
:����������
'model_1/value_out/MatMul/ReadVariableOpReadVariableOp0model_1_value_out_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
model_1/value_out/MatMulMatMul+model_1/layer_val_hidden/Relu:activations:0/model_1/value_out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(model_1/value_out/BiasAdd/ReadVariableOpReadVariableOp1model_1_value_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/value_out/BiasAddBiasAdd"model_1/value_out/MatMul:product:00model_1/value_out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(model_1/action_out/MatMul/ReadVariableOpReadVariableOp1model_1_action_out_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model_1/action_out/MatMulMatMul"model_1/layer_4/Relu:activations:00model_1/action_out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)model_1/action_out/BiasAdd/ReadVariableOpReadVariableOp2model_1_action_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/action_out/BiasAddBiasAdd#model_1/action_out/MatMul:product:01model_1/action_out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
IdentityIdentity#model_1/action_out/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������s

Identity_1Identity"model_1/value_out/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp*^model_1/action_out/BiasAdd/ReadVariableOp)^model_1/action_out/MatMul/ReadVariableOp'^model_1/layer_1/BiasAdd/ReadVariableOp&^model_1/layer_1/MatMul/ReadVariableOp'^model_1/layer_2/BiasAdd/ReadVariableOp&^model_1/layer_2/MatMul/ReadVariableOp'^model_1/layer_3/BiasAdd/ReadVariableOp&^model_1/layer_3/MatMul/ReadVariableOp'^model_1/layer_4/BiasAdd/ReadVariableOp&^model_1/layer_4/MatMul/ReadVariableOp0^model_1/layer_val_hidden/BiasAdd/ReadVariableOp/^model_1/layer_val_hidden/MatMul/ReadVariableOp)^model_1/value_out/BiasAdd/ReadVariableOp(^model_1/value_out/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 2V
)model_1/action_out/BiasAdd/ReadVariableOp)model_1/action_out/BiasAdd/ReadVariableOp2T
(model_1/action_out/MatMul/ReadVariableOp(model_1/action_out/MatMul/ReadVariableOp2P
&model_1/layer_1/BiasAdd/ReadVariableOp&model_1/layer_1/BiasAdd/ReadVariableOp2N
%model_1/layer_1/MatMul/ReadVariableOp%model_1/layer_1/MatMul/ReadVariableOp2P
&model_1/layer_2/BiasAdd/ReadVariableOp&model_1/layer_2/BiasAdd/ReadVariableOp2N
%model_1/layer_2/MatMul/ReadVariableOp%model_1/layer_2/MatMul/ReadVariableOp2P
&model_1/layer_3/BiasAdd/ReadVariableOp&model_1/layer_3/BiasAdd/ReadVariableOp2N
%model_1/layer_3/MatMul/ReadVariableOp%model_1/layer_3/MatMul/ReadVariableOp2P
&model_1/layer_4/BiasAdd/ReadVariableOp&model_1/layer_4/BiasAdd/ReadVariableOp2N
%model_1/layer_4/MatMul/ReadVariableOp%model_1/layer_4/MatMul/ReadVariableOp2b
/model_1/layer_val_hidden/BiasAdd/ReadVariableOp/model_1/layer_val_hidden/BiasAdd/ReadVariableOp2`
.model_1/layer_val_hidden/MatMul/ReadVariableOp.model_1/layer_val_hidden/MatMul/ReadVariableOp2T
(model_1/value_out/BiasAdd/ReadVariableOp(model_1/value_out/BiasAdd/ReadVariableOp2R
'model_1/value_out/MatMul/ReadVariableOp'model_1/value_out/MatMul/ReadVariableOp:V R
(
_output_shapes
:����������
&
_user_specified_nameobservations
�	
�
E__inference_value_out_layer_call_and_return_conditional_losses_801887

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
1__inference_layer_val_hidden_layer_call_fn_802542

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_layer_val_hidden_layer_call_and_return_conditional_losses_801871o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
F__inference_action_out_layer_call_and_return_conditional_losses_802572

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�'
�
C__inference_model_1_layer_call_and_return_conditional_losses_802069

inputs"
layer_1_802032:
��
layer_1_802034:	�"
layer_2_802037:
��
layer_2_802039:	�"
layer_3_802042:
��
layer_3_802044:	�"
layer_4_802047:
��
layer_4_802049:	�*
layer_val_hidden_802052:	�%
layer_val_hidden_802054:"
value_out_802057:
value_out_802059:$
action_out_802062:	�
action_out_802064:
identity

identity_1��"action_out/StatefulPartitionedCall�layer_1/StatefulPartitionedCall�layer_2/StatefulPartitionedCall�layer_3/StatefulPartitionedCall�layer_4/StatefulPartitionedCall�(layer_val_hidden/StatefulPartitionedCall�!value_out/StatefulPartitionedCall�
layer_1/StatefulPartitionedCallStatefulPartitionedCallinputslayer_1_802032layer_1_802034*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_layer_1_layer_call_and_return_conditional_losses_801803�
layer_2/StatefulPartitionedCallStatefulPartitionedCall(layer_1/StatefulPartitionedCall:output:0layer_2_802037layer_2_802039*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_layer_2_layer_call_and_return_conditional_losses_801820�
layer_3/StatefulPartitionedCallStatefulPartitionedCall(layer_2/StatefulPartitionedCall:output:0layer_3_802042layer_3_802044*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_layer_3_layer_call_and_return_conditional_losses_801837�
layer_4/StatefulPartitionedCallStatefulPartitionedCall(layer_3/StatefulPartitionedCall:output:0layer_4_802047layer_4_802049*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_layer_4_layer_call_and_return_conditional_losses_801854�
(layer_val_hidden/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0layer_val_hidden_802052layer_val_hidden_802054*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_layer_val_hidden_layer_call_and_return_conditional_losses_801871�
!value_out/StatefulPartitionedCallStatefulPartitionedCall1layer_val_hidden/StatefulPartitionedCall:output:0value_out_802057value_out_802059*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_value_out_layer_call_and_return_conditional_losses_801887�
"action_out/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0action_out_802062action_out_802064*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_action_out_layer_call_and_return_conditional_losses_801903z
IdentityIdentity+action_out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������{

Identity_1Identity*value_out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^action_out/StatefulPartitionedCall ^layer_1/StatefulPartitionedCall ^layer_2/StatefulPartitionedCall ^layer_3/StatefulPartitionedCall ^layer_4/StatefulPartitionedCall)^layer_val_hidden/StatefulPartitionedCall"^value_out/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 2H
"action_out/StatefulPartitionedCall"action_out/StatefulPartitionedCall2B
layer_1/StatefulPartitionedCalllayer_1/StatefulPartitionedCall2B
layer_2/StatefulPartitionedCalllayer_2/StatefulPartitionedCall2B
layer_3/StatefulPartitionedCalllayer_3/StatefulPartitionedCall2B
layer_4/StatefulPartitionedCalllayer_4/StatefulPartitionedCall2T
(layer_val_hidden/StatefulPartitionedCall(layer_val_hidden/StatefulPartitionedCall2F
!value_out/StatefulPartitionedCall!value_out/StatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�o
�
__inference__traced_save_802699
file_prefix9
%read_disablecopyonread_layer_1_kernel:
��4
%read_1_disablecopyonread_layer_1_bias:	�;
'read_2_disablecopyonread_layer_2_kernel:
��4
%read_3_disablecopyonread_layer_2_bias:	�;
'read_4_disablecopyonread_layer_3_kernel:
��4
%read_5_disablecopyonread_layer_3_bias:	�;
'read_6_disablecopyonread_layer_4_kernel:
��4
%read_7_disablecopyonread_layer_4_bias:	�C
0read_8_disablecopyonread_layer_val_hidden_kernel:	�<
.read_9_disablecopyonread_layer_val_hidden_bias:>
+read_10_disablecopyonread_action_out_kernel:	�7
)read_11_disablecopyonread_action_out_bias:<
*read_12_disablecopyonread_value_out_kernel:6
(read_13_disablecopyonread_value_out_bias:
savev2_const
identity_29��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: w
Read/DisableCopyOnReadDisableCopyOnRead%read_disablecopyonread_layer_1_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp%read_disablecopyonread_layer_1_kernel^Read/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0k
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��c

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��y
Read_1/DisableCopyOnReadDisableCopyOnRead%read_1_disablecopyonread_layer_1_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp%read_1_disablecopyonread_layer_1_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:�{
Read_2/DisableCopyOnReadDisableCopyOnRead'read_2_disablecopyonread_layer_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp'read_2_disablecopyonread_layer_2_kernel^Read_2/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0o

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��e

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��y
Read_3/DisableCopyOnReadDisableCopyOnRead%read_3_disablecopyonread_layer_2_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp%read_3_disablecopyonread_layer_2_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes	
:�{
Read_4/DisableCopyOnReadDisableCopyOnRead'read_4_disablecopyonread_layer_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp'read_4_disablecopyonread_layer_3_kernel^Read_4/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0o

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��e

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��y
Read_5/DisableCopyOnReadDisableCopyOnRead%read_5_disablecopyonread_layer_3_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp%read_5_disablecopyonread_layer_3_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:�{
Read_6/DisableCopyOnReadDisableCopyOnRead'read_6_disablecopyonread_layer_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp'read_6_disablecopyonread_layer_4_kernel^Read_6/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0p
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��y
Read_7/DisableCopyOnReadDisableCopyOnRead%read_7_disablecopyonread_layer_4_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp%read_7_disablecopyonread_layer_4_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_8/DisableCopyOnReadDisableCopyOnRead0read_8_disablecopyonread_layer_val_hidden_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp0read_8_disablecopyonread_layer_val_hidden_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0o
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_9/DisableCopyOnReadDisableCopyOnRead.read_9_disablecopyonread_layer_val_hidden_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp.read_9_disablecopyonread_layer_val_hidden_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_10/DisableCopyOnReadDisableCopyOnRead+read_10_disablecopyonread_action_out_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp+read_10_disablecopyonread_action_out_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	�~
Read_11/DisableCopyOnReadDisableCopyOnRead)read_11_disablecopyonread_action_out_bias"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp)read_11_disablecopyonread_action_out_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_12/DisableCopyOnReadDisableCopyOnRead*read_12_disablecopyonread_value_out_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp*read_12_disablecopyonread_value_out_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:}
Read_13/DisableCopyOnReadDisableCopyOnRead(read_13_disablecopyonread_value_out_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp(read_13_disablecopyonread_value_out_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_28Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_29IdentityIdentity_28:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_29Identity_29:output:0*3
_input_shapes"
 : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: 
�

�
C__inference_layer_1_layer_call_and_return_conditional_losses_802473

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_layer_3_layer_call_fn_802502

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_layer_3_layer_call_and_return_conditional_losses_801837p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�?
�
"__inference__traced_restore_802751
file_prefix3
assignvariableop_layer_1_kernel:
��.
assignvariableop_1_layer_1_bias:	�5
!assignvariableop_2_layer_2_kernel:
��.
assignvariableop_3_layer_2_bias:	�5
!assignvariableop_4_layer_3_kernel:
��.
assignvariableop_5_layer_3_bias:	�5
!assignvariableop_6_layer_4_kernel:
��.
assignvariableop_7_layer_4_bias:	�=
*assignvariableop_8_layer_val_hidden_kernel:	�6
(assignvariableop_9_layer_val_hidden_bias:8
%assignvariableop_10_action_out_kernel:	�1
#assignvariableop_11_action_out_bias:6
$assignvariableop_12_value_out_kernel:0
"assignvariableop_13_value_out_bias:
identity_15��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_layer_1_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_layer_1_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp!assignvariableop_2_layer_2_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_layer_2_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_layer_3_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_layer_3_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp!assignvariableop_6_layer_4_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_layer_4_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp*assignvariableop_8_layer_val_hidden_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp(assignvariableop_9_layer_val_hidden_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp%assignvariableop_10_action_out_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp#assignvariableop_11_action_out_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp$assignvariableop_12_value_out_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp"assignvariableop_13_value_out_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_15IdentityIdentity_14:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_15Identity_15:output:0*1
_input_shapes 
: : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�'
�
C__inference_model_1_layer_call_and_return_conditional_losses_801994

inputs"
layer_1_801957:
��
layer_1_801959:	�"
layer_2_801962:
��
layer_2_801964:	�"
layer_3_801967:
��
layer_3_801969:	�"
layer_4_801972:
��
layer_4_801974:	�*
layer_val_hidden_801977:	�%
layer_val_hidden_801979:"
value_out_801982:
value_out_801984:$
action_out_801987:	�
action_out_801989:
identity

identity_1��"action_out/StatefulPartitionedCall�layer_1/StatefulPartitionedCall�layer_2/StatefulPartitionedCall�layer_3/StatefulPartitionedCall�layer_4/StatefulPartitionedCall�(layer_val_hidden/StatefulPartitionedCall�!value_out/StatefulPartitionedCall�
layer_1/StatefulPartitionedCallStatefulPartitionedCallinputslayer_1_801957layer_1_801959*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_layer_1_layer_call_and_return_conditional_losses_801803�
layer_2/StatefulPartitionedCallStatefulPartitionedCall(layer_1/StatefulPartitionedCall:output:0layer_2_801962layer_2_801964*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_layer_2_layer_call_and_return_conditional_losses_801820�
layer_3/StatefulPartitionedCallStatefulPartitionedCall(layer_2/StatefulPartitionedCall:output:0layer_3_801967layer_3_801969*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_layer_3_layer_call_and_return_conditional_losses_801837�
layer_4/StatefulPartitionedCallStatefulPartitionedCall(layer_3/StatefulPartitionedCall:output:0layer_4_801972layer_4_801974*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_layer_4_layer_call_and_return_conditional_losses_801854�
(layer_val_hidden/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0layer_val_hidden_801977layer_val_hidden_801979*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_layer_val_hidden_layer_call_and_return_conditional_losses_801871�
!value_out/StatefulPartitionedCallStatefulPartitionedCall1layer_val_hidden/StatefulPartitionedCall:output:0value_out_801982value_out_801984*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_value_out_layer_call_and_return_conditional_losses_801887�
"action_out/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0action_out_801987action_out_801989*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_action_out_layer_call_and_return_conditional_losses_801903z
IdentityIdentity+action_out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������{

Identity_1Identity*value_out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^action_out/StatefulPartitionedCall ^layer_1/StatefulPartitionedCall ^layer_2/StatefulPartitionedCall ^layer_3/StatefulPartitionedCall ^layer_4/StatefulPartitionedCall)^layer_val_hidden/StatefulPartitionedCall"^value_out/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 2H
"action_out/StatefulPartitionedCall"action_out/StatefulPartitionedCall2B
layer_1/StatefulPartitionedCalllayer_1/StatefulPartitionedCall2B
layer_2/StatefulPartitionedCalllayer_2/StatefulPartitionedCall2B
layer_3/StatefulPartitionedCalllayer_3/StatefulPartitionedCall2B
layer_4/StatefulPartitionedCalllayer_4/StatefulPartitionedCall2T
(layer_val_hidden/StatefulPartitionedCall(layer_val_hidden/StatefulPartitionedCall2F
!value_out/StatefulPartitionedCall!value_out/StatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_model_1_layer_call_fn_802102
observations
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	�

unknown_12:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallobservationsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_802069o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
(
_output_shapes
:����������
&
_user_specified_nameobservations
�>
�
C__inference_model_1_layer_call_and_return_conditional_losses_802453

inputs:
&layer_1_matmul_readvariableop_resource:
��6
'layer_1_biasadd_readvariableop_resource:	�:
&layer_2_matmul_readvariableop_resource:
��6
'layer_2_biasadd_readvariableop_resource:	�:
&layer_3_matmul_readvariableop_resource:
��6
'layer_3_biasadd_readvariableop_resource:	�:
&layer_4_matmul_readvariableop_resource:
��6
'layer_4_biasadd_readvariableop_resource:	�B
/layer_val_hidden_matmul_readvariableop_resource:	�>
0layer_val_hidden_biasadd_readvariableop_resource::
(value_out_matmul_readvariableop_resource:7
)value_out_biasadd_readvariableop_resource:<
)action_out_matmul_readvariableop_resource:	�8
*action_out_biasadd_readvariableop_resource:
identity

identity_1��!action_out/BiasAdd/ReadVariableOp� action_out/MatMul/ReadVariableOp�layer_1/BiasAdd/ReadVariableOp�layer_1/MatMul/ReadVariableOp�layer_2/BiasAdd/ReadVariableOp�layer_2/MatMul/ReadVariableOp�layer_3/BiasAdd/ReadVariableOp�layer_3/MatMul/ReadVariableOp�layer_4/BiasAdd/ReadVariableOp�layer_4/MatMul/ReadVariableOp�'layer_val_hidden/BiasAdd/ReadVariableOp�&layer_val_hidden/MatMul/ReadVariableOp� value_out/BiasAdd/ReadVariableOp�value_out/MatMul/ReadVariableOp�
layer_1/MatMul/ReadVariableOpReadVariableOp&layer_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0z
layer_1/MatMulMatMulinputs%layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
layer_1/BiasAdd/ReadVariableOpReadVariableOp'layer_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_1/BiasAddBiasAddlayer_1/MatMul:product:0&layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
layer_1/ReluRelulayer_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
layer_2/MatMul/ReadVariableOpReadVariableOp&layer_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
layer_2/MatMulMatMullayer_1/Relu:activations:0%layer_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
layer_2/BiasAdd/ReadVariableOpReadVariableOp'layer_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_2/BiasAddBiasAddlayer_2/MatMul:product:0&layer_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
layer_2/ReluRelulayer_2/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
layer_3/MatMul/ReadVariableOpReadVariableOp&layer_3_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
layer_3/MatMulMatMullayer_2/Relu:activations:0%layer_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
layer_3/BiasAdd/ReadVariableOpReadVariableOp'layer_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_3/BiasAddBiasAddlayer_3/MatMul:product:0&layer_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
layer_3/ReluRelulayer_3/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
layer_4/MatMul/ReadVariableOpReadVariableOp&layer_4_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
layer_4/MatMulMatMullayer_3/Relu:activations:0%layer_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
layer_4/BiasAdd/ReadVariableOpReadVariableOp'layer_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_4/BiasAddBiasAddlayer_4/MatMul:product:0&layer_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
layer_4/ReluRelulayer_4/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
&layer_val_hidden/MatMul/ReadVariableOpReadVariableOp/layer_val_hidden_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
layer_val_hidden/MatMulMatMullayer_4/Relu:activations:0.layer_val_hidden/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'layer_val_hidden/BiasAdd/ReadVariableOpReadVariableOp0layer_val_hidden_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
layer_val_hidden/BiasAddBiasAdd!layer_val_hidden/MatMul:product:0/layer_val_hidden/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
layer_val_hidden/ReluRelu!layer_val_hidden/BiasAdd:output:0*
T0*'
_output_shapes
:����������
value_out/MatMul/ReadVariableOpReadVariableOp(value_out_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
value_out/MatMulMatMul#layer_val_hidden/Relu:activations:0'value_out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 value_out/BiasAdd/ReadVariableOpReadVariableOp)value_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
value_out/BiasAddBiasAddvalue_out/MatMul:product:0(value_out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 action_out/MatMul/ReadVariableOpReadVariableOp)action_out_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
action_out/MatMulMatMullayer_4/Relu:activations:0(action_out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!action_out/BiasAdd/ReadVariableOpReadVariableOp*action_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
action_out/BiasAddBiasAddaction_out/MatMul:product:0)action_out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
IdentityIdentityaction_out/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������k

Identity_1Identityvalue_out/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^action_out/BiasAdd/ReadVariableOp!^action_out/MatMul/ReadVariableOp^layer_1/BiasAdd/ReadVariableOp^layer_1/MatMul/ReadVariableOp^layer_2/BiasAdd/ReadVariableOp^layer_2/MatMul/ReadVariableOp^layer_3/BiasAdd/ReadVariableOp^layer_3/MatMul/ReadVariableOp^layer_4/BiasAdd/ReadVariableOp^layer_4/MatMul/ReadVariableOp(^layer_val_hidden/BiasAdd/ReadVariableOp'^layer_val_hidden/MatMul/ReadVariableOp!^value_out/BiasAdd/ReadVariableOp ^value_out/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 2F
!action_out/BiasAdd/ReadVariableOp!action_out/BiasAdd/ReadVariableOp2D
 action_out/MatMul/ReadVariableOp action_out/MatMul/ReadVariableOp2@
layer_1/BiasAdd/ReadVariableOplayer_1/BiasAdd/ReadVariableOp2>
layer_1/MatMul/ReadVariableOplayer_1/MatMul/ReadVariableOp2@
layer_2/BiasAdd/ReadVariableOplayer_2/BiasAdd/ReadVariableOp2>
layer_2/MatMul/ReadVariableOplayer_2/MatMul/ReadVariableOp2@
layer_3/BiasAdd/ReadVariableOplayer_3/BiasAdd/ReadVariableOp2>
layer_3/MatMul/ReadVariableOplayer_3/MatMul/ReadVariableOp2@
layer_4/BiasAdd/ReadVariableOplayer_4/BiasAdd/ReadVariableOp2>
layer_4/MatMul/ReadVariableOplayer_4/MatMul/ReadVariableOp2R
'layer_val_hidden/BiasAdd/ReadVariableOp'layer_val_hidden/BiasAdd/ReadVariableOp2P
&layer_val_hidden/MatMul/ReadVariableOp&layer_val_hidden/MatMul/ReadVariableOp2D
 value_out/BiasAdd/ReadVariableOp value_out/BiasAdd/ReadVariableOp2B
value_out/MatMul/ReadVariableOpvalue_out/MatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
C__inference_layer_4_layer_call_and_return_conditional_losses_801854

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�'
�
C__inference_model_1_layer_call_and_return_conditional_losses_801911
observations"
layer_1_801804:
��
layer_1_801806:	�"
layer_2_801821:
��
layer_2_801823:	�"
layer_3_801838:
��
layer_3_801840:	�"
layer_4_801855:
��
layer_4_801857:	�*
layer_val_hidden_801872:	�%
layer_val_hidden_801874:"
value_out_801888:
value_out_801890:$
action_out_801904:	�
action_out_801906:
identity

identity_1��"action_out/StatefulPartitionedCall�layer_1/StatefulPartitionedCall�layer_2/StatefulPartitionedCall�layer_3/StatefulPartitionedCall�layer_4/StatefulPartitionedCall�(layer_val_hidden/StatefulPartitionedCall�!value_out/StatefulPartitionedCall�
layer_1/StatefulPartitionedCallStatefulPartitionedCallobservationslayer_1_801804layer_1_801806*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_layer_1_layer_call_and_return_conditional_losses_801803�
layer_2/StatefulPartitionedCallStatefulPartitionedCall(layer_1/StatefulPartitionedCall:output:0layer_2_801821layer_2_801823*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_layer_2_layer_call_and_return_conditional_losses_801820�
layer_3/StatefulPartitionedCallStatefulPartitionedCall(layer_2/StatefulPartitionedCall:output:0layer_3_801838layer_3_801840*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_layer_3_layer_call_and_return_conditional_losses_801837�
layer_4/StatefulPartitionedCallStatefulPartitionedCall(layer_3/StatefulPartitionedCall:output:0layer_4_801855layer_4_801857*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_layer_4_layer_call_and_return_conditional_losses_801854�
(layer_val_hidden/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0layer_val_hidden_801872layer_val_hidden_801874*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_layer_val_hidden_layer_call_and_return_conditional_losses_801871�
!value_out/StatefulPartitionedCallStatefulPartitionedCall1layer_val_hidden/StatefulPartitionedCall:output:0value_out_801888value_out_801890*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_value_out_layer_call_and_return_conditional_losses_801887�
"action_out/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0action_out_801904action_out_801906*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_action_out_layer_call_and_return_conditional_losses_801903z
IdentityIdentity+action_out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������{

Identity_1Identity*value_out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^action_out/StatefulPartitionedCall ^layer_1/StatefulPartitionedCall ^layer_2/StatefulPartitionedCall ^layer_3/StatefulPartitionedCall ^layer_4/StatefulPartitionedCall)^layer_val_hidden/StatefulPartitionedCall"^value_out/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 2H
"action_out/StatefulPartitionedCall"action_out/StatefulPartitionedCall2B
layer_1/StatefulPartitionedCalllayer_1/StatefulPartitionedCall2B
layer_2/StatefulPartitionedCalllayer_2/StatefulPartitionedCall2B
layer_3/StatefulPartitionedCalllayer_3/StatefulPartitionedCall2B
layer_4/StatefulPartitionedCalllayer_4/StatefulPartitionedCall2T
(layer_val_hidden/StatefulPartitionedCall(layer_val_hidden/StatefulPartitionedCall2F
!value_out/StatefulPartitionedCall!value_out/StatefulPartitionedCall:V R
(
_output_shapes
:����������
&
_user_specified_nameobservations
�

�
L__inference_layer_val_hidden_layer_call_and_return_conditional_losses_802553

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
C__inference_layer_2_layer_call_and_return_conditional_losses_802493

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�'
�
C__inference_model_1_layer_call_and_return_conditional_losses_801951
observations"
layer_1_801914:
��
layer_1_801916:	�"
layer_2_801919:
��
layer_2_801921:	�"
layer_3_801924:
��
layer_3_801926:	�"
layer_4_801929:
��
layer_4_801931:	�*
layer_val_hidden_801934:	�%
layer_val_hidden_801936:"
value_out_801939:
value_out_801941:$
action_out_801944:	�
action_out_801946:
identity

identity_1��"action_out/StatefulPartitionedCall�layer_1/StatefulPartitionedCall�layer_2/StatefulPartitionedCall�layer_3/StatefulPartitionedCall�layer_4/StatefulPartitionedCall�(layer_val_hidden/StatefulPartitionedCall�!value_out/StatefulPartitionedCall�
layer_1/StatefulPartitionedCallStatefulPartitionedCallobservationslayer_1_801914layer_1_801916*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_layer_1_layer_call_and_return_conditional_losses_801803�
layer_2/StatefulPartitionedCallStatefulPartitionedCall(layer_1/StatefulPartitionedCall:output:0layer_2_801919layer_2_801921*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_layer_2_layer_call_and_return_conditional_losses_801820�
layer_3/StatefulPartitionedCallStatefulPartitionedCall(layer_2/StatefulPartitionedCall:output:0layer_3_801924layer_3_801926*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_layer_3_layer_call_and_return_conditional_losses_801837�
layer_4/StatefulPartitionedCallStatefulPartitionedCall(layer_3/StatefulPartitionedCall:output:0layer_4_801929layer_4_801931*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_layer_4_layer_call_and_return_conditional_losses_801854�
(layer_val_hidden/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0layer_val_hidden_801934layer_val_hidden_801936*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_layer_val_hidden_layer_call_and_return_conditional_losses_801871�
!value_out/StatefulPartitionedCallStatefulPartitionedCall1layer_val_hidden/StatefulPartitionedCall:output:0value_out_801939value_out_801941*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_value_out_layer_call_and_return_conditional_losses_801887�
"action_out/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0action_out_801944action_out_801946*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_action_out_layer_call_and_return_conditional_losses_801903z
IdentityIdentity+action_out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������{

Identity_1Identity*value_out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^action_out/StatefulPartitionedCall ^layer_1/StatefulPartitionedCall ^layer_2/StatefulPartitionedCall ^layer_3/StatefulPartitionedCall ^layer_4/StatefulPartitionedCall)^layer_val_hidden/StatefulPartitionedCall"^value_out/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 2H
"action_out/StatefulPartitionedCall"action_out/StatefulPartitionedCall2B
layer_1/StatefulPartitionedCalllayer_1/StatefulPartitionedCall2B
layer_2/StatefulPartitionedCalllayer_2/StatefulPartitionedCall2B
layer_3/StatefulPartitionedCalllayer_3/StatefulPartitionedCall2B
layer_4/StatefulPartitionedCalllayer_4/StatefulPartitionedCall2T
(layer_val_hidden/StatefulPartitionedCall(layer_val_hidden/StatefulPartitionedCall2F
!value_out/StatefulPartitionedCall!value_out/StatefulPartitionedCall:V R
(
_output_shapes
:����������
&
_user_specified_nameobservations
�
�
+__inference_action_out_layer_call_fn_802562

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_action_out_layer_call_and_return_conditional_losses_801903o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
C__inference_layer_3_layer_call_and_return_conditional_losses_801837

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�>
�
C__inference_model_1_layer_call_and_return_conditional_losses_802401

inputs:
&layer_1_matmul_readvariableop_resource:
��6
'layer_1_biasadd_readvariableop_resource:	�:
&layer_2_matmul_readvariableop_resource:
��6
'layer_2_biasadd_readvariableop_resource:	�:
&layer_3_matmul_readvariableop_resource:
��6
'layer_3_biasadd_readvariableop_resource:	�:
&layer_4_matmul_readvariableop_resource:
��6
'layer_4_biasadd_readvariableop_resource:	�B
/layer_val_hidden_matmul_readvariableop_resource:	�>
0layer_val_hidden_biasadd_readvariableop_resource::
(value_out_matmul_readvariableop_resource:7
)value_out_biasadd_readvariableop_resource:<
)action_out_matmul_readvariableop_resource:	�8
*action_out_biasadd_readvariableop_resource:
identity

identity_1��!action_out/BiasAdd/ReadVariableOp� action_out/MatMul/ReadVariableOp�layer_1/BiasAdd/ReadVariableOp�layer_1/MatMul/ReadVariableOp�layer_2/BiasAdd/ReadVariableOp�layer_2/MatMul/ReadVariableOp�layer_3/BiasAdd/ReadVariableOp�layer_3/MatMul/ReadVariableOp�layer_4/BiasAdd/ReadVariableOp�layer_4/MatMul/ReadVariableOp�'layer_val_hidden/BiasAdd/ReadVariableOp�&layer_val_hidden/MatMul/ReadVariableOp� value_out/BiasAdd/ReadVariableOp�value_out/MatMul/ReadVariableOp�
layer_1/MatMul/ReadVariableOpReadVariableOp&layer_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0z
layer_1/MatMulMatMulinputs%layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
layer_1/BiasAdd/ReadVariableOpReadVariableOp'layer_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_1/BiasAddBiasAddlayer_1/MatMul:product:0&layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
layer_1/ReluRelulayer_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
layer_2/MatMul/ReadVariableOpReadVariableOp&layer_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
layer_2/MatMulMatMullayer_1/Relu:activations:0%layer_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
layer_2/BiasAdd/ReadVariableOpReadVariableOp'layer_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_2/BiasAddBiasAddlayer_2/MatMul:product:0&layer_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
layer_2/ReluRelulayer_2/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
layer_3/MatMul/ReadVariableOpReadVariableOp&layer_3_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
layer_3/MatMulMatMullayer_2/Relu:activations:0%layer_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
layer_3/BiasAdd/ReadVariableOpReadVariableOp'layer_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_3/BiasAddBiasAddlayer_3/MatMul:product:0&layer_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
layer_3/ReluRelulayer_3/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
layer_4/MatMul/ReadVariableOpReadVariableOp&layer_4_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
layer_4/MatMulMatMullayer_3/Relu:activations:0%layer_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
layer_4/BiasAdd/ReadVariableOpReadVariableOp'layer_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_4/BiasAddBiasAddlayer_4/MatMul:product:0&layer_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
layer_4/ReluRelulayer_4/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
&layer_val_hidden/MatMul/ReadVariableOpReadVariableOp/layer_val_hidden_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
layer_val_hidden/MatMulMatMullayer_4/Relu:activations:0.layer_val_hidden/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'layer_val_hidden/BiasAdd/ReadVariableOpReadVariableOp0layer_val_hidden_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
layer_val_hidden/BiasAddBiasAdd!layer_val_hidden/MatMul:product:0/layer_val_hidden/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
layer_val_hidden/ReluRelu!layer_val_hidden/BiasAdd:output:0*
T0*'
_output_shapes
:����������
value_out/MatMul/ReadVariableOpReadVariableOp(value_out_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
value_out/MatMulMatMul#layer_val_hidden/Relu:activations:0'value_out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 value_out/BiasAdd/ReadVariableOpReadVariableOp)value_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
value_out/BiasAddBiasAddvalue_out/MatMul:product:0(value_out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 action_out/MatMul/ReadVariableOpReadVariableOp)action_out_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
action_out/MatMulMatMullayer_4/Relu:activations:0(action_out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!action_out/BiasAdd/ReadVariableOpReadVariableOp*action_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
action_out/BiasAddBiasAddaction_out/MatMul:product:0)action_out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
IdentityIdentityaction_out/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������k

Identity_1Identityvalue_out/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^action_out/BiasAdd/ReadVariableOp!^action_out/MatMul/ReadVariableOp^layer_1/BiasAdd/ReadVariableOp^layer_1/MatMul/ReadVariableOp^layer_2/BiasAdd/ReadVariableOp^layer_2/MatMul/ReadVariableOp^layer_3/BiasAdd/ReadVariableOp^layer_3/MatMul/ReadVariableOp^layer_4/BiasAdd/ReadVariableOp^layer_4/MatMul/ReadVariableOp(^layer_val_hidden/BiasAdd/ReadVariableOp'^layer_val_hidden/MatMul/ReadVariableOp!^value_out/BiasAdd/ReadVariableOp ^value_out/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 2F
!action_out/BiasAdd/ReadVariableOp!action_out/BiasAdd/ReadVariableOp2D
 action_out/MatMul/ReadVariableOp action_out/MatMul/ReadVariableOp2@
layer_1/BiasAdd/ReadVariableOplayer_1/BiasAdd/ReadVariableOp2>
layer_1/MatMul/ReadVariableOplayer_1/MatMul/ReadVariableOp2@
layer_2/BiasAdd/ReadVariableOplayer_2/BiasAdd/ReadVariableOp2>
layer_2/MatMul/ReadVariableOplayer_2/MatMul/ReadVariableOp2@
layer_3/BiasAdd/ReadVariableOplayer_3/BiasAdd/ReadVariableOp2>
layer_3/MatMul/ReadVariableOplayer_3/MatMul/ReadVariableOp2@
layer_4/BiasAdd/ReadVariableOplayer_4/BiasAdd/ReadVariableOp2>
layer_4/MatMul/ReadVariableOplayer_4/MatMul/ReadVariableOp2R
'layer_val_hidden/BiasAdd/ReadVariableOp'layer_val_hidden/BiasAdd/ReadVariableOp2P
&layer_val_hidden/MatMul/ReadVariableOp&layer_val_hidden/MatMul/ReadVariableOp2D
 value_out/BiasAdd/ReadVariableOp value_out/BiasAdd/ReadVariableOp2B
value_out/MatMul/ReadVariableOpvalue_out/MatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
E__inference_value_out_layer_call_and_return_conditional_losses_802591

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_802279
observations
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	�

unknown_12:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallobservationsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_801788o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
(
_output_shapes
:����������
&
_user_specified_nameobservations
�
�
(__inference_model_1_layer_call_fn_802349

inputs
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	�

unknown_12:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_802069o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
F__inference_action_out_layer_call_and_return_conditional_losses_801903

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_layer_1_layer_call_fn_802462

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_layer_1_layer_call_and_return_conditional_losses_801803p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
C__inference_layer_3_layer_call_and_return_conditional_losses_802513

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
F
observations6
serving_default_observations:0����������>

action_out0
StatefulPartitionedCall:0���������=
	value_out0
StatefulPartitionedCall:1���������tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
 bias"
_tf_keras_layer
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias"
_tf_keras_layer
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias"
_tf_keras_layer
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias"
_tf_keras_layer
�
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

?kernel
@bias"
_tf_keras_layer
�
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

Gkernel
Hbias"
_tf_keras_layer
�
0
1
2
 3
'4
(5
/6
07
78
89
?10
@11
G12
H13"
trackable_list_wrapper
�
0
1
2
 3
'4
(5
/6
07
78
89
?10
@11
G12
H13"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_32�
(__inference_model_1_layer_call_fn_802027
(__inference_model_1_layer_call_fn_802102
(__inference_model_1_layer_call_fn_802314
(__inference_model_1_layer_call_fn_802349�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zNtrace_0zOtrace_1zPtrace_2zQtrace_3
�
Rtrace_0
Strace_1
Ttrace_2
Utrace_32�
C__inference_model_1_layer_call_and_return_conditional_losses_801911
C__inference_model_1_layer_call_and_return_conditional_losses_801951
C__inference_model_1_layer_call_and_return_conditional_losses_802401
C__inference_model_1_layer_call_and_return_conditional_losses_802453�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zRtrace_0zStrace_1zTtrace_2zUtrace_3
�B�
!__inference__wrapped_model_801788observations"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,
Vserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
\trace_02�
(__inference_layer_1_layer_call_fn_802462�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z\trace_0
�
]trace_02�
C__inference_layer_1_layer_call_and_return_conditional_losses_802473�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z]trace_0
": 
��2layer_1/kernel
:�2layer_1/bias
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
ctrace_02�
(__inference_layer_2_layer_call_fn_802482�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zctrace_0
�
dtrace_02�
C__inference_layer_2_layer_call_and_return_conditional_losses_802493�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zdtrace_0
": 
��2layer_2/kernel
:�2layer_2/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
�
jtrace_02�
(__inference_layer_3_layer_call_fn_802502�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zjtrace_0
�
ktrace_02�
C__inference_layer_3_layer_call_and_return_conditional_losses_802513�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zktrace_0
": 
��2layer_3/kernel
:�2layer_3/bias
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
�
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
�
qtrace_02�
(__inference_layer_4_layer_call_fn_802522�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zqtrace_0
�
rtrace_02�
C__inference_layer_4_layer_call_and_return_conditional_losses_802533�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zrtrace_0
": 
��2layer_4/kernel
:�2layer_4/bias
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
�
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
�
xtrace_02�
1__inference_layer_val_hidden_layer_call_fn_802542�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zxtrace_0
�
ytrace_02�
L__inference_layer_val_hidden_layer_call_and_return_conditional_losses_802553�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zytrace_0
*:(	�2layer_val_hidden/kernel
#:!2layer_val_hidden/bias
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
�
trace_02�
+__inference_action_out_layer_call_fn_802562�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0
�
�trace_02�
F__inference_action_out_layer_call_and_return_conditional_losses_802572�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
$:"	�2action_out/kernel
:2action_out/bias
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_value_out_layer_call_fn_802581�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_value_out_layer_call_and_return_conditional_losses_802591�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 2value_out/kernel
:2value_out/bias
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_model_1_layer_call_fn_802027observations"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_model_1_layer_call_fn_802102observations"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_model_1_layer_call_fn_802314inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_model_1_layer_call_fn_802349inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_model_1_layer_call_and_return_conditional_losses_801911observations"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_model_1_layer_call_and_return_conditional_losses_801951observations"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_model_1_layer_call_and_return_conditional_losses_802401inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_model_1_layer_call_and_return_conditional_losses_802453inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_signature_wrapper_802279observations"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_layer_1_layer_call_fn_802462inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_layer_1_layer_call_and_return_conditional_losses_802473inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_layer_2_layer_call_fn_802482inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_layer_2_layer_call_and_return_conditional_losses_802493inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_layer_3_layer_call_fn_802502inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_layer_3_layer_call_and_return_conditional_losses_802513inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_layer_4_layer_call_fn_802522inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_layer_4_layer_call_and_return_conditional_losses_802533inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_layer_val_hidden_layer_call_fn_802542inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_layer_val_hidden_layer_call_and_return_conditional_losses_802553inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_action_out_layer_call_fn_802562inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_action_out_layer_call_and_return_conditional_losses_802572inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_value_out_layer_call_fn_802581inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_value_out_layer_call_and_return_conditional_losses_802591inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
!__inference__wrapped_model_801788� '(/078GH?@6�3
,�)
'�$
observations����������
� "i�f
2

action_out$�!

action_out���������
0
	value_out#� 
	value_out����������
F__inference_action_out_layer_call_and_return_conditional_losses_802572d?@0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
+__inference_action_out_layer_call_fn_802562Y?@0�-
&�#
!�
inputs����������
� "!�
unknown����������
C__inference_layer_1_layer_call_and_return_conditional_losses_802473e0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
(__inference_layer_1_layer_call_fn_802462Z0�-
&�#
!�
inputs����������
� ""�
unknown�����������
C__inference_layer_2_layer_call_and_return_conditional_losses_802493e 0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
(__inference_layer_2_layer_call_fn_802482Z 0�-
&�#
!�
inputs����������
� ""�
unknown�����������
C__inference_layer_3_layer_call_and_return_conditional_losses_802513e'(0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
(__inference_layer_3_layer_call_fn_802502Z'(0�-
&�#
!�
inputs����������
� ""�
unknown�����������
C__inference_layer_4_layer_call_and_return_conditional_losses_802533e/00�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
(__inference_layer_4_layer_call_fn_802522Z/00�-
&�#
!�
inputs����������
� ""�
unknown�����������
L__inference_layer_val_hidden_layer_call_and_return_conditional_losses_802553d780�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
1__inference_layer_val_hidden_layer_call_fn_802542Y780�-
&�#
!�
inputs����������
� "!�
unknown����������
C__inference_model_1_layer_call_and_return_conditional_losses_801911� '(/078GH?@>�;
4�1
'�$
observations����������
p

 
� "Y�V
O�L
$�!

tensor_0_0���������
$�!

tensor_0_1���������
� �
C__inference_model_1_layer_call_and_return_conditional_losses_801951� '(/078GH?@>�;
4�1
'�$
observations����������
p 

 
� "Y�V
O�L
$�!

tensor_0_0���������
$�!

tensor_0_1���������
� �
C__inference_model_1_layer_call_and_return_conditional_losses_802401� '(/078GH?@8�5
.�+
!�
inputs����������
p

 
� "Y�V
O�L
$�!

tensor_0_0���������
$�!

tensor_0_1���������
� �
C__inference_model_1_layer_call_and_return_conditional_losses_802453� '(/078GH?@8�5
.�+
!�
inputs����������
p 

 
� "Y�V
O�L
$�!

tensor_0_0���������
$�!

tensor_0_1���������
� �
(__inference_model_1_layer_call_fn_802027� '(/078GH?@>�;
4�1
'�$
observations����������
p

 
� "K�H
"�
tensor_0���������
"�
tensor_1����������
(__inference_model_1_layer_call_fn_802102� '(/078GH?@>�;
4�1
'�$
observations����������
p 

 
� "K�H
"�
tensor_0���������
"�
tensor_1����������
(__inference_model_1_layer_call_fn_802314� '(/078GH?@8�5
.�+
!�
inputs����������
p

 
� "K�H
"�
tensor_0���������
"�
tensor_1����������
(__inference_model_1_layer_call_fn_802349� '(/078GH?@8�5
.�+
!�
inputs����������
p 

 
� "K�H
"�
tensor_0���������
"�
tensor_1����������
$__inference_signature_wrapper_802279� '(/078GH?@F�C
� 
<�9
7
observations'�$
observations����������"i�f
2

action_out$�!

action_out���������
0
	value_out#� 
	value_out����������
E__inference_value_out_layer_call_and_return_conditional_losses_802591cGH/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
*__inference_value_out_layer_call_fn_802581XGH/�,
%�"
 �
inputs���������
� "!�
unknown���������