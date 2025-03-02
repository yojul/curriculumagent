��%
�6�5
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
�
ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype�
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
Z
BroadcastTo

input"T
shape"Tidx
output"T"	
Ttype"
Tidxtype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
>
DiagPart

input"T
diagonal"T"
Ttype:

2	
9
DivNoNan
x"T
y"T
z"T"
Ttype:

2
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
A
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
?
FloorMod
x"T
y"T
z"T"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
$

LogicalAnd
x

y

z
�
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
�
Multinomial
logits"T
num_samples
output"output_dtype"
seedint "
seed2int "
Ttype:
2	" 
output_dtypetype0	:
2	�
0
Neg
x"T
y"T"
Ttype:
2
	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
Q
Qr

input"T
q"T
r"T"
full_matricesbool( "
Ttype:	
2
�
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
�
RandomUniformInt

shape"T
minval"Tout
maxval"Tout
output"Tout"
seedint "
seed2int "
Touttype:
2	"
Ttype:
2	�
e
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2		
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
7

Reciprocal
x"T
y"T"
Ttype:
2
	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( �
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
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
1
Sign
x"T
y"T"
Ttype:
2
	
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
3
Square
x"T
y"T"
Ttype:
2
	
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.7.02v2.7.0-rc1-69-gc256c071bb2ۼ#
�
default_policy/observationsPlaceholder*(
_output_shapes
:����������	*
dtype0*
shape:����������	
�
=default_policy/layer_1/kernel/Initializer/random_normal/shapeConst*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
:*
dtype0*
valueB"�  �  
�
<default_policy/layer_1/kernel/Initializer/random_normal/meanConst*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
>default_policy/layer_1/kernel/Initializer/random_normal/stddevConst*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
Ldefault_policy/layer_1/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal=default_policy/layer_1/kernel/Initializer/random_normal/shape*
T0*0
_class&
$"loc:@default_policy/layer_1/kernel* 
_output_shapes
:
�	�*
dtype0*

seed *
seed2 
�
;default_policy/layer_1/kernel/Initializer/random_normal/mulMulLdefault_policy/layer_1/kernel/Initializer/random_normal/RandomStandardNormal>default_policy/layer_1/kernel/Initializer/random_normal/stddev*
T0*0
_class&
$"loc:@default_policy/layer_1/kernel* 
_output_shapes
:
�	�
�
7default_policy/layer_1/kernel/Initializer/random_normalAddV2;default_policy/layer_1/kernel/Initializer/random_normal/mul<default_policy/layer_1/kernel/Initializer/random_normal/mean*
T0*0
_class&
$"loc:@default_policy/layer_1/kernel* 
_output_shapes
:
�	�
�
,default_policy/layer_1/kernel/Initializer/QrQr7default_policy/layer_1/kernel/Initializer/random_normal*
T0*0
_class&
$"loc:@default_policy/layer_1/kernel*,
_output_shapes
:
�	�:
��*
full_matrices( 
�
2default_policy/layer_1/kernel/Initializer/DiagPartDiagPart.default_policy/layer_1/kernel/Initializer/Qr:1*
T0*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes	
:�
�
.default_policy/layer_1/kernel/Initializer/SignSign2default_policy/layer_1/kernel/Initializer/DiagPart*
T0*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes	
:�
�
-default_policy/layer_1/kernel/Initializer/mulMul,default_policy/layer_1/kernel/Initializer/Qr.default_policy/layer_1/kernel/Initializer/Sign*
T0*0
_class&
$"loc:@default_policy/layer_1/kernel* 
_output_shapes
:
�	�
�
7default_policy/layer_1/kernel/Initializer/Reshape/shapeConst*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
:*
dtype0*
valueB"�  �  
�
1default_policy/layer_1/kernel/Initializer/ReshapeReshape-default_policy/layer_1/kernel/Initializer/mul7default_policy/layer_1/kernel/Initializer/Reshape/shape*
T0*
Tshape0*0
_class&
$"loc:@default_policy/layer_1/kernel* 
_output_shapes
:
�	�
�
1default_policy/layer_1/kernel/Initializer/mul_1/xConst*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
/default_policy/layer_1/kernel/Initializer/mul_1Mul1default_policy/layer_1/kernel/Initializer/mul_1/x1default_policy/layer_1/kernel/Initializer/Reshape*
T0*0
_class&
$"loc:@default_policy/layer_1/kernel* 
_output_shapes
:
�	�
�
default_policy/layer_1/kernelVarHandleOp*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
�	�*.
shared_namedefault_policy/layer_1/kernel
�
>default_policy/layer_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/layer_1/kernel*
_output_shapes
: 
�
$default_policy/layer_1/kernel/AssignAssignVariableOpdefault_policy/layer_1/kernel/default_policy/layer_1/kernel/Initializer/mul_1*
dtype0
�
1default_policy/layer_1/kernel/Read/ReadVariableOpReadVariableOpdefault_policy/layer_1/kernel* 
_output_shapes
:
�	�*
dtype0
�
-default_policy/layer_1/bias/Initializer/zerosConst*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
default_policy/layer_1/biasVarHandleOp*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*,
shared_namedefault_policy/layer_1/bias
�
<default_policy/layer_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/layer_1/bias*
_output_shapes
: 
�
"default_policy/layer_1/bias/AssignAssignVariableOpdefault_policy/layer_1/bias-default_policy/layer_1/bias/Initializer/zeros*
dtype0
�
/default_policy/layer_1/bias/Read/ReadVariableOpReadVariableOpdefault_policy/layer_1/bias*
_output_shapes	
:�*
dtype0
�
,default_policy/layer_1/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_1/kernel* 
_output_shapes
:
�	�*
dtype0
�
default_policy/layer_1/MatMulMatMuldefault_policy/observations,default_policy/layer_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
-default_policy/layer_1/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_1/bias*
_output_shapes	
:�*
dtype0
�
default_policy/layer_1/BiasAddBiasAdddefault_policy/layer_1/MatMul-default_policy/layer_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:����������*
data_formatNHWC
|
!default_policy/layer_1/re_lu/ReluReludefault_policy/layer_1/BiasAdd*
T0*(
_output_shapes
:����������
�
=default_policy/layer_2/kernel/Initializer/random_normal/shapeConst*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
:*
dtype0*
valueB"  �  
�
<default_policy/layer_2/kernel/Initializer/random_normal/meanConst*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
>default_policy/layer_2/kernel/Initializer/random_normal/stddevConst*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
Ldefault_policy/layer_2/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal=default_policy/layer_2/kernel/Initializer/random_normal/shape*
T0*0
_class&
$"loc:@default_policy/layer_2/kernel* 
_output_shapes
:
��*
dtype0*

seed *
seed2 
�
;default_policy/layer_2/kernel/Initializer/random_normal/mulMulLdefault_policy/layer_2/kernel/Initializer/random_normal/RandomStandardNormal>default_policy/layer_2/kernel/Initializer/random_normal/stddev*
T0*0
_class&
$"loc:@default_policy/layer_2/kernel* 
_output_shapes
:
��
�
7default_policy/layer_2/kernel/Initializer/random_normalAddV2;default_policy/layer_2/kernel/Initializer/random_normal/mul<default_policy/layer_2/kernel/Initializer/random_normal/mean*
T0*0
_class&
$"loc:@default_policy/layer_2/kernel* 
_output_shapes
:
��
�
,default_policy/layer_2/kernel/Initializer/QrQr7default_policy/layer_2/kernel/Initializer/random_normal*
T0*0
_class&
$"loc:@default_policy/layer_2/kernel*,
_output_shapes
:
��:
��*
full_matrices( 
�
2default_policy/layer_2/kernel/Initializer/DiagPartDiagPart.default_policy/layer_2/kernel/Initializer/Qr:1*
T0*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes	
:�
�
.default_policy/layer_2/kernel/Initializer/SignSign2default_policy/layer_2/kernel/Initializer/DiagPart*
T0*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes	
:�
�
-default_policy/layer_2/kernel/Initializer/mulMul,default_policy/layer_2/kernel/Initializer/Qr.default_policy/layer_2/kernel/Initializer/Sign*
T0*0
_class&
$"loc:@default_policy/layer_2/kernel* 
_output_shapes
:
��
�
Idefault_policy/layer_2/kernel/Initializer/matrix_transpose/transpose/permConst*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
:*
dtype0*
valueB"       
�
Ddefault_policy/layer_2/kernel/Initializer/matrix_transpose/transpose	Transpose-default_policy/layer_2/kernel/Initializer/mulIdefault_policy/layer_2/kernel/Initializer/matrix_transpose/transpose/perm*
T0*
Tperm0*0
_class&
$"loc:@default_policy/layer_2/kernel* 
_output_shapes
:
��
�
7default_policy/layer_2/kernel/Initializer/Reshape/shapeConst*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
:*
dtype0*
valueB"�    
�
1default_policy/layer_2/kernel/Initializer/ReshapeReshapeDdefault_policy/layer_2/kernel/Initializer/matrix_transpose/transpose7default_policy/layer_2/kernel/Initializer/Reshape/shape*
T0*
Tshape0*0
_class&
$"loc:@default_policy/layer_2/kernel* 
_output_shapes
:
��
�
1default_policy/layer_2/kernel/Initializer/mul_1/xConst*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
/default_policy/layer_2/kernel/Initializer/mul_1Mul1default_policy/layer_2/kernel/Initializer/mul_1/x1default_policy/layer_2/kernel/Initializer/Reshape*
T0*0
_class&
$"loc:@default_policy/layer_2/kernel* 
_output_shapes
:
��
�
default_policy/layer_2/kernelVarHandleOp*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*.
shared_namedefault_policy/layer_2/kernel
�
>default_policy/layer_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/layer_2/kernel*
_output_shapes
: 
�
$default_policy/layer_2/kernel/AssignAssignVariableOpdefault_policy/layer_2/kernel/default_policy/layer_2/kernel/Initializer/mul_1*
dtype0
�
1default_policy/layer_2/kernel/Read/ReadVariableOpReadVariableOpdefault_policy/layer_2/kernel* 
_output_shapes
:
��*
dtype0
�
-default_policy/layer_2/bias/Initializer/zerosConst*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
default_policy/layer_2/biasVarHandleOp*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*,
shared_namedefault_policy/layer_2/bias
�
<default_policy/layer_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/layer_2/bias*
_output_shapes
: 
�
"default_policy/layer_2/bias/AssignAssignVariableOpdefault_policy/layer_2/bias-default_policy/layer_2/bias/Initializer/zeros*
dtype0
�
/default_policy/layer_2/bias/Read/ReadVariableOpReadVariableOpdefault_policy/layer_2/bias*
_output_shapes	
:�*
dtype0
�
,default_policy/layer_2/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_2/kernel* 
_output_shapes
:
��*
dtype0
�
default_policy/layer_2/MatMulMatMul!default_policy/layer_1/re_lu/Relu,default_policy/layer_2/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
-default_policy/layer_2/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_2/bias*
_output_shapes	
:�*
dtype0
�
default_policy/layer_2/BiasAddBiasAdddefault_policy/layer_2/MatMul-default_policy/layer_2/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:����������*
data_formatNHWC
|
!default_policy/layer_2/re_lu/ReluReludefault_policy/layer_2/BiasAdd*
T0*(
_output_shapes
:����������
�
=default_policy/layer_3/kernel/Initializer/random_normal/shapeConst*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
:*
dtype0*
valueB"    
�
<default_policy/layer_3/kernel/Initializer/random_normal/meanConst*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
>default_policy/layer_3/kernel/Initializer/random_normal/stddevConst*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
Ldefault_policy/layer_3/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal=default_policy/layer_3/kernel/Initializer/random_normal/shape*
T0*0
_class&
$"loc:@default_policy/layer_3/kernel* 
_output_shapes
:
��*
dtype0*

seed *
seed2 
�
;default_policy/layer_3/kernel/Initializer/random_normal/mulMulLdefault_policy/layer_3/kernel/Initializer/random_normal/RandomStandardNormal>default_policy/layer_3/kernel/Initializer/random_normal/stddev*
T0*0
_class&
$"loc:@default_policy/layer_3/kernel* 
_output_shapes
:
��
�
7default_policy/layer_3/kernel/Initializer/random_normalAddV2;default_policy/layer_3/kernel/Initializer/random_normal/mul<default_policy/layer_3/kernel/Initializer/random_normal/mean*
T0*0
_class&
$"loc:@default_policy/layer_3/kernel* 
_output_shapes
:
��
�
,default_policy/layer_3/kernel/Initializer/QrQr7default_policy/layer_3/kernel/Initializer/random_normal*
T0*0
_class&
$"loc:@default_policy/layer_3/kernel*,
_output_shapes
:
��:
��*
full_matrices( 
�
2default_policy/layer_3/kernel/Initializer/DiagPartDiagPart.default_policy/layer_3/kernel/Initializer/Qr:1*
T0*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes	
:�
�
.default_policy/layer_3/kernel/Initializer/SignSign2default_policy/layer_3/kernel/Initializer/DiagPart*
T0*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes	
:�
�
-default_policy/layer_3/kernel/Initializer/mulMul,default_policy/layer_3/kernel/Initializer/Qr.default_policy/layer_3/kernel/Initializer/Sign*
T0*0
_class&
$"loc:@default_policy/layer_3/kernel* 
_output_shapes
:
��
�
Idefault_policy/layer_3/kernel/Initializer/matrix_transpose/transpose/permConst*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
:*
dtype0*
valueB"       
�
Ddefault_policy/layer_3/kernel/Initializer/matrix_transpose/transpose	Transpose-default_policy/layer_3/kernel/Initializer/mulIdefault_policy/layer_3/kernel/Initializer/matrix_transpose/transpose/perm*
T0*
Tperm0*0
_class&
$"loc:@default_policy/layer_3/kernel* 
_output_shapes
:
��
�
7default_policy/layer_3/kernel/Initializer/Reshape/shapeConst*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
:*
dtype0*
valueB"    
�
1default_policy/layer_3/kernel/Initializer/ReshapeReshapeDdefault_policy/layer_3/kernel/Initializer/matrix_transpose/transpose7default_policy/layer_3/kernel/Initializer/Reshape/shape*
T0*
Tshape0*0
_class&
$"loc:@default_policy/layer_3/kernel* 
_output_shapes
:
��
�
1default_policy/layer_3/kernel/Initializer/mul_1/xConst*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
/default_policy/layer_3/kernel/Initializer/mul_1Mul1default_policy/layer_3/kernel/Initializer/mul_1/x1default_policy/layer_3/kernel/Initializer/Reshape*
T0*0
_class&
$"loc:@default_policy/layer_3/kernel* 
_output_shapes
:
��
�
default_policy/layer_3/kernelVarHandleOp*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*.
shared_namedefault_policy/layer_3/kernel
�
>default_policy/layer_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/layer_3/kernel*
_output_shapes
: 
�
$default_policy/layer_3/kernel/AssignAssignVariableOpdefault_policy/layer_3/kernel/default_policy/layer_3/kernel/Initializer/mul_1*
dtype0
�
1default_policy/layer_3/kernel/Read/ReadVariableOpReadVariableOpdefault_policy/layer_3/kernel* 
_output_shapes
:
��*
dtype0
�
=default_policy/layer_3/bias/Initializer/zeros/shape_as_tensorConst*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes
:*
dtype0*
valueB:�
�
3default_policy/layer_3/bias/Initializer/zeros/ConstConst*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes
: *
dtype0*
valueB
 *    
�
-default_policy/layer_3/bias/Initializer/zerosFill=default_policy/layer_3/bias/Initializer/zeros/shape_as_tensor3default_policy/layer_3/bias/Initializer/zeros/Const*
T0*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes	
:�*

index_type0
�
default_policy/layer_3/biasVarHandleOp*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*,
shared_namedefault_policy/layer_3/bias
�
<default_policy/layer_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/layer_3/bias*
_output_shapes
: 
�
"default_policy/layer_3/bias/AssignAssignVariableOpdefault_policy/layer_3/bias-default_policy/layer_3/bias/Initializer/zeros*
dtype0
�
/default_policy/layer_3/bias/Read/ReadVariableOpReadVariableOpdefault_policy/layer_3/bias*
_output_shapes	
:�*
dtype0
�
,default_policy/layer_3/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_3/kernel* 
_output_shapes
:
��*
dtype0
�
default_policy/layer_3/MatMulMatMul!default_policy/layer_2/re_lu/Relu,default_policy/layer_3/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
-default_policy/layer_3/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_3/bias*
_output_shapes	
:�*
dtype0
�
default_policy/layer_3/BiasAddBiasAdddefault_policy/layer_3/MatMul-default_policy/layer_3/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:����������*
data_formatNHWC
|
!default_policy/layer_3/re_lu/ReluReludefault_policy/layer_3/BiasAdd*
T0*(
_output_shapes
:����������
�
=default_policy/layer_4/kernel/Initializer/random_normal/shapeConst*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
:*
dtype0*
valueB"  X  
�
<default_policy/layer_4/kernel/Initializer/random_normal/meanConst*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
>default_policy/layer_4/kernel/Initializer/random_normal/stddevConst*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
Ldefault_policy/layer_4/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal=default_policy/layer_4/kernel/Initializer/random_normal/shape*
T0*0
_class&
$"loc:@default_policy/layer_4/kernel* 
_output_shapes
:
��*
dtype0*

seed *
seed2 
�
;default_policy/layer_4/kernel/Initializer/random_normal/mulMulLdefault_policy/layer_4/kernel/Initializer/random_normal/RandomStandardNormal>default_policy/layer_4/kernel/Initializer/random_normal/stddev*
T0*0
_class&
$"loc:@default_policy/layer_4/kernel* 
_output_shapes
:
��
�
7default_policy/layer_4/kernel/Initializer/random_normalAddV2;default_policy/layer_4/kernel/Initializer/random_normal/mul<default_policy/layer_4/kernel/Initializer/random_normal/mean*
T0*0
_class&
$"loc:@default_policy/layer_4/kernel* 
_output_shapes
:
��
�
,default_policy/layer_4/kernel/Initializer/QrQr7default_policy/layer_4/kernel/Initializer/random_normal*
T0*0
_class&
$"loc:@default_policy/layer_4/kernel*,
_output_shapes
:
��:
��*
full_matrices( 
�
2default_policy/layer_4/kernel/Initializer/DiagPartDiagPart.default_policy/layer_4/kernel/Initializer/Qr:1*
T0*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes	
:�
�
.default_policy/layer_4/kernel/Initializer/SignSign2default_policy/layer_4/kernel/Initializer/DiagPart*
T0*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes	
:�
�
-default_policy/layer_4/kernel/Initializer/mulMul,default_policy/layer_4/kernel/Initializer/Qr.default_policy/layer_4/kernel/Initializer/Sign*
T0*0
_class&
$"loc:@default_policy/layer_4/kernel* 
_output_shapes
:
��
�
7default_policy/layer_4/kernel/Initializer/Reshape/shapeConst*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
:*
dtype0*
valueB"  X  
�
1default_policy/layer_4/kernel/Initializer/ReshapeReshape-default_policy/layer_4/kernel/Initializer/mul7default_policy/layer_4/kernel/Initializer/Reshape/shape*
T0*
Tshape0*0
_class&
$"loc:@default_policy/layer_4/kernel* 
_output_shapes
:
��
�
1default_policy/layer_4/kernel/Initializer/mul_1/xConst*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
/default_policy/layer_4/kernel/Initializer/mul_1Mul1default_policy/layer_4/kernel/Initializer/mul_1/x1default_policy/layer_4/kernel/Initializer/Reshape*
T0*0
_class&
$"loc:@default_policy/layer_4/kernel* 
_output_shapes
:
��
�
default_policy/layer_4/kernelVarHandleOp*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*.
shared_namedefault_policy/layer_4/kernel
�
>default_policy/layer_4/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/layer_4/kernel*
_output_shapes
: 
�
$default_policy/layer_4/kernel/AssignAssignVariableOpdefault_policy/layer_4/kernel/default_policy/layer_4/kernel/Initializer/mul_1*
dtype0
�
1default_policy/layer_4/kernel/Read/ReadVariableOpReadVariableOpdefault_policy/layer_4/kernel* 
_output_shapes
:
��*
dtype0
�
-default_policy/layer_4/bias/Initializer/zerosConst*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
default_policy/layer_4/biasVarHandleOp*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*,
shared_namedefault_policy/layer_4/bias
�
<default_policy/layer_4/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/layer_4/bias*
_output_shapes
: 
�
"default_policy/layer_4/bias/AssignAssignVariableOpdefault_policy/layer_4/bias-default_policy/layer_4/bias/Initializer/zeros*
dtype0
�
/default_policy/layer_4/bias/Read/ReadVariableOpReadVariableOpdefault_policy/layer_4/bias*
_output_shapes	
:�*
dtype0
�
,default_policy/layer_4/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_4/kernel* 
_output_shapes
:
��*
dtype0
�
default_policy/layer_4/MatMulMatMul!default_policy/layer_3/re_lu/Relu,default_policy/layer_4/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
-default_policy/layer_4/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_4/bias*
_output_shapes	
:�*
dtype0
�
default_policy/layer_4/BiasAddBiasAdddefault_policy/layer_4/MatMul-default_policy/layer_4/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:����������*
data_formatNHWC
|
!default_policy/layer_4/re_lu/ReluReludefault_policy/layer_4/BiasAdd*
T0*(
_output_shapes
:����������
�
@default_policy/action_out/kernel/Initializer/random_normal/shapeConst*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
:*
dtype0*
valueB"�  X  
�
?default_policy/action_out/kernel/Initializer/random_normal/meanConst*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
Adefault_policy/action_out/kernel/Initializer/random_normal/stddevConst*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
Odefault_policy/action_out/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal@default_policy/action_out/kernel/Initializer/random_normal/shape*
T0*3
_class)
'%loc:@default_policy/action_out/kernel* 
_output_shapes
:
��*
dtype0*

seed *
seed2 
�
>default_policy/action_out/kernel/Initializer/random_normal/mulMulOdefault_policy/action_out/kernel/Initializer/random_normal/RandomStandardNormalAdefault_policy/action_out/kernel/Initializer/random_normal/stddev*
T0*3
_class)
'%loc:@default_policy/action_out/kernel* 
_output_shapes
:
��
�
:default_policy/action_out/kernel/Initializer/random_normalAddV2>default_policy/action_out/kernel/Initializer/random_normal/mul?default_policy/action_out/kernel/Initializer/random_normal/mean*
T0*3
_class)
'%loc:@default_policy/action_out/kernel* 
_output_shapes
:
��
�
/default_policy/action_out/kernel/Initializer/QrQr:default_policy/action_out/kernel/Initializer/random_normal*
T0*3
_class)
'%loc:@default_policy/action_out/kernel*,
_output_shapes
:
��:
��*
full_matrices( 
�
5default_policy/action_out/kernel/Initializer/DiagPartDiagPart1default_policy/action_out/kernel/Initializer/Qr:1*
T0*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes	
:�
�
1default_policy/action_out/kernel/Initializer/SignSign5default_policy/action_out/kernel/Initializer/DiagPart*
T0*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes	
:�
�
0default_policy/action_out/kernel/Initializer/mulMul/default_policy/action_out/kernel/Initializer/Qr1default_policy/action_out/kernel/Initializer/Sign*
T0*3
_class)
'%loc:@default_policy/action_out/kernel* 
_output_shapes
:
��
�
Ldefault_policy/action_out/kernel/Initializer/matrix_transpose/transpose/permConst*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
:*
dtype0*
valueB"       
�
Gdefault_policy/action_out/kernel/Initializer/matrix_transpose/transpose	Transpose0default_policy/action_out/kernel/Initializer/mulLdefault_policy/action_out/kernel/Initializer/matrix_transpose/transpose/perm*
T0*
Tperm0*3
_class)
'%loc:@default_policy/action_out/kernel* 
_output_shapes
:
��
�
:default_policy/action_out/kernel/Initializer/Reshape/shapeConst*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
:*
dtype0*
valueB"X  �  
�
4default_policy/action_out/kernel/Initializer/ReshapeReshapeGdefault_policy/action_out/kernel/Initializer/matrix_transpose/transpose:default_policy/action_out/kernel/Initializer/Reshape/shape*
T0*
Tshape0*3
_class)
'%loc:@default_policy/action_out/kernel* 
_output_shapes
:
��
�
4default_policy/action_out/kernel/Initializer/mul_1/xConst*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
2default_policy/action_out/kernel/Initializer/mul_1Mul4default_policy/action_out/kernel/Initializer/mul_1/x4default_policy/action_out/kernel/Initializer/Reshape*
T0*3
_class)
'%loc:@default_policy/action_out/kernel* 
_output_shapes
:
��
�
 default_policy/action_out/kernelVarHandleOp*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*1
shared_name" default_policy/action_out/kernel
�
Adefault_policy/action_out/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp default_policy/action_out/kernel*
_output_shapes
: 
�
'default_policy/action_out/kernel/AssignAssignVariableOp default_policy/action_out/kernel2default_policy/action_out/kernel/Initializer/mul_1*
dtype0
�
4default_policy/action_out/kernel/Read/ReadVariableOpReadVariableOp default_policy/action_out/kernel* 
_output_shapes
:
��*
dtype0
�
0default_policy/action_out/bias/Initializer/zerosConst*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
default_policy/action_out/biasVarHandleOp*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*/
shared_name default_policy/action_out/bias
�
?default_policy/action_out/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/action_out/bias*
_output_shapes
: 
�
%default_policy/action_out/bias/AssignAssignVariableOpdefault_policy/action_out/bias0default_policy/action_out/bias/Initializer/zeros*
dtype0
�
2default_policy/action_out/bias/Read/ReadVariableOpReadVariableOpdefault_policy/action_out/bias*
_output_shapes	
:�*
dtype0
�
/default_policy/action_out/MatMul/ReadVariableOpReadVariableOp default_policy/action_out/kernel* 
_output_shapes
:
��*
dtype0
�
 default_policy/action_out/MatMulMatMul!default_policy/layer_4/re_lu/Relu/default_policy/action_out/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
0default_policy/action_out/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/action_out/bias*
_output_shapes	
:�*
dtype0
�
!default_policy/action_out/BiasAddBiasAdd default_policy/action_out/MatMul0default_policy/action_out/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:����������*
data_formatNHWC
�
Fdefault_policy/layer_val_hidden/kernel/Initializer/random_normal/shapeConst*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
:*
dtype0*
valueB"�  X  
�
Edefault_policy/layer_val_hidden/kernel/Initializer/random_normal/meanConst*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
Gdefault_policy/layer_val_hidden/kernel/Initializer/random_normal/stddevConst*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
Udefault_policy/layer_val_hidden/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormalFdefault_policy/layer_val_hidden/kernel/Initializer/random_normal/shape*
T0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel* 
_output_shapes
:
��*
dtype0*

seed *
seed2 
�
Ddefault_policy/layer_val_hidden/kernel/Initializer/random_normal/mulMulUdefault_policy/layer_val_hidden/kernel/Initializer/random_normal/RandomStandardNormalGdefault_policy/layer_val_hidden/kernel/Initializer/random_normal/stddev*
T0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel* 
_output_shapes
:
��
�
@default_policy/layer_val_hidden/kernel/Initializer/random_normalAddV2Ddefault_policy/layer_val_hidden/kernel/Initializer/random_normal/mulEdefault_policy/layer_val_hidden/kernel/Initializer/random_normal/mean*
T0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel* 
_output_shapes
:
��
�
5default_policy/layer_val_hidden/kernel/Initializer/QrQr@default_policy/layer_val_hidden/kernel/Initializer/random_normal*
T0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*,
_output_shapes
:
��:
��*
full_matrices( 
�
;default_policy/layer_val_hidden/kernel/Initializer/DiagPartDiagPart7default_policy/layer_val_hidden/kernel/Initializer/Qr:1*
T0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes	
:�
�
7default_policy/layer_val_hidden/kernel/Initializer/SignSign;default_policy/layer_val_hidden/kernel/Initializer/DiagPart*
T0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes	
:�
�
6default_policy/layer_val_hidden/kernel/Initializer/mulMul5default_policy/layer_val_hidden/kernel/Initializer/Qr7default_policy/layer_val_hidden/kernel/Initializer/Sign*
T0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel* 
_output_shapes
:
��
�
Rdefault_policy/layer_val_hidden/kernel/Initializer/matrix_transpose/transpose/permConst*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
:*
dtype0*
valueB"       
�
Mdefault_policy/layer_val_hidden/kernel/Initializer/matrix_transpose/transpose	Transpose6default_policy/layer_val_hidden/kernel/Initializer/mulRdefault_policy/layer_val_hidden/kernel/Initializer/matrix_transpose/transpose/perm*
T0*
Tperm0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel* 
_output_shapes
:
��
�
@default_policy/layer_val_hidden/kernel/Initializer/Reshape/shapeConst*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
:*
dtype0*
valueB"X  �  
�
:default_policy/layer_val_hidden/kernel/Initializer/ReshapeReshapeMdefault_policy/layer_val_hidden/kernel/Initializer/matrix_transpose/transpose@default_policy/layer_val_hidden/kernel/Initializer/Reshape/shape*
T0*
Tshape0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel* 
_output_shapes
:
��
�
:default_policy/layer_val_hidden/kernel/Initializer/mul_1/xConst*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
8default_policy/layer_val_hidden/kernel/Initializer/mul_1Mul:default_policy/layer_val_hidden/kernel/Initializer/mul_1/x:default_policy/layer_val_hidden/kernel/Initializer/Reshape*
T0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel* 
_output_shapes
:
��
�
&default_policy/layer_val_hidden/kernelVarHandleOp*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*7
shared_name(&default_policy/layer_val_hidden/kernel
�
Gdefault_policy/layer_val_hidden/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp&default_policy/layer_val_hidden/kernel*
_output_shapes
: 
�
-default_policy/layer_val_hidden/kernel/AssignAssignVariableOp&default_policy/layer_val_hidden/kernel8default_policy/layer_val_hidden/kernel/Initializer/mul_1*
dtype0
�
:default_policy/layer_val_hidden/kernel/Read/ReadVariableOpReadVariableOp&default_policy/layer_val_hidden/kernel* 
_output_shapes
:
��*
dtype0
�
6default_policy/layer_val_hidden/bias/Initializer/zerosConst*7
_class-
+)loc:@default_policy/layer_val_hidden/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
$default_policy/layer_val_hidden/biasVarHandleOp*7
_class-
+)loc:@default_policy/layer_val_hidden/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*5
shared_name&$default_policy/layer_val_hidden/bias
�
Edefault_policy/layer_val_hidden/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp$default_policy/layer_val_hidden/bias*
_output_shapes
: 
�
+default_policy/layer_val_hidden/bias/AssignAssignVariableOp$default_policy/layer_val_hidden/bias6default_policy/layer_val_hidden/bias/Initializer/zeros*
dtype0
�
8default_policy/layer_val_hidden/bias/Read/ReadVariableOpReadVariableOp$default_policy/layer_val_hidden/bias*
_output_shapes	
:�*
dtype0
�
5default_policy/layer_val_hidden/MatMul/ReadVariableOpReadVariableOp&default_policy/layer_val_hidden/kernel* 
_output_shapes
:
��*
dtype0
�
&default_policy/layer_val_hidden/MatMulMatMul!default_policy/layer_4/re_lu/Relu5default_policy/layer_val_hidden/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
6default_policy/layer_val_hidden/BiasAdd/ReadVariableOpReadVariableOp$default_policy/layer_val_hidden/bias*
_output_shapes	
:�*
dtype0
�
'default_policy/layer_val_hidden/BiasAddBiasAdd&default_policy/layer_val_hidden/MatMul6default_policy/layer_val_hidden/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:����������*
data_formatNHWC
�
*default_policy/layer_val_hidden/re_lu/ReluRelu'default_policy/layer_val_hidden/BiasAdd*
T0*(
_output_shapes
:����������
�
?default_policy/value_out/kernel/Initializer/random_normal/shapeConst*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
:*
dtype0*
valueB"�     
�
>default_policy/value_out/kernel/Initializer/random_normal/meanConst*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
@default_policy/value_out/kernel/Initializer/random_normal/stddevConst*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
Ndefault_policy/value_out/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal?default_policy/value_out/kernel/Initializer/random_normal/shape*
T0*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
:	�*
dtype0*

seed *
seed2 
�
=default_policy/value_out/kernel/Initializer/random_normal/mulMulNdefault_policy/value_out/kernel/Initializer/random_normal/RandomStandardNormal@default_policy/value_out/kernel/Initializer/random_normal/stddev*
T0*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
:	�
�
9default_policy/value_out/kernel/Initializer/random_normalAddV2=default_policy/value_out/kernel/Initializer/random_normal/mul>default_policy/value_out/kernel/Initializer/random_normal/mean*
T0*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
:	�
�
.default_policy/value_out/kernel/Initializer/QrQr9default_policy/value_out/kernel/Initializer/random_normal*
T0*2
_class(
&$loc:@default_policy/value_out/kernel*)
_output_shapes
:	�:*
full_matrices( 
�
4default_policy/value_out/kernel/Initializer/DiagPartDiagPart0default_policy/value_out/kernel/Initializer/Qr:1*
T0*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
:
�
0default_policy/value_out/kernel/Initializer/SignSign4default_policy/value_out/kernel/Initializer/DiagPart*
T0*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
:
�
/default_policy/value_out/kernel/Initializer/mulMul.default_policy/value_out/kernel/Initializer/Qr0default_policy/value_out/kernel/Initializer/Sign*
T0*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
:	�
�
9default_policy/value_out/kernel/Initializer/Reshape/shapeConst*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
:*
dtype0*
valueB"�     
�
3default_policy/value_out/kernel/Initializer/ReshapeReshape/default_policy/value_out/kernel/Initializer/mul9default_policy/value_out/kernel/Initializer/Reshape/shape*
T0*
Tshape0*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
:	�
�
3default_policy/value_out/kernel/Initializer/mul_1/xConst*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
1default_policy/value_out/kernel/Initializer/mul_1Mul3default_policy/value_out/kernel/Initializer/mul_1/x3default_policy/value_out/kernel/Initializer/Reshape*
T0*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
:	�
�
default_policy/value_out/kernelVarHandleOp*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:	�*0
shared_name!default_policy/value_out/kernel
�
@default_policy/value_out/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/value_out/kernel*
_output_shapes
: 
�
&default_policy/value_out/kernel/AssignAssignVariableOpdefault_policy/value_out/kernel1default_policy/value_out/kernel/Initializer/mul_1*
dtype0
�
3default_policy/value_out/kernel/Read/ReadVariableOpReadVariableOpdefault_policy/value_out/kernel*
_output_shapes
:	�*
dtype0
�
/default_policy/value_out/bias/Initializer/zerosConst*0
_class&
$"loc:@default_policy/value_out/bias*
_output_shapes
:*
dtype0*
valueB*    
�
default_policy/value_out/biasVarHandleOp*0
_class&
$"loc:@default_policy/value_out/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*.
shared_namedefault_policy/value_out/bias
�
>default_policy/value_out/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/value_out/bias*
_output_shapes
: 
�
$default_policy/value_out/bias/AssignAssignVariableOpdefault_policy/value_out/bias/default_policy/value_out/bias/Initializer/zeros*
dtype0
�
1default_policy/value_out/bias/Read/ReadVariableOpReadVariableOpdefault_policy/value_out/bias*
_output_shapes
:*
dtype0
�
.default_policy/value_out/MatMul/ReadVariableOpReadVariableOpdefault_policy/value_out/kernel*
_output_shapes
:	�*
dtype0
�
default_policy/value_out/MatMulMatMul*default_policy/layer_val_hidden/re_lu/Relu.default_policy/value_out/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
�
/default_policy/value_out/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/value_out/bias*
_output_shapes
:*
dtype0
�
 default_policy/value_out/BiasAddBiasAdddefault_policy/value_out/MatMul/default_policy/value_out/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:���������*
data_formatNHWC
�
5default_policy/kernel/Initializer/random_normal/shapeConst*(
_class
loc:@default_policy/kernel*
_output_shapes
:*
dtype0*
valueB"�  �  
�
4default_policy/kernel/Initializer/random_normal/meanConst*(
_class
loc:@default_policy/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
6default_policy/kernel/Initializer/random_normal/stddevConst*(
_class
loc:@default_policy/kernel*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
Ddefault_policy/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal5default_policy/kernel/Initializer/random_normal/shape*
T0*(
_class
loc:@default_policy/kernel* 
_output_shapes
:
�	�*
dtype0*

seed *
seed2 
�
3default_policy/kernel/Initializer/random_normal/mulMulDdefault_policy/kernel/Initializer/random_normal/RandomStandardNormal6default_policy/kernel/Initializer/random_normal/stddev*
T0*(
_class
loc:@default_policy/kernel* 
_output_shapes
:
�	�
�
/default_policy/kernel/Initializer/random_normalAddV23default_policy/kernel/Initializer/random_normal/mul4default_policy/kernel/Initializer/random_normal/mean*
T0*(
_class
loc:@default_policy/kernel* 
_output_shapes
:
�	�
�
$default_policy/kernel/Initializer/QrQr/default_policy/kernel/Initializer/random_normal*
T0*(
_class
loc:@default_policy/kernel*,
_output_shapes
:
�	�:
��*
full_matrices( 
�
*default_policy/kernel/Initializer/DiagPartDiagPart&default_policy/kernel/Initializer/Qr:1*
T0*(
_class
loc:@default_policy/kernel*
_output_shapes	
:�
�
&default_policy/kernel/Initializer/SignSign*default_policy/kernel/Initializer/DiagPart*
T0*(
_class
loc:@default_policy/kernel*
_output_shapes	
:�
�
%default_policy/kernel/Initializer/mulMul$default_policy/kernel/Initializer/Qr&default_policy/kernel/Initializer/Sign*
T0*(
_class
loc:@default_policy/kernel* 
_output_shapes
:
�	�
�
/default_policy/kernel/Initializer/Reshape/shapeConst*(
_class
loc:@default_policy/kernel*
_output_shapes
:*
dtype0*
valueB"�  �  
�
)default_policy/kernel/Initializer/ReshapeReshape%default_policy/kernel/Initializer/mul/default_policy/kernel/Initializer/Reshape/shape*
T0*
Tshape0*(
_class
loc:@default_policy/kernel* 
_output_shapes
:
�	�
�
)default_policy/kernel/Initializer/mul_1/xConst*(
_class
loc:@default_policy/kernel*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
'default_policy/kernel/Initializer/mul_1Mul)default_policy/kernel/Initializer/mul_1/x)default_policy/kernel/Initializer/Reshape*
T0*(
_class
loc:@default_policy/kernel* 
_output_shapes
:
�	�
�
default_policy/kernelVarHandleOp*(
_class
loc:@default_policy/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
�	�*&
shared_namedefault_policy/kernel
{
6default_policy/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/kernel*
_output_shapes
: 
}
default_policy/kernel/AssignAssignVariableOpdefault_policy/kernel'default_policy/kernel/Initializer/mul_1*
dtype0
�
)default_policy/kernel/Read/ReadVariableOpReadVariableOpdefault_policy/kernel* 
_output_shapes
:
�	�*
dtype0
�
%default_policy/bias/Initializer/zerosConst*&
_class
loc:@default_policy/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
default_policy/biasVarHandleOp*&
_class
loc:@default_policy/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*$
shared_namedefault_policy/bias
w
4default_policy/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/bias*
_output_shapes
: 
w
default_policy/bias/AssignAssignVariableOpdefault_policy/bias%default_policy/bias/Initializer/zeros*
dtype0
x
'default_policy/bias/Read/ReadVariableOpReadVariableOpdefault_policy/bias*
_output_shapes	
:�*
dtype0
�
7default_policy/kernel_1/Initializer/random_normal/shapeConst**
_class 
loc:@default_policy/kernel_1*
_output_shapes
:*
dtype0*
valueB"  �  
�
6default_policy/kernel_1/Initializer/random_normal/meanConst**
_class 
loc:@default_policy/kernel_1*
_output_shapes
: *
dtype0*
valueB
 *    
�
8default_policy/kernel_1/Initializer/random_normal/stddevConst**
_class 
loc:@default_policy/kernel_1*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
Fdefault_policy/kernel_1/Initializer/random_normal/RandomStandardNormalRandomStandardNormal7default_policy/kernel_1/Initializer/random_normal/shape*
T0**
_class 
loc:@default_policy/kernel_1* 
_output_shapes
:
��*
dtype0*

seed *
seed2 
�
5default_policy/kernel_1/Initializer/random_normal/mulMulFdefault_policy/kernel_1/Initializer/random_normal/RandomStandardNormal8default_policy/kernel_1/Initializer/random_normal/stddev*
T0**
_class 
loc:@default_policy/kernel_1* 
_output_shapes
:
��
�
1default_policy/kernel_1/Initializer/random_normalAddV25default_policy/kernel_1/Initializer/random_normal/mul6default_policy/kernel_1/Initializer/random_normal/mean*
T0**
_class 
loc:@default_policy/kernel_1* 
_output_shapes
:
��
�
&default_policy/kernel_1/Initializer/QrQr1default_policy/kernel_1/Initializer/random_normal*
T0**
_class 
loc:@default_policy/kernel_1*,
_output_shapes
:
��:
��*
full_matrices( 
�
,default_policy/kernel_1/Initializer/DiagPartDiagPart(default_policy/kernel_1/Initializer/Qr:1*
T0**
_class 
loc:@default_policy/kernel_1*
_output_shapes	
:�
�
(default_policy/kernel_1/Initializer/SignSign,default_policy/kernel_1/Initializer/DiagPart*
T0**
_class 
loc:@default_policy/kernel_1*
_output_shapes	
:�
�
'default_policy/kernel_1/Initializer/mulMul&default_policy/kernel_1/Initializer/Qr(default_policy/kernel_1/Initializer/Sign*
T0**
_class 
loc:@default_policy/kernel_1* 
_output_shapes
:
��
�
Cdefault_policy/kernel_1/Initializer/matrix_transpose/transpose/permConst**
_class 
loc:@default_policy/kernel_1*
_output_shapes
:*
dtype0*
valueB"       
�
>default_policy/kernel_1/Initializer/matrix_transpose/transpose	Transpose'default_policy/kernel_1/Initializer/mulCdefault_policy/kernel_1/Initializer/matrix_transpose/transpose/perm*
T0*
Tperm0**
_class 
loc:@default_policy/kernel_1* 
_output_shapes
:
��
�
1default_policy/kernel_1/Initializer/Reshape/shapeConst**
_class 
loc:@default_policy/kernel_1*
_output_shapes
:*
dtype0*
valueB"�    
�
+default_policy/kernel_1/Initializer/ReshapeReshape>default_policy/kernel_1/Initializer/matrix_transpose/transpose1default_policy/kernel_1/Initializer/Reshape/shape*
T0*
Tshape0**
_class 
loc:@default_policy/kernel_1* 
_output_shapes
:
��
�
+default_policy/kernel_1/Initializer/mul_1/xConst**
_class 
loc:@default_policy/kernel_1*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
)default_policy/kernel_1/Initializer/mul_1Mul+default_policy/kernel_1/Initializer/mul_1/x+default_policy/kernel_1/Initializer/Reshape*
T0**
_class 
loc:@default_policy/kernel_1* 
_output_shapes
:
��
�
default_policy/kernel_1VarHandleOp**
_class 
loc:@default_policy/kernel_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*(
shared_namedefault_policy/kernel_1

8default_policy/kernel_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/kernel_1*
_output_shapes
: 
�
default_policy/kernel_1/AssignAssignVariableOpdefault_policy/kernel_1)default_policy/kernel_1/Initializer/mul_1*
dtype0
�
+default_policy/kernel_1/Read/ReadVariableOpReadVariableOpdefault_policy/kernel_1* 
_output_shapes
:
��*
dtype0
�
'default_policy/bias_1/Initializer/zerosConst*(
_class
loc:@default_policy/bias_1*
_output_shapes	
:�*
dtype0*
valueB�*    
�
default_policy/bias_1VarHandleOp*(
_class
loc:@default_policy/bias_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*&
shared_namedefault_policy/bias_1
{
6default_policy/bias_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/bias_1*
_output_shapes
: 
}
default_policy/bias_1/AssignAssignVariableOpdefault_policy/bias_1'default_policy/bias_1/Initializer/zeros*
dtype0
|
)default_policy/bias_1/Read/ReadVariableOpReadVariableOpdefault_policy/bias_1*
_output_shapes	
:�*
dtype0
�
7default_policy/kernel_2/Initializer/random_normal/shapeConst**
_class 
loc:@default_policy/kernel_2*
_output_shapes
:*
dtype0*
valueB"    
�
6default_policy/kernel_2/Initializer/random_normal/meanConst**
_class 
loc:@default_policy/kernel_2*
_output_shapes
: *
dtype0*
valueB
 *    
�
8default_policy/kernel_2/Initializer/random_normal/stddevConst**
_class 
loc:@default_policy/kernel_2*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
Fdefault_policy/kernel_2/Initializer/random_normal/RandomStandardNormalRandomStandardNormal7default_policy/kernel_2/Initializer/random_normal/shape*
T0**
_class 
loc:@default_policy/kernel_2* 
_output_shapes
:
��*
dtype0*

seed *
seed2 
�
5default_policy/kernel_2/Initializer/random_normal/mulMulFdefault_policy/kernel_2/Initializer/random_normal/RandomStandardNormal8default_policy/kernel_2/Initializer/random_normal/stddev*
T0**
_class 
loc:@default_policy/kernel_2* 
_output_shapes
:
��
�
1default_policy/kernel_2/Initializer/random_normalAddV25default_policy/kernel_2/Initializer/random_normal/mul6default_policy/kernel_2/Initializer/random_normal/mean*
T0**
_class 
loc:@default_policy/kernel_2* 
_output_shapes
:
��
�
&default_policy/kernel_2/Initializer/QrQr1default_policy/kernel_2/Initializer/random_normal*
T0**
_class 
loc:@default_policy/kernel_2*,
_output_shapes
:
��:
��*
full_matrices( 
�
,default_policy/kernel_2/Initializer/DiagPartDiagPart(default_policy/kernel_2/Initializer/Qr:1*
T0**
_class 
loc:@default_policy/kernel_2*
_output_shapes	
:�
�
(default_policy/kernel_2/Initializer/SignSign,default_policy/kernel_2/Initializer/DiagPart*
T0**
_class 
loc:@default_policy/kernel_2*
_output_shapes	
:�
�
'default_policy/kernel_2/Initializer/mulMul&default_policy/kernel_2/Initializer/Qr(default_policy/kernel_2/Initializer/Sign*
T0**
_class 
loc:@default_policy/kernel_2* 
_output_shapes
:
��
�
Cdefault_policy/kernel_2/Initializer/matrix_transpose/transpose/permConst**
_class 
loc:@default_policy/kernel_2*
_output_shapes
:*
dtype0*
valueB"       
�
>default_policy/kernel_2/Initializer/matrix_transpose/transpose	Transpose'default_policy/kernel_2/Initializer/mulCdefault_policy/kernel_2/Initializer/matrix_transpose/transpose/perm*
T0*
Tperm0**
_class 
loc:@default_policy/kernel_2* 
_output_shapes
:
��
�
1default_policy/kernel_2/Initializer/Reshape/shapeConst**
_class 
loc:@default_policy/kernel_2*
_output_shapes
:*
dtype0*
valueB"    
�
+default_policy/kernel_2/Initializer/ReshapeReshape>default_policy/kernel_2/Initializer/matrix_transpose/transpose1default_policy/kernel_2/Initializer/Reshape/shape*
T0*
Tshape0**
_class 
loc:@default_policy/kernel_2* 
_output_shapes
:
��
�
+default_policy/kernel_2/Initializer/mul_1/xConst**
_class 
loc:@default_policy/kernel_2*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
)default_policy/kernel_2/Initializer/mul_1Mul+default_policy/kernel_2/Initializer/mul_1/x+default_policy/kernel_2/Initializer/Reshape*
T0**
_class 
loc:@default_policy/kernel_2* 
_output_shapes
:
��
�
default_policy/kernel_2VarHandleOp**
_class 
loc:@default_policy/kernel_2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*(
shared_namedefault_policy/kernel_2

8default_policy/kernel_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/kernel_2*
_output_shapes
: 
�
default_policy/kernel_2/AssignAssignVariableOpdefault_policy/kernel_2)default_policy/kernel_2/Initializer/mul_1*
dtype0
�
+default_policy/kernel_2/Read/ReadVariableOpReadVariableOpdefault_policy/kernel_2* 
_output_shapes
:
��*
dtype0
�
7default_policy/bias_2/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@default_policy/bias_2*
_output_shapes
:*
dtype0*
valueB:�
�
-default_policy/bias_2/Initializer/zeros/ConstConst*(
_class
loc:@default_policy/bias_2*
_output_shapes
: *
dtype0*
valueB
 *    
�
'default_policy/bias_2/Initializer/zerosFill7default_policy/bias_2/Initializer/zeros/shape_as_tensor-default_policy/bias_2/Initializer/zeros/Const*
T0*(
_class
loc:@default_policy/bias_2*
_output_shapes	
:�*

index_type0
�
default_policy/bias_2VarHandleOp*(
_class
loc:@default_policy/bias_2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*&
shared_namedefault_policy/bias_2
{
6default_policy/bias_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/bias_2*
_output_shapes
: 
}
default_policy/bias_2/AssignAssignVariableOpdefault_policy/bias_2'default_policy/bias_2/Initializer/zeros*
dtype0
|
)default_policy/bias_2/Read/ReadVariableOpReadVariableOpdefault_policy/bias_2*
_output_shapes	
:�*
dtype0
�
7default_policy/kernel_3/Initializer/random_normal/shapeConst**
_class 
loc:@default_policy/kernel_3*
_output_shapes
:*
dtype0*
valueB"  X  
�
6default_policy/kernel_3/Initializer/random_normal/meanConst**
_class 
loc:@default_policy/kernel_3*
_output_shapes
: *
dtype0*
valueB
 *    
�
8default_policy/kernel_3/Initializer/random_normal/stddevConst**
_class 
loc:@default_policy/kernel_3*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
Fdefault_policy/kernel_3/Initializer/random_normal/RandomStandardNormalRandomStandardNormal7default_policy/kernel_3/Initializer/random_normal/shape*
T0**
_class 
loc:@default_policy/kernel_3* 
_output_shapes
:
��*
dtype0*

seed *
seed2 
�
5default_policy/kernel_3/Initializer/random_normal/mulMulFdefault_policy/kernel_3/Initializer/random_normal/RandomStandardNormal8default_policy/kernel_3/Initializer/random_normal/stddev*
T0**
_class 
loc:@default_policy/kernel_3* 
_output_shapes
:
��
�
1default_policy/kernel_3/Initializer/random_normalAddV25default_policy/kernel_3/Initializer/random_normal/mul6default_policy/kernel_3/Initializer/random_normal/mean*
T0**
_class 
loc:@default_policy/kernel_3* 
_output_shapes
:
��
�
&default_policy/kernel_3/Initializer/QrQr1default_policy/kernel_3/Initializer/random_normal*
T0**
_class 
loc:@default_policy/kernel_3*,
_output_shapes
:
��:
��*
full_matrices( 
�
,default_policy/kernel_3/Initializer/DiagPartDiagPart(default_policy/kernel_3/Initializer/Qr:1*
T0**
_class 
loc:@default_policy/kernel_3*
_output_shapes	
:�
�
(default_policy/kernel_3/Initializer/SignSign,default_policy/kernel_3/Initializer/DiagPart*
T0**
_class 
loc:@default_policy/kernel_3*
_output_shapes	
:�
�
'default_policy/kernel_3/Initializer/mulMul&default_policy/kernel_3/Initializer/Qr(default_policy/kernel_3/Initializer/Sign*
T0**
_class 
loc:@default_policy/kernel_3* 
_output_shapes
:
��
�
1default_policy/kernel_3/Initializer/Reshape/shapeConst**
_class 
loc:@default_policy/kernel_3*
_output_shapes
:*
dtype0*
valueB"  X  
�
+default_policy/kernel_3/Initializer/ReshapeReshape'default_policy/kernel_3/Initializer/mul1default_policy/kernel_3/Initializer/Reshape/shape*
T0*
Tshape0**
_class 
loc:@default_policy/kernel_3* 
_output_shapes
:
��
�
+default_policy/kernel_3/Initializer/mul_1/xConst**
_class 
loc:@default_policy/kernel_3*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
)default_policy/kernel_3/Initializer/mul_1Mul+default_policy/kernel_3/Initializer/mul_1/x+default_policy/kernel_3/Initializer/Reshape*
T0**
_class 
loc:@default_policy/kernel_3* 
_output_shapes
:
��
�
default_policy/kernel_3VarHandleOp**
_class 
loc:@default_policy/kernel_3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*(
shared_namedefault_policy/kernel_3

8default_policy/kernel_3/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/kernel_3*
_output_shapes
: 
�
default_policy/kernel_3/AssignAssignVariableOpdefault_policy/kernel_3)default_policy/kernel_3/Initializer/mul_1*
dtype0
�
+default_policy/kernel_3/Read/ReadVariableOpReadVariableOpdefault_policy/kernel_3* 
_output_shapes
:
��*
dtype0
�
'default_policy/bias_3/Initializer/zerosConst*(
_class
loc:@default_policy/bias_3*
_output_shapes	
:�*
dtype0*
valueB�*    
�
default_policy/bias_3VarHandleOp*(
_class
loc:@default_policy/bias_3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*&
shared_namedefault_policy/bias_3
{
6default_policy/bias_3/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/bias_3*
_output_shapes
: 
}
default_policy/bias_3/AssignAssignVariableOpdefault_policy/bias_3'default_policy/bias_3/Initializer/zeros*
dtype0
|
)default_policy/bias_3/Read/ReadVariableOpReadVariableOpdefault_policy/bias_3*
_output_shapes	
:�*
dtype0
�
8default_policy/kernel_4/Initializer/random_uniform/shapeConst**
_class 
loc:@default_policy/kernel_4*
_output_shapes
:*
dtype0*
valueB"X  �  
�
6default_policy/kernel_4/Initializer/random_uniform/minConst**
_class 
loc:@default_policy/kernel_4*
_output_shapes
: *
dtype0*
valueB
 *Fݫ�
�
6default_policy/kernel_4/Initializer/random_uniform/maxConst**
_class 
loc:@default_policy/kernel_4*
_output_shapes
: *
dtype0*
valueB
 *Fݫ=
�
@default_policy/kernel_4/Initializer/random_uniform/RandomUniformRandomUniform8default_policy/kernel_4/Initializer/random_uniform/shape*
T0**
_class 
loc:@default_policy/kernel_4* 
_output_shapes
:
��*
dtype0*

seed *
seed2 
�
6default_policy/kernel_4/Initializer/random_uniform/subSub6default_policy/kernel_4/Initializer/random_uniform/max6default_policy/kernel_4/Initializer/random_uniform/min*
T0**
_class 
loc:@default_policy/kernel_4*
_output_shapes
: 
�
6default_policy/kernel_4/Initializer/random_uniform/mulMul@default_policy/kernel_4/Initializer/random_uniform/RandomUniform6default_policy/kernel_4/Initializer/random_uniform/sub*
T0**
_class 
loc:@default_policy/kernel_4* 
_output_shapes
:
��
�
2default_policy/kernel_4/Initializer/random_uniformAddV26default_policy/kernel_4/Initializer/random_uniform/mul6default_policy/kernel_4/Initializer/random_uniform/min*
T0**
_class 
loc:@default_policy/kernel_4* 
_output_shapes
:
��
�
default_policy/kernel_4VarHandleOp**
_class 
loc:@default_policy/kernel_4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*(
shared_namedefault_policy/kernel_4

8default_policy/kernel_4/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/kernel_4*
_output_shapes
: 
�
default_policy/kernel_4/AssignAssignVariableOpdefault_policy/kernel_42default_policy/kernel_4/Initializer/random_uniform*
dtype0
�
+default_policy/kernel_4/Read/ReadVariableOpReadVariableOpdefault_policy/kernel_4* 
_output_shapes
:
��*
dtype0
�
'default_policy/bias_4/Initializer/zerosConst*(
_class
loc:@default_policy/bias_4*
_output_shapes	
:�*
dtype0*
valueB�*    
�
default_policy/bias_4VarHandleOp*(
_class
loc:@default_policy/bias_4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*&
shared_namedefault_policy/bias_4
{
6default_policy/bias_4/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/bias_4*
_output_shapes
: 
}
default_policy/bias_4/AssignAssignVariableOpdefault_policy/bias_4'default_policy/bias_4/Initializer/zeros*
dtype0
|
)default_policy/bias_4/Read/ReadVariableOpReadVariableOpdefault_policy/bias_4*
_output_shapes	
:�*
dtype0
�
&default_policy/total/Initializer/zerosConst*'
_class
loc:@default_policy/total*
_output_shapes
: *
dtype0*
valueB
 *    
�
default_policy/totalVarHandleOp*'
_class
loc:@default_policy/total*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *%
shared_namedefault_policy/total
y
5default_policy/total/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/total*
_output_shapes
: 
z
default_policy/total/AssignAssignVariableOpdefault_policy/total&default_policy/total/Initializer/zeros*
dtype0
u
(default_policy/total/Read/ReadVariableOpReadVariableOpdefault_policy/total*
_output_shapes
: *
dtype0
�
&default_policy/count/Initializer/zerosConst*'
_class
loc:@default_policy/count*
_output_shapes
: *
dtype0*
valueB
 *    
�
default_policy/countVarHandleOp*'
_class
loc:@default_policy/count*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *%
shared_namedefault_policy/count
y
5default_policy/count/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/count*
_output_shapes
: 
z
default_policy/count/AssignAssignVariableOpdefault_policy/count&default_policy/count/Initializer/zeros*
dtype0
u
(default_policy/count/Read/ReadVariableOpReadVariableOpdefault_policy/count*
_output_shapes
: *
dtype0
�
(default_policy/total_1/Initializer/zerosConst*)
_class
loc:@default_policy/total_1*
_output_shapes
: *
dtype0*
valueB
 *    
�
default_policy/total_1VarHandleOp*)
_class
loc:@default_policy/total_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *'
shared_namedefault_policy/total_1
}
7default_policy/total_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/total_1*
_output_shapes
: 
�
default_policy/total_1/AssignAssignVariableOpdefault_policy/total_1(default_policy/total_1/Initializer/zeros*
dtype0
y
*default_policy/total_1/Read/ReadVariableOpReadVariableOpdefault_policy/total_1*
_output_shapes
: *
dtype0
�
(default_policy/count_1/Initializer/zerosConst*)
_class
loc:@default_policy/count_1*
_output_shapes
: *
dtype0*
valueB
 *    
�
default_policy/count_1VarHandleOp*)
_class
loc:@default_policy/count_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *'
shared_namedefault_policy/count_1
}
7default_policy/count_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/count_1*
_output_shapes
: 
�
default_policy/count_1/AssignAssignVariableOpdefault_policy/count_1(default_policy/count_1/Initializer/zeros*
dtype0
y
*default_policy/count_1/Read/ReadVariableOpReadVariableOpdefault_policy/count_1*
_output_shapes
: *
dtype0
�
default_policy/Adam/iterVarHandleOp*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0	*
shape: *)
shared_namedefault_policy/Adam/iter
}
,default_policy/Adam/iter/Read/ReadVariableOpReadVariableOpdefault_policy/Adam/iter*
_output_shapes
: *
dtype0	
�
default_policy/Adam/beta_1VarHandleOp*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *+
shared_namedefault_policy/Adam/beta_1
�
.default_policy/Adam/beta_1/Read/ReadVariableOpReadVariableOpdefault_policy/Adam/beta_1*
_output_shapes
: *
dtype0
�
default_policy/Adam/beta_2VarHandleOp*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *+
shared_namedefault_policy/Adam/beta_2
�
.default_policy/Adam/beta_2/Read/ReadVariableOpReadVariableOpdefault_policy/Adam/beta_2*
_output_shapes
: *
dtype0
�
default_policy/Adam/decayVarHandleOp*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: **
shared_namedefault_policy/Adam/decay

-default_policy/Adam/decay/Read/ReadVariableOpReadVariableOpdefault_policy/Adam/decay*
_output_shapes
: *
dtype0
�
!default_policy/Adam/learning_rateVarHandleOp*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *2
shared_name#!default_policy/Adam/learning_rate
�
5default_policy/Adam/learning_rate/Read/ReadVariableOpReadVariableOp!default_policy/Adam/learning_rate*
_output_shapes
: *
dtype0
�
Bdefault_policy/dense_15/kernel/m/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@default_policy/kernel*
_output_shapes
:*
dtype0*
valueB"�  �  
�
8default_policy/dense_15/kernel/m/Initializer/zeros/ConstConst*(
_class
loc:@default_policy/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
2default_policy/dense_15/kernel/m/Initializer/zerosFillBdefault_policy/dense_15/kernel/m/Initializer/zeros/shape_as_tensor8default_policy/dense_15/kernel/m/Initializer/zeros/Const*
T0*(
_class
loc:@default_policy/kernel* 
_output_shapes
:
�	�*

index_type0
�
 default_policy/dense_15/kernel/mVarHandleOp*(
_class
loc:@default_policy/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
�	�*1
shared_name" default_policy/dense_15/kernel/m
�
Adefault_policy/dense_15/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOp default_policy/dense_15/kernel/m*(
_class
loc:@default_policy/kernel*
_output_shapes
: 
�
'default_policy/dense_15/kernel/m/AssignAssignVariableOp default_policy/dense_15/kernel/m2default_policy/dense_15/kernel/m/Initializer/zeros*
dtype0
�
4default_policy/dense_15/kernel/m/Read/ReadVariableOpReadVariableOp default_policy/dense_15/kernel/m*(
_class
loc:@default_policy/kernel* 
_output_shapes
:
�	�*
dtype0
�
0default_policy/dense_15/bias/m/Initializer/zerosConst*&
_class
loc:@default_policy/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
default_policy/dense_15/bias/mVarHandleOp*&
_class
loc:@default_policy/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*/
shared_name default_policy/dense_15/bias/m
�
?default_policy/dense_15/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_15/bias/m*&
_class
loc:@default_policy/bias*
_output_shapes
: 
�
%default_policy/dense_15/bias/m/AssignAssignVariableOpdefault_policy/dense_15/bias/m0default_policy/dense_15/bias/m/Initializer/zeros*
dtype0
�
2default_policy/dense_15/bias/m/Read/ReadVariableOpReadVariableOpdefault_policy/dense_15/bias/m*&
_class
loc:@default_policy/bias*
_output_shapes	
:�*
dtype0
�
Bdefault_policy/dense_16/kernel/m/Initializer/zeros/shape_as_tensorConst**
_class 
loc:@default_policy/kernel_1*
_output_shapes
:*
dtype0*
valueB"�    
�
8default_policy/dense_16/kernel/m/Initializer/zeros/ConstConst**
_class 
loc:@default_policy/kernel_1*
_output_shapes
: *
dtype0*
valueB
 *    
�
2default_policy/dense_16/kernel/m/Initializer/zerosFillBdefault_policy/dense_16/kernel/m/Initializer/zeros/shape_as_tensor8default_policy/dense_16/kernel/m/Initializer/zeros/Const*
T0**
_class 
loc:@default_policy/kernel_1* 
_output_shapes
:
��*

index_type0
�
 default_policy/dense_16/kernel/mVarHandleOp**
_class 
loc:@default_policy/kernel_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*1
shared_name" default_policy/dense_16/kernel/m
�
Adefault_policy/dense_16/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOp default_policy/dense_16/kernel/m**
_class 
loc:@default_policy/kernel_1*
_output_shapes
: 
�
'default_policy/dense_16/kernel/m/AssignAssignVariableOp default_policy/dense_16/kernel/m2default_policy/dense_16/kernel/m/Initializer/zeros*
dtype0
�
4default_policy/dense_16/kernel/m/Read/ReadVariableOpReadVariableOp default_policy/dense_16/kernel/m**
_class 
loc:@default_policy/kernel_1* 
_output_shapes
:
��*
dtype0
�
0default_policy/dense_16/bias/m/Initializer/zerosConst*(
_class
loc:@default_policy/bias_1*
_output_shapes	
:�*
dtype0*
valueB�*    
�
default_policy/dense_16/bias/mVarHandleOp*(
_class
loc:@default_policy/bias_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*/
shared_name default_policy/dense_16/bias/m
�
?default_policy/dense_16/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_16/bias/m*(
_class
loc:@default_policy/bias_1*
_output_shapes
: 
�
%default_policy/dense_16/bias/m/AssignAssignVariableOpdefault_policy/dense_16/bias/m0default_policy/dense_16/bias/m/Initializer/zeros*
dtype0
�
2default_policy/dense_16/bias/m/Read/ReadVariableOpReadVariableOpdefault_policy/dense_16/bias/m*(
_class
loc:@default_policy/bias_1*
_output_shapes	
:�*
dtype0
�
Bdefault_policy/dense_17/kernel/m/Initializer/zeros/shape_as_tensorConst**
_class 
loc:@default_policy/kernel_2*
_output_shapes
:*
dtype0*
valueB"    
�
8default_policy/dense_17/kernel/m/Initializer/zeros/ConstConst**
_class 
loc:@default_policy/kernel_2*
_output_shapes
: *
dtype0*
valueB
 *    
�
2default_policy/dense_17/kernel/m/Initializer/zerosFillBdefault_policy/dense_17/kernel/m/Initializer/zeros/shape_as_tensor8default_policy/dense_17/kernel/m/Initializer/zeros/Const*
T0**
_class 
loc:@default_policy/kernel_2* 
_output_shapes
:
��*

index_type0
�
 default_policy/dense_17/kernel/mVarHandleOp**
_class 
loc:@default_policy/kernel_2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*1
shared_name" default_policy/dense_17/kernel/m
�
Adefault_policy/dense_17/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOp default_policy/dense_17/kernel/m**
_class 
loc:@default_policy/kernel_2*
_output_shapes
: 
�
'default_policy/dense_17/kernel/m/AssignAssignVariableOp default_policy/dense_17/kernel/m2default_policy/dense_17/kernel/m/Initializer/zeros*
dtype0
�
4default_policy/dense_17/kernel/m/Read/ReadVariableOpReadVariableOp default_policy/dense_17/kernel/m**
_class 
loc:@default_policy/kernel_2* 
_output_shapes
:
��*
dtype0
�
@default_policy/dense_17/bias/m/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@default_policy/bias_2*
_output_shapes
:*
dtype0*
valueB:�
�
6default_policy/dense_17/bias/m/Initializer/zeros/ConstConst*(
_class
loc:@default_policy/bias_2*
_output_shapes
: *
dtype0*
valueB
 *    
�
0default_policy/dense_17/bias/m/Initializer/zerosFill@default_policy/dense_17/bias/m/Initializer/zeros/shape_as_tensor6default_policy/dense_17/bias/m/Initializer/zeros/Const*
T0*(
_class
loc:@default_policy/bias_2*
_output_shapes	
:�*

index_type0
�
default_policy/dense_17/bias/mVarHandleOp*(
_class
loc:@default_policy/bias_2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*/
shared_name default_policy/dense_17/bias/m
�
?default_policy/dense_17/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_17/bias/m*(
_class
loc:@default_policy/bias_2*
_output_shapes
: 
�
%default_policy/dense_17/bias/m/AssignAssignVariableOpdefault_policy/dense_17/bias/m0default_policy/dense_17/bias/m/Initializer/zeros*
dtype0
�
2default_policy/dense_17/bias/m/Read/ReadVariableOpReadVariableOpdefault_policy/dense_17/bias/m*(
_class
loc:@default_policy/bias_2*
_output_shapes	
:�*
dtype0
�
Bdefault_policy/dense_18/kernel/m/Initializer/zeros/shape_as_tensorConst**
_class 
loc:@default_policy/kernel_3*
_output_shapes
:*
dtype0*
valueB"  X  
�
8default_policy/dense_18/kernel/m/Initializer/zeros/ConstConst**
_class 
loc:@default_policy/kernel_3*
_output_shapes
: *
dtype0*
valueB
 *    
�
2default_policy/dense_18/kernel/m/Initializer/zerosFillBdefault_policy/dense_18/kernel/m/Initializer/zeros/shape_as_tensor8default_policy/dense_18/kernel/m/Initializer/zeros/Const*
T0**
_class 
loc:@default_policy/kernel_3* 
_output_shapes
:
��*

index_type0
�
 default_policy/dense_18/kernel/mVarHandleOp**
_class 
loc:@default_policy/kernel_3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*1
shared_name" default_policy/dense_18/kernel/m
�
Adefault_policy/dense_18/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOp default_policy/dense_18/kernel/m**
_class 
loc:@default_policy/kernel_3*
_output_shapes
: 
�
'default_policy/dense_18/kernel/m/AssignAssignVariableOp default_policy/dense_18/kernel/m2default_policy/dense_18/kernel/m/Initializer/zeros*
dtype0
�
4default_policy/dense_18/kernel/m/Read/ReadVariableOpReadVariableOp default_policy/dense_18/kernel/m**
_class 
loc:@default_policy/kernel_3* 
_output_shapes
:
��*
dtype0
�
0default_policy/dense_18/bias/m/Initializer/zerosConst*(
_class
loc:@default_policy/bias_3*
_output_shapes	
:�*
dtype0*
valueB�*    
�
default_policy/dense_18/bias/mVarHandleOp*(
_class
loc:@default_policy/bias_3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*/
shared_name default_policy/dense_18/bias/m
�
?default_policy/dense_18/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_18/bias/m*(
_class
loc:@default_policy/bias_3*
_output_shapes
: 
�
%default_policy/dense_18/bias/m/AssignAssignVariableOpdefault_policy/dense_18/bias/m0default_policy/dense_18/bias/m/Initializer/zeros*
dtype0
�
2default_policy/dense_18/bias/m/Read/ReadVariableOpReadVariableOpdefault_policy/dense_18/bias/m*(
_class
loc:@default_policy/bias_3*
_output_shapes	
:�*
dtype0
�
Bdefault_policy/dense_19/kernel/m/Initializer/zeros/shape_as_tensorConst**
_class 
loc:@default_policy/kernel_4*
_output_shapes
:*
dtype0*
valueB"X  �  
�
8default_policy/dense_19/kernel/m/Initializer/zeros/ConstConst**
_class 
loc:@default_policy/kernel_4*
_output_shapes
: *
dtype0*
valueB
 *    
�
2default_policy/dense_19/kernel/m/Initializer/zerosFillBdefault_policy/dense_19/kernel/m/Initializer/zeros/shape_as_tensor8default_policy/dense_19/kernel/m/Initializer/zeros/Const*
T0**
_class 
loc:@default_policy/kernel_4* 
_output_shapes
:
��*

index_type0
�
 default_policy/dense_19/kernel/mVarHandleOp**
_class 
loc:@default_policy/kernel_4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*1
shared_name" default_policy/dense_19/kernel/m
�
Adefault_policy/dense_19/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOp default_policy/dense_19/kernel/m**
_class 
loc:@default_policy/kernel_4*
_output_shapes
: 
�
'default_policy/dense_19/kernel/m/AssignAssignVariableOp default_policy/dense_19/kernel/m2default_policy/dense_19/kernel/m/Initializer/zeros*
dtype0
�
4default_policy/dense_19/kernel/m/Read/ReadVariableOpReadVariableOp default_policy/dense_19/kernel/m**
_class 
loc:@default_policy/kernel_4* 
_output_shapes
:
��*
dtype0
�
0default_policy/dense_19/bias/m/Initializer/zerosConst*(
_class
loc:@default_policy/bias_4*
_output_shapes	
:�*
dtype0*
valueB�*    
�
default_policy/dense_19/bias/mVarHandleOp*(
_class
loc:@default_policy/bias_4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*/
shared_name default_policy/dense_19/bias/m
�
?default_policy/dense_19/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_19/bias/m*(
_class
loc:@default_policy/bias_4*
_output_shapes
: 
�
%default_policy/dense_19/bias/m/AssignAssignVariableOpdefault_policy/dense_19/bias/m0default_policy/dense_19/bias/m/Initializer/zeros*
dtype0
�
2default_policy/dense_19/bias/m/Read/ReadVariableOpReadVariableOpdefault_policy/dense_19/bias/m*(
_class
loc:@default_policy/bias_4*
_output_shapes	
:�*
dtype0
�
Bdefault_policy/dense_15/kernel/v/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@default_policy/kernel*
_output_shapes
:*
dtype0*
valueB"�  �  
�
8default_policy/dense_15/kernel/v/Initializer/zeros/ConstConst*(
_class
loc:@default_policy/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
2default_policy/dense_15/kernel/v/Initializer/zerosFillBdefault_policy/dense_15/kernel/v/Initializer/zeros/shape_as_tensor8default_policy/dense_15/kernel/v/Initializer/zeros/Const*
T0*(
_class
loc:@default_policy/kernel* 
_output_shapes
:
�	�*

index_type0
�
 default_policy/dense_15/kernel/vVarHandleOp*(
_class
loc:@default_policy/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
�	�*1
shared_name" default_policy/dense_15/kernel/v
�
Adefault_policy/dense_15/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOp default_policy/dense_15/kernel/v*(
_class
loc:@default_policy/kernel*
_output_shapes
: 
�
'default_policy/dense_15/kernel/v/AssignAssignVariableOp default_policy/dense_15/kernel/v2default_policy/dense_15/kernel/v/Initializer/zeros*
dtype0
�
4default_policy/dense_15/kernel/v/Read/ReadVariableOpReadVariableOp default_policy/dense_15/kernel/v*(
_class
loc:@default_policy/kernel* 
_output_shapes
:
�	�*
dtype0
�
0default_policy/dense_15/bias/v/Initializer/zerosConst*&
_class
loc:@default_policy/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
default_policy/dense_15/bias/vVarHandleOp*&
_class
loc:@default_policy/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*/
shared_name default_policy/dense_15/bias/v
�
?default_policy/dense_15/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_15/bias/v*&
_class
loc:@default_policy/bias*
_output_shapes
: 
�
%default_policy/dense_15/bias/v/AssignAssignVariableOpdefault_policy/dense_15/bias/v0default_policy/dense_15/bias/v/Initializer/zeros*
dtype0
�
2default_policy/dense_15/bias/v/Read/ReadVariableOpReadVariableOpdefault_policy/dense_15/bias/v*&
_class
loc:@default_policy/bias*
_output_shapes	
:�*
dtype0
�
Bdefault_policy/dense_16/kernel/v/Initializer/zeros/shape_as_tensorConst**
_class 
loc:@default_policy/kernel_1*
_output_shapes
:*
dtype0*
valueB"�    
�
8default_policy/dense_16/kernel/v/Initializer/zeros/ConstConst**
_class 
loc:@default_policy/kernel_1*
_output_shapes
: *
dtype0*
valueB
 *    
�
2default_policy/dense_16/kernel/v/Initializer/zerosFillBdefault_policy/dense_16/kernel/v/Initializer/zeros/shape_as_tensor8default_policy/dense_16/kernel/v/Initializer/zeros/Const*
T0**
_class 
loc:@default_policy/kernel_1* 
_output_shapes
:
��*

index_type0
�
 default_policy/dense_16/kernel/vVarHandleOp**
_class 
loc:@default_policy/kernel_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*1
shared_name" default_policy/dense_16/kernel/v
�
Adefault_policy/dense_16/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOp default_policy/dense_16/kernel/v**
_class 
loc:@default_policy/kernel_1*
_output_shapes
: 
�
'default_policy/dense_16/kernel/v/AssignAssignVariableOp default_policy/dense_16/kernel/v2default_policy/dense_16/kernel/v/Initializer/zeros*
dtype0
�
4default_policy/dense_16/kernel/v/Read/ReadVariableOpReadVariableOp default_policy/dense_16/kernel/v**
_class 
loc:@default_policy/kernel_1* 
_output_shapes
:
��*
dtype0
�
0default_policy/dense_16/bias/v/Initializer/zerosConst*(
_class
loc:@default_policy/bias_1*
_output_shapes	
:�*
dtype0*
valueB�*    
�
default_policy/dense_16/bias/vVarHandleOp*(
_class
loc:@default_policy/bias_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*/
shared_name default_policy/dense_16/bias/v
�
?default_policy/dense_16/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_16/bias/v*(
_class
loc:@default_policy/bias_1*
_output_shapes
: 
�
%default_policy/dense_16/bias/v/AssignAssignVariableOpdefault_policy/dense_16/bias/v0default_policy/dense_16/bias/v/Initializer/zeros*
dtype0
�
2default_policy/dense_16/bias/v/Read/ReadVariableOpReadVariableOpdefault_policy/dense_16/bias/v*(
_class
loc:@default_policy/bias_1*
_output_shapes	
:�*
dtype0
�
Bdefault_policy/dense_17/kernel/v/Initializer/zeros/shape_as_tensorConst**
_class 
loc:@default_policy/kernel_2*
_output_shapes
:*
dtype0*
valueB"    
�
8default_policy/dense_17/kernel/v/Initializer/zeros/ConstConst**
_class 
loc:@default_policy/kernel_2*
_output_shapes
: *
dtype0*
valueB
 *    
�
2default_policy/dense_17/kernel/v/Initializer/zerosFillBdefault_policy/dense_17/kernel/v/Initializer/zeros/shape_as_tensor8default_policy/dense_17/kernel/v/Initializer/zeros/Const*
T0**
_class 
loc:@default_policy/kernel_2* 
_output_shapes
:
��*

index_type0
�
 default_policy/dense_17/kernel/vVarHandleOp**
_class 
loc:@default_policy/kernel_2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*1
shared_name" default_policy/dense_17/kernel/v
�
Adefault_policy/dense_17/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOp default_policy/dense_17/kernel/v**
_class 
loc:@default_policy/kernel_2*
_output_shapes
: 
�
'default_policy/dense_17/kernel/v/AssignAssignVariableOp default_policy/dense_17/kernel/v2default_policy/dense_17/kernel/v/Initializer/zeros*
dtype0
�
4default_policy/dense_17/kernel/v/Read/ReadVariableOpReadVariableOp default_policy/dense_17/kernel/v**
_class 
loc:@default_policy/kernel_2* 
_output_shapes
:
��*
dtype0
�
@default_policy/dense_17/bias/v/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@default_policy/bias_2*
_output_shapes
:*
dtype0*
valueB:�
�
6default_policy/dense_17/bias/v/Initializer/zeros/ConstConst*(
_class
loc:@default_policy/bias_2*
_output_shapes
: *
dtype0*
valueB
 *    
�
0default_policy/dense_17/bias/v/Initializer/zerosFill@default_policy/dense_17/bias/v/Initializer/zeros/shape_as_tensor6default_policy/dense_17/bias/v/Initializer/zeros/Const*
T0*(
_class
loc:@default_policy/bias_2*
_output_shapes	
:�*

index_type0
�
default_policy/dense_17/bias/vVarHandleOp*(
_class
loc:@default_policy/bias_2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*/
shared_name default_policy/dense_17/bias/v
�
?default_policy/dense_17/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_17/bias/v*(
_class
loc:@default_policy/bias_2*
_output_shapes
: 
�
%default_policy/dense_17/bias/v/AssignAssignVariableOpdefault_policy/dense_17/bias/v0default_policy/dense_17/bias/v/Initializer/zeros*
dtype0
�
2default_policy/dense_17/bias/v/Read/ReadVariableOpReadVariableOpdefault_policy/dense_17/bias/v*(
_class
loc:@default_policy/bias_2*
_output_shapes	
:�*
dtype0
�
Bdefault_policy/dense_18/kernel/v/Initializer/zeros/shape_as_tensorConst**
_class 
loc:@default_policy/kernel_3*
_output_shapes
:*
dtype0*
valueB"  X  
�
8default_policy/dense_18/kernel/v/Initializer/zeros/ConstConst**
_class 
loc:@default_policy/kernel_3*
_output_shapes
: *
dtype0*
valueB
 *    
�
2default_policy/dense_18/kernel/v/Initializer/zerosFillBdefault_policy/dense_18/kernel/v/Initializer/zeros/shape_as_tensor8default_policy/dense_18/kernel/v/Initializer/zeros/Const*
T0**
_class 
loc:@default_policy/kernel_3* 
_output_shapes
:
��*

index_type0
�
 default_policy/dense_18/kernel/vVarHandleOp**
_class 
loc:@default_policy/kernel_3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*1
shared_name" default_policy/dense_18/kernel/v
�
Adefault_policy/dense_18/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOp default_policy/dense_18/kernel/v**
_class 
loc:@default_policy/kernel_3*
_output_shapes
: 
�
'default_policy/dense_18/kernel/v/AssignAssignVariableOp default_policy/dense_18/kernel/v2default_policy/dense_18/kernel/v/Initializer/zeros*
dtype0
�
4default_policy/dense_18/kernel/v/Read/ReadVariableOpReadVariableOp default_policy/dense_18/kernel/v**
_class 
loc:@default_policy/kernel_3* 
_output_shapes
:
��*
dtype0
�
0default_policy/dense_18/bias/v/Initializer/zerosConst*(
_class
loc:@default_policy/bias_3*
_output_shapes	
:�*
dtype0*
valueB�*    
�
default_policy/dense_18/bias/vVarHandleOp*(
_class
loc:@default_policy/bias_3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*/
shared_name default_policy/dense_18/bias/v
�
?default_policy/dense_18/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_18/bias/v*(
_class
loc:@default_policy/bias_3*
_output_shapes
: 
�
%default_policy/dense_18/bias/v/AssignAssignVariableOpdefault_policy/dense_18/bias/v0default_policy/dense_18/bias/v/Initializer/zeros*
dtype0
�
2default_policy/dense_18/bias/v/Read/ReadVariableOpReadVariableOpdefault_policy/dense_18/bias/v*(
_class
loc:@default_policy/bias_3*
_output_shapes	
:�*
dtype0
�
Bdefault_policy/dense_19/kernel/v/Initializer/zeros/shape_as_tensorConst**
_class 
loc:@default_policy/kernel_4*
_output_shapes
:*
dtype0*
valueB"X  �  
�
8default_policy/dense_19/kernel/v/Initializer/zeros/ConstConst**
_class 
loc:@default_policy/kernel_4*
_output_shapes
: *
dtype0*
valueB
 *    
�
2default_policy/dense_19/kernel/v/Initializer/zerosFillBdefault_policy/dense_19/kernel/v/Initializer/zeros/shape_as_tensor8default_policy/dense_19/kernel/v/Initializer/zeros/Const*
T0**
_class 
loc:@default_policy/kernel_4* 
_output_shapes
:
��*

index_type0
�
 default_policy/dense_19/kernel/vVarHandleOp**
_class 
loc:@default_policy/kernel_4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*1
shared_name" default_policy/dense_19/kernel/v
�
Adefault_policy/dense_19/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOp default_policy/dense_19/kernel/v**
_class 
loc:@default_policy/kernel_4*
_output_shapes
: 
�
'default_policy/dense_19/kernel/v/AssignAssignVariableOp default_policy/dense_19/kernel/v2default_policy/dense_19/kernel/v/Initializer/zeros*
dtype0
�
4default_policy/dense_19/kernel/v/Read/ReadVariableOpReadVariableOp default_policy/dense_19/kernel/v**
_class 
loc:@default_policy/kernel_4* 
_output_shapes
:
��*
dtype0
�
0default_policy/dense_19/bias/v/Initializer/zerosConst*(
_class
loc:@default_policy/bias_4*
_output_shapes	
:�*
dtype0*
valueB�*    
�
default_policy/dense_19/bias/vVarHandleOp*(
_class
loc:@default_policy/bias_4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*/
shared_name default_policy/dense_19/bias/v
�
?default_policy/dense_19/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_19/bias/v*(
_class
loc:@default_policy/bias_4*
_output_shapes
: 
�
%default_policy/dense_19/bias/v/AssignAssignVariableOpdefault_policy/dense_19/bias/v0default_policy/dense_19/bias/v/Initializer/zeros*
dtype0
�
2default_policy/dense_19/bias/v/Read/ReadVariableOpReadVariableOpdefault_policy/dense_19/bias/v*(
_class
loc:@default_policy/bias_4*
_output_shapes	
:�*
dtype0
�
default_policy/ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*J
valueAB? B9/share/data1/GYM/junior/paper/n1_topo/variables/variables
�
%default_policy/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
)default_policy/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
�
default_policy/RestoreV2	RestoreV2default_policy/Const%default_policy/RestoreV2/tensor_names)default_policy/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
o
default_policy/IdentityIdentitydefault_policy/RestoreV2"/device:CPU:0*
T0*
_output_shapes
:
�
default_policy/AssignVariableOpAssignVariableOp default_policy/dense_15/kernel/mdefault_policy/Identity"/device:CPU:0*
dtype0
�
'default_policy/RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
+default_policy/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
�
default_policy/RestoreV2_1	RestoreV2default_policy/Const'default_policy/RestoreV2_1/tensor_names+default_policy/RestoreV2_1/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
s
default_policy/Identity_1Identitydefault_policy/RestoreV2_1"/device:CPU:0*
T0*
_output_shapes
:
�
!default_policy/AssignVariableOp_1AssignVariableOp default_policy/dense_15/kernel/vdefault_policy/Identity_1"/device:CPU:0*
dtype0
�
'default_policy/RestoreV2_2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
+default_policy/RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
�
default_policy/RestoreV2_2	RestoreV2default_policy/Const'default_policy/RestoreV2_2/tensor_names+default_policy/RestoreV2_2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
s
default_policy/Identity_2Identitydefault_policy/RestoreV2_2"/device:CPU:0*
T0*
_output_shapes
:
�
!default_policy/AssignVariableOp_2AssignVariableOpdefault_policy/dense_15/bias/mdefault_policy/Identity_2"/device:CPU:0*
dtype0
�
'default_policy/RestoreV2_3/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
+default_policy/RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
�
default_policy/RestoreV2_3	RestoreV2default_policy/Const'default_policy/RestoreV2_3/tensor_names+default_policy/RestoreV2_3/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
s
default_policy/Identity_3Identitydefault_policy/RestoreV2_3"/device:CPU:0*
T0*
_output_shapes
:
�
!default_policy/AssignVariableOp_3AssignVariableOpdefault_policy/dense_15/bias/vdefault_policy/Identity_3"/device:CPU:0*
dtype0
�
'default_policy/RestoreV2_4/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
+default_policy/RestoreV2_4/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
�
default_policy/RestoreV2_4	RestoreV2default_policy/Const'default_policy/RestoreV2_4/tensor_names+default_policy/RestoreV2_4/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
s
default_policy/Identity_4Identitydefault_policy/RestoreV2_4"/device:CPU:0*
T0*
_output_shapes
:
�
!default_policy/AssignVariableOp_4AssignVariableOp default_policy/dense_16/kernel/mdefault_policy/Identity_4"/device:CPU:0*
dtype0
�
'default_policy/RestoreV2_5/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
+default_policy/RestoreV2_5/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
�
default_policy/RestoreV2_5	RestoreV2default_policy/Const'default_policy/RestoreV2_5/tensor_names+default_policy/RestoreV2_5/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
s
default_policy/Identity_5Identitydefault_policy/RestoreV2_5"/device:CPU:0*
T0*
_output_shapes
:
�
!default_policy/AssignVariableOp_5AssignVariableOp default_policy/dense_16/kernel/vdefault_policy/Identity_5"/device:CPU:0*
dtype0
�
'default_policy/RestoreV2_6/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
+default_policy/RestoreV2_6/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
�
default_policy/RestoreV2_6	RestoreV2default_policy/Const'default_policy/RestoreV2_6/tensor_names+default_policy/RestoreV2_6/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
s
default_policy/Identity_6Identitydefault_policy/RestoreV2_6"/device:CPU:0*
T0*
_output_shapes
:
�
!default_policy/AssignVariableOp_6AssignVariableOpdefault_policy/dense_16/bias/mdefault_policy/Identity_6"/device:CPU:0*
dtype0
�
'default_policy/RestoreV2_7/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
+default_policy/RestoreV2_7/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
�
default_policy/RestoreV2_7	RestoreV2default_policy/Const'default_policy/RestoreV2_7/tensor_names+default_policy/RestoreV2_7/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
s
default_policy/Identity_7Identitydefault_policy/RestoreV2_7"/device:CPU:0*
T0*
_output_shapes
:
�
!default_policy/AssignVariableOp_7AssignVariableOpdefault_policy/dense_16/bias/vdefault_policy/Identity_7"/device:CPU:0*
dtype0
�
'default_policy/RestoreV2_8/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
+default_policy/RestoreV2_8/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
�
default_policy/RestoreV2_8	RestoreV2default_policy/Const'default_policy/RestoreV2_8/tensor_names+default_policy/RestoreV2_8/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
s
default_policy/Identity_8Identitydefault_policy/RestoreV2_8"/device:CPU:0*
T0*
_output_shapes
:
�
!default_policy/AssignVariableOp_8AssignVariableOp default_policy/dense_17/kernel/mdefault_policy/Identity_8"/device:CPU:0*
dtype0
�
'default_policy/RestoreV2_9/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
+default_policy/RestoreV2_9/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
�
default_policy/RestoreV2_9	RestoreV2default_policy/Const'default_policy/RestoreV2_9/tensor_names+default_policy/RestoreV2_9/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
s
default_policy/Identity_9Identitydefault_policy/RestoreV2_9"/device:CPU:0*
T0*
_output_shapes
:
�
!default_policy/AssignVariableOp_9AssignVariableOp default_policy/dense_17/kernel/vdefault_policy/Identity_9"/device:CPU:0*
dtype0
�
(default_policy/RestoreV2_10/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
,default_policy/RestoreV2_10/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
�
default_policy/RestoreV2_10	RestoreV2default_policy/Const(default_policy/RestoreV2_10/tensor_names,default_policy/RestoreV2_10/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
u
default_policy/Identity_10Identitydefault_policy/RestoreV2_10"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_10AssignVariableOpdefault_policy/dense_17/bias/mdefault_policy/Identity_10"/device:CPU:0*
dtype0
�
(default_policy/RestoreV2_11/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
,default_policy/RestoreV2_11/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
�
default_policy/RestoreV2_11	RestoreV2default_policy/Const(default_policy/RestoreV2_11/tensor_names,default_policy/RestoreV2_11/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
u
default_policy/Identity_11Identitydefault_policy/RestoreV2_11"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_11AssignVariableOpdefault_policy/dense_17/bias/vdefault_policy/Identity_11"/device:CPU:0*
dtype0
�
(default_policy/RestoreV2_12/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
,default_policy/RestoreV2_12/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
�
default_policy/RestoreV2_12	RestoreV2default_policy/Const(default_policy/RestoreV2_12/tensor_names,default_policy/RestoreV2_12/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
u
default_policy/Identity_12Identitydefault_policy/RestoreV2_12"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_12AssignVariableOp default_policy/dense_18/kernel/mdefault_policy/Identity_12"/device:CPU:0*
dtype0
�
(default_policy/RestoreV2_13/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
,default_policy/RestoreV2_13/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
�
default_policy/RestoreV2_13	RestoreV2default_policy/Const(default_policy/RestoreV2_13/tensor_names,default_policy/RestoreV2_13/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
u
default_policy/Identity_13Identitydefault_policy/RestoreV2_13"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_13AssignVariableOp default_policy/dense_18/kernel/vdefault_policy/Identity_13"/device:CPU:0*
dtype0
�
(default_policy/RestoreV2_14/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
,default_policy/RestoreV2_14/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
�
default_policy/RestoreV2_14	RestoreV2default_policy/Const(default_policy/RestoreV2_14/tensor_names,default_policy/RestoreV2_14/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
u
default_policy/Identity_14Identitydefault_policy/RestoreV2_14"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_14AssignVariableOpdefault_policy/dense_18/bias/mdefault_policy/Identity_14"/device:CPU:0*
dtype0
�
(default_policy/RestoreV2_15/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
,default_policy/RestoreV2_15/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
�
default_policy/RestoreV2_15	RestoreV2default_policy/Const(default_policy/RestoreV2_15/tensor_names,default_policy/RestoreV2_15/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
u
default_policy/Identity_15Identitydefault_policy/RestoreV2_15"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_15AssignVariableOpdefault_policy/dense_18/bias/vdefault_policy/Identity_15"/device:CPU:0*
dtype0
�
(default_policy/RestoreV2_16/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
,default_policy/RestoreV2_16/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
�
default_policy/RestoreV2_16	RestoreV2default_policy/Const(default_policy/RestoreV2_16/tensor_names,default_policy/RestoreV2_16/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
u
default_policy/Identity_16Identitydefault_policy/RestoreV2_16"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_16AssignVariableOp default_policy/dense_19/kernel/mdefault_policy/Identity_16"/device:CPU:0*
dtype0
�
(default_policy/RestoreV2_17/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
,default_policy/RestoreV2_17/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
�
default_policy/RestoreV2_17	RestoreV2default_policy/Const(default_policy/RestoreV2_17/tensor_names,default_policy/RestoreV2_17/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
u
default_policy/Identity_17Identitydefault_policy/RestoreV2_17"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_17AssignVariableOp default_policy/dense_19/kernel/vdefault_policy/Identity_17"/device:CPU:0*
dtype0
�
(default_policy/RestoreV2_18/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
,default_policy/RestoreV2_18/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
�
default_policy/RestoreV2_18	RestoreV2default_policy/Const(default_policy/RestoreV2_18/tensor_names,default_policy/RestoreV2_18/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
u
default_policy/Identity_18Identitydefault_policy/RestoreV2_18"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_18AssignVariableOpdefault_policy/dense_19/bias/mdefault_policy/Identity_18"/device:CPU:0*
dtype0
�
(default_policy/RestoreV2_19/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
,default_policy/RestoreV2_19/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
�
default_policy/RestoreV2_19	RestoreV2default_policy/Const(default_policy/RestoreV2_19/tensor_names,default_policy/RestoreV2_19/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
u
default_policy/Identity_19Identitydefault_policy/RestoreV2_19"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_19AssignVariableOpdefault_policy/dense_19/bias/vdefault_policy/Identity_19"/device:CPU:0*
dtype0
�
(default_policy/RestoreV2_20/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
�
,default_policy/RestoreV2_20/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B 
�
default_policy/RestoreV2_20	RestoreV2default_policy/Const(default_policy/RestoreV2_20/tensor_names,default_policy/RestoreV2_20/shape_and_slices"/device:CPU:0*`
_output_shapesN
L:::::::::::::::::::*!
dtypes
2	
u
default_policy/Identity_20Identitydefault_policy/RestoreV2_20"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_20AssignVariableOpdefault_policy/countdefault_policy/Identity_20"/device:CPU:0*
dtype0
w
default_policy/Identity_21Identitydefault_policy/RestoreV2_20:1"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_21AssignVariableOpdefault_policy/totaldefault_policy/Identity_21"/device:CPU:0*
dtype0
w
default_policy/Identity_22Identitydefault_policy/RestoreV2_20:2"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_22AssignVariableOpdefault_policy/count_1default_policy/Identity_22"/device:CPU:0*
dtype0
w
default_policy/Identity_23Identitydefault_policy/RestoreV2_20:3"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_23AssignVariableOpdefault_policy/total_1default_policy/Identity_23"/device:CPU:0*
dtype0
w
default_policy/Identity_24Identitydefault_policy/RestoreV2_20:4"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_24AssignVariableOpdefault_policy/biasdefault_policy/Identity_24"/device:CPU:0*
dtype0
w
default_policy/Identity_25Identitydefault_policy/RestoreV2_20:5"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_25AssignVariableOpdefault_policy/kerneldefault_policy/Identity_25"/device:CPU:0*
dtype0
w
default_policy/Identity_26Identitydefault_policy/RestoreV2_20:6"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_26AssignVariableOpdefault_policy/bias_1default_policy/Identity_26"/device:CPU:0*
dtype0
w
default_policy/Identity_27Identitydefault_policy/RestoreV2_20:7"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_27AssignVariableOpdefault_policy/kernel_1default_policy/Identity_27"/device:CPU:0*
dtype0
w
default_policy/Identity_28Identitydefault_policy/RestoreV2_20:8"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_28AssignVariableOpdefault_policy/bias_2default_policy/Identity_28"/device:CPU:0*
dtype0
w
default_policy/Identity_29Identitydefault_policy/RestoreV2_20:9"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_29AssignVariableOpdefault_policy/kernel_2default_policy/Identity_29"/device:CPU:0*
dtype0
x
default_policy/Identity_30Identitydefault_policy/RestoreV2_20:10"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_30AssignVariableOpdefault_policy/bias_3default_policy/Identity_30"/device:CPU:0*
dtype0
x
default_policy/Identity_31Identitydefault_policy/RestoreV2_20:11"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_31AssignVariableOpdefault_policy/kernel_3default_policy/Identity_31"/device:CPU:0*
dtype0
x
default_policy/Identity_32Identitydefault_policy/RestoreV2_20:12"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_32AssignVariableOpdefault_policy/bias_4default_policy/Identity_32"/device:CPU:0*
dtype0
x
default_policy/Identity_33Identitydefault_policy/RestoreV2_20:13"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_33AssignVariableOpdefault_policy/kernel_4default_policy/Identity_33"/device:CPU:0*
dtype0
x
default_policy/Identity_34Identitydefault_policy/RestoreV2_20:14"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_34AssignVariableOpdefault_policy/Adam/beta_1default_policy/Identity_34"/device:CPU:0*
dtype0
x
default_policy/Identity_35Identitydefault_policy/RestoreV2_20:15"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_35AssignVariableOpdefault_policy/Adam/beta_2default_policy/Identity_35"/device:CPU:0*
dtype0
x
default_policy/Identity_36Identitydefault_policy/RestoreV2_20:16"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_36AssignVariableOpdefault_policy/Adam/decaydefault_policy/Identity_36"/device:CPU:0*
dtype0
x
default_policy/Identity_37Identitydefault_policy/RestoreV2_20:17"/device:CPU:0*
T0	*
_output_shapes
:
�
"default_policy/AssignVariableOp_37AssignVariableOpdefault_policy/Adam/iterdefault_policy/Identity_37"/device:CPU:0*
dtype0	
x
default_policy/Identity_38Identitydefault_policy/RestoreV2_20:18"/device:CPU:0*
T0*
_output_shapes
:
�
"default_policy/AssignVariableOp_38AssignVariableOp!default_policy/Adam/learning_ratedefault_policy/Identity_38"/device:CPU:0*
dtype0
�
default_policy/dense_15_inputPlaceholder*(
_output_shapes
:����������	*
dtype0*
shape:����������	
�
-default_policy/dense_15/MatMul/ReadVariableOpReadVariableOpdefault_policy/kernel* 
_output_shapes
:
�	�*
dtype0
�
default_policy/dense_15/MatMulMatMuldefault_policy/dense_15_input-default_policy/dense_15/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 

.default_policy/dense_15/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/bias*
_output_shapes	
:�*
dtype0
�
default_policy/dense_15/BiasAddBiasAdddefault_policy/dense_15/MatMul.default_policy/dense_15/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:����������*
data_formatNHWC
�
$default_policy/dense_15/re_lu_3/ReluReludefault_policy/dense_15/BiasAdd*
T0*(
_output_shapes
:����������
�
-default_policy/dense_16/MatMul/ReadVariableOpReadVariableOpdefault_policy/kernel_1* 
_output_shapes
:
��*
dtype0
�
default_policy/dense_16/MatMulMatMul$default_policy/dense_15/re_lu_3/Relu-default_policy/dense_16/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
.default_policy/dense_16/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/bias_1*
_output_shapes	
:�*
dtype0
�
default_policy/dense_16/BiasAddBiasAdddefault_policy/dense_16/MatMul.default_policy/dense_16/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:����������*
data_formatNHWC
�
$default_policy/dense_16/re_lu_3/ReluReludefault_policy/dense_16/BiasAdd*
T0*(
_output_shapes
:����������
�
-default_policy/dense_17/MatMul/ReadVariableOpReadVariableOpdefault_policy/kernel_2* 
_output_shapes
:
��*
dtype0
�
default_policy/dense_17/MatMulMatMul$default_policy/dense_16/re_lu_3/Relu-default_policy/dense_17/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
.default_policy/dense_17/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/bias_2*
_output_shapes	
:�*
dtype0
�
default_policy/dense_17/BiasAddBiasAdddefault_policy/dense_17/MatMul.default_policy/dense_17/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:����������*
data_formatNHWC
�
$default_policy/dense_17/re_lu_3/ReluReludefault_policy/dense_17/BiasAdd*
T0*(
_output_shapes
:����������
\
keras_learning_phase/inputConst*
_output_shapes
: *
dtype0
*
value	B
 Z 
|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
_output_shapes
: *
dtype0
*
shape: 
}
$default_policy/dropout_6/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
{
&default_policy/dropout_6/cond/switch_tIdentity&default_policy/dropout_6/cond/Switch:1*
T0
*
_output_shapes
: 
y
&default_policy/dropout_6/cond/switch_fIdentity$default_policy/dropout_6/cond/Switch*
T0
*
_output_shapes
: 
h
%default_policy/dropout_6/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
�
+default_policy/dropout_6/cond/dropout/ConstConst'^default_policy/dropout_6/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *��?
�
)default_policy/dropout_6/cond/dropout/MulMul2default_policy/dropout_6/cond/dropout/Mul/Switch:1+default_policy/dropout_6/cond/dropout/Const*
T0*(
_output_shapes
:����������
�
0default_policy/dropout_6/cond/dropout/Mul/SwitchSwitch$default_policy/dense_17/re_lu_3/Relu%default_policy/dropout_6/cond/pred_id*
T0*7
_class-
+)loc:@default_policy/dense_17/re_lu_3/Relu*<
_output_shapes*
(:����������:����������
�
+default_policy/dropout_6/cond/dropout/ShapeShape2default_policy/dropout_6/cond/dropout/Mul/Switch:1*
T0*
_output_shapes
:*
out_type0
�
Bdefault_policy/dropout_6/cond/dropout/random_uniform/RandomUniformRandomUniform+default_policy/dropout_6/cond/dropout/Shape*
T0*(
_output_shapes
:����������*
dtype0*

seed *
seed2 
�
4default_policy/dropout_6/cond/dropout/GreaterEqual/yConst'^default_policy/dropout_6/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *�@!>
�
2default_policy/dropout_6/cond/dropout/GreaterEqualGreaterEqualBdefault_policy/dropout_6/cond/dropout/random_uniform/RandomUniform4default_policy/dropout_6/cond/dropout/GreaterEqual/y*
T0*(
_output_shapes
:����������
�
*default_policy/dropout_6/cond/dropout/CastCast2default_policy/dropout_6/cond/dropout/GreaterEqual*

DstT0*

SrcT0
*
Truncate( *(
_output_shapes
:����������
�
+default_policy/dropout_6/cond/dropout/Mul_1Mul)default_policy/dropout_6/cond/dropout/Mul*default_policy/dropout_6/cond/dropout/Cast*
T0*(
_output_shapes
:����������
�
&default_policy/dropout_6/cond/IdentityIdentity-default_policy/dropout_6/cond/Identity/Switch*
T0*(
_output_shapes
:����������
�
-default_policy/dropout_6/cond/Identity/SwitchSwitch$default_policy/dense_17/re_lu_3/Relu%default_policy/dropout_6/cond/pred_id*
T0*7
_class-
+)loc:@default_policy/dense_17/re_lu_3/Relu*<
_output_shapes*
(:����������:����������
�
#default_policy/dropout_6/cond/MergeMerge&default_policy/dropout_6/cond/Identity+default_policy/dropout_6/cond/dropout/Mul_1*
N*
T0**
_output_shapes
:����������: 
�
-default_policy/dense_18/MatMul/ReadVariableOpReadVariableOpdefault_policy/kernel_3* 
_output_shapes
:
��*
dtype0
�
default_policy/dense_18/MatMulMatMul#default_policy/dropout_6/cond/Merge-default_policy/dense_18/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
.default_policy/dense_18/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/bias_3*
_output_shapes	
:�*
dtype0
�
default_policy/dense_18/BiasAddBiasAdddefault_policy/dense_18/MatMul.default_policy/dense_18/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:����������*
data_formatNHWC
�
$default_policy/dense_18/re_lu_3/ReluReludefault_policy/dense_18/BiasAdd*
T0*(
_output_shapes
:����������
}
$default_policy/dropout_7/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
{
&default_policy/dropout_7/cond/switch_tIdentity&default_policy/dropout_7/cond/Switch:1*
T0
*
_output_shapes
: 
y
&default_policy/dropout_7/cond/switch_fIdentity$default_policy/dropout_7/cond/Switch*
T0
*
_output_shapes
: 
h
%default_policy/dropout_7/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
�
+default_policy/dropout_7/cond/dropout/ConstConst'^default_policy/dropout_7/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *��?
�
)default_policy/dropout_7/cond/dropout/MulMul2default_policy/dropout_7/cond/dropout/Mul/Switch:1+default_policy/dropout_7/cond/dropout/Const*
T0*(
_output_shapes
:����������
�
0default_policy/dropout_7/cond/dropout/Mul/SwitchSwitch$default_policy/dense_18/re_lu_3/Relu%default_policy/dropout_7/cond/pred_id*
T0*7
_class-
+)loc:@default_policy/dense_18/re_lu_3/Relu*<
_output_shapes*
(:����������:����������
�
+default_policy/dropout_7/cond/dropout/ShapeShape2default_policy/dropout_7/cond/dropout/Mul/Switch:1*
T0*
_output_shapes
:*
out_type0
�
Bdefault_policy/dropout_7/cond/dropout/random_uniform/RandomUniformRandomUniform+default_policy/dropout_7/cond/dropout/Shape*
T0*(
_output_shapes
:����������*
dtype0*

seed *
seed2 
�
4default_policy/dropout_7/cond/dropout/GreaterEqual/yConst'^default_policy/dropout_7/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *�^�>
�
2default_policy/dropout_7/cond/dropout/GreaterEqualGreaterEqualBdefault_policy/dropout_7/cond/dropout/random_uniform/RandomUniform4default_policy/dropout_7/cond/dropout/GreaterEqual/y*
T0*(
_output_shapes
:����������
�
*default_policy/dropout_7/cond/dropout/CastCast2default_policy/dropout_7/cond/dropout/GreaterEqual*

DstT0*

SrcT0
*
Truncate( *(
_output_shapes
:����������
�
+default_policy/dropout_7/cond/dropout/Mul_1Mul)default_policy/dropout_7/cond/dropout/Mul*default_policy/dropout_7/cond/dropout/Cast*
T0*(
_output_shapes
:����������
�
&default_policy/dropout_7/cond/IdentityIdentity-default_policy/dropout_7/cond/Identity/Switch*
T0*(
_output_shapes
:����������
�
-default_policy/dropout_7/cond/Identity/SwitchSwitch$default_policy/dense_18/re_lu_3/Relu%default_policy/dropout_7/cond/pred_id*
T0*7
_class-
+)loc:@default_policy/dense_18/re_lu_3/Relu*<
_output_shapes*
(:����������:����������
�
#default_policy/dropout_7/cond/MergeMerge&default_policy/dropout_7/cond/Identity+default_policy/dropout_7/cond/dropout/Mul_1*
N*
T0**
_output_shapes
:����������: 
�
-default_policy/dense_19/MatMul/ReadVariableOpReadVariableOpdefault_policy/kernel_4* 
_output_shapes
:
��*
dtype0
�
default_policy/dense_19/MatMulMatMul#default_policy/dropout_7/cond/Merge-default_policy/dense_19/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
.default_policy/dense_19/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/bias_4*
_output_shapes	
:�*
dtype0
�
default_policy/dense_19/BiasAddBiasAdddefault_policy/dense_19/MatMul.default_policy/dense_19/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:����������*
data_formatNHWC
~
default_policy/dense_19/SoftmaxSoftmaxdefault_policy/dense_19/BiasAdd*
T0*(
_output_shapes
:����������
�
(default_policy/total_2/Initializer/zerosConst*)
_class
loc:@default_policy/total_2*
_output_shapes
: *
dtype0*
valueB
 *    
�
default_policy/total_2VarHandleOp*)
_class
loc:@default_policy/total_2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *'
shared_namedefault_policy/total_2
}
7default_policy/total_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/total_2*
_output_shapes
: 
�
default_policy/total_2/AssignAssignVariableOpdefault_policy/total_2(default_policy/total_2/Initializer/zeros*
dtype0
y
*default_policy/total_2/Read/ReadVariableOpReadVariableOpdefault_policy/total_2*
_output_shapes
: *
dtype0
�
(default_policy/count_2/Initializer/zerosConst*)
_class
loc:@default_policy/count_2*
_output_shapes
: *
dtype0*
valueB
 *    
�
default_policy/count_2VarHandleOp*)
_class
loc:@default_policy/count_2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *'
shared_namedefault_policy/count_2
}
7default_policy/count_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/count_2*
_output_shapes
: 
�
default_policy/count_2/AssignAssignVariableOpdefault_policy/count_2(default_policy/count_2/Initializer/zeros*
dtype0
y
*default_policy/count_2/Read/ReadVariableOpReadVariableOpdefault_policy/count_2*
_output_shapes
: *
dtype0
�
default_policy/dense_19_targetPlaceholder*0
_output_shapes
:������������������*
dtype0*%
shape:������������������
�
'default_policy/metrics/accuracy/SqueezeSqueezedefault_policy/dense_19_target*
T0*#
_output_shapes
:���������*
squeeze_dims

���������
{
0default_policy/metrics/accuracy/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
&default_policy/metrics/accuracy/ArgMaxArgMaxdefault_policy/dense_19/Softmax0default_policy/metrics/accuracy/ArgMax/dimension*
T0*

Tidx0*#
_output_shapes
:���������*
output_type0	
�
$default_policy/metrics/accuracy/CastCast&default_policy/metrics/accuracy/ArgMax*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:���������
�
%default_policy/metrics/accuracy/EqualEqual'default_policy/metrics/accuracy/Squeeze$default_policy/metrics/accuracy/Cast*
T0*#
_output_shapes
:���������*
incompatible_shape_error(
�
&default_policy/metrics/accuracy/Cast_1Cast%default_policy/metrics/accuracy/Equal*

DstT0*

SrcT0
*
Truncate( *#
_output_shapes
:���������
o
%default_policy/metrics/accuracy/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
�
#default_policy/metrics/accuracy/SumSum&default_policy/metrics/accuracy/Cast_1%default_policy/metrics/accuracy/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
3default_policy/metrics/accuracy/AssignAddVariableOpAssignAddVariableOpdefault_policy/total_2#default_policy/metrics/accuracy/Sum*
dtype0
�
.default_policy/metrics/accuracy/ReadVariableOpReadVariableOpdefault_policy/total_24^default_policy/metrics/accuracy/AssignAddVariableOp$^default_policy/metrics/accuracy/Sum*
_output_shapes
: *
dtype0
�
$default_policy/metrics/accuracy/SizeSize&default_policy/metrics/accuracy/Cast_1*
T0*
_output_shapes
: *
out_type0
�
&default_policy/metrics/accuracy/Cast_2Cast$default_policy/metrics/accuracy/Size*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
�
5default_policy/metrics/accuracy/AssignAddVariableOp_1AssignAddVariableOpdefault_policy/count_2&default_policy/metrics/accuracy/Cast_24^default_policy/metrics/accuracy/AssignAddVariableOp*
dtype0
�
0default_policy/metrics/accuracy/ReadVariableOp_1ReadVariableOpdefault_policy/count_24^default_policy/metrics/accuracy/AssignAddVariableOp6^default_policy/metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
�
9default_policy/metrics/accuracy/div_no_nan/ReadVariableOpReadVariableOpdefault_policy/total_26^default_policy/metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
�
;default_policy/metrics/accuracy/div_no_nan/ReadVariableOp_1ReadVariableOpdefault_policy/count_26^default_policy/metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
�
*default_policy/metrics/accuracy/div_no_nanDivNoNan9default_policy/metrics/accuracy/div_no_nan/ReadVariableOp;default_policy/metrics/accuracy/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
�
(default_policy/metrics/accuracy/IdentityIdentity*default_policy/metrics/accuracy/div_no_nan*
T0*
_output_shapes
: 
�
&default_policy/loss/dense_19_loss/CastCastdefault_policy/dense_19_target*

DstT0	*

SrcT0*
Truncate( *0
_output_shapes
:������������������
�
'default_policy/loss/dense_19_loss/ShapeShapedefault_policy/dense_19/BiasAdd*
T0*
_output_shapes
:*
out_type0
�
/default_policy/loss/dense_19_loss/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������
�
)default_policy/loss/dense_19_loss/ReshapeReshape&default_policy/loss/dense_19_loss/Cast/default_policy/loss/dense_19_loss/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:���������
�
5default_policy/loss/dense_19_loss/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������
�
7default_policy/loss/dense_19_loss/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
�
7default_policy/loss/dense_19_loss/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
/default_policy/loss/dense_19_loss/strided_sliceStridedSlice'default_policy/loss/dense_19_loss/Shape5default_policy/loss/dense_19_loss/strided_slice/stack7default_policy/loss/dense_19_loss/strided_slice/stack_17default_policy/loss/dense_19_loss/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
~
3default_policy/loss/dense_19_loss/Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
���������
�
1default_policy/loss/dense_19_loss/Reshape_1/shapePack3default_policy/loss/dense_19_loss/Reshape_1/shape/0/default_policy/loss/dense_19_loss/strided_slice*
N*
T0*
_output_shapes
:*

axis 
�
+default_policy/loss/dense_19_loss/Reshape_1Reshapedefault_policy/dense_19/BiasAdd1default_policy/loss/dense_19_loss/Reshape_1/shape*
T0*
Tshape0*(
_output_shapes
:����������
�
Kdefault_policy/loss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShape)default_policy/loss/dense_19_loss/Reshape*
T0	*
_output_shapes
:*
out_type0
�
idefault_policy/loss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits+default_policy/loss/dense_19_loss/Reshape_1)default_policy/loss/dense_19_loss/Reshape*
T0*
Tlabels0	*7
_output_shapes%
#:���������:����������
z
5default_policy/loss/dense_19_loss/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
3default_policy/loss/dense_19_loss/weighted_loss/MulMulidefault_policy/loss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits5default_policy/loss/dense_19_loss/weighted_loss/Const*
T0*#
_output_shapes
:���������
q
'default_policy/loss/dense_19_loss/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
�
%default_policy/loss/dense_19_loss/SumSum3default_policy/loss/dense_19_loss/weighted_loss/Mul'default_policy/loss/dense_19_loss/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
.default_policy/loss/dense_19_loss/num_elementsSize3default_policy/loss/dense_19_loss/weighted_loss/Mul*
T0*
_output_shapes
: *
out_type0
�
3default_policy/loss/dense_19_loss/num_elements/CastCast.default_policy/loss/dense_19_loss/num_elements*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
h
&default_policy/loss/dense_19_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : 
o
-default_policy/loss/dense_19_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
o
-default_policy/loss/dense_19_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
�
'default_policy/loss/dense_19_loss/rangeRange-default_policy/loss/dense_19_loss/range/start&default_policy/loss/dense_19_loss/Rank-default_policy/loss/dense_19_loss/range/delta*

Tidx0*
_output_shapes
: 
�
'default_policy/loss/dense_19_loss/Sum_1Sum%default_policy/loss/dense_19_loss/Sum'default_policy/loss/dense_19_loss/range*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
'default_policy/loss/dense_19_loss/valueDivNoNan'default_policy/loss/dense_19_loss/Sum_13default_policy/loss/dense_19_loss/num_elements/Cast*
T0*
_output_shapes
: 
^
default_policy/loss/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
default_policy/loss/mulMuldefault_policy/loss/mul/x'default_policy/loss/dense_19_loss/value*
T0*
_output_shapes
: 
e
!default_policy/VarIsInitializedOpVarIsInitializedOpdefault_policy/count*
_output_shapes
: 
q
#default_policy/VarIsInitializedOp_1VarIsInitializedOpdefault_policy/dense_15/bias/m*
_output_shapes
: 
s
#default_policy/VarIsInitializedOp_2VarIsInitializedOp default_policy/dense_16/kernel/v*
_output_shapes
: 
q
#default_policy/VarIsInitializedOp_3VarIsInitializedOpdefault_policy/dense_19/bias/v*
_output_shapes
: 
p
#default_policy/VarIsInitializedOp_4VarIsInitializedOpdefault_policy/value_out/bias*
_output_shapes
: 
j
#default_policy/VarIsInitializedOp_5VarIsInitializedOpdefault_policy/kernel_3*
_output_shapes
: 
j
#default_policy/VarIsInitializedOp_6VarIsInitializedOpdefault_policy/kernel_4*
_output_shapes
: 
i
#default_policy/VarIsInitializedOp_7VarIsInitializedOpdefault_policy/count_1*
_output_shapes
: 
s
#default_policy/VarIsInitializedOp_8VarIsInitializedOp default_policy/dense_17/kernel/m*
_output_shapes
: 
s
#default_policy/VarIsInitializedOp_9VarIsInitializedOp default_policy/dense_15/kernel/v*
_output_shapes
: 
j
$default_policy/VarIsInitializedOp_10VarIsInitializedOpdefault_policy/count_2*
_output_shapes
: 
q
$default_policy/VarIsInitializedOp_11VarIsInitializedOpdefault_policy/layer_3/kernel*
_output_shapes
: 
o
$default_policy/VarIsInitializedOp_12VarIsInitializedOpdefault_policy/layer_2/bias*
_output_shapes
: 
x
$default_policy/VarIsInitializedOp_13VarIsInitializedOp$default_policy/layer_val_hidden/bias*
_output_shapes
: 
k
$default_policy/VarIsInitializedOp_14VarIsInitializedOpdefault_policy/kernel_1*
_output_shapes
: 
g
$default_policy/VarIsInitializedOp_15VarIsInitializedOpdefault_policy/bias*
_output_shapes
: 
i
$default_policy/VarIsInitializedOp_16VarIsInitializedOpdefault_policy/bias_2*
_output_shapes
: 
h
$default_policy/VarIsInitializedOp_17VarIsInitializedOpdefault_policy/total*
_output_shapes
: 
r
$default_policy/VarIsInitializedOp_18VarIsInitializedOpdefault_policy/dense_16/bias/m*
_output_shapes
: 
r
$default_policy/VarIsInitializedOp_19VarIsInitializedOpdefault_policy/dense_18/bias/m*
_output_shapes
: 
r
$default_policy/VarIsInitializedOp_20VarIsInitializedOpdefault_policy/action_out/bias*
_output_shapes
: 
j
$default_policy/VarIsInitializedOp_21VarIsInitializedOpdefault_policy/total_1*
_output_shapes
: 
t
$default_policy/VarIsInitializedOp_22VarIsInitializedOp default_policy/dense_15/kernel/m*
_output_shapes
: 
t
$default_policy/VarIsInitializedOp_23VarIsInitializedOp default_policy/dense_16/kernel/m*
_output_shapes
: 
r
$default_policy/VarIsInitializedOp_24VarIsInitializedOpdefault_policy/dense_16/bias/v*
_output_shapes
: 
r
$default_policy/VarIsInitializedOp_25VarIsInitializedOpdefault_policy/dense_17/bias/v*
_output_shapes
: 
o
$default_policy/VarIsInitializedOp_26VarIsInitializedOpdefault_policy/layer_4/bias*
_output_shapes
: 
t
$default_policy/VarIsInitializedOp_27VarIsInitializedOp default_policy/action_out/kernel*
_output_shapes
: 
s
$default_policy/VarIsInitializedOp_28VarIsInitializedOpdefault_policy/value_out/kernel*
_output_shapes
: 
k
$default_policy/VarIsInitializedOp_29VarIsInitializedOpdefault_policy/kernel_2*
_output_shapes
: 
r
$default_policy/VarIsInitializedOp_30VarIsInitializedOpdefault_policy/dense_17/bias/m*
_output_shapes
: 
t
$default_policy/VarIsInitializedOp_31VarIsInitializedOp default_policy/dense_18/kernel/v*
_output_shapes
: 
q
$default_policy/VarIsInitializedOp_32VarIsInitializedOpdefault_policy/layer_1/kernel*
_output_shapes
: 
t
$default_policy/VarIsInitializedOp_33VarIsInitializedOp default_policy/dense_18/kernel/m*
_output_shapes
: 
t
$default_policy/VarIsInitializedOp_34VarIsInitializedOp default_policy/dense_19/kernel/m*
_output_shapes
: 
r
$default_policy/VarIsInitializedOp_35VarIsInitializedOpdefault_policy/dense_19/bias/m*
_output_shapes
: 
t
$default_policy/VarIsInitializedOp_36VarIsInitializedOp default_policy/dense_19/kernel/v*
_output_shapes
: 
j
$default_policy/VarIsInitializedOp_37VarIsInitializedOpdefault_policy/total_2*
_output_shapes
: 
q
$default_policy/VarIsInitializedOp_38VarIsInitializedOpdefault_policy/layer_2/kernel*
_output_shapes
: 
o
$default_policy/VarIsInitializedOp_39VarIsInitializedOpdefault_policy/layer_1/bias*
_output_shapes
: 
z
$default_policy/VarIsInitializedOp_40VarIsInitializedOp&default_policy/layer_val_hidden/kernel*
_output_shapes
: 
i
$default_policy/VarIsInitializedOp_41VarIsInitializedOpdefault_policy/kernel*
_output_shapes
: 
o
$default_policy/VarIsInitializedOp_42VarIsInitializedOpdefault_policy/layer_3/bias*
_output_shapes
: 
q
$default_policy/VarIsInitializedOp_43VarIsInitializedOpdefault_policy/layer_4/kernel*
_output_shapes
: 
i
$default_policy/VarIsInitializedOp_44VarIsInitializedOpdefault_policy/bias_1*
_output_shapes
: 
i
$default_policy/VarIsInitializedOp_45VarIsInitializedOpdefault_policy/bias_3*
_output_shapes
: 
i
$default_policy/VarIsInitializedOp_46VarIsInitializedOpdefault_policy/bias_4*
_output_shapes
: 
r
$default_policy/VarIsInitializedOp_47VarIsInitializedOpdefault_policy/dense_15/bias/v*
_output_shapes
: 
t
$default_policy/VarIsInitializedOp_48VarIsInitializedOp default_policy/dense_17/kernel/v*
_output_shapes
: 
r
$default_policy/VarIsInitializedOp_49VarIsInitializedOpdefault_policy/dense_18/bias/v*
_output_shapes
: 
�
default_policy/init/NoOpNoOp&^default_policy/action_out/bias/Assign(^default_policy/action_out/kernel/Assign^default_policy/count_2/Assign#^default_policy/layer_1/bias/Assign%^default_policy/layer_1/kernel/Assign#^default_policy/layer_2/bias/Assign%^default_policy/layer_2/kernel/Assign#^default_policy/layer_3/bias/Assign%^default_policy/layer_3/kernel/Assign#^default_policy/layer_4/bias/Assign%^default_policy/layer_4/kernel/Assign,^default_policy/layer_val_hidden/bias/Assign.^default_policy/layer_val_hidden/kernel/Assign^default_policy/total_2/Assign%^default_policy/value_out/bias/Assign'^default_policy/value_out/kernel/Assign
�

default_policy/init/NoOp_1NoOp ^default_policy/AssignVariableOp"^default_policy/AssignVariableOp_1#^default_policy/AssignVariableOp_10#^default_policy/AssignVariableOp_11#^default_policy/AssignVariableOp_12#^default_policy/AssignVariableOp_13#^default_policy/AssignVariableOp_14#^default_policy/AssignVariableOp_15#^default_policy/AssignVariableOp_16#^default_policy/AssignVariableOp_17#^default_policy/AssignVariableOp_18#^default_policy/AssignVariableOp_19"^default_policy/AssignVariableOp_2#^default_policy/AssignVariableOp_20#^default_policy/AssignVariableOp_21#^default_policy/AssignVariableOp_22#^default_policy/AssignVariableOp_23#^default_policy/AssignVariableOp_24#^default_policy/AssignVariableOp_25#^default_policy/AssignVariableOp_26#^default_policy/AssignVariableOp_27#^default_policy/AssignVariableOp_28#^default_policy/AssignVariableOp_29"^default_policy/AssignVariableOp_3#^default_policy/AssignVariableOp_30#^default_policy/AssignVariableOp_31#^default_policy/AssignVariableOp_32#^default_policy/AssignVariableOp_33"^default_policy/AssignVariableOp_4"^default_policy/AssignVariableOp_5"^default_policy/AssignVariableOp_6"^default_policy/AssignVariableOp_7"^default_policy/AssignVariableOp_8"^default_policy/AssignVariableOp_9"/device:CPU:0
S
default_policy/initNoOp^default_policy/init/NoOp^default_policy/init/NoOp_1
�
default_policy/PlaceholderPlaceholder*0
_output_shapes
:������������������*
dtype0*%
shape:������������������
~
"default_policy/AssignVariableOp_39AssignVariableOpdefault_policy/layer_1/kerneldefault_policy/Placeholder*
dtype0
�
default_policy/ReadVariableOpReadVariableOpdefault_policy/layer_1/kernel#^default_policy/AssignVariableOp_39* 
_output_shapes
:
�	�*
dtype0
w
default_policy/Placeholder_1Placeholder*#
_output_shapes
:���������*
dtype0*
shape:���������
~
"default_policy/AssignVariableOp_40AssignVariableOpdefault_policy/layer_1/biasdefault_policy/Placeholder_1*
dtype0
�
default_policy/ReadVariableOp_1ReadVariableOpdefault_policy/layer_1/bias#^default_policy/AssignVariableOp_40*
_output_shapes	
:�*
dtype0
�
default_policy/Placeholder_2Placeholder*0
_output_shapes
:������������������*
dtype0*%
shape:������������������
�
"default_policy/AssignVariableOp_41AssignVariableOpdefault_policy/layer_2/kerneldefault_policy/Placeholder_2*
dtype0
�
default_policy/ReadVariableOp_2ReadVariableOpdefault_policy/layer_2/kernel#^default_policy/AssignVariableOp_41* 
_output_shapes
:
��*
dtype0
w
default_policy/Placeholder_3Placeholder*#
_output_shapes
:���������*
dtype0*
shape:���������
~
"default_policy/AssignVariableOp_42AssignVariableOpdefault_policy/layer_2/biasdefault_policy/Placeholder_3*
dtype0
�
default_policy/ReadVariableOp_3ReadVariableOpdefault_policy/layer_2/bias#^default_policy/AssignVariableOp_42*
_output_shapes	
:�*
dtype0
�
default_policy/Placeholder_4Placeholder*0
_output_shapes
:������������������*
dtype0*%
shape:������������������
�
"default_policy/AssignVariableOp_43AssignVariableOpdefault_policy/layer_3/kerneldefault_policy/Placeholder_4*
dtype0
�
default_policy/ReadVariableOp_4ReadVariableOpdefault_policy/layer_3/kernel#^default_policy/AssignVariableOp_43* 
_output_shapes
:
��*
dtype0
w
default_policy/Placeholder_5Placeholder*#
_output_shapes
:���������*
dtype0*
shape:���������
~
"default_policy/AssignVariableOp_44AssignVariableOpdefault_policy/layer_3/biasdefault_policy/Placeholder_5*
dtype0
�
default_policy/ReadVariableOp_5ReadVariableOpdefault_policy/layer_3/bias#^default_policy/AssignVariableOp_44*
_output_shapes	
:�*
dtype0
�
default_policy/Placeholder_6Placeholder*0
_output_shapes
:������������������*
dtype0*%
shape:������������������
�
"default_policy/AssignVariableOp_45AssignVariableOpdefault_policy/layer_4/kerneldefault_policy/Placeholder_6*
dtype0
�
default_policy/ReadVariableOp_6ReadVariableOpdefault_policy/layer_4/kernel#^default_policy/AssignVariableOp_45* 
_output_shapes
:
��*
dtype0
w
default_policy/Placeholder_7Placeholder*#
_output_shapes
:���������*
dtype0*
shape:���������
~
"default_policy/AssignVariableOp_46AssignVariableOpdefault_policy/layer_4/biasdefault_policy/Placeholder_7*
dtype0
�
default_policy/ReadVariableOp_7ReadVariableOpdefault_policy/layer_4/bias#^default_policy/AssignVariableOp_46*
_output_shapes	
:�*
dtype0
�
default_policy/Placeholder_8Placeholder*0
_output_shapes
:������������������*
dtype0*%
shape:������������������
�
"default_policy/AssignVariableOp_47AssignVariableOp&default_policy/layer_val_hidden/kerneldefault_policy/Placeholder_8*
dtype0
�
default_policy/ReadVariableOp_8ReadVariableOp&default_policy/layer_val_hidden/kernel#^default_policy/AssignVariableOp_47* 
_output_shapes
:
��*
dtype0
w
default_policy/Placeholder_9Placeholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
"default_policy/AssignVariableOp_48AssignVariableOp$default_policy/layer_val_hidden/biasdefault_policy/Placeholder_9*
dtype0
�
default_policy/ReadVariableOp_9ReadVariableOp$default_policy/layer_val_hidden/bias#^default_policy/AssignVariableOp_48*
_output_shapes	
:�*
dtype0
p
default_policy/actionPlaceholder*#
_output_shapes
:���������*
dtype0	*
shape:���������
w
default_policy/obsPlaceholder*(
_output_shapes
:����������	*
dtype0*
shape:����������	
{
default_policy/new_obsPlaceholder*(
_output_shapes
:����������	*
dtype0*
shape:����������	
v
default_policy/prev_actionsPlaceholder*#
_output_shapes
:���������*
dtype0	*
shape:���������
q
default_policy/rewardsPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
v
default_policy/prev_rewardsPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
o
default_policy/donesPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
p
default_policy/eps_idPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
s
default_policy/unroll_idPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
u
default_policy/agent_indexPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
k
default_policy/tPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
V
default_policy/zerosConst*
_output_shapes
: *
dtype0	*
value	B	 R 
y
default_policy/timestepPlaceholderWithDefaultdefault_policy/zeros*
_output_shapes
: *
dtype0	*
shape: 
c
!default_policy/is_exploring/inputConst*
_output_shapes
: *
dtype0
*
value	B
 Z
�
default_policy/is_exploringPlaceholderWithDefault!default_policy/is_exploring/input*
_output_shapes
: *
dtype0
*
shape: 
b
 default_policy/is_training/inputConst*
_output_shapes
: *
dtype0
*
value	B
 Z 
�
default_policy/is_trainingPlaceholderWithDefault default_policy/is_training/input*
_output_shapes
: *
dtype0
*
shape: 
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
�
3default_policy/timestep_1/Initializer/initial_valueConst*,
_class"
 loc:@default_policy/timestep_1*
_output_shapes
: *
dtype0	*
value	B	 R 
�
default_policy/timestep_1VarHandleOp*,
_class"
 loc:@default_policy/timestep_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0	*
shape: **
shared_namedefault_policy/timestep_1
�
:default_policy/timestep_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/timestep_1*
_output_shapes
: 
�
 default_policy/timestep_1/AssignAssignVariableOpdefault_policy/timestep_13default_policy/timestep_1/Initializer/initial_value*
dtype0	

-default_policy/timestep_1/Read/ReadVariableOpReadVariableOpdefault_policy/timestep_1*
_output_shapes
: *
dtype0	
�
2default_policy/model/layer_1/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_1/kernel* 
_output_shapes
:
�	�*
dtype0
�
#default_policy/model/layer_1/MatMulMatMuldefault_policy/obs2default_policy/model/layer_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
3default_policy/model/layer_1/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_1/bias*
_output_shapes	
:�*
dtype0
�
$default_policy/model/layer_1/BiasAddBiasAdd#default_policy/model/layer_1/MatMul3default_policy/model/layer_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:����������*
data_formatNHWC
�
'default_policy/model/layer_1/re_lu/ReluRelu$default_policy/model/layer_1/BiasAdd*
T0*(
_output_shapes
:����������
�
2default_policy/model/layer_2/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_2/kernel* 
_output_shapes
:
��*
dtype0
�
#default_policy/model/layer_2/MatMulMatMul'default_policy/model/layer_1/re_lu/Relu2default_policy/model/layer_2/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
3default_policy/model/layer_2/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_2/bias*
_output_shapes	
:�*
dtype0
�
$default_policy/model/layer_2/BiasAddBiasAdd#default_policy/model/layer_2/MatMul3default_policy/model/layer_2/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:����������*
data_formatNHWC
�
'default_policy/model/layer_2/re_lu/ReluRelu$default_policy/model/layer_2/BiasAdd*
T0*(
_output_shapes
:����������
�
2default_policy/model/layer_3/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_3/kernel* 
_output_shapes
:
��*
dtype0
�
#default_policy/model/layer_3/MatMulMatMul'default_policy/model/layer_2/re_lu/Relu2default_policy/model/layer_3/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
3default_policy/model/layer_3/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_3/bias*
_output_shapes	
:�*
dtype0
�
$default_policy/model/layer_3/BiasAddBiasAdd#default_policy/model/layer_3/MatMul3default_policy/model/layer_3/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:����������*
data_formatNHWC
�
'default_policy/model/layer_3/re_lu/ReluRelu$default_policy/model/layer_3/BiasAdd*
T0*(
_output_shapes
:����������
�
2default_policy/model/layer_4/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_4/kernel* 
_output_shapes
:
��*
dtype0
�
#default_policy/model/layer_4/MatMulMatMul'default_policy/model/layer_3/re_lu/Relu2default_policy/model/layer_4/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
3default_policy/model/layer_4/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_4/bias*
_output_shapes	
:�*
dtype0
�
$default_policy/model/layer_4/BiasAddBiasAdd#default_policy/model/layer_4/MatMul3default_policy/model/layer_4/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:����������*
data_formatNHWC
�
'default_policy/model/layer_4/re_lu/ReluRelu$default_policy/model/layer_4/BiasAdd*
T0*(
_output_shapes
:����������
�
;default_policy/model/layer_val_hidden/MatMul/ReadVariableOpReadVariableOp&default_policy/layer_val_hidden/kernel* 
_output_shapes
:
��*
dtype0
�
,default_policy/model/layer_val_hidden/MatMulMatMul'default_policy/model/layer_4/re_lu/Relu;default_policy/model/layer_val_hidden/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
<default_policy/model/layer_val_hidden/BiasAdd/ReadVariableOpReadVariableOp$default_policy/layer_val_hidden/bias*
_output_shapes	
:�*
dtype0
�
-default_policy/model/layer_val_hidden/BiasAddBiasAdd,default_policy/model/layer_val_hidden/MatMul<default_policy/model/layer_val_hidden/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:����������*
data_formatNHWC
�
0default_policy/model/layer_val_hidden/re_lu/ReluRelu-default_policy/model/layer_val_hidden/BiasAdd*
T0*(
_output_shapes
:����������
�
4default_policy/model/value_out/MatMul/ReadVariableOpReadVariableOpdefault_policy/value_out/kernel*
_output_shapes
:	�*
dtype0
�
%default_policy/model/value_out/MatMulMatMul0default_policy/model/layer_val_hidden/re_lu/Relu4default_policy/model/value_out/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
�
5default_policy/model/value_out/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/value_out/bias*
_output_shapes
:*
dtype0
�
&default_policy/model/value_out/BiasAddBiasAdd%default_policy/model/value_out/MatMul5default_policy/model/value_out/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:���������*
data_formatNHWC
�
5default_policy/model/action_out/MatMul/ReadVariableOpReadVariableOp default_policy/action_out/kernel* 
_output_shapes
:
��*
dtype0
�
&default_policy/model/action_out/MatMulMatMul'default_policy/model/layer_4/re_lu/Relu5default_policy/model/action_out/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
6default_policy/model/action_out/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/action_out/bias*
_output_shapes	
:�*
dtype0
�
'default_policy/model/action_out/BiasAddBiasAdd&default_policy/model/action_out/MatMul6default_policy/model/action_out/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:����������*
data_formatNHWC
]
default_policy/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
default_policy/truedivRealDiv'default_policy/model/action_out/BiasAdddefault_policy/truediv/y*
T0*(
_output_shapes
:����������
t
2default_policy/categorical/Multinomial/num_samplesConst*
_output_shapes
: *
dtype0*
value	B :
�
&default_policy/categorical/MultinomialMultinomialdefault_policy/truediv2default_policy/categorical/Multinomial/num_samples*
T0*'
_output_shapes
:���������*
output_dtype0	*

seed *
seed2 
�
default_policy/SqueezeSqueeze&default_policy/categorical/Multinomial*
T0	*#
_output_shapes
:���������*
squeeze_dims

�
default_policy/CastCastdefault_policy/Squeeze*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:���������
�
8default_policy/SparseSoftmaxCrossEntropyWithLogits/ShapeShapedefault_policy/Cast*
T0*
_output_shapes
:*
out_type0
�
Vdefault_policy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsdefault_policy/truedivdefault_policy/Cast*
T0*
Tlabels0*7
_output_shapes%
#:���������:����������
�
default_policy/NegNegVdefault_policy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:���������
r
 default_policy/ReadVariableOp_10ReadVariableOpdefault_policy/timestep_1*
_output_shapes
: *
dtype0	
V
default_policy/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
t
default_policy/addAddV2 default_policy/ReadVariableOp_10default_policy/add/y*
T0	*
_output_shapes
: 
W
default_policy/Less/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
g
default_policy/LessLessdefault_policy/adddefault_policy/Less/y*
T0	*
_output_shapes
: 
q
default_policy/cond/SwitchSwitchdefault_policy/Lessdefault_policy/Less*
T0
*
_output_shapes
: : 
g
default_policy/cond/switch_tIdentitydefault_policy/cond/Switch:1*
T0
*
_output_shapes
: 
e
default_policy/cond/switch_fIdentitydefault_policy/cond/Switch*
T0
*
_output_shapes
: 
]
default_policy/cond/pred_idIdentitydefault_policy/Less*
T0
*
_output_shapes
: 
z
default_policy/cond/ConstConst^default_policy/cond/switch_t*
_output_shapes
: *
dtype0
*
value	B
 Z
�
default_policy/cond/cond/SwitchSwitchdefault_policy/cond/Constdefault_policy/cond/Const*
T0
*
_output_shapes
: : 
q
!default_policy/cond/cond/switch_tIdentity!default_policy/cond/cond/Switch:1*
T0
*
_output_shapes
: 
o
!default_policy/cond/cond/switch_fIdentitydefault_policy/cond/cond/Switch*
T0
*
_output_shapes
: 
h
 default_policy/cond/cond/pred_idIdentitydefault_policy/cond/Const*
T0
*
_output_shapes
: 
�
default_policy/cond/cond/ShapeShape)default_policy/cond/cond/Shape/Switch_1:1*
T0*
_output_shapes
:*
out_type0
�
%default_policy/cond/cond/Shape/SwitchSwitchdefault_policy/truedivdefault_policy/cond/pred_id*
T0*)
_class
loc:@default_policy/truediv*<
_output_shapes*
(:����������:����������
�
'default_policy/cond/cond/Shape/Switch_1Switch'default_policy/cond/cond/Shape/Switch:1 default_policy/cond/cond/pred_id*
T0*)
_class
loc:@default_policy/truediv*<
_output_shapes*
(:����������:����������
�
,default_policy/cond/cond/strided_slice/stackConst"^default_policy/cond/cond/switch_t*
_output_shapes
:*
dtype0*
valueB: 
�
.default_policy/cond/cond/strided_slice/stack_1Const"^default_policy/cond/cond/switch_t*
_output_shapes
:*
dtype0*
valueB:
�
.default_policy/cond/cond/strided_slice/stack_2Const"^default_policy/cond/cond/switch_t*
_output_shapes
:*
dtype0*
valueB:
�
&default_policy/cond/cond/strided_sliceStridedSlicedefault_policy/cond/cond/Shape,default_policy/cond/cond/strided_slice/stack.default_policy/cond/cond/strided_slice/stack_1.default_policy/cond/cond/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
�
-default_policy/cond/cond/random_uniform/shapePack&default_policy/cond/cond/strided_slice*
N*
T0*
_output_shapes
:*

axis 
�
+default_policy/cond/cond/random_uniform/minConst"^default_policy/cond/cond/switch_t*
_output_shapes
: *
dtype0	*
value	B	 R 
�
+default_policy/cond/cond/random_uniform/maxConst"^default_policy/cond/cond/switch_t*
_output_shapes
: *
dtype0	*
value
B	 R�
�
'default_policy/cond/cond/random_uniformRandomUniformInt-default_policy/cond/cond/random_uniform/shape+default_policy/cond/cond/random_uniform/min+default_policy/cond/cond/random_uniform/max*
T0*

Tout0	*#
_output_shapes
:���������*

seed *
seed2 
�
)default_policy/cond/cond/ArgMax/dimensionConst"^default_policy/cond/cond/switch_f*
_output_shapes
: *
dtype0*
value	B :
�
default_policy/cond/cond/ArgMaxArgMax&default_policy/cond/cond/ArgMax/Switch)default_policy/cond/cond/ArgMax/dimension*
T0*

Tidx0*#
_output_shapes
:���������*
output_type0	
�
&default_policy/cond/cond/ArgMax/SwitchSwitch'default_policy/cond/cond/Shape/Switch:1 default_policy/cond/cond/pred_id*
T0*)
_class
loc:@default_policy/truediv*<
_output_shapes*
(:����������:����������
�
default_policy/cond/cond/MergeMergedefault_policy/cond/cond/ArgMax'default_policy/cond/cond/random_uniform*
N*
T0	*%
_output_shapes
:���������: 
�
$default_policy/cond/zeros_like/ShapeShapedefault_policy/cond/cond/Merge*
T0	*
_output_shapes
:*
out_type0
�
$default_policy/cond/zeros_like/ConstConst^default_policy/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
�
default_policy/cond/zeros_likeFill$default_policy/cond/zeros_like/Shape$default_policy/cond/zeros_like/Const*
T0*#
_output_shapes
:���������*

index_type0
�
default_policy/cond/Switch_1Switchdefault_policy/Squeezedefault_policy/cond/pred_id*
T0	*)
_class
loc:@default_policy/Squeeze*2
_output_shapes 
:���������:���������
�
default_policy/cond/MergeMergedefault_policy/cond/Switch_1default_policy/cond/cond/Merge*
N*
T0	*%
_output_shapes
:���������: 
a
default_policy/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
�
default_policy/ArgMaxArgMaxdefault_policy/truedivdefault_policy/ArgMax/dimension*
T0*

Tidx0*#
_output_shapes
:���������*
output_type0	
�
default_policy/cond_1/SwitchSwitchdefault_policy/is_exploringdefault_policy/is_exploring*
T0
*
_output_shapes
: : 
k
default_policy/cond_1/switch_tIdentitydefault_policy/cond_1/Switch:1*
T0
*
_output_shapes
: 
i
default_policy/cond_1/switch_fIdentitydefault_policy/cond_1/Switch*
T0
*
_output_shapes
: 
g
default_policy/cond_1/pred_idIdentitydefault_policy/is_exploring*
T0
*
_output_shapes
: 
�
default_policy/cond_1/Switch_1Switchdefault_policy/cond/Mergedefault_policy/cond_1/pred_id*
T0	*,
_class"
 loc:@default_policy/cond/Merge*2
_output_shapes 
:���������:���������
�
default_policy/cond_1/Switch_2Switchdefault_policy/ArgMaxdefault_policy/cond_1/pred_id*
T0	*(
_class
loc:@default_policy/ArgMax*2
_output_shapes 
:���������:���������
�
default_policy/cond_1/MergeMergedefault_policy/cond_1/Switch_2 default_policy/cond_1/Switch_1:1*
N*
T0	*%
_output_shapes
:���������: 
_
default_policy/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 

default_policy/GreaterEqualGreaterEqualdefault_policy/adddefault_policy/GreaterEqual/y*
T0	*
_output_shapes
: 
y
default_policy/LogicalAnd
LogicalAnddefault_policy/is_exploringdefault_policy/GreaterEqual*
_output_shapes
: 

default_policy/cond_2/SwitchSwitchdefault_policy/LogicalAnddefault_policy/LogicalAnd*
T0
*
_output_shapes
: : 
k
default_policy/cond_2/switch_tIdentitydefault_policy/cond_2/Switch:1*
T0
*
_output_shapes
: 
i
default_policy/cond_2/switch_fIdentitydefault_policy/cond_2/Switch*
T0
*
_output_shapes
: 
e
default_policy/cond_2/pred_idIdentitydefault_policy/LogicalAnd*
T0
*
_output_shapes
: 
�
default_policy/cond_2/Switch_1Switchdefault_policy/Negdefault_policy/cond_2/pred_id*
T0*%
_class
loc:@default_policy/Neg*2
_output_shapes 
:���������:���������
�
&default_policy/cond_2/zeros_like/ShapeShape-default_policy/cond_2/zeros_like/Shape/Switch*
T0	*
_output_shapes
:*
out_type0
�
-default_policy/cond_2/zeros_like/Shape/SwitchSwitchdefault_policy/ArgMaxdefault_policy/cond_2/pred_id*
T0	*(
_class
loc:@default_policy/ArgMax*2
_output_shapes 
:���������:���������
�
&default_policy/cond_2/zeros_like/ConstConst^default_policy/cond_2/switch_f*
_output_shapes
: *
dtype0*
valueB
 *    
�
 default_policy/cond_2/zeros_likeFill&default_policy/cond_2/zeros_like/Shape&default_policy/cond_2/zeros_like/Const*
T0*#
_output_shapes
:���������*

index_type0
�
default_policy/cond_2/MergeMerge default_policy/cond_2/zeros_like default_policy/cond_2/Switch_1:1*
N*
T0*%
_output_shapes
:���������: 
w
"default_policy/AssignVariableOp_49AssignVariableOpdefault_policy/timestep_1default_policy/timestep*
dtype0	
�
 default_policy/ReadVariableOp_11ReadVariableOpdefault_policy/timestep_1#^default_policy/AssignVariableOp_49*
_output_shapes
: *
dtype0	
d
default_policy/ExpExpdefault_policy/cond_2/Merge*
T0*#
_output_shapes
:���������
f
default_policy/Exp_1Expdefault_policy/cond_2/Merge*
T0*#
_output_shapes
:���������
_
default_policy/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
default_policy/truediv_1RealDiv'default_policy/model/action_out/BiasAdddefault_policy/truediv_1/y*
T0*(
_output_shapes
:����������
v
4default_policy/categorical_1/Multinomial/num_samplesConst*
_output_shapes
: *
dtype0*
value	B :
�
(default_policy/categorical_1/MultinomialMultinomialdefault_policy/truediv_14default_policy/categorical_1/Multinomial/num_samples*
T0*'
_output_shapes
:���������*
output_dtype0	*

seed *
seed2 
�
default_policy/Squeeze_1Squeeze(default_policy/categorical_1/Multinomial*
T0	*#
_output_shapes
:���������*
squeeze_dims

�
default_policy/Cast_1Castdefault_policy/Squeeze_1*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:���������
�
:default_policy/SparseSoftmaxCrossEntropyWithLogits_1/ShapeShapedefault_policy/Cast_1*
T0*
_output_shapes
:*
out_type0
�
Xdefault_policy/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsdefault_policy/truediv_1default_policy/Cast_1*
T0*
Tlabels0*7
_output_shapes%
#:���������:����������
�
default_policy/Neg_1NegXdefault_policy/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:���������
�
default_policy/Cast_2Castdefault_policy/action*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:���������
�
:default_policy/SparseSoftmaxCrossEntropyWithLogits_2/ShapeShapedefault_policy/Cast_2*
T0*
_output_shapes
:*
out_type0
�
Xdefault_policy/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsdefault_policy/truediv_1default_policy/Cast_2*
T0*
Tlabels0*7
_output_shapes%
#:���������:����������
�
default_policy/Neg_2NegXdefault_policy/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:���������
L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *��L>
�
1default_policy/kl_coeff/Initializer/initial_valueConst**
_class 
loc:@default_policy/kl_coeff*
_output_shapes
: *
dtype0*
valueB
 *��L>
�
default_policy/kl_coeffVarHandleOp**
_class 
loc:@default_policy/kl_coeff*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *(
shared_namedefault_policy/kl_coeff

8default_policy/kl_coeff/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/kl_coeff*
_output_shapes
: 
�
default_policy/kl_coeff/AssignAssignVariableOpdefault_policy/kl_coeff1default_policy/kl_coeff/Initializer/initial_value*
dtype0
{
+default_policy/kl_coeff/Read/ReadVariableOpReadVariableOpdefault_policy/kl_coeff*
_output_shapes
: *
dtype0
^
default_policy/kl_coeff_1Placeholder*
_output_shapes
:*
dtype0*
shape:
w
"default_policy/AssignVariableOp_50AssignVariableOpdefault_policy/kl_coeffdefault_policy/kl_coeff_1*
dtype0
L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *�=�;
�
6default_policy/entropy_coeff/Initializer/initial_valueConst*/
_class%
#!loc:@default_policy/entropy_coeff*
_output_shapes
: *
dtype0*
valueB
 *�=�;
�
default_policy/entropy_coeffVarHandleOp*/
_class%
#!loc:@default_policy/entropy_coeff*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *-
shared_namedefault_policy/entropy_coeff
�
=default_policy/entropy_coeff/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/entropy_coeff*
_output_shapes
: 
�
#default_policy/entropy_coeff/AssignAssignVariableOpdefault_policy/entropy_coeff6default_policy/entropy_coeff/Initializer/initial_value*
dtype0
�
0default_policy/entropy_coeff/Read/ReadVariableOpReadVariableOpdefault_policy/entropy_coeff*
_output_shapes
: *
dtype0
�
+default_policy/lr/Initializer/initial_valueConst*$
_class
loc:@default_policy/lr*
_output_shapes
: *
dtype0*
valueB
 *��'7
�
default_policy/lrVarHandleOp*$
_class
loc:@default_policy/lr*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *"
shared_namedefault_policy/lr
s
2default_policy/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/lr*
_output_shapes
: 
y
default_policy/lr/AssignAssignVariableOpdefault_policy/lr+default_policy/lr/Initializer/initial_value*
dtype0
o
%default_policy/lr/Read/ReadVariableOpReadVariableOpdefault_policy/lr*
_output_shapes
: *
dtype0
o
default_policy/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������
�
default_policy/ReshapeReshape&default_policy/model/value_out/BiasAdddefault_policy/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:���������
�
default_policy/init_1/NoOpNoOp&^default_policy/action_out/bias/Assign(^default_policy/action_out/kernel/Assign$^default_policy/entropy_coeff/Assign^default_policy/kl_coeff/Assign#^default_policy/layer_1/bias/Assign%^default_policy/layer_1/kernel/Assign#^default_policy/layer_2/bias/Assign%^default_policy/layer_2/kernel/Assign#^default_policy/layer_3/bias/Assign%^default_policy/layer_3/kernel/Assign#^default_policy/layer_4/bias/Assign%^default_policy/layer_4/kernel/Assign,^default_policy/layer_val_hidden/bias/Assign.^default_policy/layer_val_hidden/kernel/Assign^default_policy/lr/Assign!^default_policy/timestep_1/Assign%^default_policy/value_out/bias/Assign'^default_policy/value_out/kernel/Assign
�

default_policy/init_1/NoOp_1NoOp ^default_policy/AssignVariableOp"^default_policy/AssignVariableOp_1#^default_policy/AssignVariableOp_10#^default_policy/AssignVariableOp_11#^default_policy/AssignVariableOp_12#^default_policy/AssignVariableOp_13#^default_policy/AssignVariableOp_14#^default_policy/AssignVariableOp_15#^default_policy/AssignVariableOp_16#^default_policy/AssignVariableOp_17#^default_policy/AssignVariableOp_18#^default_policy/AssignVariableOp_19"^default_policy/AssignVariableOp_2#^default_policy/AssignVariableOp_24#^default_policy/AssignVariableOp_25#^default_policy/AssignVariableOp_26#^default_policy/AssignVariableOp_27#^default_policy/AssignVariableOp_28#^default_policy/AssignVariableOp_29"^default_policy/AssignVariableOp_3#^default_policy/AssignVariableOp_30#^default_policy/AssignVariableOp_31#^default_policy/AssignVariableOp_32#^default_policy/AssignVariableOp_33#^default_policy/AssignVariableOp_34#^default_policy/AssignVariableOp_35#^default_policy/AssignVariableOp_36#^default_policy/AssignVariableOp_37#^default_policy/AssignVariableOp_38"^default_policy/AssignVariableOp_4"^default_policy/AssignVariableOp_5"^default_policy/AssignVariableOp_6"^default_policy/AssignVariableOp_7"^default_policy/AssignVariableOp_8"^default_policy/AssignVariableOp_9"/device:CPU:0
Y
default_policy/init_1NoOp^default_policy/init_1/NoOp^default_policy/init_1/NoOp_1
r
default_policy/vf_predsPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
!default_policy/action_dist_inputsPlaceholder*(
_output_shapes
:����������*
dtype0*
shape:����������
u
default_policy/action_logpPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
u
default_policy/action_probPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
g
default_policy/obs_1Placeholder*
_output_shapes
:	�	*
dtype0*
shape:	�	
`
default_policy/seq_lensPlaceholder*
_output_shapes
:*
dtype0*
shape:
�
4default_policy/model_1/layer_1/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_1/kernel* 
_output_shapes
:
�	�*
dtype0
�
%default_policy/model_1/layer_1/MatMulMatMuldefault_policy/obs_14default_policy/model_1/layer_1/MatMul/ReadVariableOp*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b( 
�
5default_policy/model_1/layer_1/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_1/bias*
_output_shapes	
:�*
dtype0
�
&default_policy/model_1/layer_1/BiasAddBiasAdd%default_policy/model_1/layer_1/MatMul5default_policy/model_1/layer_1/BiasAdd/ReadVariableOp*
T0*
_output_shapes
:	�*
data_formatNHWC
�
)default_policy/model_1/layer_1/re_lu/ReluRelu&default_policy/model_1/layer_1/BiasAdd*
T0*
_output_shapes
:	�
�
4default_policy/model_1/layer_2/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_2/kernel* 
_output_shapes
:
��*
dtype0
�
%default_policy/model_1/layer_2/MatMulMatMul)default_policy/model_1/layer_1/re_lu/Relu4default_policy/model_1/layer_2/MatMul/ReadVariableOp*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b( 
�
5default_policy/model_1/layer_2/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_2/bias*
_output_shapes	
:�*
dtype0
�
&default_policy/model_1/layer_2/BiasAddBiasAdd%default_policy/model_1/layer_2/MatMul5default_policy/model_1/layer_2/BiasAdd/ReadVariableOp*
T0*
_output_shapes
:	�*
data_formatNHWC
�
)default_policy/model_1/layer_2/re_lu/ReluRelu&default_policy/model_1/layer_2/BiasAdd*
T0*
_output_shapes
:	�
�
4default_policy/model_1/layer_3/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_3/kernel* 
_output_shapes
:
��*
dtype0
�
%default_policy/model_1/layer_3/MatMulMatMul)default_policy/model_1/layer_2/re_lu/Relu4default_policy/model_1/layer_3/MatMul/ReadVariableOp*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b( 
�
5default_policy/model_1/layer_3/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_3/bias*
_output_shapes	
:�*
dtype0
�
&default_policy/model_1/layer_3/BiasAddBiasAdd%default_policy/model_1/layer_3/MatMul5default_policy/model_1/layer_3/BiasAdd/ReadVariableOp*
T0*
_output_shapes
:	�*
data_formatNHWC
�
)default_policy/model_1/layer_3/re_lu/ReluRelu&default_policy/model_1/layer_3/BiasAdd*
T0*
_output_shapes
:	�
�
4default_policy/model_1/layer_4/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_4/kernel* 
_output_shapes
:
��*
dtype0
�
%default_policy/model_1/layer_4/MatMulMatMul)default_policy/model_1/layer_3/re_lu/Relu4default_policy/model_1/layer_4/MatMul/ReadVariableOp*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b( 
�
5default_policy/model_1/layer_4/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_4/bias*
_output_shapes	
:�*
dtype0
�
&default_policy/model_1/layer_4/BiasAddBiasAdd%default_policy/model_1/layer_4/MatMul5default_policy/model_1/layer_4/BiasAdd/ReadVariableOp*
T0*
_output_shapes
:	�*
data_formatNHWC
�
)default_policy/model_1/layer_4/re_lu/ReluRelu&default_policy/model_1/layer_4/BiasAdd*
T0*
_output_shapes
:	�
�
=default_policy/model_1/layer_val_hidden/MatMul/ReadVariableOpReadVariableOp&default_policy/layer_val_hidden/kernel* 
_output_shapes
:
��*
dtype0
�
.default_policy/model_1/layer_val_hidden/MatMulMatMul)default_policy/model_1/layer_4/re_lu/Relu=default_policy/model_1/layer_val_hidden/MatMul/ReadVariableOp*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b( 
�
>default_policy/model_1/layer_val_hidden/BiasAdd/ReadVariableOpReadVariableOp$default_policy/layer_val_hidden/bias*
_output_shapes	
:�*
dtype0
�
/default_policy/model_1/layer_val_hidden/BiasAddBiasAdd.default_policy/model_1/layer_val_hidden/MatMul>default_policy/model_1/layer_val_hidden/BiasAdd/ReadVariableOp*
T0*
_output_shapes
:	�*
data_formatNHWC
�
2default_policy/model_1/layer_val_hidden/re_lu/ReluRelu/default_policy/model_1/layer_val_hidden/BiasAdd*
T0*
_output_shapes
:	�
�
6default_policy/model_1/value_out/MatMul/ReadVariableOpReadVariableOpdefault_policy/value_out/kernel*
_output_shapes
:	�*
dtype0
�
'default_policy/model_1/value_out/MatMulMatMul2default_policy/model_1/layer_val_hidden/re_lu/Relu6default_policy/model_1/value_out/MatMul/ReadVariableOp*
T0*
_output_shapes

:*
transpose_a( *
transpose_b( 
�
7default_policy/model_1/value_out/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/value_out/bias*
_output_shapes
:*
dtype0
�
(default_policy/model_1/value_out/BiasAddBiasAdd'default_policy/model_1/value_out/MatMul7default_policy/model_1/value_out/BiasAdd/ReadVariableOp*
T0*
_output_shapes

:*
data_formatNHWC
�
7default_policy/model_1/action_out/MatMul/ReadVariableOpReadVariableOp default_policy/action_out/kernel* 
_output_shapes
:
��*
dtype0
�
(default_policy/model_1/action_out/MatMulMatMul)default_policy/model_1/layer_4/re_lu/Relu7default_policy/model_1/action_out/MatMul/ReadVariableOp*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b( 
�
8default_policy/model_1/action_out/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/action_out/bias*
_output_shapes	
:�*
dtype0
�
)default_policy/model_1/action_out/BiasAddBiasAdd(default_policy/model_1/action_out/MatMul8default_policy/model_1/action_out/BiasAdd/ReadVariableOp*
T0*
_output_shapes
:	�*
data_formatNHWC
q
default_policy/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������
�
default_policy/Reshape_1Reshape(default_policy/model_1/value_out/BiasAdddefault_policy/Reshape_1/shape*
T0*
Tshape0*
_output_shapes
:
l
"default_policy/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
n
$default_policy/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
n
$default_policy/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
default_policy/strided_sliceStridedSlicedefault_policy/Reshape_1"default_policy/strided_slice/stack$default_policy/strided_slice/stack_1$default_policy/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
t
default_policy/advantagesPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
w
default_policy/value_targetsPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
4default_policy/model_2/layer_1/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_1/kernel* 
_output_shapes
:
�	�*
dtype0
�
%default_policy/model_2/layer_1/MatMulMatMuldefault_policy/obs4default_policy/model_2/layer_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
5default_policy/model_2/layer_1/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_1/bias*
_output_shapes	
:�*
dtype0
�
&default_policy/model_2/layer_1/BiasAddBiasAdd%default_policy/model_2/layer_1/MatMul5default_policy/model_2/layer_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:����������*
data_formatNHWC
�
)default_policy/model_2/layer_1/re_lu/ReluRelu&default_policy/model_2/layer_1/BiasAdd*
T0*(
_output_shapes
:����������
�
4default_policy/model_2/layer_2/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_2/kernel* 
_output_shapes
:
��*
dtype0
�
%default_policy/model_2/layer_2/MatMulMatMul)default_policy/model_2/layer_1/re_lu/Relu4default_policy/model_2/layer_2/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
5default_policy/model_2/layer_2/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_2/bias*
_output_shapes	
:�*
dtype0
�
&default_policy/model_2/layer_2/BiasAddBiasAdd%default_policy/model_2/layer_2/MatMul5default_policy/model_2/layer_2/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:����������*
data_formatNHWC
�
)default_policy/model_2/layer_2/re_lu/ReluRelu&default_policy/model_2/layer_2/BiasAdd*
T0*(
_output_shapes
:����������
�
4default_policy/model_2/layer_3/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_3/kernel* 
_output_shapes
:
��*
dtype0
�
%default_policy/model_2/layer_3/MatMulMatMul)default_policy/model_2/layer_2/re_lu/Relu4default_policy/model_2/layer_3/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
5default_policy/model_2/layer_3/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_3/bias*
_output_shapes	
:�*
dtype0
�
&default_policy/model_2/layer_3/BiasAddBiasAdd%default_policy/model_2/layer_3/MatMul5default_policy/model_2/layer_3/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:����������*
data_formatNHWC
�
)default_policy/model_2/layer_3/re_lu/ReluRelu&default_policy/model_2/layer_3/BiasAdd*
T0*(
_output_shapes
:����������
�
4default_policy/model_2/layer_4/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_4/kernel* 
_output_shapes
:
��*
dtype0
�
%default_policy/model_2/layer_4/MatMulMatMul)default_policy/model_2/layer_3/re_lu/Relu4default_policy/model_2/layer_4/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
5default_policy/model_2/layer_4/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_4/bias*
_output_shapes	
:�*
dtype0
�
&default_policy/model_2/layer_4/BiasAddBiasAdd%default_policy/model_2/layer_4/MatMul5default_policy/model_2/layer_4/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:����������*
data_formatNHWC
�
)default_policy/model_2/layer_4/re_lu/ReluRelu&default_policy/model_2/layer_4/BiasAdd*
T0*(
_output_shapes
:����������
�
=default_policy/model_2/layer_val_hidden/MatMul/ReadVariableOpReadVariableOp&default_policy/layer_val_hidden/kernel* 
_output_shapes
:
��*
dtype0
�
.default_policy/model_2/layer_val_hidden/MatMulMatMul)default_policy/model_2/layer_4/re_lu/Relu=default_policy/model_2/layer_val_hidden/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
>default_policy/model_2/layer_val_hidden/BiasAdd/ReadVariableOpReadVariableOp$default_policy/layer_val_hidden/bias*
_output_shapes	
:�*
dtype0
�
/default_policy/model_2/layer_val_hidden/BiasAddBiasAdd.default_policy/model_2/layer_val_hidden/MatMul>default_policy/model_2/layer_val_hidden/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:����������*
data_formatNHWC
�
2default_policy/model_2/layer_val_hidden/re_lu/ReluRelu/default_policy/model_2/layer_val_hidden/BiasAdd*
T0*(
_output_shapes
:����������
�
6default_policy/model_2/value_out/MatMul/ReadVariableOpReadVariableOpdefault_policy/value_out/kernel*
_output_shapes
:	�*
dtype0
�
'default_policy/model_2/value_out/MatMulMatMul2default_policy/model_2/layer_val_hidden/re_lu/Relu6default_policy/model_2/value_out/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
�
7default_policy/model_2/value_out/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/value_out/bias*
_output_shapes
:*
dtype0
�
(default_policy/model_2/value_out/BiasAddBiasAdd'default_policy/model_2/value_out/MatMul7default_policy/model_2/value_out/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:���������*
data_formatNHWC
�
7default_policy/model_2/action_out/MatMul/ReadVariableOpReadVariableOp default_policy/action_out/kernel* 
_output_shapes
:
��*
dtype0
�
(default_policy/model_2/action_out/MatMulMatMul)default_policy/model_2/layer_4/re_lu/Relu7default_policy/model_2/action_out/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
8default_policy/model_2/action_out/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/action_out/bias*
_output_shapes	
:�*
dtype0
�
)default_policy/model_2/action_out/BiasAddBiasAdd(default_policy/model_2/action_out/MatMul8default_policy/model_2/action_out/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:����������*
data_formatNHWC
q
default_policy/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������
�
default_policy/Reshape_2Reshape(default_policy/model_2/value_out/BiasAdddefault_policy/Reshape_2/shape*
T0*
Tshape0*#
_output_shapes
:���������
_
default_policy/truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
default_policy/truediv_2RealDiv)default_policy/model_2/action_out/BiasAdddefault_policy/truediv_2/y*
T0*(
_output_shapes
:����������
v
4default_policy/categorical_2/Multinomial/num_samplesConst*
_output_shapes
: *
dtype0*
value	B :
�
(default_policy/categorical_2/MultinomialMultinomialdefault_policy/truediv_24default_policy/categorical_2/Multinomial/num_samples*
T0*'
_output_shapes
:���������*
output_dtype0	*

seed *
seed2 
�
default_policy/Squeeze_2Squeeze(default_policy/categorical_2/Multinomial*
T0	*#
_output_shapes
:���������*
squeeze_dims

�
default_policy/Cast_3Castdefault_policy/Squeeze_2*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:���������
�
:default_policy/SparseSoftmaxCrossEntropyWithLogits_3/ShapeShapedefault_policy/Cast_3*
T0*
_output_shapes
:*
out_type0
�
Xdefault_policy/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsdefault_policy/truediv_2default_policy/Cast_3*
T0*
Tlabels0*7
_output_shapes%
#:���������:����������
�
default_policy/Neg_3NegXdefault_policy/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:���������
_
default_policy/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
default_policy/truediv_3RealDiv!default_policy/action_dist_inputsdefault_policy/truediv_3/y*
T0*(
_output_shapes
:����������
v
4default_policy/categorical_3/Multinomial/num_samplesConst*
_output_shapes
: *
dtype0*
value	B :
�
(default_policy/categorical_3/MultinomialMultinomialdefault_policy/truediv_34default_policy/categorical_3/Multinomial/num_samples*
T0*'
_output_shapes
:���������*
output_dtype0	*

seed *
seed2 
�
default_policy/Squeeze_3Squeeze(default_policy/categorical_3/Multinomial*
T0	*#
_output_shapes
:���������*
squeeze_dims

�
default_policy/Cast_4Castdefault_policy/Squeeze_3*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:���������
�
:default_policy/SparseSoftmaxCrossEntropyWithLogits_4/ShapeShapedefault_policy/Cast_4*
T0*
_output_shapes
:*
out_type0
�
Xdefault_policy/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsdefault_policy/truediv_3default_policy/Cast_4*
T0*
Tlabels0*7
_output_shapes%
#:���������:����������
�
default_policy/Neg_4NegXdefault_policy/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:���������
�
default_policy/Cast_5Castdefault_policy/action*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:���������
�
:default_policy/SparseSoftmaxCrossEntropyWithLogits_5/ShapeShapedefault_policy/Cast_5*
T0*
_output_shapes
:*
out_type0
�
Xdefault_policy/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsdefault_policy/truediv_2default_policy/Cast_5*
T0*
Tlabels0*7
_output_shapes%
#:���������:����������
�
default_policy/Neg_5NegXdefault_policy/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:���������
y
default_policy/subSubdefault_policy/Neg_5default_policy/action_logp*
T0*#
_output_shapes
:���������
]
default_policy/Exp_2Expdefault_policy/sub*
T0*#
_output_shapes
:���������
f
$default_policy/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
�
default_policy/MaxMaxdefault_policy/truediv_3$default_policy/Max/reduction_indices*
T0*

Tidx0*'
_output_shapes
:���������*
	keep_dims(
|
default_policy/sub_1Subdefault_policy/truediv_3default_policy/Max*
T0*(
_output_shapes
:����������
h
&default_policy/Max_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
�
default_policy/Max_1Maxdefault_policy/truediv_2&default_policy/Max_1/reduction_indices*
T0*

Tidx0*'
_output_shapes
:���������*
	keep_dims(
~
default_policy/sub_2Subdefault_policy/truediv_2default_policy/Max_1*
T0*(
_output_shapes
:����������
d
default_policy/Exp_3Expdefault_policy/sub_1*
T0*(
_output_shapes
:����������
d
default_policy/Exp_4Expdefault_policy/sub_2*
T0*(
_output_shapes
:����������
f
$default_policy/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
�
default_policy/SumSumdefault_policy/Exp_3$default_policy/Sum/reduction_indices*
T0*

Tidx0*'
_output_shapes
:���������*
	keep_dims(
h
&default_policy/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
�
default_policy/Sum_1Sumdefault_policy/Exp_4&default_policy/Sum_1/reduction_indices*
T0*

Tidx0*'
_output_shapes
:���������*
	keep_dims(
�
default_policy/truediv_4RealDivdefault_policy/Exp_3default_policy/Sum*
T0*(
_output_shapes
:����������
_
default_policy/LogLogdefault_policy/Sum*
T0*'
_output_shapes
:���������
x
default_policy/sub_3Subdefault_policy/sub_1default_policy/Log*
T0*(
_output_shapes
:����������
z
default_policy/sub_4Subdefault_policy/sub_3default_policy/sub_2*
T0*(
_output_shapes
:����������
c
default_policy/Log_1Logdefault_policy/Sum_1*
T0*'
_output_shapes
:���������
|
default_policy/add_1AddV2default_policy/sub_4default_policy/Log_1*
T0*(
_output_shapes
:����������
|
default_policy/mulMuldefault_policy/truediv_4default_policy/add_1*
T0*(
_output_shapes
:����������
h
&default_policy/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
�
default_policy/Sum_2Sumdefault_policy/mul&default_policy/Sum_2/reduction_indices*
T0*

Tidx0*#
_output_shapes
:���������*
	keep_dims( 
`
default_policy/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
�
default_policy/MeanMeandefault_policy/Sum_2default_policy/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
h
&default_policy/Max_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
�
default_policy/Max_2Maxdefault_policy/truediv_2&default_policy/Max_2/reduction_indices*
T0*

Tidx0*'
_output_shapes
:���������*
	keep_dims(
~
default_policy/sub_5Subdefault_policy/truediv_2default_policy/Max_2*
T0*(
_output_shapes
:����������
d
default_policy/Exp_5Expdefault_policy/sub_5*
T0*(
_output_shapes
:����������
h
&default_policy/Sum_3/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
�
default_policy/Sum_3Sumdefault_policy/Exp_5&default_policy/Sum_3/reduction_indices*
T0*

Tidx0*'
_output_shapes
:���������*
	keep_dims(
�
default_policy/truediv_5RealDivdefault_policy/Exp_5default_policy/Sum_3*
T0*(
_output_shapes
:����������
c
default_policy/Log_2Logdefault_policy/Sum_3*
T0*'
_output_shapes
:���������
z
default_policy/sub_6Subdefault_policy/Log_2default_policy/sub_5*
T0*(
_output_shapes
:����������
~
default_policy/mul_1Muldefault_policy/truediv_5default_policy/sub_6*
T0*(
_output_shapes
:����������
h
&default_policy/Sum_4/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
�
default_policy/Sum_4Sumdefault_policy/mul_1&default_policy/Sum_4/reduction_indices*
T0*

Tidx0*#
_output_shapes
:���������*
	keep_dims( 
`
default_policy/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
�
default_policy/Mean_1Meandefault_policy/Sum_4default_policy/Const_2*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
z
default_policy/mul_2Muldefault_policy/advantagesdefault_policy/Exp_2*
T0*#
_output_shapes
:���������
k
&default_policy/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *:��?
�
$default_policy/clip_by_value/MinimumMinimumdefault_policy/Exp_2&default_policy/clip_by_value/Minimum/y*
T0*#
_output_shapes
:���������
c
default_policy/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *��d?
�
default_policy/clip_by_valueMaximum$default_policy/clip_by_value/Minimumdefault_policy/clip_by_value/y*
T0*#
_output_shapes
:���������
�
default_policy/mul_3Muldefault_policy/advantagesdefault_policy/clip_by_value*
T0*#
_output_shapes
:���������
{
default_policy/MinimumMinimumdefault_policy/mul_2default_policy/mul_3*
T0*#
_output_shapes
:���������
a
default_policy/Neg_6Negdefault_policy/Minimum*
T0*#
_output_shapes
:���������
`
default_policy/Const_3Const*
_output_shapes
:*
dtype0*
valueB: 
�
default_policy/Mean_2Meandefault_policy/Neg_6default_policy/Const_3*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
default_policy/sub_7Subdefault_policy/Reshape_2default_policy/value_targets*
T0*#
_output_shapes
:���������
c
default_policy/SquareSquaredefault_policy/sub_7*
T0*#
_output_shapes
:���������
|
default_policy/sub_8Subdefault_policy/Reshape_2default_policy/vf_preds*
T0*#
_output_shapes
:���������
m
(default_policy/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A
�
&default_policy/clip_by_value_1/MinimumMinimumdefault_policy/sub_8(default_policy/clip_by_value_1/Minimum/y*
T0*#
_output_shapes
:���������
e
 default_policy/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �
�
default_policy/clip_by_value_1Maximum&default_policy/clip_by_value_1/Minimum default_policy/clip_by_value_1/y*
T0*#
_output_shapes
:���������
�
default_policy/add_2AddV2default_policy/vf_predsdefault_policy/clip_by_value_1*
T0*#
_output_shapes
:���������
}
default_policy/sub_9Subdefault_policy/add_2default_policy/value_targets*
T0*#
_output_shapes
:���������
e
default_policy/Square_1Squaredefault_policy/sub_9*
T0*#
_output_shapes
:���������

default_policy/MaximumMaximumdefault_policy/Squaredefault_policy/Square_1*
T0*#
_output_shapes
:���������
`
default_policy/Const_4Const*
_output_shapes
:*
dtype0*
valueB: 
�
default_policy/Mean_3Meandefault_policy/Maximumdefault_policy/Const_4*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
a
default_policy/Neg_7Negdefault_policy/Minimum*
T0*#
_output_shapes
:���������
p
 default_policy/ReadVariableOp_12ReadVariableOpdefault_policy/kl_coeff*
_output_shapes
: *
dtype0
�
default_policy/mul_4Mul default_policy/ReadVariableOp_12default_policy/Sum_2*
T0*#
_output_shapes
:���������
w
default_policy/add_3AddV2default_policy/Neg_7default_policy/mul_4*
T0*#
_output_shapes
:���������
[
default_policy/mul_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *Fx?
y
default_policy/mul_5Muldefault_policy/mul_5/xdefault_policy/Maximum*
T0*#
_output_shapes
:���������
w
default_policy/add_4AddV2default_policy/add_3default_policy/mul_5*
T0*#
_output_shapes
:���������
u
 default_policy/ReadVariableOp_13ReadVariableOpdefault_policy/entropy_coeff*
_output_shapes
: *
dtype0
�
default_policy/mul_6Mul default_policy/ReadVariableOp_13default_policy/Sum_4*
T0*#
_output_shapes
:���������
v
default_policy/sub_10Subdefault_policy/add_4default_policy/mul_6*
T0*#
_output_shapes
:���������
`
default_policy/Const_5Const*
_output_shapes
:*
dtype0*
valueB: 
�
default_policy/Mean_4Meandefault_policy/sub_10default_policy/Const_5*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
t
$default_policy/Cast_6/ReadVariableOpReadVariableOpdefault_policy/kl_coeff*
_output_shapes
: *
dtype0
�
default_policy/Cast_6Cast$default_policy/Cast_6/ReadVariableOp*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
n
$default_policy/Cast_7/ReadVariableOpReadVariableOpdefault_policy/lr*
_output_shapes
: *
dtype0
�
default_policy/Cast_7Cast$default_policy/Cast_7/ReadVariableOp*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
w
-default_policy/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
�
default_policy/moments/meanMeandefault_policy/value_targets-default_policy/moments/mean/reduction_indices*
T0*

Tidx0*
_output_shapes
:*
	keep_dims(
u
#default_policy/moments/StopGradientStopGradientdefault_policy/moments/mean*
T0*
_output_shapes
:
�
(default_policy/moments/SquaredDifferenceSquaredDifferencedefault_policy/value_targets#default_policy/moments/StopGradient*
T0*#
_output_shapes
:���������
{
1default_policy/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
�
default_policy/moments/varianceMean(default_policy/moments/SquaredDifference1default_policy/moments/variance/reduction_indices*
T0*

Tidx0*
_output_shapes
:*
	keep_dims(
~
default_policy/moments/SqueezeSqueezedefault_policy/moments/mean*
T0*
_output_shapes
: *
squeeze_dims
 
�
 default_policy/moments/Squeeze_1Squeezedefault_policy/moments/variance*
T0*
_output_shapes
: *
squeeze_dims
 
�
default_policy/sub_11Subdefault_policy/value_targetsdefault_policy/Reshape_2*
T0*#
_output_shapes
:���������
y
/default_policy/moments_1/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
�
default_policy/moments_1/meanMeandefault_policy/sub_11/default_policy/moments_1/mean/reduction_indices*
T0*

Tidx0*
_output_shapes
:*
	keep_dims(
y
%default_policy/moments_1/StopGradientStopGradientdefault_policy/moments_1/mean*
T0*
_output_shapes
:
�
*default_policy/moments_1/SquaredDifferenceSquaredDifferencedefault_policy/sub_11%default_policy/moments_1/StopGradient*
T0*#
_output_shapes
:���������
}
3default_policy/moments_1/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
�
!default_policy/moments_1/varianceMean*default_policy/moments_1/SquaredDifference3default_policy/moments_1/variance/reduction_indices*
T0*

Tidx0*
_output_shapes
:*
	keep_dims(
�
 default_policy/moments_1/SqueezeSqueezedefault_policy/moments_1/mean*
T0*
_output_shapes
: *
squeeze_dims
 
�
"default_policy/moments_1/Squeeze_1Squeeze!default_policy/moments_1/variance*
T0*
_output_shapes
: *
squeeze_dims
 
�
default_policy/truediv_6RealDiv"default_policy/moments_1/Squeeze_1 default_policy/moments/Squeeze_1*
T0*
_output_shapes
: 
\
default_policy/sub_12/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
p
default_policy/sub_12Subdefault_policy/sub_12/xdefault_policy/truediv_6*
T0*
_output_shapes
: 
_
default_policy/Maximum_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��
w
default_policy/Maximum_1Maximumdefault_policy/Maximum_1/xdefault_policy/sub_12*
T0*
_output_shapes
: 
y
$default_policy/Cast_8/ReadVariableOpReadVariableOpdefault_policy/entropy_coeff*
_output_shapes
: *
dtype0
�
default_policy/Cast_8Cast$default_policy/Cast_8/ReadVariableOp*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
[
default_policy/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *  (B
a
default_policy/gradients/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
m
(default_policy/gradients/grad_ys_0/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
"default_policy/gradients/grad_ys_0Filldefault_policy/gradients/Shape(default_policy/gradients/grad_ys_0/Const*
T0*
_output_shapes
: *

index_type0
�
Adefault_policy/gradients/default_policy/Mean_4_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
�
;default_policy/gradients/default_policy/Mean_4_grad/ReshapeReshape"default_policy/gradients/grad_ys_0Adefault_policy/gradients/default_policy/Mean_4_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
�
9default_policy/gradients/default_policy/Mean_4_grad/ShapeShapedefault_policy/sub_10*
T0*
_output_shapes
:*
out_type0
�
8default_policy/gradients/default_policy/Mean_4_grad/TileTile;default_policy/gradients/default_policy/Mean_4_grad/Reshape9default_policy/gradients/default_policy/Mean_4_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:���������
�
;default_policy/gradients/default_policy/Mean_4_grad/Shape_1Shapedefault_policy/sub_10*
T0*
_output_shapes
:*
out_type0
~
;default_policy/gradients/default_policy/Mean_4_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB 
�
9default_policy/gradients/default_policy/Mean_4_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
�
8default_policy/gradients/default_policy/Mean_4_grad/ProdProd;default_policy/gradients/default_policy/Mean_4_grad/Shape_19default_policy/gradients/default_policy/Mean_4_grad/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
;default_policy/gradients/default_policy/Mean_4_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
�
:default_policy/gradients/default_policy/Mean_4_grad/Prod_1Prod;default_policy/gradients/default_policy/Mean_4_grad/Shape_2;default_policy/gradients/default_policy/Mean_4_grad/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 

=default_policy/gradients/default_policy/Mean_4_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
�
;default_policy/gradients/default_policy/Mean_4_grad/MaximumMaximum:default_policy/gradients/default_policy/Mean_4_grad/Prod_1=default_policy/gradients/default_policy/Mean_4_grad/Maximum/y*
T0*
_output_shapes
: 
�
<default_policy/gradients/default_policy/Mean_4_grad/floordivFloorDiv8default_policy/gradients/default_policy/Mean_4_grad/Prod;default_policy/gradients/default_policy/Mean_4_grad/Maximum*
T0*
_output_shapes
: 
�
8default_policy/gradients/default_policy/Mean_4_grad/CastCast<default_policy/gradients/default_policy/Mean_4_grad/floordiv*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
�
;default_policy/gradients/default_policy/Mean_4_grad/truedivRealDiv8default_policy/gradients/default_policy/Mean_4_grad/Tile8default_policy/gradients/default_policy/Mean_4_grad/Cast*
T0*#
_output_shapes
:���������
�
9default_policy/gradients/default_policy/sub_10_grad/ShapeShapedefault_policy/add_4*
T0*
_output_shapes
:*
out_type0
�
;default_policy/gradients/default_policy/sub_10_grad/Shape_1Shapedefault_policy/mul_6*
T0*
_output_shapes
:*
out_type0
�
Idefault_policy/gradients/default_policy/sub_10_grad/BroadcastGradientArgsBroadcastGradientArgs9default_policy/gradients/default_policy/sub_10_grad/Shape;default_policy/gradients/default_policy/sub_10_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
7default_policy/gradients/default_policy/sub_10_grad/SumSum;default_policy/gradients/default_policy/Mean_4_grad/truedivIdefault_policy/gradients/default_policy/sub_10_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
;default_policy/gradients/default_policy/sub_10_grad/ReshapeReshape7default_policy/gradients/default_policy/sub_10_grad/Sum9default_policy/gradients/default_policy/sub_10_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
7default_policy/gradients/default_policy/sub_10_grad/NegNeg;default_policy/gradients/default_policy/Mean_4_grad/truediv*
T0*#
_output_shapes
:���������
�
9default_policy/gradients/default_policy/sub_10_grad/Sum_1Sum7default_policy/gradients/default_policy/sub_10_grad/NegKdefault_policy/gradients/default_policy/sub_10_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
=default_policy/gradients/default_policy/sub_10_grad/Reshape_1Reshape9default_policy/gradients/default_policy/sub_10_grad/Sum_1;default_policy/gradients/default_policy/sub_10_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:���������
�
Ddefault_policy/gradients/default_policy/sub_10_grad/tuple/group_depsNoOp<^default_policy/gradients/default_policy/sub_10_grad/Reshape>^default_policy/gradients/default_policy/sub_10_grad/Reshape_1
�
Ldefault_policy/gradients/default_policy/sub_10_grad/tuple/control_dependencyIdentity;default_policy/gradients/default_policy/sub_10_grad/ReshapeE^default_policy/gradients/default_policy/sub_10_grad/tuple/group_deps*
T0*N
_classD
B@loc:@default_policy/gradients/default_policy/sub_10_grad/Reshape*#
_output_shapes
:���������
�
Ndefault_policy/gradients/default_policy/sub_10_grad/tuple/control_dependency_1Identity=default_policy/gradients/default_policy/sub_10_grad/Reshape_1E^default_policy/gradients/default_policy/sub_10_grad/tuple/group_deps*
T0*P
_classF
DBloc:@default_policy/gradients/default_policy/sub_10_grad/Reshape_1*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/add_4_grad/ShapeShapedefault_policy/add_3*
T0*
_output_shapes
:*
out_type0
�
:default_policy/gradients/default_policy/add_4_grad/Shape_1Shapedefault_policy/mul_5*
T0*
_output_shapes
:*
out_type0
�
Hdefault_policy/gradients/default_policy/add_4_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/add_4_grad/Shape:default_policy/gradients/default_policy/add_4_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6default_policy/gradients/default_policy/add_4_grad/SumSumLdefault_policy/gradients/default_policy/sub_10_grad/tuple/control_dependencyHdefault_policy/gradients/default_policy/add_4_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
:default_policy/gradients/default_policy/add_4_grad/ReshapeReshape6default_policy/gradients/default_policy/add_4_grad/Sum8default_policy/gradients/default_policy/add_4_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/add_4_grad/Sum_1SumLdefault_policy/gradients/default_policy/sub_10_grad/tuple/control_dependencyJdefault_policy/gradients/default_policy/add_4_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
<default_policy/gradients/default_policy/add_4_grad/Reshape_1Reshape8default_policy/gradients/default_policy/add_4_grad/Sum_1:default_policy/gradients/default_policy/add_4_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:���������
�
Cdefault_policy/gradients/default_policy/add_4_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/add_4_grad/Reshape=^default_policy/gradients/default_policy/add_4_grad/Reshape_1
�
Kdefault_policy/gradients/default_policy/add_4_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/add_4_grad/ReshapeD^default_policy/gradients/default_policy/add_4_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/add_4_grad/Reshape*#
_output_shapes
:���������
�
Mdefault_policy/gradients/default_policy/add_4_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/add_4_grad/Reshape_1D^default_policy/gradients/default_policy/add_4_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/add_4_grad/Reshape_1*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/mul_6_grad/ShapeShape default_policy/ReadVariableOp_13*
T0*
_output_shapes
: *
out_type0
�
:default_policy/gradients/default_policy/mul_6_grad/Shape_1Shapedefault_policy/Sum_4*
T0*
_output_shapes
:*
out_type0
�
Hdefault_policy/gradients/default_policy/mul_6_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/mul_6_grad/Shape:default_policy/gradients/default_policy/mul_6_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6default_policy/gradients/default_policy/mul_6_grad/MulMulNdefault_policy/gradients/default_policy/sub_10_grad/tuple/control_dependency_1default_policy/Sum_4*
T0*#
_output_shapes
:���������
�
6default_policy/gradients/default_policy/mul_6_grad/SumSum6default_policy/gradients/default_policy/mul_6_grad/MulHdefault_policy/gradients/default_policy/mul_6_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
:default_policy/gradients/default_policy/mul_6_grad/ReshapeReshape6default_policy/gradients/default_policy/mul_6_grad/Sum8default_policy/gradients/default_policy/mul_6_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
�
8default_policy/gradients/default_policy/mul_6_grad/Mul_1Mul default_policy/ReadVariableOp_13Ndefault_policy/gradients/default_policy/sub_10_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/mul_6_grad/Sum_1Sum8default_policy/gradients/default_policy/mul_6_grad/Mul_1Jdefault_policy/gradients/default_policy/mul_6_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
<default_policy/gradients/default_policy/mul_6_grad/Reshape_1Reshape8default_policy/gradients/default_policy/mul_6_grad/Sum_1:default_policy/gradients/default_policy/mul_6_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:���������
�
Cdefault_policy/gradients/default_policy/mul_6_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/mul_6_grad/Reshape=^default_policy/gradients/default_policy/mul_6_grad/Reshape_1
�
Kdefault_policy/gradients/default_policy/mul_6_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/mul_6_grad/ReshapeD^default_policy/gradients/default_policy/mul_6_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/mul_6_grad/Reshape*
_output_shapes
: 
�
Mdefault_policy/gradients/default_policy/mul_6_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/mul_6_grad/Reshape_1D^default_policy/gradients/default_policy/mul_6_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/mul_6_grad/Reshape_1*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/add_3_grad/ShapeShapedefault_policy/Neg_7*
T0*
_output_shapes
:*
out_type0
�
:default_policy/gradients/default_policy/add_3_grad/Shape_1Shapedefault_policy/mul_4*
T0*
_output_shapes
:*
out_type0
�
Hdefault_policy/gradients/default_policy/add_3_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/add_3_grad/Shape:default_policy/gradients/default_policy/add_3_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6default_policy/gradients/default_policy/add_3_grad/SumSumKdefault_policy/gradients/default_policy/add_4_grad/tuple/control_dependencyHdefault_policy/gradients/default_policy/add_3_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
:default_policy/gradients/default_policy/add_3_grad/ReshapeReshape6default_policy/gradients/default_policy/add_3_grad/Sum8default_policy/gradients/default_policy/add_3_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/add_3_grad/Sum_1SumKdefault_policy/gradients/default_policy/add_4_grad/tuple/control_dependencyJdefault_policy/gradients/default_policy/add_3_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
<default_policy/gradients/default_policy/add_3_grad/Reshape_1Reshape8default_policy/gradients/default_policy/add_3_grad/Sum_1:default_policy/gradients/default_policy/add_3_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:���������
�
Cdefault_policy/gradients/default_policy/add_3_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/add_3_grad/Reshape=^default_policy/gradients/default_policy/add_3_grad/Reshape_1
�
Kdefault_policy/gradients/default_policy/add_3_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/add_3_grad/ReshapeD^default_policy/gradients/default_policy/add_3_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/add_3_grad/Reshape*#
_output_shapes
:���������
�
Mdefault_policy/gradients/default_policy/add_3_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/add_3_grad/Reshape_1D^default_policy/gradients/default_policy/add_3_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/add_3_grad/Reshape_1*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/mul_5_grad/ShapeShapedefault_policy/mul_5/x*
T0*
_output_shapes
: *
out_type0
�
:default_policy/gradients/default_policy/mul_5_grad/Shape_1Shapedefault_policy/Maximum*
T0*
_output_shapes
:*
out_type0
�
Hdefault_policy/gradients/default_policy/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/mul_5_grad/Shape:default_policy/gradients/default_policy/mul_5_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6default_policy/gradients/default_policy/mul_5_grad/MulMulMdefault_policy/gradients/default_policy/add_4_grad/tuple/control_dependency_1default_policy/Maximum*
T0*#
_output_shapes
:���������
�
6default_policy/gradients/default_policy/mul_5_grad/SumSum6default_policy/gradients/default_policy/mul_5_grad/MulHdefault_policy/gradients/default_policy/mul_5_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
:default_policy/gradients/default_policy/mul_5_grad/ReshapeReshape6default_policy/gradients/default_policy/mul_5_grad/Sum8default_policy/gradients/default_policy/mul_5_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
�
8default_policy/gradients/default_policy/mul_5_grad/Mul_1Muldefault_policy/mul_5/xMdefault_policy/gradients/default_policy/add_4_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/mul_5_grad/Sum_1Sum8default_policy/gradients/default_policy/mul_5_grad/Mul_1Jdefault_policy/gradients/default_policy/mul_5_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
<default_policy/gradients/default_policy/mul_5_grad/Reshape_1Reshape8default_policy/gradients/default_policy/mul_5_grad/Sum_1:default_policy/gradients/default_policy/mul_5_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:���������
�
Cdefault_policy/gradients/default_policy/mul_5_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/mul_5_grad/Reshape=^default_policy/gradients/default_policy/mul_5_grad/Reshape_1
�
Kdefault_policy/gradients/default_policy/mul_5_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/mul_5_grad/ReshapeD^default_policy/gradients/default_policy/mul_5_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/mul_5_grad/Reshape*
_output_shapes
: 
�
Mdefault_policy/gradients/default_policy/mul_5_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/mul_5_grad/Reshape_1D^default_policy/gradients/default_policy/mul_5_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/mul_5_grad/Reshape_1*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/Sum_4_grad/ShapeShapedefault_policy/mul_1*
T0*
_output_shapes
:*
out_type0
�
7default_policy/gradients/default_policy/Sum_4_grad/SizeConst*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_4_grad/Shape*
_output_shapes
: *
dtype0*
value	B :
�
6default_policy/gradients/default_policy/Sum_4_grad/addAddV2&default_policy/Sum_4/reduction_indices7default_policy/gradients/default_policy/Sum_4_grad/Size*
T0*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_4_grad/Shape*
_output_shapes
: 
�
6default_policy/gradients/default_policy/Sum_4_grad/modFloorMod6default_policy/gradients/default_policy/Sum_4_grad/add7default_policy/gradients/default_policy/Sum_4_grad/Size*
T0*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_4_grad/Shape*
_output_shapes
: 
�
:default_policy/gradients/default_policy/Sum_4_grad/Shape_1Const*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_4_grad/Shape*
_output_shapes
: *
dtype0*
valueB 
�
>default_policy/gradients/default_policy/Sum_4_grad/range/startConst*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_4_grad/Shape*
_output_shapes
: *
dtype0*
value	B : 
�
>default_policy/gradients/default_policy/Sum_4_grad/range/deltaConst*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_4_grad/Shape*
_output_shapes
: *
dtype0*
value	B :
�
8default_policy/gradients/default_policy/Sum_4_grad/rangeRange>default_policy/gradients/default_policy/Sum_4_grad/range/start7default_policy/gradients/default_policy/Sum_4_grad/Size>default_policy/gradients/default_policy/Sum_4_grad/range/delta*

Tidx0*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_4_grad/Shape*
_output_shapes
:
�
=default_policy/gradients/default_policy/Sum_4_grad/ones/ConstConst*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_4_grad/Shape*
_output_shapes
: *
dtype0*
value	B :
�
7default_policy/gradients/default_policy/Sum_4_grad/onesFill:default_policy/gradients/default_policy/Sum_4_grad/Shape_1=default_policy/gradients/default_policy/Sum_4_grad/ones/Const*
T0*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_4_grad/Shape*
_output_shapes
: *

index_type0
�
@default_policy/gradients/default_policy/Sum_4_grad/DynamicStitchDynamicStitch8default_policy/gradients/default_policy/Sum_4_grad/range6default_policy/gradients/default_policy/Sum_4_grad/mod8default_policy/gradients/default_policy/Sum_4_grad/Shape7default_policy/gradients/default_policy/Sum_4_grad/ones*
N*
T0*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_4_grad/Shape*
_output_shapes
:
�
:default_policy/gradients/default_policy/Sum_4_grad/ReshapeReshapeMdefault_policy/gradients/default_policy/mul_6_grad/tuple/control_dependency_1@default_policy/gradients/default_policy/Sum_4_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:������������������
�
>default_policy/gradients/default_policy/Sum_4_grad/BroadcastToBroadcastTo:default_policy/gradients/default_policy/Sum_4_grad/Reshape8default_policy/gradients/default_policy/Sum_4_grad/Shape*
T0*

Tidx0*(
_output_shapes
:����������
�
6default_policy/gradients/default_policy/Neg_7_grad/NegNegKdefault_policy/gradients/default_policy/add_3_grad/tuple/control_dependency*
T0*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/mul_4_grad/ShapeShape default_policy/ReadVariableOp_12*
T0*
_output_shapes
: *
out_type0
�
:default_policy/gradients/default_policy/mul_4_grad/Shape_1Shapedefault_policy/Sum_2*
T0*
_output_shapes
:*
out_type0
�
Hdefault_policy/gradients/default_policy/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/mul_4_grad/Shape:default_policy/gradients/default_policy/mul_4_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6default_policy/gradients/default_policy/mul_4_grad/MulMulMdefault_policy/gradients/default_policy/add_3_grad/tuple/control_dependency_1default_policy/Sum_2*
T0*#
_output_shapes
:���������
�
6default_policy/gradients/default_policy/mul_4_grad/SumSum6default_policy/gradients/default_policy/mul_4_grad/MulHdefault_policy/gradients/default_policy/mul_4_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
:default_policy/gradients/default_policy/mul_4_grad/ReshapeReshape6default_policy/gradients/default_policy/mul_4_grad/Sum8default_policy/gradients/default_policy/mul_4_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
�
8default_policy/gradients/default_policy/mul_4_grad/Mul_1Mul default_policy/ReadVariableOp_12Mdefault_policy/gradients/default_policy/add_3_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/mul_4_grad/Sum_1Sum8default_policy/gradients/default_policy/mul_4_grad/Mul_1Jdefault_policy/gradients/default_policy/mul_4_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
<default_policy/gradients/default_policy/mul_4_grad/Reshape_1Reshape8default_policy/gradients/default_policy/mul_4_grad/Sum_1:default_policy/gradients/default_policy/mul_4_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:���������
�
Cdefault_policy/gradients/default_policy/mul_4_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/mul_4_grad/Reshape=^default_policy/gradients/default_policy/mul_4_grad/Reshape_1
�
Kdefault_policy/gradients/default_policy/mul_4_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/mul_4_grad/ReshapeD^default_policy/gradients/default_policy/mul_4_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/mul_4_grad/Reshape*
_output_shapes
: 
�
Mdefault_policy/gradients/default_policy/mul_4_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/mul_4_grad/Reshape_1D^default_policy/gradients/default_policy/mul_4_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/mul_4_grad/Reshape_1*#
_output_shapes
:���������
�
:default_policy/gradients/default_policy/Maximum_grad/ShapeShapedefault_policy/Square*
T0*
_output_shapes
:*
out_type0
�
<default_policy/gradients/default_policy/Maximum_grad/Shape_1Shapedefault_policy/Square_1*
T0*
_output_shapes
:*
out_type0
�
?default_policy/gradients/default_policy/Maximum_grad/zeros_like	ZerosLikeMdefault_policy/gradients/default_policy/mul_5_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:���������
�
Adefault_policy/gradients/default_policy/Maximum_grad/GreaterEqualGreaterEqualdefault_policy/Squaredefault_policy/Square_1*
T0*#
_output_shapes
:���������
�
Jdefault_policy/gradients/default_policy/Maximum_grad/BroadcastGradientArgsBroadcastGradientArgs:default_policy/gradients/default_policy/Maximum_grad/Shape<default_policy/gradients/default_policy/Maximum_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
=default_policy/gradients/default_policy/Maximum_grad/SelectV2SelectV2Adefault_policy/gradients/default_policy/Maximum_grad/GreaterEqualMdefault_policy/gradients/default_policy/mul_5_grad/tuple/control_dependency_1?default_policy/gradients/default_policy/Maximum_grad/zeros_like*
T0*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/Maximum_grad/SumSum=default_policy/gradients/default_policy/Maximum_grad/SelectV2Jdefault_policy/gradients/default_policy/Maximum_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
<default_policy/gradients/default_policy/Maximum_grad/ReshapeReshape8default_policy/gradients/default_policy/Maximum_grad/Sum:default_policy/gradients/default_policy/Maximum_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
?default_policy/gradients/default_policy/Maximum_grad/SelectV2_1SelectV2Adefault_policy/gradients/default_policy/Maximum_grad/GreaterEqual?default_policy/gradients/default_policy/Maximum_grad/zeros_likeMdefault_policy/gradients/default_policy/mul_5_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:���������
�
:default_policy/gradients/default_policy/Maximum_grad/Sum_1Sum?default_policy/gradients/default_policy/Maximum_grad/SelectV2_1Ldefault_policy/gradients/default_policy/Maximum_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
>default_policy/gradients/default_policy/Maximum_grad/Reshape_1Reshape:default_policy/gradients/default_policy/Maximum_grad/Sum_1<default_policy/gradients/default_policy/Maximum_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:���������
�
Edefault_policy/gradients/default_policy/Maximum_grad/tuple/group_depsNoOp=^default_policy/gradients/default_policy/Maximum_grad/Reshape?^default_policy/gradients/default_policy/Maximum_grad/Reshape_1
�
Mdefault_policy/gradients/default_policy/Maximum_grad/tuple/control_dependencyIdentity<default_policy/gradients/default_policy/Maximum_grad/ReshapeF^default_policy/gradients/default_policy/Maximum_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/Maximum_grad/Reshape*#
_output_shapes
:���������
�
Odefault_policy/gradients/default_policy/Maximum_grad/tuple/control_dependency_1Identity>default_policy/gradients/default_policy/Maximum_grad/Reshape_1F^default_policy/gradients/default_policy/Maximum_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@default_policy/gradients/default_policy/Maximum_grad/Reshape_1*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/mul_1_grad/ShapeShapedefault_policy/truediv_5*
T0*
_output_shapes
:*
out_type0
�
:default_policy/gradients/default_policy/mul_1_grad/Shape_1Shapedefault_policy/sub_6*
T0*
_output_shapes
:*
out_type0
�
Hdefault_policy/gradients/default_policy/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/mul_1_grad/Shape:default_policy/gradients/default_policy/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6default_policy/gradients/default_policy/mul_1_grad/MulMul>default_policy/gradients/default_policy/Sum_4_grad/BroadcastTodefault_policy/sub_6*
T0*(
_output_shapes
:����������
�
6default_policy/gradients/default_policy/mul_1_grad/SumSum6default_policy/gradients/default_policy/mul_1_grad/MulHdefault_policy/gradients/default_policy/mul_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
:default_policy/gradients/default_policy/mul_1_grad/ReshapeReshape6default_policy/gradients/default_policy/mul_1_grad/Sum8default_policy/gradients/default_policy/mul_1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:����������
�
8default_policy/gradients/default_policy/mul_1_grad/Mul_1Muldefault_policy/truediv_5>default_policy/gradients/default_policy/Sum_4_grad/BroadcastTo*
T0*(
_output_shapes
:����������
�
8default_policy/gradients/default_policy/mul_1_grad/Sum_1Sum8default_policy/gradients/default_policy/mul_1_grad/Mul_1Jdefault_policy/gradients/default_policy/mul_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
<default_policy/gradients/default_policy/mul_1_grad/Reshape_1Reshape8default_policy/gradients/default_policy/mul_1_grad/Sum_1:default_policy/gradients/default_policy/mul_1_grad/Shape_1*
T0*
Tshape0*(
_output_shapes
:����������
�
Cdefault_policy/gradients/default_policy/mul_1_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/mul_1_grad/Reshape=^default_policy/gradients/default_policy/mul_1_grad/Reshape_1
�
Kdefault_policy/gradients/default_policy/mul_1_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/mul_1_grad/ReshapeD^default_policy/gradients/default_policy/mul_1_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/mul_1_grad/Reshape*(
_output_shapes
:����������
�
Mdefault_policy/gradients/default_policy/mul_1_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/mul_1_grad/Reshape_1D^default_policy/gradients/default_policy/mul_1_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/mul_1_grad/Reshape_1*(
_output_shapes
:����������
�
:default_policy/gradients/default_policy/Minimum_grad/ShapeShapedefault_policy/mul_2*
T0*
_output_shapes
:*
out_type0
�
<default_policy/gradients/default_policy/Minimum_grad/Shape_1Shapedefault_policy/mul_3*
T0*
_output_shapes
:*
out_type0
�
?default_policy/gradients/default_policy/Minimum_grad/zeros_like	ZerosLike6default_policy/gradients/default_policy/Neg_7_grad/Neg*
T0*#
_output_shapes
:���������
�
>default_policy/gradients/default_policy/Minimum_grad/LessEqual	LessEqualdefault_policy/mul_2default_policy/mul_3*
T0*#
_output_shapes
:���������
�
Jdefault_policy/gradients/default_policy/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs:default_policy/gradients/default_policy/Minimum_grad/Shape<default_policy/gradients/default_policy/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
=default_policy/gradients/default_policy/Minimum_grad/SelectV2SelectV2>default_policy/gradients/default_policy/Minimum_grad/LessEqual6default_policy/gradients/default_policy/Neg_7_grad/Neg?default_policy/gradients/default_policy/Minimum_grad/zeros_like*
T0*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/Minimum_grad/SumSum=default_policy/gradients/default_policy/Minimum_grad/SelectV2Jdefault_policy/gradients/default_policy/Minimum_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
<default_policy/gradients/default_policy/Minimum_grad/ReshapeReshape8default_policy/gradients/default_policy/Minimum_grad/Sum:default_policy/gradients/default_policy/Minimum_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
?default_policy/gradients/default_policy/Minimum_grad/SelectV2_1SelectV2>default_policy/gradients/default_policy/Minimum_grad/LessEqual?default_policy/gradients/default_policy/Minimum_grad/zeros_like6default_policy/gradients/default_policy/Neg_7_grad/Neg*
T0*#
_output_shapes
:���������
�
:default_policy/gradients/default_policy/Minimum_grad/Sum_1Sum?default_policy/gradients/default_policy/Minimum_grad/SelectV2_1Ldefault_policy/gradients/default_policy/Minimum_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
>default_policy/gradients/default_policy/Minimum_grad/Reshape_1Reshape:default_policy/gradients/default_policy/Minimum_grad/Sum_1<default_policy/gradients/default_policy/Minimum_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:���������
�
Edefault_policy/gradients/default_policy/Minimum_grad/tuple/group_depsNoOp=^default_policy/gradients/default_policy/Minimum_grad/Reshape?^default_policy/gradients/default_policy/Minimum_grad/Reshape_1
�
Mdefault_policy/gradients/default_policy/Minimum_grad/tuple/control_dependencyIdentity<default_policy/gradients/default_policy/Minimum_grad/ReshapeF^default_policy/gradients/default_policy/Minimum_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/Minimum_grad/Reshape*#
_output_shapes
:���������
�
Odefault_policy/gradients/default_policy/Minimum_grad/tuple/control_dependency_1Identity>default_policy/gradients/default_policy/Minimum_grad/Reshape_1F^default_policy/gradients/default_policy/Minimum_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@default_policy/gradients/default_policy/Minimum_grad/Reshape_1*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/Sum_2_grad/ShapeShapedefault_policy/mul*
T0*
_output_shapes
:*
out_type0
�
7default_policy/gradients/default_policy/Sum_2_grad/SizeConst*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_2_grad/Shape*
_output_shapes
: *
dtype0*
value	B :
�
6default_policy/gradients/default_policy/Sum_2_grad/addAddV2&default_policy/Sum_2/reduction_indices7default_policy/gradients/default_policy/Sum_2_grad/Size*
T0*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_2_grad/Shape*
_output_shapes
: 
�
6default_policy/gradients/default_policy/Sum_2_grad/modFloorMod6default_policy/gradients/default_policy/Sum_2_grad/add7default_policy/gradients/default_policy/Sum_2_grad/Size*
T0*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_2_grad/Shape*
_output_shapes
: 
�
:default_policy/gradients/default_policy/Sum_2_grad/Shape_1Const*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_2_grad/Shape*
_output_shapes
: *
dtype0*
valueB 
�
>default_policy/gradients/default_policy/Sum_2_grad/range/startConst*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_2_grad/Shape*
_output_shapes
: *
dtype0*
value	B : 
�
>default_policy/gradients/default_policy/Sum_2_grad/range/deltaConst*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_2_grad/Shape*
_output_shapes
: *
dtype0*
value	B :
�
8default_policy/gradients/default_policy/Sum_2_grad/rangeRange>default_policy/gradients/default_policy/Sum_2_grad/range/start7default_policy/gradients/default_policy/Sum_2_grad/Size>default_policy/gradients/default_policy/Sum_2_grad/range/delta*

Tidx0*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_2_grad/Shape*
_output_shapes
:
�
=default_policy/gradients/default_policy/Sum_2_grad/ones/ConstConst*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_2_grad/Shape*
_output_shapes
: *
dtype0*
value	B :
�
7default_policy/gradients/default_policy/Sum_2_grad/onesFill:default_policy/gradients/default_policy/Sum_2_grad/Shape_1=default_policy/gradients/default_policy/Sum_2_grad/ones/Const*
T0*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_2_grad/Shape*
_output_shapes
: *

index_type0
�
@default_policy/gradients/default_policy/Sum_2_grad/DynamicStitchDynamicStitch8default_policy/gradients/default_policy/Sum_2_grad/range6default_policy/gradients/default_policy/Sum_2_grad/mod8default_policy/gradients/default_policy/Sum_2_grad/Shape7default_policy/gradients/default_policy/Sum_2_grad/ones*
N*
T0*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_2_grad/Shape*
_output_shapes
:
�
:default_policy/gradients/default_policy/Sum_2_grad/ReshapeReshapeMdefault_policy/gradients/default_policy/mul_4_grad/tuple/control_dependency_1@default_policy/gradients/default_policy/Sum_2_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:������������������
�
>default_policy/gradients/default_policy/Sum_2_grad/BroadcastToBroadcastTo:default_policy/gradients/default_policy/Sum_2_grad/Reshape8default_policy/gradients/default_policy/Sum_2_grad/Shape*
T0*

Tidx0*(
_output_shapes
:����������
�
9default_policy/gradients/default_policy/Square_grad/ConstConstN^default_policy/gradients/default_policy/Maximum_grad/tuple/control_dependency*
_output_shapes
: *
dtype0*
valueB
 *   @
�
7default_policy/gradients/default_policy/Square_grad/MulMuldefault_policy/sub_79default_policy/gradients/default_policy/Square_grad/Const*
T0*#
_output_shapes
:���������
�
9default_policy/gradients/default_policy/Square_grad/Mul_1MulMdefault_policy/gradients/default_policy/Maximum_grad/tuple/control_dependency7default_policy/gradients/default_policy/Square_grad/Mul*
T0*#
_output_shapes
:���������
�
;default_policy/gradients/default_policy/Square_1_grad/ConstConstP^default_policy/gradients/default_policy/Maximum_grad/tuple/control_dependency_1*
_output_shapes
: *
dtype0*
valueB
 *   @
�
9default_policy/gradients/default_policy/Square_1_grad/MulMuldefault_policy/sub_9;default_policy/gradients/default_policy/Square_1_grad/Const*
T0*#
_output_shapes
:���������
�
;default_policy/gradients/default_policy/Square_1_grad/Mul_1MulOdefault_policy/gradients/default_policy/Maximum_grad/tuple/control_dependency_19default_policy/gradients/default_policy/Square_1_grad/Mul*
T0*#
_output_shapes
:���������
�
<default_policy/gradients/default_policy/truediv_5_grad/ShapeShapedefault_policy/Exp_5*
T0*
_output_shapes
:*
out_type0
�
>default_policy/gradients/default_policy/truediv_5_grad/Shape_1Shapedefault_policy/Sum_3*
T0*
_output_shapes
:*
out_type0
�
Ldefault_policy/gradients/default_policy/truediv_5_grad/BroadcastGradientArgsBroadcastGradientArgs<default_policy/gradients/default_policy/truediv_5_grad/Shape>default_policy/gradients/default_policy/truediv_5_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
>default_policy/gradients/default_policy/truediv_5_grad/RealDivRealDivKdefault_policy/gradients/default_policy/mul_1_grad/tuple/control_dependencydefault_policy/Sum_3*
T0*(
_output_shapes
:����������
�
:default_policy/gradients/default_policy/truediv_5_grad/SumSum>default_policy/gradients/default_policy/truediv_5_grad/RealDivLdefault_policy/gradients/default_policy/truediv_5_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
>default_policy/gradients/default_policy/truediv_5_grad/ReshapeReshape:default_policy/gradients/default_policy/truediv_5_grad/Sum<default_policy/gradients/default_policy/truediv_5_grad/Shape*
T0*
Tshape0*(
_output_shapes
:����������
�
:default_policy/gradients/default_policy/truediv_5_grad/NegNegdefault_policy/Exp_5*
T0*(
_output_shapes
:����������
�
@default_policy/gradients/default_policy/truediv_5_grad/RealDiv_1RealDiv:default_policy/gradients/default_policy/truediv_5_grad/Negdefault_policy/Sum_3*
T0*(
_output_shapes
:����������
�
@default_policy/gradients/default_policy/truediv_5_grad/RealDiv_2RealDiv@default_policy/gradients/default_policy/truediv_5_grad/RealDiv_1default_policy/Sum_3*
T0*(
_output_shapes
:����������
�
:default_policy/gradients/default_policy/truediv_5_grad/mulMulKdefault_policy/gradients/default_policy/mul_1_grad/tuple/control_dependency@default_policy/gradients/default_policy/truediv_5_grad/RealDiv_2*
T0*(
_output_shapes
:����������
�
<default_policy/gradients/default_policy/truediv_5_grad/Sum_1Sum:default_policy/gradients/default_policy/truediv_5_grad/mulNdefault_policy/gradients/default_policy/truediv_5_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
@default_policy/gradients/default_policy/truediv_5_grad/Reshape_1Reshape<default_policy/gradients/default_policy/truediv_5_grad/Sum_1>default_policy/gradients/default_policy/truediv_5_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
Gdefault_policy/gradients/default_policy/truediv_5_grad/tuple/group_depsNoOp?^default_policy/gradients/default_policy/truediv_5_grad/ReshapeA^default_policy/gradients/default_policy/truediv_5_grad/Reshape_1
�
Odefault_policy/gradients/default_policy/truediv_5_grad/tuple/control_dependencyIdentity>default_policy/gradients/default_policy/truediv_5_grad/ReshapeH^default_policy/gradients/default_policy/truediv_5_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@default_policy/gradients/default_policy/truediv_5_grad/Reshape*(
_output_shapes
:����������
�
Qdefault_policy/gradients/default_policy/truediv_5_grad/tuple/control_dependency_1Identity@default_policy/gradients/default_policy/truediv_5_grad/Reshape_1H^default_policy/gradients/default_policy/truediv_5_grad/tuple/group_deps*
T0*S
_classI
GEloc:@default_policy/gradients/default_policy/truediv_5_grad/Reshape_1*'
_output_shapes
:���������
�
8default_policy/gradients/default_policy/sub_6_grad/ShapeShapedefault_policy/Log_2*
T0*
_output_shapes
:*
out_type0
�
:default_policy/gradients/default_policy/sub_6_grad/Shape_1Shapedefault_policy/sub_5*
T0*
_output_shapes
:*
out_type0
�
Hdefault_policy/gradients/default_policy/sub_6_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/sub_6_grad/Shape:default_policy/gradients/default_policy/sub_6_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6default_policy/gradients/default_policy/sub_6_grad/SumSumMdefault_policy/gradients/default_policy/mul_1_grad/tuple/control_dependency_1Hdefault_policy/gradients/default_policy/sub_6_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
:default_policy/gradients/default_policy/sub_6_grad/ReshapeReshape6default_policy/gradients/default_policy/sub_6_grad/Sum8default_policy/gradients/default_policy/sub_6_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
6default_policy/gradients/default_policy/sub_6_grad/NegNegMdefault_policy/gradients/default_policy/mul_1_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:����������
�
8default_policy/gradients/default_policy/sub_6_grad/Sum_1Sum6default_policy/gradients/default_policy/sub_6_grad/NegJdefault_policy/gradients/default_policy/sub_6_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
<default_policy/gradients/default_policy/sub_6_grad/Reshape_1Reshape8default_policy/gradients/default_policy/sub_6_grad/Sum_1:default_policy/gradients/default_policy/sub_6_grad/Shape_1*
T0*
Tshape0*(
_output_shapes
:����������
�
Cdefault_policy/gradients/default_policy/sub_6_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/sub_6_grad/Reshape=^default_policy/gradients/default_policy/sub_6_grad/Reshape_1
�
Kdefault_policy/gradients/default_policy/sub_6_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/sub_6_grad/ReshapeD^default_policy/gradients/default_policy/sub_6_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/sub_6_grad/Reshape*'
_output_shapes
:���������
�
Mdefault_policy/gradients/default_policy/sub_6_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/sub_6_grad/Reshape_1D^default_policy/gradients/default_policy/sub_6_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/sub_6_grad/Reshape_1*(
_output_shapes
:����������
�
8default_policy/gradients/default_policy/mul_2_grad/ShapeShapedefault_policy/advantages*
T0*
_output_shapes
:*
out_type0
�
:default_policy/gradients/default_policy/mul_2_grad/Shape_1Shapedefault_policy/Exp_2*
T0*
_output_shapes
:*
out_type0
�
Hdefault_policy/gradients/default_policy/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/mul_2_grad/Shape:default_policy/gradients/default_policy/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6default_policy/gradients/default_policy/mul_2_grad/MulMulMdefault_policy/gradients/default_policy/Minimum_grad/tuple/control_dependencydefault_policy/Exp_2*
T0*#
_output_shapes
:���������
�
6default_policy/gradients/default_policy/mul_2_grad/SumSum6default_policy/gradients/default_policy/mul_2_grad/MulHdefault_policy/gradients/default_policy/mul_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
:default_policy/gradients/default_policy/mul_2_grad/ReshapeReshape6default_policy/gradients/default_policy/mul_2_grad/Sum8default_policy/gradients/default_policy/mul_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/mul_2_grad/Mul_1Muldefault_policy/advantagesMdefault_policy/gradients/default_policy/Minimum_grad/tuple/control_dependency*
T0*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/mul_2_grad/Sum_1Sum8default_policy/gradients/default_policy/mul_2_grad/Mul_1Jdefault_policy/gradients/default_policy/mul_2_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
<default_policy/gradients/default_policy/mul_2_grad/Reshape_1Reshape8default_policy/gradients/default_policy/mul_2_grad/Sum_1:default_policy/gradients/default_policy/mul_2_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:���������
�
Cdefault_policy/gradients/default_policy/mul_2_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/mul_2_grad/Reshape=^default_policy/gradients/default_policy/mul_2_grad/Reshape_1
�
Kdefault_policy/gradients/default_policy/mul_2_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/mul_2_grad/ReshapeD^default_policy/gradients/default_policy/mul_2_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/mul_2_grad/Reshape*#
_output_shapes
:���������
�
Mdefault_policy/gradients/default_policy/mul_2_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/mul_2_grad/Reshape_1D^default_policy/gradients/default_policy/mul_2_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/mul_2_grad/Reshape_1*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/mul_3_grad/ShapeShapedefault_policy/advantages*
T0*
_output_shapes
:*
out_type0
�
:default_policy/gradients/default_policy/mul_3_grad/Shape_1Shapedefault_policy/clip_by_value*
T0*
_output_shapes
:*
out_type0
�
Hdefault_policy/gradients/default_policy/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/mul_3_grad/Shape:default_policy/gradients/default_policy/mul_3_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6default_policy/gradients/default_policy/mul_3_grad/MulMulOdefault_policy/gradients/default_policy/Minimum_grad/tuple/control_dependency_1default_policy/clip_by_value*
T0*#
_output_shapes
:���������
�
6default_policy/gradients/default_policy/mul_3_grad/SumSum6default_policy/gradients/default_policy/mul_3_grad/MulHdefault_policy/gradients/default_policy/mul_3_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
:default_policy/gradients/default_policy/mul_3_grad/ReshapeReshape6default_policy/gradients/default_policy/mul_3_grad/Sum8default_policy/gradients/default_policy/mul_3_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/mul_3_grad/Mul_1Muldefault_policy/advantagesOdefault_policy/gradients/default_policy/Minimum_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/mul_3_grad/Sum_1Sum8default_policy/gradients/default_policy/mul_3_grad/Mul_1Jdefault_policy/gradients/default_policy/mul_3_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
<default_policy/gradients/default_policy/mul_3_grad/Reshape_1Reshape8default_policy/gradients/default_policy/mul_3_grad/Sum_1:default_policy/gradients/default_policy/mul_3_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:���������
�
Cdefault_policy/gradients/default_policy/mul_3_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/mul_3_grad/Reshape=^default_policy/gradients/default_policy/mul_3_grad/Reshape_1
�
Kdefault_policy/gradients/default_policy/mul_3_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/mul_3_grad/ReshapeD^default_policy/gradients/default_policy/mul_3_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/mul_3_grad/Reshape*#
_output_shapes
:���������
�
Mdefault_policy/gradients/default_policy/mul_3_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/mul_3_grad/Reshape_1D^default_policy/gradients/default_policy/mul_3_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/mul_3_grad/Reshape_1*#
_output_shapes
:���������
�
6default_policy/gradients/default_policy/mul_grad/ShapeShapedefault_policy/truediv_4*
T0*
_output_shapes
:*
out_type0
�
8default_policy/gradients/default_policy/mul_grad/Shape_1Shapedefault_policy/add_1*
T0*
_output_shapes
:*
out_type0
�
Fdefault_policy/gradients/default_policy/mul_grad/BroadcastGradientArgsBroadcastGradientArgs6default_policy/gradients/default_policy/mul_grad/Shape8default_policy/gradients/default_policy/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
4default_policy/gradients/default_policy/mul_grad/MulMul>default_policy/gradients/default_policy/Sum_2_grad/BroadcastTodefault_policy/add_1*
T0*(
_output_shapes
:����������
�
4default_policy/gradients/default_policy/mul_grad/SumSum4default_policy/gradients/default_policy/mul_grad/MulFdefault_policy/gradients/default_policy/mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
8default_policy/gradients/default_policy/mul_grad/ReshapeReshape4default_policy/gradients/default_policy/mul_grad/Sum6default_policy/gradients/default_policy/mul_grad/Shape*
T0*
Tshape0*(
_output_shapes
:����������
�
6default_policy/gradients/default_policy/mul_grad/Mul_1Muldefault_policy/truediv_4>default_policy/gradients/default_policy/Sum_2_grad/BroadcastTo*
T0*(
_output_shapes
:����������
�
6default_policy/gradients/default_policy/mul_grad/Sum_1Sum6default_policy/gradients/default_policy/mul_grad/Mul_1Hdefault_policy/gradients/default_policy/mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
:default_policy/gradients/default_policy/mul_grad/Reshape_1Reshape6default_policy/gradients/default_policy/mul_grad/Sum_18default_policy/gradients/default_policy/mul_grad/Shape_1*
T0*
Tshape0*(
_output_shapes
:����������
�
Adefault_policy/gradients/default_policy/mul_grad/tuple/group_depsNoOp9^default_policy/gradients/default_policy/mul_grad/Reshape;^default_policy/gradients/default_policy/mul_grad/Reshape_1
�
Idefault_policy/gradients/default_policy/mul_grad/tuple/control_dependencyIdentity8default_policy/gradients/default_policy/mul_grad/ReshapeB^default_policy/gradients/default_policy/mul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@default_policy/gradients/default_policy/mul_grad/Reshape*(
_output_shapes
:����������
�
Kdefault_policy/gradients/default_policy/mul_grad/tuple/control_dependency_1Identity:default_policy/gradients/default_policy/mul_grad/Reshape_1B^default_policy/gradients/default_policy/mul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/mul_grad/Reshape_1*(
_output_shapes
:����������
�
8default_policy/gradients/default_policy/sub_7_grad/ShapeShapedefault_policy/Reshape_2*
T0*
_output_shapes
:*
out_type0
�
:default_policy/gradients/default_policy/sub_7_grad/Shape_1Shapedefault_policy/value_targets*
T0*
_output_shapes
:*
out_type0
�
Hdefault_policy/gradients/default_policy/sub_7_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/sub_7_grad/Shape:default_policy/gradients/default_policy/sub_7_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6default_policy/gradients/default_policy/sub_7_grad/SumSum9default_policy/gradients/default_policy/Square_grad/Mul_1Hdefault_policy/gradients/default_policy/sub_7_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
:default_policy/gradients/default_policy/sub_7_grad/ReshapeReshape6default_policy/gradients/default_policy/sub_7_grad/Sum8default_policy/gradients/default_policy/sub_7_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
6default_policy/gradients/default_policy/sub_7_grad/NegNeg9default_policy/gradients/default_policy/Square_grad/Mul_1*
T0*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/sub_7_grad/Sum_1Sum6default_policy/gradients/default_policy/sub_7_grad/NegJdefault_policy/gradients/default_policy/sub_7_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
<default_policy/gradients/default_policy/sub_7_grad/Reshape_1Reshape8default_policy/gradients/default_policy/sub_7_grad/Sum_1:default_policy/gradients/default_policy/sub_7_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:���������
�
Cdefault_policy/gradients/default_policy/sub_7_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/sub_7_grad/Reshape=^default_policy/gradients/default_policy/sub_7_grad/Reshape_1
�
Kdefault_policy/gradients/default_policy/sub_7_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/sub_7_grad/ReshapeD^default_policy/gradients/default_policy/sub_7_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/sub_7_grad/Reshape*#
_output_shapes
:���������
�
Mdefault_policy/gradients/default_policy/sub_7_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/sub_7_grad/Reshape_1D^default_policy/gradients/default_policy/sub_7_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/sub_7_grad/Reshape_1*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/sub_9_grad/ShapeShapedefault_policy/add_2*
T0*
_output_shapes
:*
out_type0
�
:default_policy/gradients/default_policy/sub_9_grad/Shape_1Shapedefault_policy/value_targets*
T0*
_output_shapes
:*
out_type0
�
Hdefault_policy/gradients/default_policy/sub_9_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/sub_9_grad/Shape:default_policy/gradients/default_policy/sub_9_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6default_policy/gradients/default_policy/sub_9_grad/SumSum;default_policy/gradients/default_policy/Square_1_grad/Mul_1Hdefault_policy/gradients/default_policy/sub_9_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
:default_policy/gradients/default_policy/sub_9_grad/ReshapeReshape6default_policy/gradients/default_policy/sub_9_grad/Sum8default_policy/gradients/default_policy/sub_9_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
6default_policy/gradients/default_policy/sub_9_grad/NegNeg;default_policy/gradients/default_policy/Square_1_grad/Mul_1*
T0*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/sub_9_grad/Sum_1Sum6default_policy/gradients/default_policy/sub_9_grad/NegJdefault_policy/gradients/default_policy/sub_9_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
<default_policy/gradients/default_policy/sub_9_grad/Reshape_1Reshape8default_policy/gradients/default_policy/sub_9_grad/Sum_1:default_policy/gradients/default_policy/sub_9_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:���������
�
Cdefault_policy/gradients/default_policy/sub_9_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/sub_9_grad/Reshape=^default_policy/gradients/default_policy/sub_9_grad/Reshape_1
�
Kdefault_policy/gradients/default_policy/sub_9_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/sub_9_grad/ReshapeD^default_policy/gradients/default_policy/sub_9_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/sub_9_grad/Reshape*#
_output_shapes
:���������
�
Mdefault_policy/gradients/default_policy/sub_9_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/sub_9_grad/Reshape_1D^default_policy/gradients/default_policy/sub_9_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/sub_9_grad/Reshape_1*#
_output_shapes
:���������
�
=default_policy/gradients/default_policy/Log_2_grad/Reciprocal
Reciprocaldefault_policy/Sum_3L^default_policy/gradients/default_policy/sub_6_grad/tuple/control_dependency*
T0*'
_output_shapes
:���������
�
6default_policy/gradients/default_policy/Log_2_grad/mulMulKdefault_policy/gradients/default_policy/sub_6_grad/tuple/control_dependency=default_policy/gradients/default_policy/Log_2_grad/Reciprocal*
T0*'
_output_shapes
:���������
�
@default_policy/gradients/default_policy/clip_by_value_grad/ShapeShape$default_policy/clip_by_value/Minimum*
T0*
_output_shapes
:*
out_type0
�
Bdefault_policy/gradients/default_policy/clip_by_value_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
�
Edefault_policy/gradients/default_policy/clip_by_value_grad/zeros_like	ZerosLikeMdefault_policy/gradients/default_policy/mul_3_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:���������
�
Gdefault_policy/gradients/default_policy/clip_by_value_grad/GreaterEqualGreaterEqual$default_policy/clip_by_value/Minimumdefault_policy/clip_by_value/y*
T0*#
_output_shapes
:���������
�
Pdefault_policy/gradients/default_policy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs@default_policy/gradients/default_policy/clip_by_value_grad/ShapeBdefault_policy/gradients/default_policy/clip_by_value_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Cdefault_policy/gradients/default_policy/clip_by_value_grad/SelectV2SelectV2Gdefault_policy/gradients/default_policy/clip_by_value_grad/GreaterEqualMdefault_policy/gradients/default_policy/mul_3_grad/tuple/control_dependency_1Edefault_policy/gradients/default_policy/clip_by_value_grad/zeros_like*
T0*#
_output_shapes
:���������
�
>default_policy/gradients/default_policy/clip_by_value_grad/SumSumCdefault_policy/gradients/default_policy/clip_by_value_grad/SelectV2Pdefault_policy/gradients/default_policy/clip_by_value_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
Bdefault_policy/gradients/default_policy/clip_by_value_grad/ReshapeReshape>default_policy/gradients/default_policy/clip_by_value_grad/Sum@default_policy/gradients/default_policy/clip_by_value_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
Edefault_policy/gradients/default_policy/clip_by_value_grad/SelectV2_1SelectV2Gdefault_policy/gradients/default_policy/clip_by_value_grad/GreaterEqualEdefault_policy/gradients/default_policy/clip_by_value_grad/zeros_likeMdefault_policy/gradients/default_policy/mul_3_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:���������
�
@default_policy/gradients/default_policy/clip_by_value_grad/Sum_1SumEdefault_policy/gradients/default_policy/clip_by_value_grad/SelectV2_1Rdefault_policy/gradients/default_policy/clip_by_value_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
Ddefault_policy/gradients/default_policy/clip_by_value_grad/Reshape_1Reshape@default_policy/gradients/default_policy/clip_by_value_grad/Sum_1Bdefault_policy/gradients/default_policy/clip_by_value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Kdefault_policy/gradients/default_policy/clip_by_value_grad/tuple/group_depsNoOpC^default_policy/gradients/default_policy/clip_by_value_grad/ReshapeE^default_policy/gradients/default_policy/clip_by_value_grad/Reshape_1
�
Sdefault_policy/gradients/default_policy/clip_by_value_grad/tuple/control_dependencyIdentityBdefault_policy/gradients/default_policy/clip_by_value_grad/ReshapeL^default_policy/gradients/default_policy/clip_by_value_grad/tuple/group_deps*
T0*U
_classK
IGloc:@default_policy/gradients/default_policy/clip_by_value_grad/Reshape*#
_output_shapes
:���������
�
Udefault_policy/gradients/default_policy/clip_by_value_grad/tuple/control_dependency_1IdentityDdefault_policy/gradients/default_policy/clip_by_value_grad/Reshape_1L^default_policy/gradients/default_policy/clip_by_value_grad/tuple/group_deps*
T0*W
_classM
KIloc:@default_policy/gradients/default_policy/clip_by_value_grad/Reshape_1*
_output_shapes
: 
�
8default_policy/gradients/default_policy/add_1_grad/ShapeShapedefault_policy/sub_4*
T0*
_output_shapes
:*
out_type0
�
:default_policy/gradients/default_policy/add_1_grad/Shape_1Shapedefault_policy/Log_1*
T0*
_output_shapes
:*
out_type0
�
Hdefault_policy/gradients/default_policy/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/add_1_grad/Shape:default_policy/gradients/default_policy/add_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6default_policy/gradients/default_policy/add_1_grad/SumSumKdefault_policy/gradients/default_policy/mul_grad/tuple/control_dependency_1Hdefault_policy/gradients/default_policy/add_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
:default_policy/gradients/default_policy/add_1_grad/ReshapeReshape6default_policy/gradients/default_policy/add_1_grad/Sum8default_policy/gradients/default_policy/add_1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:����������
�
8default_policy/gradients/default_policy/add_1_grad/Sum_1SumKdefault_policy/gradients/default_policy/mul_grad/tuple/control_dependency_1Jdefault_policy/gradients/default_policy/add_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
<default_policy/gradients/default_policy/add_1_grad/Reshape_1Reshape8default_policy/gradients/default_policy/add_1_grad/Sum_1:default_policy/gradients/default_policy/add_1_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
Cdefault_policy/gradients/default_policy/add_1_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/add_1_grad/Reshape=^default_policy/gradients/default_policy/add_1_grad/Reshape_1
�
Kdefault_policy/gradients/default_policy/add_1_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/add_1_grad/ReshapeD^default_policy/gradients/default_policy/add_1_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/add_1_grad/Reshape*(
_output_shapes
:����������
�
Mdefault_policy/gradients/default_policy/add_1_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/add_1_grad/Reshape_1D^default_policy/gradients/default_policy/add_1_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/add_1_grad/Reshape_1*'
_output_shapes
:���������
�
8default_policy/gradients/default_policy/add_2_grad/ShapeShapedefault_policy/vf_preds*
T0*
_output_shapes
:*
out_type0
�
:default_policy/gradients/default_policy/add_2_grad/Shape_1Shapedefault_policy/clip_by_value_1*
T0*
_output_shapes
:*
out_type0
�
Hdefault_policy/gradients/default_policy/add_2_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/add_2_grad/Shape:default_policy/gradients/default_policy/add_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6default_policy/gradients/default_policy/add_2_grad/SumSumKdefault_policy/gradients/default_policy/sub_9_grad/tuple/control_dependencyHdefault_policy/gradients/default_policy/add_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
:default_policy/gradients/default_policy/add_2_grad/ReshapeReshape6default_policy/gradients/default_policy/add_2_grad/Sum8default_policy/gradients/default_policy/add_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/add_2_grad/Sum_1SumKdefault_policy/gradients/default_policy/sub_9_grad/tuple/control_dependencyJdefault_policy/gradients/default_policy/add_2_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
<default_policy/gradients/default_policy/add_2_grad/Reshape_1Reshape8default_policy/gradients/default_policy/add_2_grad/Sum_1:default_policy/gradients/default_policy/add_2_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:���������
�
Cdefault_policy/gradients/default_policy/add_2_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/add_2_grad/Reshape=^default_policy/gradients/default_policy/add_2_grad/Reshape_1
�
Kdefault_policy/gradients/default_policy/add_2_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/add_2_grad/ReshapeD^default_policy/gradients/default_policy/add_2_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/add_2_grad/Reshape*#
_output_shapes
:���������
�
Mdefault_policy/gradients/default_policy/add_2_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/add_2_grad/Reshape_1D^default_policy/gradients/default_policy/add_2_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/add_2_grad/Reshape_1*#
_output_shapes
:���������
�
default_policy/gradients/AddNAddNQdefault_policy/gradients/default_policy/truediv_5_grad/tuple/control_dependency_16default_policy/gradients/default_policy/Log_2_grad/mul*
N*
T0*S
_classI
GEloc:@default_policy/gradients/default_policy/truediv_5_grad/Reshape_1*'
_output_shapes
:���������
�
8default_policy/gradients/default_policy/Sum_3_grad/ShapeShapedefault_policy/Exp_5*
T0*
_output_shapes
:*
out_type0
�
>default_policy/gradients/default_policy/Sum_3_grad/BroadcastToBroadcastTodefault_policy/gradients/AddN8default_policy/gradients/default_policy/Sum_3_grad/Shape*
T0*

Tidx0*(
_output_shapes
:����������
�
Hdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/ShapeShapedefault_policy/Exp_2*
T0*
_output_shapes
:*
out_type0
�
Jdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
�
Mdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/zeros_like	ZerosLikeSdefault_policy/gradients/default_policy/clip_by_value_grad/tuple/control_dependency*
T0*#
_output_shapes
:���������
�
Ldefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/LessEqual	LessEqualdefault_policy/Exp_2&default_policy/clip_by_value/Minimum/y*
T0*#
_output_shapes
:���������
�
Xdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsHdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/ShapeJdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Kdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/SelectV2SelectV2Ldefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/LessEqualSdefault_policy/gradients/default_policy/clip_by_value_grad/tuple/control_dependencyMdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/zeros_like*
T0*#
_output_shapes
:���������
�
Fdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/SumSumKdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/SelectV2Xdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
Jdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/ReshapeReshapeFdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/SumHdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
Mdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/SelectV2_1SelectV2Ldefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/LessEqualMdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/zeros_likeSdefault_policy/gradients/default_policy/clip_by_value_grad/tuple/control_dependency*
T0*#
_output_shapes
:���������
�
Hdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/Sum_1SumMdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/SelectV2_1Zdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
Ldefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/Reshape_1ReshapeHdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/Sum_1Jdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Sdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/tuple/group_depsNoOpK^default_policy/gradients/default_policy/clip_by_value/Minimum_grad/ReshapeM^default_policy/gradients/default_policy/clip_by_value/Minimum_grad/Reshape_1
�
[default_policy/gradients/default_policy/clip_by_value/Minimum_grad/tuple/control_dependencyIdentityJdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/ReshapeT^default_policy/gradients/default_policy/clip_by_value/Minimum_grad/tuple/group_deps*
T0*]
_classS
QOloc:@default_policy/gradients/default_policy/clip_by_value/Minimum_grad/Reshape*#
_output_shapes
:���������
�
]default_policy/gradients/default_policy/clip_by_value/Minimum_grad/tuple/control_dependency_1IdentityLdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/Reshape_1T^default_policy/gradients/default_policy/clip_by_value/Minimum_grad/tuple/group_deps*
T0*_
_classU
SQloc:@default_policy/gradients/default_policy/clip_by_value/Minimum_grad/Reshape_1*
_output_shapes
: 
�
8default_policy/gradients/default_policy/sub_4_grad/ShapeShapedefault_policy/sub_3*
T0*
_output_shapes
:*
out_type0
�
:default_policy/gradients/default_policy/sub_4_grad/Shape_1Shapedefault_policy/sub_2*
T0*
_output_shapes
:*
out_type0
�
Hdefault_policy/gradients/default_policy/sub_4_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/sub_4_grad/Shape:default_policy/gradients/default_policy/sub_4_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6default_policy/gradients/default_policy/sub_4_grad/SumSumKdefault_policy/gradients/default_policy/add_1_grad/tuple/control_dependencyHdefault_policy/gradients/default_policy/sub_4_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
:default_policy/gradients/default_policy/sub_4_grad/ReshapeReshape6default_policy/gradients/default_policy/sub_4_grad/Sum8default_policy/gradients/default_policy/sub_4_grad/Shape*
T0*
Tshape0*(
_output_shapes
:����������
�
6default_policy/gradients/default_policy/sub_4_grad/NegNegKdefault_policy/gradients/default_policy/add_1_grad/tuple/control_dependency*
T0*(
_output_shapes
:����������
�
8default_policy/gradients/default_policy/sub_4_grad/Sum_1Sum6default_policy/gradients/default_policy/sub_4_grad/NegJdefault_policy/gradients/default_policy/sub_4_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
<default_policy/gradients/default_policy/sub_4_grad/Reshape_1Reshape8default_policy/gradients/default_policy/sub_4_grad/Sum_1:default_policy/gradients/default_policy/sub_4_grad/Shape_1*
T0*
Tshape0*(
_output_shapes
:����������
�
Cdefault_policy/gradients/default_policy/sub_4_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/sub_4_grad/Reshape=^default_policy/gradients/default_policy/sub_4_grad/Reshape_1
�
Kdefault_policy/gradients/default_policy/sub_4_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/sub_4_grad/ReshapeD^default_policy/gradients/default_policy/sub_4_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/sub_4_grad/Reshape*(
_output_shapes
:����������
�
Mdefault_policy/gradients/default_policy/sub_4_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/sub_4_grad/Reshape_1D^default_policy/gradients/default_policy/sub_4_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/sub_4_grad/Reshape_1*(
_output_shapes
:����������
�
=default_policy/gradients/default_policy/Log_1_grad/Reciprocal
Reciprocaldefault_policy/Sum_1N^default_policy/gradients/default_policy/add_1_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:���������
�
6default_policy/gradients/default_policy/Log_1_grad/mulMulMdefault_policy/gradients/default_policy/add_1_grad/tuple/control_dependency_1=default_policy/gradients/default_policy/Log_1_grad/Reciprocal*
T0*'
_output_shapes
:���������
�
Bdefault_policy/gradients/default_policy/clip_by_value_1_grad/ShapeShape&default_policy/clip_by_value_1/Minimum*
T0*
_output_shapes
:*
out_type0
�
Ddefault_policy/gradients/default_policy/clip_by_value_1_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
�
Gdefault_policy/gradients/default_policy/clip_by_value_1_grad/zeros_like	ZerosLikeMdefault_policy/gradients/default_policy/add_2_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:���������
�
Idefault_policy/gradients/default_policy/clip_by_value_1_grad/GreaterEqualGreaterEqual&default_policy/clip_by_value_1/Minimum default_policy/clip_by_value_1/y*
T0*#
_output_shapes
:���������
�
Rdefault_policy/gradients/default_policy/clip_by_value_1_grad/BroadcastGradientArgsBroadcastGradientArgsBdefault_policy/gradients/default_policy/clip_by_value_1_grad/ShapeDdefault_policy/gradients/default_policy/clip_by_value_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Edefault_policy/gradients/default_policy/clip_by_value_1_grad/SelectV2SelectV2Idefault_policy/gradients/default_policy/clip_by_value_1_grad/GreaterEqualMdefault_policy/gradients/default_policy/add_2_grad/tuple/control_dependency_1Gdefault_policy/gradients/default_policy/clip_by_value_1_grad/zeros_like*
T0*#
_output_shapes
:���������
�
@default_policy/gradients/default_policy/clip_by_value_1_grad/SumSumEdefault_policy/gradients/default_policy/clip_by_value_1_grad/SelectV2Rdefault_policy/gradients/default_policy/clip_by_value_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
Ddefault_policy/gradients/default_policy/clip_by_value_1_grad/ReshapeReshape@default_policy/gradients/default_policy/clip_by_value_1_grad/SumBdefault_policy/gradients/default_policy/clip_by_value_1_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
Gdefault_policy/gradients/default_policy/clip_by_value_1_grad/SelectV2_1SelectV2Idefault_policy/gradients/default_policy/clip_by_value_1_grad/GreaterEqualGdefault_policy/gradients/default_policy/clip_by_value_1_grad/zeros_likeMdefault_policy/gradients/default_policy/add_2_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:���������
�
Bdefault_policy/gradients/default_policy/clip_by_value_1_grad/Sum_1SumGdefault_policy/gradients/default_policy/clip_by_value_1_grad/SelectV2_1Tdefault_policy/gradients/default_policy/clip_by_value_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
Fdefault_policy/gradients/default_policy/clip_by_value_1_grad/Reshape_1ReshapeBdefault_policy/gradients/default_policy/clip_by_value_1_grad/Sum_1Ddefault_policy/gradients/default_policy/clip_by_value_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Mdefault_policy/gradients/default_policy/clip_by_value_1_grad/tuple/group_depsNoOpE^default_policy/gradients/default_policy/clip_by_value_1_grad/ReshapeG^default_policy/gradients/default_policy/clip_by_value_1_grad/Reshape_1
�
Udefault_policy/gradients/default_policy/clip_by_value_1_grad/tuple/control_dependencyIdentityDdefault_policy/gradients/default_policy/clip_by_value_1_grad/ReshapeN^default_policy/gradients/default_policy/clip_by_value_1_grad/tuple/group_deps*
T0*W
_classM
KIloc:@default_policy/gradients/default_policy/clip_by_value_1_grad/Reshape*#
_output_shapes
:���������
�
Wdefault_policy/gradients/default_policy/clip_by_value_1_grad/tuple/control_dependency_1IdentityFdefault_policy/gradients/default_policy/clip_by_value_1_grad/Reshape_1N^default_policy/gradients/default_policy/clip_by_value_1_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@default_policy/gradients/default_policy/clip_by_value_1_grad/Reshape_1*
_output_shapes
: 
�
default_policy/gradients/AddN_1AddNOdefault_policy/gradients/default_policy/truediv_5_grad/tuple/control_dependency>default_policy/gradients/default_policy/Sum_3_grad/BroadcastTo*
N*
T0*Q
_classG
ECloc:@default_policy/gradients/default_policy/truediv_5_grad/Reshape*(
_output_shapes
:����������
�
6default_policy/gradients/default_policy/Exp_5_grad/mulMuldefault_policy/gradients/AddN_1default_policy/Exp_5*
T0*(
_output_shapes
:����������
�
default_policy/gradients/AddN_2AddNMdefault_policy/gradients/default_policy/mul_2_grad/tuple/control_dependency_1[default_policy/gradients/default_policy/clip_by_value/Minimum_grad/tuple/control_dependency*
N*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/mul_2_grad/Reshape_1*#
_output_shapes
:���������
�
6default_policy/gradients/default_policy/Exp_2_grad/mulMuldefault_policy/gradients/AddN_2default_policy/Exp_2*
T0*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/Sum_1_grad/ShapeShapedefault_policy/Exp_4*
T0*
_output_shapes
:*
out_type0
�
>default_policy/gradients/default_policy/Sum_1_grad/BroadcastToBroadcastTo6default_policy/gradients/default_policy/Log_1_grad/mul8default_policy/gradients/default_policy/Sum_1_grad/Shape*
T0*

Tidx0*(
_output_shapes
:����������
�
Jdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/ShapeShapedefault_policy/sub_8*
T0*
_output_shapes
:*
out_type0
�
Ldefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
�
Odefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/zeros_like	ZerosLikeUdefault_policy/gradients/default_policy/clip_by_value_1_grad/tuple/control_dependency*
T0*#
_output_shapes
:���������
�
Ndefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/LessEqual	LessEqualdefault_policy/sub_8(default_policy/clip_by_value_1/Minimum/y*
T0*#
_output_shapes
:���������
�
Zdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsJdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/ShapeLdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Mdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/SelectV2SelectV2Ndefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/LessEqualUdefault_policy/gradients/default_policy/clip_by_value_1_grad/tuple/control_dependencyOdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/zeros_like*
T0*#
_output_shapes
:���������
�
Hdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/SumSumMdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/SelectV2Zdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
Ldefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/ReshapeReshapeHdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/SumJdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
Odefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/SelectV2_1SelectV2Ndefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/LessEqualOdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/zeros_likeUdefault_policy/gradients/default_policy/clip_by_value_1_grad/tuple/control_dependency*
T0*#
_output_shapes
:���������
�
Jdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/Sum_1SumOdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/SelectV2_1\default_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
Ndefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/Reshape_1ReshapeJdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/Sum_1Ldefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Udefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/tuple/group_depsNoOpM^default_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/ReshapeO^default_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/Reshape_1
�
]default_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/tuple/control_dependencyIdentityLdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/ReshapeV^default_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*_
_classU
SQloc:@default_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/Reshape*#
_output_shapes
:���������
�
_default_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/tuple/control_dependency_1IdentityNdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/Reshape_1V^default_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*a
_classW
USloc:@default_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/Reshape_1*
_output_shapes
: 
�
default_policy/gradients/AddN_3AddNMdefault_policy/gradients/default_policy/sub_6_grad/tuple/control_dependency_16default_policy/gradients/default_policy/Exp_5_grad/mul*
N*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/sub_6_grad/Reshape_1*(
_output_shapes
:����������
�
8default_policy/gradients/default_policy/sub_5_grad/ShapeShapedefault_policy/truediv_2*
T0*
_output_shapes
:*
out_type0
�
:default_policy/gradients/default_policy/sub_5_grad/Shape_1Shapedefault_policy/Max_2*
T0*
_output_shapes
:*
out_type0
�
Hdefault_policy/gradients/default_policy/sub_5_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/sub_5_grad/Shape:default_policy/gradients/default_policy/sub_5_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6default_policy/gradients/default_policy/sub_5_grad/SumSumdefault_policy/gradients/AddN_3Hdefault_policy/gradients/default_policy/sub_5_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
:default_policy/gradients/default_policy/sub_5_grad/ReshapeReshape6default_policy/gradients/default_policy/sub_5_grad/Sum8default_policy/gradients/default_policy/sub_5_grad/Shape*
T0*
Tshape0*(
_output_shapes
:����������
�
6default_policy/gradients/default_policy/sub_5_grad/NegNegdefault_policy/gradients/AddN_3*
T0*(
_output_shapes
:����������
�
8default_policy/gradients/default_policy/sub_5_grad/Sum_1Sum6default_policy/gradients/default_policy/sub_5_grad/NegJdefault_policy/gradients/default_policy/sub_5_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
<default_policy/gradients/default_policy/sub_5_grad/Reshape_1Reshape8default_policy/gradients/default_policy/sub_5_grad/Sum_1:default_policy/gradients/default_policy/sub_5_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
Cdefault_policy/gradients/default_policy/sub_5_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/sub_5_grad/Reshape=^default_policy/gradients/default_policy/sub_5_grad/Reshape_1
�
Kdefault_policy/gradients/default_policy/sub_5_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/sub_5_grad/ReshapeD^default_policy/gradients/default_policy/sub_5_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/sub_5_grad/Reshape*(
_output_shapes
:����������
�
Mdefault_policy/gradients/default_policy/sub_5_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/sub_5_grad/Reshape_1D^default_policy/gradients/default_policy/sub_5_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/sub_5_grad/Reshape_1*'
_output_shapes
:���������
�
6default_policy/gradients/default_policy/sub_grad/ShapeShapedefault_policy/Neg_5*
T0*
_output_shapes
:*
out_type0
�
8default_policy/gradients/default_policy/sub_grad/Shape_1Shapedefault_policy/action_logp*
T0*
_output_shapes
:*
out_type0
�
Fdefault_policy/gradients/default_policy/sub_grad/BroadcastGradientArgsBroadcastGradientArgs6default_policy/gradients/default_policy/sub_grad/Shape8default_policy/gradients/default_policy/sub_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
4default_policy/gradients/default_policy/sub_grad/SumSum6default_policy/gradients/default_policy/Exp_2_grad/mulFdefault_policy/gradients/default_policy/sub_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
8default_policy/gradients/default_policy/sub_grad/ReshapeReshape4default_policy/gradients/default_policy/sub_grad/Sum6default_policy/gradients/default_policy/sub_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
4default_policy/gradients/default_policy/sub_grad/NegNeg6default_policy/gradients/default_policy/Exp_2_grad/mul*
T0*#
_output_shapes
:���������
�
6default_policy/gradients/default_policy/sub_grad/Sum_1Sum4default_policy/gradients/default_policy/sub_grad/NegHdefault_policy/gradients/default_policy/sub_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
:default_policy/gradients/default_policy/sub_grad/Reshape_1Reshape6default_policy/gradients/default_policy/sub_grad/Sum_18default_policy/gradients/default_policy/sub_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:���������
�
Adefault_policy/gradients/default_policy/sub_grad/tuple/group_depsNoOp9^default_policy/gradients/default_policy/sub_grad/Reshape;^default_policy/gradients/default_policy/sub_grad/Reshape_1
�
Idefault_policy/gradients/default_policy/sub_grad/tuple/control_dependencyIdentity8default_policy/gradients/default_policy/sub_grad/ReshapeB^default_policy/gradients/default_policy/sub_grad/tuple/group_deps*
T0*K
_classA
?=loc:@default_policy/gradients/default_policy/sub_grad/Reshape*#
_output_shapes
:���������
�
Kdefault_policy/gradients/default_policy/sub_grad/tuple/control_dependency_1Identity:default_policy/gradients/default_policy/sub_grad/Reshape_1B^default_policy/gradients/default_policy/sub_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/sub_grad/Reshape_1*#
_output_shapes
:���������
�
6default_policy/gradients/default_policy/Exp_4_grad/mulMul>default_policy/gradients/default_policy/Sum_1_grad/BroadcastTodefault_policy/Exp_4*
T0*(
_output_shapes
:����������
�
8default_policy/gradients/default_policy/sub_8_grad/ShapeShapedefault_policy/Reshape_2*
T0*
_output_shapes
:*
out_type0
�
:default_policy/gradients/default_policy/sub_8_grad/Shape_1Shapedefault_policy/vf_preds*
T0*
_output_shapes
:*
out_type0
�
Hdefault_policy/gradients/default_policy/sub_8_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/sub_8_grad/Shape:default_policy/gradients/default_policy/sub_8_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6default_policy/gradients/default_policy/sub_8_grad/SumSum]default_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/tuple/control_dependencyHdefault_policy/gradients/default_policy/sub_8_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
:default_policy/gradients/default_policy/sub_8_grad/ReshapeReshape6default_policy/gradients/default_policy/sub_8_grad/Sum8default_policy/gradients/default_policy/sub_8_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
6default_policy/gradients/default_policy/sub_8_grad/NegNeg]default_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/tuple/control_dependency*
T0*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/sub_8_grad/Sum_1Sum6default_policy/gradients/default_policy/sub_8_grad/NegJdefault_policy/gradients/default_policy/sub_8_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
<default_policy/gradients/default_policy/sub_8_grad/Reshape_1Reshape8default_policy/gradients/default_policy/sub_8_grad/Sum_1:default_policy/gradients/default_policy/sub_8_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:���������
�
Cdefault_policy/gradients/default_policy/sub_8_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/sub_8_grad/Reshape=^default_policy/gradients/default_policy/sub_8_grad/Reshape_1
�
Kdefault_policy/gradients/default_policy/sub_8_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/sub_8_grad/ReshapeD^default_policy/gradients/default_policy/sub_8_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/sub_8_grad/Reshape*#
_output_shapes
:���������
�
Mdefault_policy/gradients/default_policy/sub_8_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/sub_8_grad/Reshape_1D^default_policy/gradients/default_policy/sub_8_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/sub_8_grad/Reshape_1*#
_output_shapes
:���������
�
8default_policy/gradients/default_policy/Max_2_grad/ShapeShapedefault_policy/truediv_2*
T0*
_output_shapes
:*
out_type0
�
:default_policy/gradients/default_policy/Max_2_grad/Shape_1Shapedefault_policy/Max_2*
T0*
_output_shapes
:*
out_type0
�
8default_policy/gradients/default_policy/Max_2_grad/EqualEqualdefault_policy/Max_2default_policy/truediv_2*
T0*(
_output_shapes
:����������*
incompatible_shape_error(
�
7default_policy/gradients/default_policy/Max_2_grad/CastCast8default_policy/gradients/default_policy/Max_2_grad/Equal*

DstT0*

SrcT0
*
Truncate( *(
_output_shapes
:����������
�
6default_policy/gradients/default_policy/Max_2_grad/SumSum7default_policy/gradients/default_policy/Max_2_grad/Cast&default_policy/Max_2/reduction_indices*
T0*

Tidx0*#
_output_shapes
:���������*
	keep_dims( 
�
:default_policy/gradients/default_policy/Max_2_grad/ReshapeReshape6default_policy/gradients/default_policy/Max_2_grad/Sum:default_policy/gradients/default_policy/Max_2_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
:default_policy/gradients/default_policy/Max_2_grad/truedivRealDiv7default_policy/gradients/default_policy/Max_2_grad/Cast:default_policy/gradients/default_policy/Max_2_grad/Reshape*
T0*(
_output_shapes
:����������
�
6default_policy/gradients/default_policy/Max_2_grad/mulMul:default_policy/gradients/default_policy/Max_2_grad/truedivMdefault_policy/gradients/default_policy/sub_5_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:����������
�
6default_policy/gradients/default_policy/Neg_5_grad/NegNegIdefault_policy/gradients/default_policy/sub_grad/tuple/control_dependency*
T0*#
_output_shapes
:���������
�
default_policy/gradients/AddN_4AddNMdefault_policy/gradients/default_policy/sub_4_grad/tuple/control_dependency_16default_policy/gradients/default_policy/Exp_4_grad/mul*
N*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/sub_4_grad/Reshape_1*(
_output_shapes
:����������
�
8default_policy/gradients/default_policy/sub_2_grad/ShapeShapedefault_policy/truediv_2*
T0*
_output_shapes
:*
out_type0
�
:default_policy/gradients/default_policy/sub_2_grad/Shape_1Shapedefault_policy/Max_1*
T0*
_output_shapes
:*
out_type0
�
Hdefault_policy/gradients/default_policy/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/sub_2_grad/Shape:default_policy/gradients/default_policy/sub_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6default_policy/gradients/default_policy/sub_2_grad/SumSumdefault_policy/gradients/AddN_4Hdefault_policy/gradients/default_policy/sub_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
:default_policy/gradients/default_policy/sub_2_grad/ReshapeReshape6default_policy/gradients/default_policy/sub_2_grad/Sum8default_policy/gradients/default_policy/sub_2_grad/Shape*
T0*
Tshape0*(
_output_shapes
:����������
�
6default_policy/gradients/default_policy/sub_2_grad/NegNegdefault_policy/gradients/AddN_4*
T0*(
_output_shapes
:����������
�
8default_policy/gradients/default_policy/sub_2_grad/Sum_1Sum6default_policy/gradients/default_policy/sub_2_grad/NegJdefault_policy/gradients/default_policy/sub_2_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
<default_policy/gradients/default_policy/sub_2_grad/Reshape_1Reshape8default_policy/gradients/default_policy/sub_2_grad/Sum_1:default_policy/gradients/default_policy/sub_2_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
Cdefault_policy/gradients/default_policy/sub_2_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/sub_2_grad/Reshape=^default_policy/gradients/default_policy/sub_2_grad/Reshape_1
�
Kdefault_policy/gradients/default_policy/sub_2_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/sub_2_grad/ReshapeD^default_policy/gradients/default_policy/sub_2_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/sub_2_grad/Reshape*(
_output_shapes
:����������
�
Mdefault_policy/gradients/default_policy/sub_2_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/sub_2_grad/Reshape_1D^default_policy/gradients/default_policy/sub_2_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/sub_2_grad/Reshape_1*'
_output_shapes
:���������
�
default_policy/gradients/AddN_5AddNKdefault_policy/gradients/default_policy/sub_7_grad/tuple/control_dependencyKdefault_policy/gradients/default_policy/sub_8_grad/tuple/control_dependency*
N*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/sub_7_grad/Reshape*#
_output_shapes
:���������
�
<default_policy/gradients/default_policy/Reshape_2_grad/ShapeShape(default_policy/model_2/value_out/BiasAdd*
T0*
_output_shapes
:*
out_type0
�
>default_policy/gradients/default_policy/Reshape_2_grad/ReshapeReshapedefault_policy/gradients/AddN_5<default_policy/gradients/default_policy/Reshape_2_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
#default_policy/gradients/zeros_like	ZerosLikeZdefault_policy/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits:1*
T0*(
_output_shapes
:����������
�
�default_policy/gradients/default_policy/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
�default_policy/gradients/default_policy/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims6default_policy/gradients/default_policy/Neg_5_grad/Neg�default_policy/gradients/default_policy/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:���������
�
zdefault_policy/gradients/default_policy/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mulMul�default_policy/gradients/default_policy/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsZdefault_policy/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits:1*
T0*(
_output_shapes
:����������
�
8default_policy/gradients/default_policy/Max_1_grad/ShapeShapedefault_policy/truediv_2*
T0*
_output_shapes
:*
out_type0
�
:default_policy/gradients/default_policy/Max_1_grad/Shape_1Shapedefault_policy/Max_1*
T0*
_output_shapes
:*
out_type0
�
8default_policy/gradients/default_policy/Max_1_grad/EqualEqualdefault_policy/Max_1default_policy/truediv_2*
T0*(
_output_shapes
:����������*
incompatible_shape_error(
�
7default_policy/gradients/default_policy/Max_1_grad/CastCast8default_policy/gradients/default_policy/Max_1_grad/Equal*

DstT0*

SrcT0
*
Truncate( *(
_output_shapes
:����������
�
6default_policy/gradients/default_policy/Max_1_grad/SumSum7default_policy/gradients/default_policy/Max_1_grad/Cast&default_policy/Max_1/reduction_indices*
T0*

Tidx0*#
_output_shapes
:���������*
	keep_dims( 
�
:default_policy/gradients/default_policy/Max_1_grad/ReshapeReshape6default_policy/gradients/default_policy/Max_1_grad/Sum:default_policy/gradients/default_policy/Max_1_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
:default_policy/gradients/default_policy/Max_1_grad/truedivRealDiv7default_policy/gradients/default_policy/Max_1_grad/Cast:default_policy/gradients/default_policy/Max_1_grad/Reshape*
T0*(
_output_shapes
:����������
�
6default_policy/gradients/default_policy/Max_1_grad/mulMul:default_policy/gradients/default_policy/Max_1_grad/truedivMdefault_policy/gradients/default_policy/sub_2_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:����������
�
Rdefault_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/BiasAddGradBiasAddGrad>default_policy/gradients/default_policy/Reshape_2_grad/Reshape*
T0*
_output_shapes
:*
data_formatNHWC
�
Wdefault_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/tuple/group_depsNoOp?^default_policy/gradients/default_policy/Reshape_2_grad/ReshapeS^default_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/BiasAddGrad
�
_default_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/tuple/control_dependencyIdentity>default_policy/gradients/default_policy/Reshape_2_grad/ReshapeX^default_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@default_policy/gradients/default_policy/Reshape_2_grad/Reshape*'
_output_shapes
:���������
�
adefault_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/tuple/control_dependency_1IdentityRdefault_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/BiasAddGradX^default_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/tuple/group_deps*
T0*e
_class[
YWloc:@default_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
default_policy/gradients/AddN_6AddNKdefault_policy/gradients/default_policy/sub_5_grad/tuple/control_dependency6default_policy/gradients/default_policy/Max_2_grad/mulKdefault_policy/gradients/default_policy/sub_2_grad/tuple/control_dependencyzdefault_policy/gradients/default_policy/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mul6default_policy/gradients/default_policy/Max_1_grad/mul*
N*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/sub_5_grad/Reshape*(
_output_shapes
:����������
�
<default_policy/gradients/default_policy/truediv_2_grad/ShapeShape)default_policy/model_2/action_out/BiasAdd*
T0*
_output_shapes
:*
out_type0
�
>default_policy/gradients/default_policy/truediv_2_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
�
Ldefault_policy/gradients/default_policy/truediv_2_grad/BroadcastGradientArgsBroadcastGradientArgs<default_policy/gradients/default_policy/truediv_2_grad/Shape>default_policy/gradients/default_policy/truediv_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
>default_policy/gradients/default_policy/truediv_2_grad/RealDivRealDivdefault_policy/gradients/AddN_6default_policy/truediv_2/y*
T0*(
_output_shapes
:����������
�
:default_policy/gradients/default_policy/truediv_2_grad/SumSum>default_policy/gradients/default_policy/truediv_2_grad/RealDivLdefault_policy/gradients/default_policy/truediv_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
>default_policy/gradients/default_policy/truediv_2_grad/ReshapeReshape:default_policy/gradients/default_policy/truediv_2_grad/Sum<default_policy/gradients/default_policy/truediv_2_grad/Shape*
T0*
Tshape0*(
_output_shapes
:����������
�
:default_policy/gradients/default_policy/truediv_2_grad/NegNeg)default_policy/model_2/action_out/BiasAdd*
T0*(
_output_shapes
:����������
�
@default_policy/gradients/default_policy/truediv_2_grad/RealDiv_1RealDiv:default_policy/gradients/default_policy/truediv_2_grad/Negdefault_policy/truediv_2/y*
T0*(
_output_shapes
:����������
�
@default_policy/gradients/default_policy/truediv_2_grad/RealDiv_2RealDiv@default_policy/gradients/default_policy/truediv_2_grad/RealDiv_1default_policy/truediv_2/y*
T0*(
_output_shapes
:����������
�
:default_policy/gradients/default_policy/truediv_2_grad/mulMuldefault_policy/gradients/AddN_6@default_policy/gradients/default_policy/truediv_2_grad/RealDiv_2*
T0*(
_output_shapes
:����������
�
<default_policy/gradients/default_policy/truediv_2_grad/Sum_1Sum:default_policy/gradients/default_policy/truediv_2_grad/mulNdefault_policy/gradients/default_policy/truediv_2_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
@default_policy/gradients/default_policy/truediv_2_grad/Reshape_1Reshape<default_policy/gradients/default_policy/truediv_2_grad/Sum_1>default_policy/gradients/default_policy/truediv_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Gdefault_policy/gradients/default_policy/truediv_2_grad/tuple/group_depsNoOp?^default_policy/gradients/default_policy/truediv_2_grad/ReshapeA^default_policy/gradients/default_policy/truediv_2_grad/Reshape_1
�
Odefault_policy/gradients/default_policy/truediv_2_grad/tuple/control_dependencyIdentity>default_policy/gradients/default_policy/truediv_2_grad/ReshapeH^default_policy/gradients/default_policy/truediv_2_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@default_policy/gradients/default_policy/truediv_2_grad/Reshape*(
_output_shapes
:����������
�
Qdefault_policy/gradients/default_policy/truediv_2_grad/tuple/control_dependency_1Identity@default_policy/gradients/default_policy/truediv_2_grad/Reshape_1H^default_policy/gradients/default_policy/truediv_2_grad/tuple/group_deps*
T0*S
_classI
GEloc:@default_policy/gradients/default_policy/truediv_2_grad/Reshape_1*
_output_shapes
: 
�
Ldefault_policy/gradients/default_policy/model_2/value_out/MatMul_grad/MatMulMatMul_default_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/tuple/control_dependency6default_policy/model_2/value_out/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b(
�
Ndefault_policy/gradients/default_policy/model_2/value_out/MatMul_grad/MatMul_1MatMul2default_policy/model_2/layer_val_hidden/re_lu/Relu_default_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes
:	�*
transpose_a(*
transpose_b( 
�
Vdefault_policy/gradients/default_policy/model_2/value_out/MatMul_grad/tuple/group_depsNoOpM^default_policy/gradients/default_policy/model_2/value_out/MatMul_grad/MatMulO^default_policy/gradients/default_policy/model_2/value_out/MatMul_grad/MatMul_1
�
^default_policy/gradients/default_policy/model_2/value_out/MatMul_grad/tuple/control_dependencyIdentityLdefault_policy/gradients/default_policy/model_2/value_out/MatMul_grad/MatMulW^default_policy/gradients/default_policy/model_2/value_out/MatMul_grad/tuple/group_deps*
T0*_
_classU
SQloc:@default_policy/gradients/default_policy/model_2/value_out/MatMul_grad/MatMul*(
_output_shapes
:����������
�
`default_policy/gradients/default_policy/model_2/value_out/MatMul_grad/tuple/control_dependency_1IdentityNdefault_policy/gradients/default_policy/model_2/value_out/MatMul_grad/MatMul_1W^default_policy/gradients/default_policy/model_2/value_out/MatMul_grad/tuple/group_deps*
T0*a
_classW
USloc:@default_policy/gradients/default_policy/model_2/value_out/MatMul_grad/MatMul_1*
_output_shapes
:	�
�
Sdefault_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/BiasAddGradBiasAddGradOdefault_policy/gradients/default_policy/truediv_2_grad/tuple/control_dependency*
T0*
_output_shapes	
:�*
data_formatNHWC
�
Xdefault_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/tuple/group_depsNoOpT^default_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/BiasAddGradP^default_policy/gradients/default_policy/truediv_2_grad/tuple/control_dependency
�
`default_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/tuple/control_dependencyIdentityOdefault_policy/gradients/default_policy/truediv_2_grad/tuple/control_dependencyY^default_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@default_policy/gradients/default_policy/truediv_2_grad/Reshape*(
_output_shapes
:����������
�
bdefault_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/tuple/control_dependency_1IdentitySdefault_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/BiasAddGradY^default_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@default_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�
�
Ydefault_policy/gradients/default_policy/model_2/layer_val_hidden/re_lu/Relu_grad/ReluGradReluGrad^default_policy/gradients/default_policy/model_2/value_out/MatMul_grad/tuple/control_dependency2default_policy/model_2/layer_val_hidden/re_lu/Relu*
T0*(
_output_shapes
:����������
�
Mdefault_policy/gradients/default_policy/model_2/action_out/MatMul_grad/MatMulMatMul`default_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/tuple/control_dependency7default_policy/model_2/action_out/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b(
�
Odefault_policy/gradients/default_policy/model_2/action_out/MatMul_grad/MatMul_1MatMul)default_policy/model_2/layer_4/re_lu/Relu`default_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
��*
transpose_a(*
transpose_b( 
�
Wdefault_policy/gradients/default_policy/model_2/action_out/MatMul_grad/tuple/group_depsNoOpN^default_policy/gradients/default_policy/model_2/action_out/MatMul_grad/MatMulP^default_policy/gradients/default_policy/model_2/action_out/MatMul_grad/MatMul_1
�
_default_policy/gradients/default_policy/model_2/action_out/MatMul_grad/tuple/control_dependencyIdentityMdefault_policy/gradients/default_policy/model_2/action_out/MatMul_grad/MatMulX^default_policy/gradients/default_policy/model_2/action_out/MatMul_grad/tuple/group_deps*
T0*`
_classV
TRloc:@default_policy/gradients/default_policy/model_2/action_out/MatMul_grad/MatMul*(
_output_shapes
:����������
�
adefault_policy/gradients/default_policy/model_2/action_out/MatMul_grad/tuple/control_dependency_1IdentityOdefault_policy/gradients/default_policy/model_2/action_out/MatMul_grad/MatMul_1X^default_policy/gradients/default_policy/model_2/action_out/MatMul_grad/tuple/group_deps*
T0*b
_classX
VTloc:@default_policy/gradients/default_policy/model_2/action_out/MatMul_grad/MatMul_1* 
_output_shapes
:
��
�
Ydefault_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/BiasAddGradBiasAddGradYdefault_policy/gradients/default_policy/model_2/layer_val_hidden/re_lu/Relu_grad/ReluGrad*
T0*
_output_shapes	
:�*
data_formatNHWC
�
^default_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/tuple/group_depsNoOpZ^default_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/BiasAddGradZ^default_policy/gradients/default_policy/model_2/layer_val_hidden/re_lu/Relu_grad/ReluGrad
�
fdefault_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/tuple/control_dependencyIdentityYdefault_policy/gradients/default_policy/model_2/layer_val_hidden/re_lu/Relu_grad/ReluGrad_^default_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/tuple/group_deps*
T0*l
_classb
`^loc:@default_policy/gradients/default_policy/model_2/layer_val_hidden/re_lu/Relu_grad/ReluGrad*(
_output_shapes
:����������
�
hdefault_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/tuple/control_dependency_1IdentityYdefault_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/BiasAddGrad_^default_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/tuple/group_deps*
T0*l
_classb
`^loc:@default_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�
�
Sdefault_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/MatMulMatMulfdefault_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/tuple/control_dependency=default_policy/model_2/layer_val_hidden/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b(
�
Udefault_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/MatMul_1MatMul)default_policy/model_2/layer_4/re_lu/Relufdefault_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
��*
transpose_a(*
transpose_b( 
�
]default_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/tuple/group_depsNoOpT^default_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/MatMulV^default_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/MatMul_1
�
edefault_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/tuple/control_dependencyIdentitySdefault_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/MatMul^^default_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@default_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/MatMul*(
_output_shapes
:����������
�
gdefault_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/tuple/control_dependency_1IdentityUdefault_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/MatMul_1^^default_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@default_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/MatMul_1* 
_output_shapes
:
��
�
default_policy/gradients/AddN_7AddN_default_policy/gradients/default_policy/model_2/action_out/MatMul_grad/tuple/control_dependencyedefault_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/tuple/control_dependency*
N*
T0*`
_classV
TRloc:@default_policy/gradients/default_policy/model_2/action_out/MatMul_grad/MatMul*(
_output_shapes
:����������
�
Pdefault_policy/gradients/default_policy/model_2/layer_4/re_lu/Relu_grad/ReluGradReluGraddefault_policy/gradients/AddN_7)default_policy/model_2/layer_4/re_lu/Relu*
T0*(
_output_shapes
:����������
�
Pdefault_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/BiasAddGradBiasAddGradPdefault_policy/gradients/default_policy/model_2/layer_4/re_lu/Relu_grad/ReluGrad*
T0*
_output_shapes	
:�*
data_formatNHWC
�
Udefault_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/tuple/group_depsNoOpQ^default_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/BiasAddGradQ^default_policy/gradients/default_policy/model_2/layer_4/re_lu/Relu_grad/ReluGrad
�
]default_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/tuple/control_dependencyIdentityPdefault_policy/gradients/default_policy/model_2/layer_4/re_lu/Relu_grad/ReluGradV^default_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/tuple/group_deps*
T0*c
_classY
WUloc:@default_policy/gradients/default_policy/model_2/layer_4/re_lu/Relu_grad/ReluGrad*(
_output_shapes
:����������
�
_default_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/tuple/control_dependency_1IdentityPdefault_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/BiasAddGradV^default_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/tuple/group_deps*
T0*c
_classY
WUloc:@default_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�
�
Jdefault_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/MatMulMatMul]default_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/tuple/control_dependency4default_policy/model_2/layer_4/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b(
�
Ldefault_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/MatMul_1MatMul)default_policy/model_2/layer_3/re_lu/Relu]default_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
��*
transpose_a(*
transpose_b( 
�
Tdefault_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/tuple/group_depsNoOpK^default_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/MatMulM^default_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/MatMul_1
�
\default_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/tuple/control_dependencyIdentityJdefault_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/MatMulU^default_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/tuple/group_deps*
T0*]
_classS
QOloc:@default_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/MatMul*(
_output_shapes
:����������
�
^default_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/tuple/control_dependency_1IdentityLdefault_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/MatMul_1U^default_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/tuple/group_deps*
T0*_
_classU
SQloc:@default_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/MatMul_1* 
_output_shapes
:
��
�
Pdefault_policy/gradients/default_policy/model_2/layer_3/re_lu/Relu_grad/ReluGradReluGrad\default_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/tuple/control_dependency)default_policy/model_2/layer_3/re_lu/Relu*
T0*(
_output_shapes
:����������
�
Pdefault_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/BiasAddGradBiasAddGradPdefault_policy/gradients/default_policy/model_2/layer_3/re_lu/Relu_grad/ReluGrad*
T0*
_output_shapes	
:�*
data_formatNHWC
�
Udefault_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/tuple/group_depsNoOpQ^default_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/BiasAddGradQ^default_policy/gradients/default_policy/model_2/layer_3/re_lu/Relu_grad/ReluGrad
�
]default_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/tuple/control_dependencyIdentityPdefault_policy/gradients/default_policy/model_2/layer_3/re_lu/Relu_grad/ReluGradV^default_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/tuple/group_deps*
T0*c
_classY
WUloc:@default_policy/gradients/default_policy/model_2/layer_3/re_lu/Relu_grad/ReluGrad*(
_output_shapes
:����������
�
_default_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/tuple/control_dependency_1IdentityPdefault_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/BiasAddGradV^default_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/tuple/group_deps*
T0*c
_classY
WUloc:@default_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�
�
Jdefault_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/MatMulMatMul]default_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/tuple/control_dependency4default_policy/model_2/layer_3/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b(
�
Ldefault_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/MatMul_1MatMul)default_policy/model_2/layer_2/re_lu/Relu]default_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
��*
transpose_a(*
transpose_b( 
�
Tdefault_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/tuple/group_depsNoOpK^default_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/MatMulM^default_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/MatMul_1
�
\default_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/tuple/control_dependencyIdentityJdefault_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/MatMulU^default_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/tuple/group_deps*
T0*]
_classS
QOloc:@default_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/MatMul*(
_output_shapes
:����������
�
^default_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/tuple/control_dependency_1IdentityLdefault_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/MatMul_1U^default_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/tuple/group_deps*
T0*_
_classU
SQloc:@default_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/MatMul_1* 
_output_shapes
:
��
�
Pdefault_policy/gradients/default_policy/model_2/layer_2/re_lu/Relu_grad/ReluGradReluGrad\default_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/tuple/control_dependency)default_policy/model_2/layer_2/re_lu/Relu*
T0*(
_output_shapes
:����������
�
Pdefault_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/BiasAddGradBiasAddGradPdefault_policy/gradients/default_policy/model_2/layer_2/re_lu/Relu_grad/ReluGrad*
T0*
_output_shapes	
:�*
data_formatNHWC
�
Udefault_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/tuple/group_depsNoOpQ^default_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/BiasAddGradQ^default_policy/gradients/default_policy/model_2/layer_2/re_lu/Relu_grad/ReluGrad
�
]default_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/tuple/control_dependencyIdentityPdefault_policy/gradients/default_policy/model_2/layer_2/re_lu/Relu_grad/ReluGradV^default_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/tuple/group_deps*
T0*c
_classY
WUloc:@default_policy/gradients/default_policy/model_2/layer_2/re_lu/Relu_grad/ReluGrad*(
_output_shapes
:����������
�
_default_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/tuple/control_dependency_1IdentityPdefault_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/BiasAddGradV^default_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/tuple/group_deps*
T0*c
_classY
WUloc:@default_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�
�
Jdefault_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/MatMulMatMul]default_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/tuple/control_dependency4default_policy/model_2/layer_2/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b(
�
Ldefault_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/MatMul_1MatMul)default_policy/model_2/layer_1/re_lu/Relu]default_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
��*
transpose_a(*
transpose_b( 
�
Tdefault_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/tuple/group_depsNoOpK^default_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/MatMulM^default_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/MatMul_1
�
\default_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/tuple/control_dependencyIdentityJdefault_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/MatMulU^default_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/tuple/group_deps*
T0*]
_classS
QOloc:@default_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/MatMul*(
_output_shapes
:����������
�
^default_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/tuple/control_dependency_1IdentityLdefault_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/MatMul_1U^default_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/tuple/group_deps*
T0*_
_classU
SQloc:@default_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/MatMul_1* 
_output_shapes
:
��
�
Pdefault_policy/gradients/default_policy/model_2/layer_1/re_lu/Relu_grad/ReluGradReluGrad\default_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/tuple/control_dependency)default_policy/model_2/layer_1/re_lu/Relu*
T0*(
_output_shapes
:����������
�
Pdefault_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/BiasAddGradBiasAddGradPdefault_policy/gradients/default_policy/model_2/layer_1/re_lu/Relu_grad/ReluGrad*
T0*
_output_shapes	
:�*
data_formatNHWC
�
Udefault_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/tuple/group_depsNoOpQ^default_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/BiasAddGradQ^default_policy/gradients/default_policy/model_2/layer_1/re_lu/Relu_grad/ReluGrad
�
]default_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/tuple/control_dependencyIdentityPdefault_policy/gradients/default_policy/model_2/layer_1/re_lu/Relu_grad/ReluGradV^default_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/tuple/group_deps*
T0*c
_classY
WUloc:@default_policy/gradients/default_policy/model_2/layer_1/re_lu/Relu_grad/ReluGrad*(
_output_shapes
:����������
�
_default_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/tuple/control_dependency_1IdentityPdefault_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/BiasAddGradV^default_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/tuple/group_deps*
T0*c
_classY
WUloc:@default_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�
�
Jdefault_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/MatMulMatMul]default_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/tuple/control_dependency4default_policy/model_2/layer_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������	*
transpose_a( *
transpose_b(
�
Ldefault_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/MatMul_1MatMuldefault_policy/obs]default_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
�	�*
transpose_a(*
transpose_b( 
�
Tdefault_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/tuple/group_depsNoOpK^default_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/MatMulM^default_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/MatMul_1
�
\default_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/tuple/control_dependencyIdentityJdefault_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/MatMulU^default_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/tuple/group_deps*
T0*]
_classS
QOloc:@default_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/MatMul*(
_output_shapes
:����������	
�
^default_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/tuple/control_dependency_1IdentityLdefault_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/MatMul_1U^default_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/tuple/group_deps*
T0*_
_classU
SQloc:@default_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/MatMul_1* 
_output_shapes
:
�	�
�
 default_policy/ReadVariableOp_14ReadVariableOpdefault_policy/layer_1/kernel* 
_output_shapes
:
�	�*
dtype0
�
8default_policy/Placeholder_default_policy/layer_1/kernelPlaceholder* 
_output_shapes
:
�	�*
dtype0*
shape:
�	�
�
"default_policy/AssignVariableOp_51AssignVariableOpdefault_policy/layer_1/kernel8default_policy/Placeholder_default_policy/layer_1/kernel*
dtype0
�
 default_policy/ReadVariableOp_15ReadVariableOpdefault_policy/layer_1/kernel#^default_policy/AssignVariableOp_51* 
_output_shapes
:
�	�*
dtype0
y
 default_policy/ReadVariableOp_16ReadVariableOpdefault_policy/layer_1/bias*
_output_shapes	
:�*
dtype0
�
6default_policy/Placeholder_default_policy/layer_1/biasPlaceholder*
_output_shapes	
:�*
dtype0*
shape:�
�
"default_policy/AssignVariableOp_52AssignVariableOpdefault_policy/layer_1/bias6default_policy/Placeholder_default_policy/layer_1/bias*
dtype0
�
 default_policy/ReadVariableOp_17ReadVariableOpdefault_policy/layer_1/bias#^default_policy/AssignVariableOp_52*
_output_shapes	
:�*
dtype0
�
 default_policy/ReadVariableOp_18ReadVariableOpdefault_policy/layer_2/kernel* 
_output_shapes
:
��*
dtype0
�
8default_policy/Placeholder_default_policy/layer_2/kernelPlaceholder* 
_output_shapes
:
��*
dtype0*
shape:
��
�
"default_policy/AssignVariableOp_53AssignVariableOpdefault_policy/layer_2/kernel8default_policy/Placeholder_default_policy/layer_2/kernel*
dtype0
�
 default_policy/ReadVariableOp_19ReadVariableOpdefault_policy/layer_2/kernel#^default_policy/AssignVariableOp_53* 
_output_shapes
:
��*
dtype0
y
 default_policy/ReadVariableOp_20ReadVariableOpdefault_policy/layer_2/bias*
_output_shapes	
:�*
dtype0
�
6default_policy/Placeholder_default_policy/layer_2/biasPlaceholder*
_output_shapes	
:�*
dtype0*
shape:�
�
"default_policy/AssignVariableOp_54AssignVariableOpdefault_policy/layer_2/bias6default_policy/Placeholder_default_policy/layer_2/bias*
dtype0
�
 default_policy/ReadVariableOp_21ReadVariableOpdefault_policy/layer_2/bias#^default_policy/AssignVariableOp_54*
_output_shapes	
:�*
dtype0
�
 default_policy/ReadVariableOp_22ReadVariableOpdefault_policy/layer_3/kernel* 
_output_shapes
:
��*
dtype0
�
8default_policy/Placeholder_default_policy/layer_3/kernelPlaceholder* 
_output_shapes
:
��*
dtype0*
shape:
��
�
"default_policy/AssignVariableOp_55AssignVariableOpdefault_policy/layer_3/kernel8default_policy/Placeholder_default_policy/layer_3/kernel*
dtype0
�
 default_policy/ReadVariableOp_23ReadVariableOpdefault_policy/layer_3/kernel#^default_policy/AssignVariableOp_55* 
_output_shapes
:
��*
dtype0
y
 default_policy/ReadVariableOp_24ReadVariableOpdefault_policy/layer_3/bias*
_output_shapes	
:�*
dtype0
�
6default_policy/Placeholder_default_policy/layer_3/biasPlaceholder*
_output_shapes	
:�*
dtype0*
shape:�
�
"default_policy/AssignVariableOp_56AssignVariableOpdefault_policy/layer_3/bias6default_policy/Placeholder_default_policy/layer_3/bias*
dtype0
�
 default_policy/ReadVariableOp_25ReadVariableOpdefault_policy/layer_3/bias#^default_policy/AssignVariableOp_56*
_output_shapes	
:�*
dtype0
�
 default_policy/ReadVariableOp_26ReadVariableOpdefault_policy/layer_4/kernel* 
_output_shapes
:
��*
dtype0
�
8default_policy/Placeholder_default_policy/layer_4/kernelPlaceholder* 
_output_shapes
:
��*
dtype0*
shape:
��
�
"default_policy/AssignVariableOp_57AssignVariableOpdefault_policy/layer_4/kernel8default_policy/Placeholder_default_policy/layer_4/kernel*
dtype0
�
 default_policy/ReadVariableOp_27ReadVariableOpdefault_policy/layer_4/kernel#^default_policy/AssignVariableOp_57* 
_output_shapes
:
��*
dtype0
y
 default_policy/ReadVariableOp_28ReadVariableOpdefault_policy/layer_4/bias*
_output_shapes	
:�*
dtype0
�
6default_policy/Placeholder_default_policy/layer_4/biasPlaceholder*
_output_shapes	
:�*
dtype0*
shape:�
�
"default_policy/AssignVariableOp_58AssignVariableOpdefault_policy/layer_4/bias6default_policy/Placeholder_default_policy/layer_4/bias*
dtype0
�
 default_policy/ReadVariableOp_29ReadVariableOpdefault_policy/layer_4/bias#^default_policy/AssignVariableOp_58*
_output_shapes	
:�*
dtype0
�
 default_policy/ReadVariableOp_30ReadVariableOp&default_policy/layer_val_hidden/kernel* 
_output_shapes
:
��*
dtype0
�
Adefault_policy/Placeholder_default_policy/layer_val_hidden/kernelPlaceholder* 
_output_shapes
:
��*
dtype0*
shape:
��
�
"default_policy/AssignVariableOp_59AssignVariableOp&default_policy/layer_val_hidden/kernelAdefault_policy/Placeholder_default_policy/layer_val_hidden/kernel*
dtype0
�
 default_policy/ReadVariableOp_31ReadVariableOp&default_policy/layer_val_hidden/kernel#^default_policy/AssignVariableOp_59* 
_output_shapes
:
��*
dtype0
�
 default_policy/ReadVariableOp_32ReadVariableOp$default_policy/layer_val_hidden/bias*
_output_shapes	
:�*
dtype0
�
?default_policy/Placeholder_default_policy/layer_val_hidden/biasPlaceholder*
_output_shapes	
:�*
dtype0*
shape:�
�
"default_policy/AssignVariableOp_60AssignVariableOp$default_policy/layer_val_hidden/bias?default_policy/Placeholder_default_policy/layer_val_hidden/bias*
dtype0
�
 default_policy/ReadVariableOp_33ReadVariableOp$default_policy/layer_val_hidden/bias#^default_policy/AssignVariableOp_60*
_output_shapes	
:�*
dtype0
�
 default_policy/ReadVariableOp_34ReadVariableOp default_policy/action_out/kernel* 
_output_shapes
:
��*
dtype0
�
;default_policy/Placeholder_default_policy/action_out/kernelPlaceholder* 
_output_shapes
:
��*
dtype0*
shape:
��
�
"default_policy/AssignVariableOp_61AssignVariableOp default_policy/action_out/kernel;default_policy/Placeholder_default_policy/action_out/kernel*
dtype0
�
 default_policy/ReadVariableOp_35ReadVariableOp default_policy/action_out/kernel#^default_policy/AssignVariableOp_61* 
_output_shapes
:
��*
dtype0
|
 default_policy/ReadVariableOp_36ReadVariableOpdefault_policy/action_out/bias*
_output_shapes	
:�*
dtype0
�
9default_policy/Placeholder_default_policy/action_out/biasPlaceholder*
_output_shapes	
:�*
dtype0*
shape:�
�
"default_policy/AssignVariableOp_62AssignVariableOpdefault_policy/action_out/bias9default_policy/Placeholder_default_policy/action_out/bias*
dtype0
�
 default_policy/ReadVariableOp_37ReadVariableOpdefault_policy/action_out/bias#^default_policy/AssignVariableOp_62*
_output_shapes	
:�*
dtype0
�
 default_policy/ReadVariableOp_38ReadVariableOpdefault_policy/value_out/kernel*
_output_shapes
:	�*
dtype0
�
:default_policy/Placeholder_default_policy/value_out/kernelPlaceholder*
_output_shapes
:	�*
dtype0*
shape:	�
�
"default_policy/AssignVariableOp_63AssignVariableOpdefault_policy/value_out/kernel:default_policy/Placeholder_default_policy/value_out/kernel*
dtype0
�
 default_policy/ReadVariableOp_39ReadVariableOpdefault_policy/value_out/kernel#^default_policy/AssignVariableOp_63*
_output_shapes
:	�*
dtype0
z
 default_policy/ReadVariableOp_40ReadVariableOpdefault_policy/value_out/bias*
_output_shapes
:*
dtype0
�
8default_policy/Placeholder_default_policy/value_out/biasPlaceholder*
_output_shapes
:*
dtype0*
shape:
�
"default_policy/AssignVariableOp_64AssignVariableOpdefault_policy/value_out/bias8default_policy/Placeholder_default_policy/value_out/bias*
dtype0
�
 default_policy/ReadVariableOp_41ReadVariableOpdefault_policy/value_out/bias#^default_policy/AssignVariableOp_64*
_output_shapes
:*
dtype0
�
,default_policy/global_step/Initializer/zerosConst*-
_class#
!loc:@default_policy/global_step*
_output_shapes
: *
dtype0	*
value	B	 R 
�
default_policy/global_stepVarHandleOp*-
_class#
!loc:@default_policy/global_step*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0	*
shape: *+
shared_namedefault_policy/global_step
�
;default_policy/global_step/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/global_step*
_output_shapes
: 
�
!default_policy/global_step/AssignAssignVariableOpdefault_policy/global_step,default_policy/global_step/Initializer/zeros*
dtype0	
�
.default_policy/global_step/Read/ReadVariableOpReadVariableOpdefault_policy/global_step*
_output_shapes
: *
dtype0	
�
4default_policy/beta1_power/Initializer/initial_valueConst*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: *
dtype0*
valueB
 *fff?
�
default_policy/beta1_powerVarHandleOp*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *+
shared_namedefault_policy/beta1_power
�
;default_policy/beta1_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/beta1_power*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: 
�
!default_policy/beta1_power/AssignAssignVariableOpdefault_policy/beta1_power4default_policy/beta1_power/Initializer/initial_value*
dtype0
�
.default_policy/beta1_power/Read/ReadVariableOpReadVariableOpdefault_policy/beta1_power*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: *
dtype0
�
4default_policy/beta2_power/Initializer/initial_valueConst*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: *
dtype0*
valueB
 *w�?
�
default_policy/beta2_powerVarHandleOp*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *+
shared_namedefault_policy/beta2_power
�
;default_policy/beta2_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/beta2_power*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: 
�
!default_policy/beta2_power/AssignAssignVariableOpdefault_policy/beta2_power4default_policy/beta2_power/Initializer/initial_value*
dtype0
�
.default_policy/beta2_power/Read/ReadVariableOpReadVariableOpdefault_policy/beta2_power*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: *
dtype0
�
Sdefault_policy/default_policy/layer_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
:*
dtype0*
valueB"�  �  
�
Idefault_policy/default_policy/layer_1/kernel/Adam/Initializer/zeros/ConstConst*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
Cdefault_policy/default_policy/layer_1/kernel/Adam/Initializer/zerosFillSdefault_policy/default_policy/layer_1/kernel/Adam/Initializer/zeros/shape_as_tensorIdefault_policy/default_policy/layer_1/kernel/Adam/Initializer/zeros/Const*
T0*0
_class&
$"loc:@default_policy/layer_1/kernel* 
_output_shapes
:
�	�*

index_type0
�
1default_policy/default_policy/layer_1/kernel/AdamVarHandleOp*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
�	�*B
shared_name31default_policy/default_policy/layer_1/kernel/Adam
�
Rdefault_policy/default_policy/layer_1/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp1default_policy/default_policy/layer_1/kernel/Adam*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
: 
�
8default_policy/default_policy/layer_1/kernel/Adam/AssignAssignVariableOp1default_policy/default_policy/layer_1/kernel/AdamCdefault_policy/default_policy/layer_1/kernel/Adam/Initializer/zeros*
dtype0
�
Edefault_policy/default_policy/layer_1/kernel/Adam/Read/ReadVariableOpReadVariableOp1default_policy/default_policy/layer_1/kernel/Adam*0
_class&
$"loc:@default_policy/layer_1/kernel* 
_output_shapes
:
�	�*
dtype0
�
Udefault_policy/default_policy/layer_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
:*
dtype0*
valueB"�  �  
�
Kdefault_policy/default_policy/layer_1/kernel/Adam_1/Initializer/zeros/ConstConst*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
Edefault_policy/default_policy/layer_1/kernel/Adam_1/Initializer/zerosFillUdefault_policy/default_policy/layer_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorKdefault_policy/default_policy/layer_1/kernel/Adam_1/Initializer/zeros/Const*
T0*0
_class&
$"loc:@default_policy/layer_1/kernel* 
_output_shapes
:
�	�*

index_type0
�
3default_policy/default_policy/layer_1/kernel/Adam_1VarHandleOp*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
�	�*D
shared_name53default_policy/default_policy/layer_1/kernel/Adam_1
�
Tdefault_policy/default_policy/layer_1/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp3default_policy/default_policy/layer_1/kernel/Adam_1*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
: 
�
:default_policy/default_policy/layer_1/kernel/Adam_1/AssignAssignVariableOp3default_policy/default_policy/layer_1/kernel/Adam_1Edefault_policy/default_policy/layer_1/kernel/Adam_1/Initializer/zeros*
dtype0
�
Gdefault_policy/default_policy/layer_1/kernel/Adam_1/Read/ReadVariableOpReadVariableOp3default_policy/default_policy/layer_1/kernel/Adam_1*0
_class&
$"loc:@default_policy/layer_1/kernel* 
_output_shapes
:
�	�*
dtype0
�
Adefault_policy/default_policy/layer_1/bias/Adam/Initializer/zerosConst*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
/default_policy/default_policy/layer_1/bias/AdamVarHandleOp*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*@
shared_name1/default_policy/default_policy/layer_1/bias/Adam
�
Pdefault_policy/default_policy/layer_1/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp/default_policy/default_policy/layer_1/bias/Adam*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes
: 
�
6default_policy/default_policy/layer_1/bias/Adam/AssignAssignVariableOp/default_policy/default_policy/layer_1/bias/AdamAdefault_policy/default_policy/layer_1/bias/Adam/Initializer/zeros*
dtype0
�
Cdefault_policy/default_policy/layer_1/bias/Adam/Read/ReadVariableOpReadVariableOp/default_policy/default_policy/layer_1/bias/Adam*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes	
:�*
dtype0
�
Cdefault_policy/default_policy/layer_1/bias/Adam_1/Initializer/zerosConst*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
1default_policy/default_policy/layer_1/bias/Adam_1VarHandleOp*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*B
shared_name31default_policy/default_policy/layer_1/bias/Adam_1
�
Rdefault_policy/default_policy/layer_1/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp1default_policy/default_policy/layer_1/bias/Adam_1*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes
: 
�
8default_policy/default_policy/layer_1/bias/Adam_1/AssignAssignVariableOp1default_policy/default_policy/layer_1/bias/Adam_1Cdefault_policy/default_policy/layer_1/bias/Adam_1/Initializer/zeros*
dtype0
�
Edefault_policy/default_policy/layer_1/bias/Adam_1/Read/ReadVariableOpReadVariableOp1default_policy/default_policy/layer_1/bias/Adam_1*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes	
:�*
dtype0
�
Sdefault_policy/default_policy/layer_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
:*
dtype0*
valueB"�    
�
Idefault_policy/default_policy/layer_2/kernel/Adam/Initializer/zeros/ConstConst*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
Cdefault_policy/default_policy/layer_2/kernel/Adam/Initializer/zerosFillSdefault_policy/default_policy/layer_2/kernel/Adam/Initializer/zeros/shape_as_tensorIdefault_policy/default_policy/layer_2/kernel/Adam/Initializer/zeros/Const*
T0*0
_class&
$"loc:@default_policy/layer_2/kernel* 
_output_shapes
:
��*

index_type0
�
1default_policy/default_policy/layer_2/kernel/AdamVarHandleOp*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*B
shared_name31default_policy/default_policy/layer_2/kernel/Adam
�
Rdefault_policy/default_policy/layer_2/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp1default_policy/default_policy/layer_2/kernel/Adam*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
: 
�
8default_policy/default_policy/layer_2/kernel/Adam/AssignAssignVariableOp1default_policy/default_policy/layer_2/kernel/AdamCdefault_policy/default_policy/layer_2/kernel/Adam/Initializer/zeros*
dtype0
�
Edefault_policy/default_policy/layer_2/kernel/Adam/Read/ReadVariableOpReadVariableOp1default_policy/default_policy/layer_2/kernel/Adam*0
_class&
$"loc:@default_policy/layer_2/kernel* 
_output_shapes
:
��*
dtype0
�
Udefault_policy/default_policy/layer_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
:*
dtype0*
valueB"�    
�
Kdefault_policy/default_policy/layer_2/kernel/Adam_1/Initializer/zeros/ConstConst*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
Edefault_policy/default_policy/layer_2/kernel/Adam_1/Initializer/zerosFillUdefault_policy/default_policy/layer_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorKdefault_policy/default_policy/layer_2/kernel/Adam_1/Initializer/zeros/Const*
T0*0
_class&
$"loc:@default_policy/layer_2/kernel* 
_output_shapes
:
��*

index_type0
�
3default_policy/default_policy/layer_2/kernel/Adam_1VarHandleOp*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*D
shared_name53default_policy/default_policy/layer_2/kernel/Adam_1
�
Tdefault_policy/default_policy/layer_2/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp3default_policy/default_policy/layer_2/kernel/Adam_1*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
: 
�
:default_policy/default_policy/layer_2/kernel/Adam_1/AssignAssignVariableOp3default_policy/default_policy/layer_2/kernel/Adam_1Edefault_policy/default_policy/layer_2/kernel/Adam_1/Initializer/zeros*
dtype0
�
Gdefault_policy/default_policy/layer_2/kernel/Adam_1/Read/ReadVariableOpReadVariableOp3default_policy/default_policy/layer_2/kernel/Adam_1*0
_class&
$"loc:@default_policy/layer_2/kernel* 
_output_shapes
:
��*
dtype0
�
Adefault_policy/default_policy/layer_2/bias/Adam/Initializer/zerosConst*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
/default_policy/default_policy/layer_2/bias/AdamVarHandleOp*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*@
shared_name1/default_policy/default_policy/layer_2/bias/Adam
�
Pdefault_policy/default_policy/layer_2/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp/default_policy/default_policy/layer_2/bias/Adam*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes
: 
�
6default_policy/default_policy/layer_2/bias/Adam/AssignAssignVariableOp/default_policy/default_policy/layer_2/bias/AdamAdefault_policy/default_policy/layer_2/bias/Adam/Initializer/zeros*
dtype0
�
Cdefault_policy/default_policy/layer_2/bias/Adam/Read/ReadVariableOpReadVariableOp/default_policy/default_policy/layer_2/bias/Adam*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes	
:�*
dtype0
�
Cdefault_policy/default_policy/layer_2/bias/Adam_1/Initializer/zerosConst*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
1default_policy/default_policy/layer_2/bias/Adam_1VarHandleOp*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*B
shared_name31default_policy/default_policy/layer_2/bias/Adam_1
�
Rdefault_policy/default_policy/layer_2/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp1default_policy/default_policy/layer_2/bias/Adam_1*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes
: 
�
8default_policy/default_policy/layer_2/bias/Adam_1/AssignAssignVariableOp1default_policy/default_policy/layer_2/bias/Adam_1Cdefault_policy/default_policy/layer_2/bias/Adam_1/Initializer/zeros*
dtype0
�
Edefault_policy/default_policy/layer_2/bias/Adam_1/Read/ReadVariableOpReadVariableOp1default_policy/default_policy/layer_2/bias/Adam_1*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes	
:�*
dtype0
�
Sdefault_policy/default_policy/layer_3/kernel/Adam/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
:*
dtype0*
valueB"    
�
Idefault_policy/default_policy/layer_3/kernel/Adam/Initializer/zeros/ConstConst*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
Cdefault_policy/default_policy/layer_3/kernel/Adam/Initializer/zerosFillSdefault_policy/default_policy/layer_3/kernel/Adam/Initializer/zeros/shape_as_tensorIdefault_policy/default_policy/layer_3/kernel/Adam/Initializer/zeros/Const*
T0*0
_class&
$"loc:@default_policy/layer_3/kernel* 
_output_shapes
:
��*

index_type0
�
1default_policy/default_policy/layer_3/kernel/AdamVarHandleOp*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*B
shared_name31default_policy/default_policy/layer_3/kernel/Adam
�
Rdefault_policy/default_policy/layer_3/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp1default_policy/default_policy/layer_3/kernel/Adam*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
: 
�
8default_policy/default_policy/layer_3/kernel/Adam/AssignAssignVariableOp1default_policy/default_policy/layer_3/kernel/AdamCdefault_policy/default_policy/layer_3/kernel/Adam/Initializer/zeros*
dtype0
�
Edefault_policy/default_policy/layer_3/kernel/Adam/Read/ReadVariableOpReadVariableOp1default_policy/default_policy/layer_3/kernel/Adam*0
_class&
$"loc:@default_policy/layer_3/kernel* 
_output_shapes
:
��*
dtype0
�
Udefault_policy/default_policy/layer_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
:*
dtype0*
valueB"    
�
Kdefault_policy/default_policy/layer_3/kernel/Adam_1/Initializer/zeros/ConstConst*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
Edefault_policy/default_policy/layer_3/kernel/Adam_1/Initializer/zerosFillUdefault_policy/default_policy/layer_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorKdefault_policy/default_policy/layer_3/kernel/Adam_1/Initializer/zeros/Const*
T0*0
_class&
$"loc:@default_policy/layer_3/kernel* 
_output_shapes
:
��*

index_type0
�
3default_policy/default_policy/layer_3/kernel/Adam_1VarHandleOp*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*D
shared_name53default_policy/default_policy/layer_3/kernel/Adam_1
�
Tdefault_policy/default_policy/layer_3/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp3default_policy/default_policy/layer_3/kernel/Adam_1*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
: 
�
:default_policy/default_policy/layer_3/kernel/Adam_1/AssignAssignVariableOp3default_policy/default_policy/layer_3/kernel/Adam_1Edefault_policy/default_policy/layer_3/kernel/Adam_1/Initializer/zeros*
dtype0
�
Gdefault_policy/default_policy/layer_3/kernel/Adam_1/Read/ReadVariableOpReadVariableOp3default_policy/default_policy/layer_3/kernel/Adam_1*0
_class&
$"loc:@default_policy/layer_3/kernel* 
_output_shapes
:
��*
dtype0
�
Qdefault_policy/default_policy/layer_3/bias/Adam/Initializer/zeros/shape_as_tensorConst*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes
:*
dtype0*
valueB:�
�
Gdefault_policy/default_policy/layer_3/bias/Adam/Initializer/zeros/ConstConst*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes
: *
dtype0*
valueB
 *    
�
Adefault_policy/default_policy/layer_3/bias/Adam/Initializer/zerosFillQdefault_policy/default_policy/layer_3/bias/Adam/Initializer/zeros/shape_as_tensorGdefault_policy/default_policy/layer_3/bias/Adam/Initializer/zeros/Const*
T0*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes	
:�*

index_type0
�
/default_policy/default_policy/layer_3/bias/AdamVarHandleOp*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*@
shared_name1/default_policy/default_policy/layer_3/bias/Adam
�
Pdefault_policy/default_policy/layer_3/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp/default_policy/default_policy/layer_3/bias/Adam*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes
: 
�
6default_policy/default_policy/layer_3/bias/Adam/AssignAssignVariableOp/default_policy/default_policy/layer_3/bias/AdamAdefault_policy/default_policy/layer_3/bias/Adam/Initializer/zeros*
dtype0
�
Cdefault_policy/default_policy/layer_3/bias/Adam/Read/ReadVariableOpReadVariableOp/default_policy/default_policy/layer_3/bias/Adam*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes	
:�*
dtype0
�
Sdefault_policy/default_policy/layer_3/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes
:*
dtype0*
valueB:�
�
Idefault_policy/default_policy/layer_3/bias/Adam_1/Initializer/zeros/ConstConst*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes
: *
dtype0*
valueB
 *    
�
Cdefault_policy/default_policy/layer_3/bias/Adam_1/Initializer/zerosFillSdefault_policy/default_policy/layer_3/bias/Adam_1/Initializer/zeros/shape_as_tensorIdefault_policy/default_policy/layer_3/bias/Adam_1/Initializer/zeros/Const*
T0*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes	
:�*

index_type0
�
1default_policy/default_policy/layer_3/bias/Adam_1VarHandleOp*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*B
shared_name31default_policy/default_policy/layer_3/bias/Adam_1
�
Rdefault_policy/default_policy/layer_3/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp1default_policy/default_policy/layer_3/bias/Adam_1*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes
: 
�
8default_policy/default_policy/layer_3/bias/Adam_1/AssignAssignVariableOp1default_policy/default_policy/layer_3/bias/Adam_1Cdefault_policy/default_policy/layer_3/bias/Adam_1/Initializer/zeros*
dtype0
�
Edefault_policy/default_policy/layer_3/bias/Adam_1/Read/ReadVariableOpReadVariableOp1default_policy/default_policy/layer_3/bias/Adam_1*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes	
:�*
dtype0
�
Sdefault_policy/default_policy/layer_4/kernel/Adam/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
:*
dtype0*
valueB"  X  
�
Idefault_policy/default_policy/layer_4/kernel/Adam/Initializer/zeros/ConstConst*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
Cdefault_policy/default_policy/layer_4/kernel/Adam/Initializer/zerosFillSdefault_policy/default_policy/layer_4/kernel/Adam/Initializer/zeros/shape_as_tensorIdefault_policy/default_policy/layer_4/kernel/Adam/Initializer/zeros/Const*
T0*0
_class&
$"loc:@default_policy/layer_4/kernel* 
_output_shapes
:
��*

index_type0
�
1default_policy/default_policy/layer_4/kernel/AdamVarHandleOp*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*B
shared_name31default_policy/default_policy/layer_4/kernel/Adam
�
Rdefault_policy/default_policy/layer_4/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp1default_policy/default_policy/layer_4/kernel/Adam*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
: 
�
8default_policy/default_policy/layer_4/kernel/Adam/AssignAssignVariableOp1default_policy/default_policy/layer_4/kernel/AdamCdefault_policy/default_policy/layer_4/kernel/Adam/Initializer/zeros*
dtype0
�
Edefault_policy/default_policy/layer_4/kernel/Adam/Read/ReadVariableOpReadVariableOp1default_policy/default_policy/layer_4/kernel/Adam*0
_class&
$"loc:@default_policy/layer_4/kernel* 
_output_shapes
:
��*
dtype0
�
Udefault_policy/default_policy/layer_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
:*
dtype0*
valueB"  X  
�
Kdefault_policy/default_policy/layer_4/kernel/Adam_1/Initializer/zeros/ConstConst*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
Edefault_policy/default_policy/layer_4/kernel/Adam_1/Initializer/zerosFillUdefault_policy/default_policy/layer_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorKdefault_policy/default_policy/layer_4/kernel/Adam_1/Initializer/zeros/Const*
T0*0
_class&
$"loc:@default_policy/layer_4/kernel* 
_output_shapes
:
��*

index_type0
�
3default_policy/default_policy/layer_4/kernel/Adam_1VarHandleOp*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*D
shared_name53default_policy/default_policy/layer_4/kernel/Adam_1
�
Tdefault_policy/default_policy/layer_4/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp3default_policy/default_policy/layer_4/kernel/Adam_1*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
: 
�
:default_policy/default_policy/layer_4/kernel/Adam_1/AssignAssignVariableOp3default_policy/default_policy/layer_4/kernel/Adam_1Edefault_policy/default_policy/layer_4/kernel/Adam_1/Initializer/zeros*
dtype0
�
Gdefault_policy/default_policy/layer_4/kernel/Adam_1/Read/ReadVariableOpReadVariableOp3default_policy/default_policy/layer_4/kernel/Adam_1*0
_class&
$"loc:@default_policy/layer_4/kernel* 
_output_shapes
:
��*
dtype0
�
Adefault_policy/default_policy/layer_4/bias/Adam/Initializer/zerosConst*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
/default_policy/default_policy/layer_4/bias/AdamVarHandleOp*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*@
shared_name1/default_policy/default_policy/layer_4/bias/Adam
�
Pdefault_policy/default_policy/layer_4/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp/default_policy/default_policy/layer_4/bias/Adam*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes
: 
�
6default_policy/default_policy/layer_4/bias/Adam/AssignAssignVariableOp/default_policy/default_policy/layer_4/bias/AdamAdefault_policy/default_policy/layer_4/bias/Adam/Initializer/zeros*
dtype0
�
Cdefault_policy/default_policy/layer_4/bias/Adam/Read/ReadVariableOpReadVariableOp/default_policy/default_policy/layer_4/bias/Adam*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes	
:�*
dtype0
�
Cdefault_policy/default_policy/layer_4/bias/Adam_1/Initializer/zerosConst*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
1default_policy/default_policy/layer_4/bias/Adam_1VarHandleOp*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*B
shared_name31default_policy/default_policy/layer_4/bias/Adam_1
�
Rdefault_policy/default_policy/layer_4/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp1default_policy/default_policy/layer_4/bias/Adam_1*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes
: 
�
8default_policy/default_policy/layer_4/bias/Adam_1/AssignAssignVariableOp1default_policy/default_policy/layer_4/bias/Adam_1Cdefault_policy/default_policy/layer_4/bias/Adam_1/Initializer/zeros*
dtype0
�
Edefault_policy/default_policy/layer_4/bias/Adam_1/Read/ReadVariableOpReadVariableOp1default_policy/default_policy/layer_4/bias/Adam_1*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes	
:�*
dtype0
�
\default_policy/default_policy/layer_val_hidden/kernel/Adam/Initializer/zeros/shape_as_tensorConst*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
:*
dtype0*
valueB"X  �  
�
Rdefault_policy/default_policy/layer_val_hidden/kernel/Adam/Initializer/zeros/ConstConst*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
Ldefault_policy/default_policy/layer_val_hidden/kernel/Adam/Initializer/zerosFill\default_policy/default_policy/layer_val_hidden/kernel/Adam/Initializer/zeros/shape_as_tensorRdefault_policy/default_policy/layer_val_hidden/kernel/Adam/Initializer/zeros/Const*
T0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel* 
_output_shapes
:
��*

index_type0
�
:default_policy/default_policy/layer_val_hidden/kernel/AdamVarHandleOp*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*K
shared_name<:default_policy/default_policy/layer_val_hidden/kernel/Adam
�
[default_policy/default_policy/layer_val_hidden/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp:default_policy/default_policy/layer_val_hidden/kernel/Adam*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
: 
�
Adefault_policy/default_policy/layer_val_hidden/kernel/Adam/AssignAssignVariableOp:default_policy/default_policy/layer_val_hidden/kernel/AdamLdefault_policy/default_policy/layer_val_hidden/kernel/Adam/Initializer/zeros*
dtype0
�
Ndefault_policy/default_policy/layer_val_hidden/kernel/Adam/Read/ReadVariableOpReadVariableOp:default_policy/default_policy/layer_val_hidden/kernel/Adam*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel* 
_output_shapes
:
��*
dtype0
�
^default_policy/default_policy/layer_val_hidden/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
:*
dtype0*
valueB"X  �  
�
Tdefault_policy/default_policy/layer_val_hidden/kernel/Adam_1/Initializer/zeros/ConstConst*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
Ndefault_policy/default_policy/layer_val_hidden/kernel/Adam_1/Initializer/zerosFill^default_policy/default_policy/layer_val_hidden/kernel/Adam_1/Initializer/zeros/shape_as_tensorTdefault_policy/default_policy/layer_val_hidden/kernel/Adam_1/Initializer/zeros/Const*
T0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel* 
_output_shapes
:
��*

index_type0
�
<default_policy/default_policy/layer_val_hidden/kernel/Adam_1VarHandleOp*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*M
shared_name><default_policy/default_policy/layer_val_hidden/kernel/Adam_1
�
]default_policy/default_policy/layer_val_hidden/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp<default_policy/default_policy/layer_val_hidden/kernel/Adam_1*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
: 
�
Cdefault_policy/default_policy/layer_val_hidden/kernel/Adam_1/AssignAssignVariableOp<default_policy/default_policy/layer_val_hidden/kernel/Adam_1Ndefault_policy/default_policy/layer_val_hidden/kernel/Adam_1/Initializer/zeros*
dtype0
�
Pdefault_policy/default_policy/layer_val_hidden/kernel/Adam_1/Read/ReadVariableOpReadVariableOp<default_policy/default_policy/layer_val_hidden/kernel/Adam_1*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel* 
_output_shapes
:
��*
dtype0
�
Jdefault_policy/default_policy/layer_val_hidden/bias/Adam/Initializer/zerosConst*7
_class-
+)loc:@default_policy/layer_val_hidden/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
8default_policy/default_policy/layer_val_hidden/bias/AdamVarHandleOp*7
_class-
+)loc:@default_policy/layer_val_hidden/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*I
shared_name:8default_policy/default_policy/layer_val_hidden/bias/Adam
�
Ydefault_policy/default_policy/layer_val_hidden/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp8default_policy/default_policy/layer_val_hidden/bias/Adam*7
_class-
+)loc:@default_policy/layer_val_hidden/bias*
_output_shapes
: 
�
?default_policy/default_policy/layer_val_hidden/bias/Adam/AssignAssignVariableOp8default_policy/default_policy/layer_val_hidden/bias/AdamJdefault_policy/default_policy/layer_val_hidden/bias/Adam/Initializer/zeros*
dtype0
�
Ldefault_policy/default_policy/layer_val_hidden/bias/Adam/Read/ReadVariableOpReadVariableOp8default_policy/default_policy/layer_val_hidden/bias/Adam*7
_class-
+)loc:@default_policy/layer_val_hidden/bias*
_output_shapes	
:�*
dtype0
�
Ldefault_policy/default_policy/layer_val_hidden/bias/Adam_1/Initializer/zerosConst*7
_class-
+)loc:@default_policy/layer_val_hidden/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
:default_policy/default_policy/layer_val_hidden/bias/Adam_1VarHandleOp*7
_class-
+)loc:@default_policy/layer_val_hidden/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*K
shared_name<:default_policy/default_policy/layer_val_hidden/bias/Adam_1
�
[default_policy/default_policy/layer_val_hidden/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp:default_policy/default_policy/layer_val_hidden/bias/Adam_1*7
_class-
+)loc:@default_policy/layer_val_hidden/bias*
_output_shapes
: 
�
Adefault_policy/default_policy/layer_val_hidden/bias/Adam_1/AssignAssignVariableOp:default_policy/default_policy/layer_val_hidden/bias/Adam_1Ldefault_policy/default_policy/layer_val_hidden/bias/Adam_1/Initializer/zeros*
dtype0
�
Ndefault_policy/default_policy/layer_val_hidden/bias/Adam_1/Read/ReadVariableOpReadVariableOp:default_policy/default_policy/layer_val_hidden/bias/Adam_1*7
_class-
+)loc:@default_policy/layer_val_hidden/bias*
_output_shapes	
:�*
dtype0
�
Vdefault_policy/default_policy/action_out/kernel/Adam/Initializer/zeros/shape_as_tensorConst*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
:*
dtype0*
valueB"X  �  
�
Ldefault_policy/default_policy/action_out/kernel/Adam/Initializer/zeros/ConstConst*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
Fdefault_policy/default_policy/action_out/kernel/Adam/Initializer/zerosFillVdefault_policy/default_policy/action_out/kernel/Adam/Initializer/zeros/shape_as_tensorLdefault_policy/default_policy/action_out/kernel/Adam/Initializer/zeros/Const*
T0*3
_class)
'%loc:@default_policy/action_out/kernel* 
_output_shapes
:
��*

index_type0
�
4default_policy/default_policy/action_out/kernel/AdamVarHandleOp*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*E
shared_name64default_policy/default_policy/action_out/kernel/Adam
�
Udefault_policy/default_policy/action_out/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp4default_policy/default_policy/action_out/kernel/Adam*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
: 
�
;default_policy/default_policy/action_out/kernel/Adam/AssignAssignVariableOp4default_policy/default_policy/action_out/kernel/AdamFdefault_policy/default_policy/action_out/kernel/Adam/Initializer/zeros*
dtype0
�
Hdefault_policy/default_policy/action_out/kernel/Adam/Read/ReadVariableOpReadVariableOp4default_policy/default_policy/action_out/kernel/Adam*3
_class)
'%loc:@default_policy/action_out/kernel* 
_output_shapes
:
��*
dtype0
�
Xdefault_policy/default_policy/action_out/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
:*
dtype0*
valueB"X  �  
�
Ndefault_policy/default_policy/action_out/kernel/Adam_1/Initializer/zeros/ConstConst*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
Hdefault_policy/default_policy/action_out/kernel/Adam_1/Initializer/zerosFillXdefault_policy/default_policy/action_out/kernel/Adam_1/Initializer/zeros/shape_as_tensorNdefault_policy/default_policy/action_out/kernel/Adam_1/Initializer/zeros/Const*
T0*3
_class)
'%loc:@default_policy/action_out/kernel* 
_output_shapes
:
��*

index_type0
�
6default_policy/default_policy/action_out/kernel/Adam_1VarHandleOp*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
��*G
shared_name86default_policy/default_policy/action_out/kernel/Adam_1
�
Wdefault_policy/default_policy/action_out/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp6default_policy/default_policy/action_out/kernel/Adam_1*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
: 
�
=default_policy/default_policy/action_out/kernel/Adam_1/AssignAssignVariableOp6default_policy/default_policy/action_out/kernel/Adam_1Hdefault_policy/default_policy/action_out/kernel/Adam_1/Initializer/zeros*
dtype0
�
Jdefault_policy/default_policy/action_out/kernel/Adam_1/Read/ReadVariableOpReadVariableOp6default_policy/default_policy/action_out/kernel/Adam_1*3
_class)
'%loc:@default_policy/action_out/kernel* 
_output_shapes
:
��*
dtype0
�
Ddefault_policy/default_policy/action_out/bias/Adam/Initializer/zerosConst*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
2default_policy/default_policy/action_out/bias/AdamVarHandleOp*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*C
shared_name42default_policy/default_policy/action_out/bias/Adam
�
Sdefault_policy/default_policy/action_out/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp2default_policy/default_policy/action_out/bias/Adam*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: 
�
9default_policy/default_policy/action_out/bias/Adam/AssignAssignVariableOp2default_policy/default_policy/action_out/bias/AdamDdefault_policy/default_policy/action_out/bias/Adam/Initializer/zeros*
dtype0
�
Fdefault_policy/default_policy/action_out/bias/Adam/Read/ReadVariableOpReadVariableOp2default_policy/default_policy/action_out/bias/Adam*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes	
:�*
dtype0
�
Fdefault_policy/default_policy/action_out/bias/Adam_1/Initializer/zerosConst*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
4default_policy/default_policy/action_out/bias/Adam_1VarHandleOp*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:�*E
shared_name64default_policy/default_policy/action_out/bias/Adam_1
�
Udefault_policy/default_policy/action_out/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp4default_policy/default_policy/action_out/bias/Adam_1*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: 
�
;default_policy/default_policy/action_out/bias/Adam_1/AssignAssignVariableOp4default_policy/default_policy/action_out/bias/Adam_1Fdefault_policy/default_policy/action_out/bias/Adam_1/Initializer/zeros*
dtype0
�
Hdefault_policy/default_policy/action_out/bias/Adam_1/Read/ReadVariableOpReadVariableOp4default_policy/default_policy/action_out/bias/Adam_1*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes	
:�*
dtype0
�
Edefault_policy/default_policy/value_out/kernel/Adam/Initializer/zerosConst*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
:	�*
dtype0*
valueB	�*    
�
3default_policy/default_policy/value_out/kernel/AdamVarHandleOp*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:	�*D
shared_name53default_policy/default_policy/value_out/kernel/Adam
�
Tdefault_policy/default_policy/value_out/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp3default_policy/default_policy/value_out/kernel/Adam*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
: 
�
:default_policy/default_policy/value_out/kernel/Adam/AssignAssignVariableOp3default_policy/default_policy/value_out/kernel/AdamEdefault_policy/default_policy/value_out/kernel/Adam/Initializer/zeros*
dtype0
�
Gdefault_policy/default_policy/value_out/kernel/Adam/Read/ReadVariableOpReadVariableOp3default_policy/default_policy/value_out/kernel/Adam*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
:	�*
dtype0
�
Gdefault_policy/default_policy/value_out/kernel/Adam_1/Initializer/zerosConst*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
:	�*
dtype0*
valueB	�*    
�
5default_policy/default_policy/value_out/kernel/Adam_1VarHandleOp*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:	�*F
shared_name75default_policy/default_policy/value_out/kernel/Adam_1
�
Vdefault_policy/default_policy/value_out/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp5default_policy/default_policy/value_out/kernel/Adam_1*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
: 
�
<default_policy/default_policy/value_out/kernel/Adam_1/AssignAssignVariableOp5default_policy/default_policy/value_out/kernel/Adam_1Gdefault_policy/default_policy/value_out/kernel/Adam_1/Initializer/zeros*
dtype0
�
Idefault_policy/default_policy/value_out/kernel/Adam_1/Read/ReadVariableOpReadVariableOp5default_policy/default_policy/value_out/kernel/Adam_1*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
:	�*
dtype0
�
Cdefault_policy/default_policy/value_out/bias/Adam/Initializer/zerosConst*0
_class&
$"loc:@default_policy/value_out/bias*
_output_shapes
:*
dtype0*
valueB*    
�
1default_policy/default_policy/value_out/bias/AdamVarHandleOp*0
_class&
$"loc:@default_policy/value_out/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*B
shared_name31default_policy/default_policy/value_out/bias/Adam
�
Rdefault_policy/default_policy/value_out/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp1default_policy/default_policy/value_out/bias/Adam*0
_class&
$"loc:@default_policy/value_out/bias*
_output_shapes
: 
�
8default_policy/default_policy/value_out/bias/Adam/AssignAssignVariableOp1default_policy/default_policy/value_out/bias/AdamCdefault_policy/default_policy/value_out/bias/Adam/Initializer/zeros*
dtype0
�
Edefault_policy/default_policy/value_out/bias/Adam/Read/ReadVariableOpReadVariableOp1default_policy/default_policy/value_out/bias/Adam*0
_class&
$"loc:@default_policy/value_out/bias*
_output_shapes
:*
dtype0
�
Edefault_policy/default_policy/value_out/bias/Adam_1/Initializer/zerosConst*0
_class&
$"loc:@default_policy/value_out/bias*
_output_shapes
:*
dtype0*
valueB*    
�
3default_policy/default_policy/value_out/bias/Adam_1VarHandleOp*0
_class&
$"loc:@default_policy/value_out/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*D
shared_name53default_policy/default_policy/value_out/bias/Adam_1
�
Tdefault_policy/default_policy/value_out/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp3default_policy/default_policy/value_out/bias/Adam_1*0
_class&
$"loc:@default_policy/value_out/bias*
_output_shapes
: 
�
:default_policy/default_policy/value_out/bias/Adam_1/AssignAssignVariableOp3default_policy/default_policy/value_out/bias/Adam_1Edefault_policy/default_policy/value_out/bias/Adam_1/Initializer/zeros*
dtype0
�
Gdefault_policy/default_policy/value_out/bias/Adam_1/Read/ReadVariableOpReadVariableOp3default_policy/default_policy/value_out/bias/Adam_1*0
_class&
$"loc:@default_policy/value_out/bias*
_output_shapes
:*
dtype0
l
"default_policy/Adam/ReadVariableOpReadVariableOpdefault_policy/lr*
_output_shapes
: *
dtype0
^
default_policy/Adam/beta1Const*
_output_shapes
: *
dtype0*
valueB
 *fff?
^
default_policy/Adam/beta2Const*
_output_shapes
: *
dtype0*
valueB
 *w�?
`
default_policy/Adam/epsilonConst*
_output_shapes
: *
dtype0*
valueB
 *w�+2
�
Ydefault_policy/Adam/update_default_policy/layer_1/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
�
[default_policy/Adam/update_default_policy/layer_1/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
�
Jdefault_policy/Adam/update_default_policy/layer_1/kernel/ResourceApplyAdamResourceApplyAdamdefault_policy/layer_1/kernel1default_policy/default_policy/layer_1/kernel/Adam3default_policy/default_policy/layer_1/kernel/Adam_1Ydefault_policy/Adam/update_default_policy/layer_1/kernel/ResourceApplyAdam/ReadVariableOp[default_policy/Adam/update_default_policy/layer_1/kernel/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilon^default_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/tuple/control_dependency_1*
T0*0
_class&
$"loc:@default_policy/layer_1/kernel*
use_locking( *
use_nesterov( 
�
Wdefault_policy/Adam/update_default_policy/layer_1/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
�
Ydefault_policy/Adam/update_default_policy/layer_1/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
�
Hdefault_policy/Adam/update_default_policy/layer_1/bias/ResourceApplyAdamResourceApplyAdamdefault_policy/layer_1/bias/default_policy/default_policy/layer_1/bias/Adam1default_policy/default_policy/layer_1/bias/Adam_1Wdefault_policy/Adam/update_default_policy/layer_1/bias/ResourceApplyAdam/ReadVariableOpYdefault_policy/Adam/update_default_policy/layer_1/bias/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilon_default_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/tuple/control_dependency_1*
T0*.
_class$
" loc:@default_policy/layer_1/bias*
use_locking( *
use_nesterov( 
�
Ydefault_policy/Adam/update_default_policy/layer_2/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
�
[default_policy/Adam/update_default_policy/layer_2/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
�
Jdefault_policy/Adam/update_default_policy/layer_2/kernel/ResourceApplyAdamResourceApplyAdamdefault_policy/layer_2/kernel1default_policy/default_policy/layer_2/kernel/Adam3default_policy/default_policy/layer_2/kernel/Adam_1Ydefault_policy/Adam/update_default_policy/layer_2/kernel/ResourceApplyAdam/ReadVariableOp[default_policy/Adam/update_default_policy/layer_2/kernel/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilon^default_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/tuple/control_dependency_1*
T0*0
_class&
$"loc:@default_policy/layer_2/kernel*
use_locking( *
use_nesterov( 
�
Wdefault_policy/Adam/update_default_policy/layer_2/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
�
Ydefault_policy/Adam/update_default_policy/layer_2/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
�
Hdefault_policy/Adam/update_default_policy/layer_2/bias/ResourceApplyAdamResourceApplyAdamdefault_policy/layer_2/bias/default_policy/default_policy/layer_2/bias/Adam1default_policy/default_policy/layer_2/bias/Adam_1Wdefault_policy/Adam/update_default_policy/layer_2/bias/ResourceApplyAdam/ReadVariableOpYdefault_policy/Adam/update_default_policy/layer_2/bias/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilon_default_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/tuple/control_dependency_1*
T0*.
_class$
" loc:@default_policy/layer_2/bias*
use_locking( *
use_nesterov( 
�
Ydefault_policy/Adam/update_default_policy/layer_3/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
�
[default_policy/Adam/update_default_policy/layer_3/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
�
Jdefault_policy/Adam/update_default_policy/layer_3/kernel/ResourceApplyAdamResourceApplyAdamdefault_policy/layer_3/kernel1default_policy/default_policy/layer_3/kernel/Adam3default_policy/default_policy/layer_3/kernel/Adam_1Ydefault_policy/Adam/update_default_policy/layer_3/kernel/ResourceApplyAdam/ReadVariableOp[default_policy/Adam/update_default_policy/layer_3/kernel/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilon^default_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/tuple/control_dependency_1*
T0*0
_class&
$"loc:@default_policy/layer_3/kernel*
use_locking( *
use_nesterov( 
�
Wdefault_policy/Adam/update_default_policy/layer_3/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
�
Ydefault_policy/Adam/update_default_policy/layer_3/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
�
Hdefault_policy/Adam/update_default_policy/layer_3/bias/ResourceApplyAdamResourceApplyAdamdefault_policy/layer_3/bias/default_policy/default_policy/layer_3/bias/Adam1default_policy/default_policy/layer_3/bias/Adam_1Wdefault_policy/Adam/update_default_policy/layer_3/bias/ResourceApplyAdam/ReadVariableOpYdefault_policy/Adam/update_default_policy/layer_3/bias/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilon_default_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/tuple/control_dependency_1*
T0*.
_class$
" loc:@default_policy/layer_3/bias*
use_locking( *
use_nesterov( 
�
Ydefault_policy/Adam/update_default_policy/layer_4/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
�
[default_policy/Adam/update_default_policy/layer_4/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
�
Jdefault_policy/Adam/update_default_policy/layer_4/kernel/ResourceApplyAdamResourceApplyAdamdefault_policy/layer_4/kernel1default_policy/default_policy/layer_4/kernel/Adam3default_policy/default_policy/layer_4/kernel/Adam_1Ydefault_policy/Adam/update_default_policy/layer_4/kernel/ResourceApplyAdam/ReadVariableOp[default_policy/Adam/update_default_policy/layer_4/kernel/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilon^default_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/tuple/control_dependency_1*
T0*0
_class&
$"loc:@default_policy/layer_4/kernel*
use_locking( *
use_nesterov( 
�
Wdefault_policy/Adam/update_default_policy/layer_4/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
�
Ydefault_policy/Adam/update_default_policy/layer_4/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
�
Hdefault_policy/Adam/update_default_policy/layer_4/bias/ResourceApplyAdamResourceApplyAdamdefault_policy/layer_4/bias/default_policy/default_policy/layer_4/bias/Adam1default_policy/default_policy/layer_4/bias/Adam_1Wdefault_policy/Adam/update_default_policy/layer_4/bias/ResourceApplyAdam/ReadVariableOpYdefault_policy/Adam/update_default_policy/layer_4/bias/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilon_default_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/tuple/control_dependency_1*
T0*.
_class$
" loc:@default_policy/layer_4/bias*
use_locking( *
use_nesterov( 
�
bdefault_policy/Adam/update_default_policy/layer_val_hidden/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
�
ddefault_policy/Adam/update_default_policy/layer_val_hidden/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
�
Sdefault_policy/Adam/update_default_policy/layer_val_hidden/kernel/ResourceApplyAdamResourceApplyAdam&default_policy/layer_val_hidden/kernel:default_policy/default_policy/layer_val_hidden/kernel/Adam<default_policy/default_policy/layer_val_hidden/kernel/Adam_1bdefault_policy/Adam/update_default_policy/layer_val_hidden/kernel/ResourceApplyAdam/ReadVariableOpddefault_policy/Adam/update_default_policy/layer_val_hidden/kernel/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilongdefault_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/tuple/control_dependency_1*
T0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
use_locking( *
use_nesterov( 
�
`default_policy/Adam/update_default_policy/layer_val_hidden/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
�
bdefault_policy/Adam/update_default_policy/layer_val_hidden/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
�
Qdefault_policy/Adam/update_default_policy/layer_val_hidden/bias/ResourceApplyAdamResourceApplyAdam$default_policy/layer_val_hidden/bias8default_policy/default_policy/layer_val_hidden/bias/Adam:default_policy/default_policy/layer_val_hidden/bias/Adam_1`default_policy/Adam/update_default_policy/layer_val_hidden/bias/ResourceApplyAdam/ReadVariableOpbdefault_policy/Adam/update_default_policy/layer_val_hidden/bias/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilonhdefault_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/tuple/control_dependency_1*
T0*7
_class-
+)loc:@default_policy/layer_val_hidden/bias*
use_locking( *
use_nesterov( 
�
\default_policy/Adam/update_default_policy/action_out/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
�
^default_policy/Adam/update_default_policy/action_out/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
�
Mdefault_policy/Adam/update_default_policy/action_out/kernel/ResourceApplyAdamResourceApplyAdam default_policy/action_out/kernel4default_policy/default_policy/action_out/kernel/Adam6default_policy/default_policy/action_out/kernel/Adam_1\default_policy/Adam/update_default_policy/action_out/kernel/ResourceApplyAdam/ReadVariableOp^default_policy/Adam/update_default_policy/action_out/kernel/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilonadefault_policy/gradients/default_policy/model_2/action_out/MatMul_grad/tuple/control_dependency_1*
T0*3
_class)
'%loc:@default_policy/action_out/kernel*
use_locking( *
use_nesterov( 
�
Zdefault_policy/Adam/update_default_policy/action_out/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
�
\default_policy/Adam/update_default_policy/action_out/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
�
Kdefault_policy/Adam/update_default_policy/action_out/bias/ResourceApplyAdamResourceApplyAdamdefault_policy/action_out/bias2default_policy/default_policy/action_out/bias/Adam4default_policy/default_policy/action_out/bias/Adam_1Zdefault_policy/Adam/update_default_policy/action_out/bias/ResourceApplyAdam/ReadVariableOp\default_policy/Adam/update_default_policy/action_out/bias/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilonbdefault_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/tuple/control_dependency_1*
T0*1
_class'
%#loc:@default_policy/action_out/bias*
use_locking( *
use_nesterov( 
�
[default_policy/Adam/update_default_policy/value_out/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
�
]default_policy/Adam/update_default_policy/value_out/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
�
Ldefault_policy/Adam/update_default_policy/value_out/kernel/ResourceApplyAdamResourceApplyAdamdefault_policy/value_out/kernel3default_policy/default_policy/value_out/kernel/Adam5default_policy/default_policy/value_out/kernel/Adam_1[default_policy/Adam/update_default_policy/value_out/kernel/ResourceApplyAdam/ReadVariableOp]default_policy/Adam/update_default_policy/value_out/kernel/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilon`default_policy/gradients/default_policy/model_2/value_out/MatMul_grad/tuple/control_dependency_1*
T0*2
_class(
&$loc:@default_policy/value_out/kernel*
use_locking( *
use_nesterov( 
�
Ydefault_policy/Adam/update_default_policy/value_out/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
�
[default_policy/Adam/update_default_policy/value_out/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
�
Jdefault_policy/Adam/update_default_policy/value_out/bias/ResourceApplyAdamResourceApplyAdamdefault_policy/value_out/bias1default_policy/default_policy/value_out/bias/Adam3default_policy/default_policy/value_out/bias/Adam_1Ydefault_policy/Adam/update_default_policy/value_out/bias/ResourceApplyAdam/ReadVariableOp[default_policy/Adam/update_default_policy/value_out/bias/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilonadefault_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/tuple/control_dependency_1*
T0*0
_class&
$"loc:@default_policy/value_out/bias*
use_locking( *
use_nesterov( 
�	
$default_policy/Adam/ReadVariableOp_1ReadVariableOpdefault_policy/beta1_powerL^default_policy/Adam/update_default_policy/action_out/bias/ResourceApplyAdamN^default_policy/Adam/update_default_policy/action_out/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_1/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_1/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_2/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_2/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_3/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_3/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_4/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_4/kernel/ResourceApplyAdamR^default_policy/Adam/update_default_policy/layer_val_hidden/bias/ResourceApplyAdamT^default_policy/Adam/update_default_policy/layer_val_hidden/kernel/ResourceApplyAdamK^default_policy/Adam/update_default_policy/value_out/bias/ResourceApplyAdamM^default_policy/Adam/update_default_policy/value_out/kernel/ResourceApplyAdam*
_output_shapes
: *
dtype0
�
default_policy/Adam/mulMul$default_policy/Adam/ReadVariableOp_1default_policy/Adam/beta1*
T0*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: 
�
$default_policy/Adam/AssignVariableOpAssignVariableOpdefault_policy/beta1_powerdefault_policy/Adam/mul*1
_class'
%#loc:@default_policy/action_out/bias*
dtype0
�

$default_policy/Adam/ReadVariableOp_2ReadVariableOpdefault_policy/beta1_power%^default_policy/Adam/AssignVariableOpL^default_policy/Adam/update_default_policy/action_out/bias/ResourceApplyAdamN^default_policy/Adam/update_default_policy/action_out/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_1/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_1/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_2/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_2/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_3/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_3/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_4/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_4/kernel/ResourceApplyAdamR^default_policy/Adam/update_default_policy/layer_val_hidden/bias/ResourceApplyAdamT^default_policy/Adam/update_default_policy/layer_val_hidden/kernel/ResourceApplyAdamK^default_policy/Adam/update_default_policy/value_out/bias/ResourceApplyAdamM^default_policy/Adam/update_default_policy/value_out/kernel/ResourceApplyAdam*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: *
dtype0
�	
$default_policy/Adam/ReadVariableOp_3ReadVariableOpdefault_policy/beta2_powerL^default_policy/Adam/update_default_policy/action_out/bias/ResourceApplyAdamN^default_policy/Adam/update_default_policy/action_out/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_1/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_1/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_2/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_2/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_3/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_3/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_4/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_4/kernel/ResourceApplyAdamR^default_policy/Adam/update_default_policy/layer_val_hidden/bias/ResourceApplyAdamT^default_policy/Adam/update_default_policy/layer_val_hidden/kernel/ResourceApplyAdamK^default_policy/Adam/update_default_policy/value_out/bias/ResourceApplyAdamM^default_policy/Adam/update_default_policy/value_out/kernel/ResourceApplyAdam*
_output_shapes
: *
dtype0
�
default_policy/Adam/mul_1Mul$default_policy/Adam/ReadVariableOp_3default_policy/Adam/beta2*
T0*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: 
�
&default_policy/Adam/AssignVariableOp_1AssignVariableOpdefault_policy/beta2_powerdefault_policy/Adam/mul_1*1
_class'
%#loc:@default_policy/action_out/bias*
dtype0
�

$default_policy/Adam/ReadVariableOp_4ReadVariableOpdefault_policy/beta2_power'^default_policy/Adam/AssignVariableOp_1L^default_policy/Adam/update_default_policy/action_out/bias/ResourceApplyAdamN^default_policy/Adam/update_default_policy/action_out/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_1/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_1/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_2/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_2/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_3/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_3/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_4/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_4/kernel/ResourceApplyAdamR^default_policy/Adam/update_default_policy/layer_val_hidden/bias/ResourceApplyAdamT^default_policy/Adam/update_default_policy/layer_val_hidden/kernel/ResourceApplyAdamK^default_policy/Adam/update_default_policy/value_out/bias/ResourceApplyAdamM^default_policy/Adam/update_default_policy/value_out/kernel/ResourceApplyAdam*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: *
dtype0
�	
default_policy/Adam/updateNoOp%^default_policy/Adam/AssignVariableOp'^default_policy/Adam/AssignVariableOp_1L^default_policy/Adam/update_default_policy/action_out/bias/ResourceApplyAdamN^default_policy/Adam/update_default_policy/action_out/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_1/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_1/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_2/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_2/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_3/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_3/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_4/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_4/kernel/ResourceApplyAdamR^default_policy/Adam/update_default_policy/layer_val_hidden/bias/ResourceApplyAdamT^default_policy/Adam/update_default_policy/layer_val_hidden/kernel/ResourceApplyAdamK^default_policy/Adam/update_default_policy/value_out/bias/ResourceApplyAdamM^default_policy/Adam/update_default_policy/value_out/kernel/ResourceApplyAdam
�
default_policy/Adam/ConstConst^default_policy/Adam/update*-
_class#
!loc:@default_policy/global_step*
_output_shapes
: *
dtype0	*
value	B	 R
�
default_policy/AdamAssignAddVariableOpdefault_policy/global_stepdefault_policy/Adam/Const*-
_class#
!loc:@default_policy/global_step*
dtype0	
�
default_policy/init_2/NoOpNoOp&^default_policy/action_out/bias/Assign(^default_policy/action_out/kernel/Assign"^default_policy/beta1_power/Assign"^default_policy/beta2_power/Assign:^default_policy/default_policy/action_out/bias/Adam/Assign<^default_policy/default_policy/action_out/bias/Adam_1/Assign<^default_policy/default_policy/action_out/kernel/Adam/Assign>^default_policy/default_policy/action_out/kernel/Adam_1/Assign7^default_policy/default_policy/layer_1/bias/Adam/Assign9^default_policy/default_policy/layer_1/bias/Adam_1/Assign9^default_policy/default_policy/layer_1/kernel/Adam/Assign;^default_policy/default_policy/layer_1/kernel/Adam_1/Assign7^default_policy/default_policy/layer_2/bias/Adam/Assign9^default_policy/default_policy/layer_2/bias/Adam_1/Assign9^default_policy/default_policy/layer_2/kernel/Adam/Assign;^default_policy/default_policy/layer_2/kernel/Adam_1/Assign7^default_policy/default_policy/layer_3/bias/Adam/Assign9^default_policy/default_policy/layer_3/bias/Adam_1/Assign9^default_policy/default_policy/layer_3/kernel/Adam/Assign;^default_policy/default_policy/layer_3/kernel/Adam_1/Assign7^default_policy/default_policy/layer_4/bias/Adam/Assign9^default_policy/default_policy/layer_4/bias/Adam_1/Assign9^default_policy/default_policy/layer_4/kernel/Adam/Assign;^default_policy/default_policy/layer_4/kernel/Adam_1/Assign@^default_policy/default_policy/layer_val_hidden/bias/Adam/AssignB^default_policy/default_policy/layer_val_hidden/bias/Adam_1/AssignB^default_policy/default_policy/layer_val_hidden/kernel/Adam/AssignD^default_policy/default_policy/layer_val_hidden/kernel/Adam_1/Assign9^default_policy/default_policy/value_out/bias/Adam/Assign;^default_policy/default_policy/value_out/bias/Adam_1/Assign;^default_policy/default_policy/value_out/kernel/Adam/Assign=^default_policy/default_policy/value_out/kernel/Adam_1/Assign$^default_policy/entropy_coeff/Assign"^default_policy/global_step/Assign^default_policy/kl_coeff/Assign#^default_policy/layer_1/bias/Assign%^default_policy/layer_1/kernel/Assign#^default_policy/layer_2/bias/Assign%^default_policy/layer_2/kernel/Assign#^default_policy/layer_3/bias/Assign%^default_policy/layer_3/kernel/Assign#^default_policy/layer_4/bias/Assign%^default_policy/layer_4/kernel/Assign,^default_policy/layer_val_hidden/bias/Assign.^default_policy/layer_val_hidden/kernel/Assign^default_policy/lr/Assign!^default_policy/timestep_1/Assign%^default_policy/value_out/bias/Assign'^default_policy/value_out/kernel/Assign
�

default_policy/init_2/NoOp_1NoOp ^default_policy/AssignVariableOp"^default_policy/AssignVariableOp_1#^default_policy/AssignVariableOp_10#^default_policy/AssignVariableOp_11#^default_policy/AssignVariableOp_12#^default_policy/AssignVariableOp_13#^default_policy/AssignVariableOp_14#^default_policy/AssignVariableOp_15#^default_policy/AssignVariableOp_16#^default_policy/AssignVariableOp_17#^default_policy/AssignVariableOp_18#^default_policy/AssignVariableOp_19"^default_policy/AssignVariableOp_2#^default_policy/AssignVariableOp_24#^default_policy/AssignVariableOp_25#^default_policy/AssignVariableOp_26#^default_policy/AssignVariableOp_27#^default_policy/AssignVariableOp_28#^default_policy/AssignVariableOp_29"^default_policy/AssignVariableOp_3#^default_policy/AssignVariableOp_30#^default_policy/AssignVariableOp_31#^default_policy/AssignVariableOp_32#^default_policy/AssignVariableOp_33#^default_policy/AssignVariableOp_34#^default_policy/AssignVariableOp_35#^default_policy/AssignVariableOp_36#^default_policy/AssignVariableOp_37#^default_policy/AssignVariableOp_38"^default_policy/AssignVariableOp_4"^default_policy/AssignVariableOp_5"^default_policy/AssignVariableOp_6"^default_policy/AssignVariableOp_7"^default_policy/AssignVariableOp_8"^default_policy/AssignVariableOp_9"/device:CPU:0
Y
default_policy/init_2NoOp^default_policy/init_2/NoOp^default_policy/init_2/NoOp_1
s
 default_policy/ReadVariableOp_42ReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
v
5default_policy/Placeholder_default_policy/beta1_powerPlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
"default_policy/AssignVariableOp_65AssignVariableOpdefault_policy/beta1_power5default_policy/Placeholder_default_policy/beta1_power*
dtype0
�
 default_policy/ReadVariableOp_43ReadVariableOpdefault_policy/beta1_power#^default_policy/AssignVariableOp_65*
_output_shapes
: *
dtype0
s
 default_policy/ReadVariableOp_44ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
v
5default_policy/Placeholder_default_policy/beta2_powerPlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
"default_policy/AssignVariableOp_66AssignVariableOpdefault_policy/beta2_power5default_policy/Placeholder_default_policy/beta2_power*
dtype0
�
 default_policy/ReadVariableOp_45ReadVariableOpdefault_policy/beta2_power#^default_policy/AssignVariableOp_66*
_output_shapes
: *
dtype0
�
 default_policy/ReadVariableOp_46ReadVariableOp1default_policy/default_policy/layer_1/kernel/Adam* 
_output_shapes
:
�	�*
dtype0
�
Ldefault_policy/Placeholder_default_policy/default_policy/layer_1/kernel/AdamPlaceholder* 
_output_shapes
:
�	�*
dtype0*
shape:
�	�
�
"default_policy/AssignVariableOp_67AssignVariableOp1default_policy/default_policy/layer_1/kernel/AdamLdefault_policy/Placeholder_default_policy/default_policy/layer_1/kernel/Adam*
dtype0
�
 default_policy/ReadVariableOp_47ReadVariableOp1default_policy/default_policy/layer_1/kernel/Adam#^default_policy/AssignVariableOp_67* 
_output_shapes
:
�	�*
dtype0
�
 default_policy/ReadVariableOp_48ReadVariableOp3default_policy/default_policy/layer_1/kernel/Adam_1* 
_output_shapes
:
�	�*
dtype0
�
Ndefault_policy/Placeholder_default_policy/default_policy/layer_1/kernel/Adam_1Placeholder* 
_output_shapes
:
�	�*
dtype0*
shape:
�	�
�
"default_policy/AssignVariableOp_68AssignVariableOp3default_policy/default_policy/layer_1/kernel/Adam_1Ndefault_policy/Placeholder_default_policy/default_policy/layer_1/kernel/Adam_1*
dtype0
�
 default_policy/ReadVariableOp_49ReadVariableOp3default_policy/default_policy/layer_1/kernel/Adam_1#^default_policy/AssignVariableOp_68* 
_output_shapes
:
�	�*
dtype0
�
 default_policy/ReadVariableOp_50ReadVariableOp/default_policy/default_policy/layer_1/bias/Adam*
_output_shapes	
:�*
dtype0
�
Jdefault_policy/Placeholder_default_policy/default_policy/layer_1/bias/AdamPlaceholder*
_output_shapes	
:�*
dtype0*
shape:�
�
"default_policy/AssignVariableOp_69AssignVariableOp/default_policy/default_policy/layer_1/bias/AdamJdefault_policy/Placeholder_default_policy/default_policy/layer_1/bias/Adam*
dtype0
�
 default_policy/ReadVariableOp_51ReadVariableOp/default_policy/default_policy/layer_1/bias/Adam#^default_policy/AssignVariableOp_69*
_output_shapes	
:�*
dtype0
�
 default_policy/ReadVariableOp_52ReadVariableOp1default_policy/default_policy/layer_1/bias/Adam_1*
_output_shapes	
:�*
dtype0
�
Ldefault_policy/Placeholder_default_policy/default_policy/layer_1/bias/Adam_1Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
"default_policy/AssignVariableOp_70AssignVariableOp1default_policy/default_policy/layer_1/bias/Adam_1Ldefault_policy/Placeholder_default_policy/default_policy/layer_1/bias/Adam_1*
dtype0
�
 default_policy/ReadVariableOp_53ReadVariableOp1default_policy/default_policy/layer_1/bias/Adam_1#^default_policy/AssignVariableOp_70*
_output_shapes	
:�*
dtype0
�
 default_policy/ReadVariableOp_54ReadVariableOp1default_policy/default_policy/layer_2/kernel/Adam* 
_output_shapes
:
��*
dtype0
�
Ldefault_policy/Placeholder_default_policy/default_policy/layer_2/kernel/AdamPlaceholder* 
_output_shapes
:
��*
dtype0*
shape:
��
�
"default_policy/AssignVariableOp_71AssignVariableOp1default_policy/default_policy/layer_2/kernel/AdamLdefault_policy/Placeholder_default_policy/default_policy/layer_2/kernel/Adam*
dtype0
�
 default_policy/ReadVariableOp_55ReadVariableOp1default_policy/default_policy/layer_2/kernel/Adam#^default_policy/AssignVariableOp_71* 
_output_shapes
:
��*
dtype0
�
 default_policy/ReadVariableOp_56ReadVariableOp3default_policy/default_policy/layer_2/kernel/Adam_1* 
_output_shapes
:
��*
dtype0
�
Ndefault_policy/Placeholder_default_policy/default_policy/layer_2/kernel/Adam_1Placeholder* 
_output_shapes
:
��*
dtype0*
shape:
��
�
"default_policy/AssignVariableOp_72AssignVariableOp3default_policy/default_policy/layer_2/kernel/Adam_1Ndefault_policy/Placeholder_default_policy/default_policy/layer_2/kernel/Adam_1*
dtype0
�
 default_policy/ReadVariableOp_57ReadVariableOp3default_policy/default_policy/layer_2/kernel/Adam_1#^default_policy/AssignVariableOp_72* 
_output_shapes
:
��*
dtype0
�
 default_policy/ReadVariableOp_58ReadVariableOp/default_policy/default_policy/layer_2/bias/Adam*
_output_shapes	
:�*
dtype0
�
Jdefault_policy/Placeholder_default_policy/default_policy/layer_2/bias/AdamPlaceholder*
_output_shapes	
:�*
dtype0*
shape:�
�
"default_policy/AssignVariableOp_73AssignVariableOp/default_policy/default_policy/layer_2/bias/AdamJdefault_policy/Placeholder_default_policy/default_policy/layer_2/bias/Adam*
dtype0
�
 default_policy/ReadVariableOp_59ReadVariableOp/default_policy/default_policy/layer_2/bias/Adam#^default_policy/AssignVariableOp_73*
_output_shapes	
:�*
dtype0
�
 default_policy/ReadVariableOp_60ReadVariableOp1default_policy/default_policy/layer_2/bias/Adam_1*
_output_shapes	
:�*
dtype0
�
Ldefault_policy/Placeholder_default_policy/default_policy/layer_2/bias/Adam_1Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
"default_policy/AssignVariableOp_74AssignVariableOp1default_policy/default_policy/layer_2/bias/Adam_1Ldefault_policy/Placeholder_default_policy/default_policy/layer_2/bias/Adam_1*
dtype0
�
 default_policy/ReadVariableOp_61ReadVariableOp1default_policy/default_policy/layer_2/bias/Adam_1#^default_policy/AssignVariableOp_74*
_output_shapes	
:�*
dtype0
�
 default_policy/ReadVariableOp_62ReadVariableOp1default_policy/default_policy/layer_3/kernel/Adam* 
_output_shapes
:
��*
dtype0
�
Ldefault_policy/Placeholder_default_policy/default_policy/layer_3/kernel/AdamPlaceholder* 
_output_shapes
:
��*
dtype0*
shape:
��
�
"default_policy/AssignVariableOp_75AssignVariableOp1default_policy/default_policy/layer_3/kernel/AdamLdefault_policy/Placeholder_default_policy/default_policy/layer_3/kernel/Adam*
dtype0
�
 default_policy/ReadVariableOp_63ReadVariableOp1default_policy/default_policy/layer_3/kernel/Adam#^default_policy/AssignVariableOp_75* 
_output_shapes
:
��*
dtype0
�
 default_policy/ReadVariableOp_64ReadVariableOp3default_policy/default_policy/layer_3/kernel/Adam_1* 
_output_shapes
:
��*
dtype0
�
Ndefault_policy/Placeholder_default_policy/default_policy/layer_3/kernel/Adam_1Placeholder* 
_output_shapes
:
��*
dtype0*
shape:
��
�
"default_policy/AssignVariableOp_76AssignVariableOp3default_policy/default_policy/layer_3/kernel/Adam_1Ndefault_policy/Placeholder_default_policy/default_policy/layer_3/kernel/Adam_1*
dtype0
�
 default_policy/ReadVariableOp_65ReadVariableOp3default_policy/default_policy/layer_3/kernel/Adam_1#^default_policy/AssignVariableOp_76* 
_output_shapes
:
��*
dtype0
�
 default_policy/ReadVariableOp_66ReadVariableOp/default_policy/default_policy/layer_3/bias/Adam*
_output_shapes	
:�*
dtype0
�
Jdefault_policy/Placeholder_default_policy/default_policy/layer_3/bias/AdamPlaceholder*
_output_shapes	
:�*
dtype0*
shape:�
�
"default_policy/AssignVariableOp_77AssignVariableOp/default_policy/default_policy/layer_3/bias/AdamJdefault_policy/Placeholder_default_policy/default_policy/layer_3/bias/Adam*
dtype0
�
 default_policy/ReadVariableOp_67ReadVariableOp/default_policy/default_policy/layer_3/bias/Adam#^default_policy/AssignVariableOp_77*
_output_shapes	
:�*
dtype0
�
 default_policy/ReadVariableOp_68ReadVariableOp1default_policy/default_policy/layer_3/bias/Adam_1*
_output_shapes	
:�*
dtype0
�
Ldefault_policy/Placeholder_default_policy/default_policy/layer_3/bias/Adam_1Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
"default_policy/AssignVariableOp_78AssignVariableOp1default_policy/default_policy/layer_3/bias/Adam_1Ldefault_policy/Placeholder_default_policy/default_policy/layer_3/bias/Adam_1*
dtype0
�
 default_policy/ReadVariableOp_69ReadVariableOp1default_policy/default_policy/layer_3/bias/Adam_1#^default_policy/AssignVariableOp_78*
_output_shapes	
:�*
dtype0
�
 default_policy/ReadVariableOp_70ReadVariableOp1default_policy/default_policy/layer_4/kernel/Adam* 
_output_shapes
:
��*
dtype0
�
Ldefault_policy/Placeholder_default_policy/default_policy/layer_4/kernel/AdamPlaceholder* 
_output_shapes
:
��*
dtype0*
shape:
��
�
"default_policy/AssignVariableOp_79AssignVariableOp1default_policy/default_policy/layer_4/kernel/AdamLdefault_policy/Placeholder_default_policy/default_policy/layer_4/kernel/Adam*
dtype0
�
 default_policy/ReadVariableOp_71ReadVariableOp1default_policy/default_policy/layer_4/kernel/Adam#^default_policy/AssignVariableOp_79* 
_output_shapes
:
��*
dtype0
�
 default_policy/ReadVariableOp_72ReadVariableOp3default_policy/default_policy/layer_4/kernel/Adam_1* 
_output_shapes
:
��*
dtype0
�
Ndefault_policy/Placeholder_default_policy/default_policy/layer_4/kernel/Adam_1Placeholder* 
_output_shapes
:
��*
dtype0*
shape:
��
�
"default_policy/AssignVariableOp_80AssignVariableOp3default_policy/default_policy/layer_4/kernel/Adam_1Ndefault_policy/Placeholder_default_policy/default_policy/layer_4/kernel/Adam_1*
dtype0
�
 default_policy/ReadVariableOp_73ReadVariableOp3default_policy/default_policy/layer_4/kernel/Adam_1#^default_policy/AssignVariableOp_80* 
_output_shapes
:
��*
dtype0
�
 default_policy/ReadVariableOp_74ReadVariableOp/default_policy/default_policy/layer_4/bias/Adam*
_output_shapes	
:�*
dtype0
�
Jdefault_policy/Placeholder_default_policy/default_policy/layer_4/bias/AdamPlaceholder*
_output_shapes	
:�*
dtype0*
shape:�
�
"default_policy/AssignVariableOp_81AssignVariableOp/default_policy/default_policy/layer_4/bias/AdamJdefault_policy/Placeholder_default_policy/default_policy/layer_4/bias/Adam*
dtype0
�
 default_policy/ReadVariableOp_75ReadVariableOp/default_policy/default_policy/layer_4/bias/Adam#^default_policy/AssignVariableOp_81*
_output_shapes	
:�*
dtype0
�
 default_policy/ReadVariableOp_76ReadVariableOp1default_policy/default_policy/layer_4/bias/Adam_1*
_output_shapes	
:�*
dtype0
�
Ldefault_policy/Placeholder_default_policy/default_policy/layer_4/bias/Adam_1Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
"default_policy/AssignVariableOp_82AssignVariableOp1default_policy/default_policy/layer_4/bias/Adam_1Ldefault_policy/Placeholder_default_policy/default_policy/layer_4/bias/Adam_1*
dtype0
�
 default_policy/ReadVariableOp_77ReadVariableOp1default_policy/default_policy/layer_4/bias/Adam_1#^default_policy/AssignVariableOp_82*
_output_shapes	
:�*
dtype0
�
 default_policy/ReadVariableOp_78ReadVariableOp:default_policy/default_policy/layer_val_hidden/kernel/Adam* 
_output_shapes
:
��*
dtype0
�
Udefault_policy/Placeholder_default_policy/default_policy/layer_val_hidden/kernel/AdamPlaceholder* 
_output_shapes
:
��*
dtype0*
shape:
��
�
"default_policy/AssignVariableOp_83AssignVariableOp:default_policy/default_policy/layer_val_hidden/kernel/AdamUdefault_policy/Placeholder_default_policy/default_policy/layer_val_hidden/kernel/Adam*
dtype0
�
 default_policy/ReadVariableOp_79ReadVariableOp:default_policy/default_policy/layer_val_hidden/kernel/Adam#^default_policy/AssignVariableOp_83* 
_output_shapes
:
��*
dtype0
�
 default_policy/ReadVariableOp_80ReadVariableOp<default_policy/default_policy/layer_val_hidden/kernel/Adam_1* 
_output_shapes
:
��*
dtype0
�
Wdefault_policy/Placeholder_default_policy/default_policy/layer_val_hidden/kernel/Adam_1Placeholder* 
_output_shapes
:
��*
dtype0*
shape:
��
�
"default_policy/AssignVariableOp_84AssignVariableOp<default_policy/default_policy/layer_val_hidden/kernel/Adam_1Wdefault_policy/Placeholder_default_policy/default_policy/layer_val_hidden/kernel/Adam_1*
dtype0
�
 default_policy/ReadVariableOp_81ReadVariableOp<default_policy/default_policy/layer_val_hidden/kernel/Adam_1#^default_policy/AssignVariableOp_84* 
_output_shapes
:
��*
dtype0
�
 default_policy/ReadVariableOp_82ReadVariableOp8default_policy/default_policy/layer_val_hidden/bias/Adam*
_output_shapes	
:�*
dtype0
�
Sdefault_policy/Placeholder_default_policy/default_policy/layer_val_hidden/bias/AdamPlaceholder*
_output_shapes	
:�*
dtype0*
shape:�
�
"default_policy/AssignVariableOp_85AssignVariableOp8default_policy/default_policy/layer_val_hidden/bias/AdamSdefault_policy/Placeholder_default_policy/default_policy/layer_val_hidden/bias/Adam*
dtype0
�
 default_policy/ReadVariableOp_83ReadVariableOp8default_policy/default_policy/layer_val_hidden/bias/Adam#^default_policy/AssignVariableOp_85*
_output_shapes	
:�*
dtype0
�
 default_policy/ReadVariableOp_84ReadVariableOp:default_policy/default_policy/layer_val_hidden/bias/Adam_1*
_output_shapes	
:�*
dtype0
�
Udefault_policy/Placeholder_default_policy/default_policy/layer_val_hidden/bias/Adam_1Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
"default_policy/AssignVariableOp_86AssignVariableOp:default_policy/default_policy/layer_val_hidden/bias/Adam_1Udefault_policy/Placeholder_default_policy/default_policy/layer_val_hidden/bias/Adam_1*
dtype0
�
 default_policy/ReadVariableOp_85ReadVariableOp:default_policy/default_policy/layer_val_hidden/bias/Adam_1#^default_policy/AssignVariableOp_86*
_output_shapes	
:�*
dtype0
�
 default_policy/ReadVariableOp_86ReadVariableOp4default_policy/default_policy/action_out/kernel/Adam* 
_output_shapes
:
��*
dtype0
�
Odefault_policy/Placeholder_default_policy/default_policy/action_out/kernel/AdamPlaceholder* 
_output_shapes
:
��*
dtype0*
shape:
��
�
"default_policy/AssignVariableOp_87AssignVariableOp4default_policy/default_policy/action_out/kernel/AdamOdefault_policy/Placeholder_default_policy/default_policy/action_out/kernel/Adam*
dtype0
�
 default_policy/ReadVariableOp_87ReadVariableOp4default_policy/default_policy/action_out/kernel/Adam#^default_policy/AssignVariableOp_87* 
_output_shapes
:
��*
dtype0
�
 default_policy/ReadVariableOp_88ReadVariableOp6default_policy/default_policy/action_out/kernel/Adam_1* 
_output_shapes
:
��*
dtype0
�
Qdefault_policy/Placeholder_default_policy/default_policy/action_out/kernel/Adam_1Placeholder* 
_output_shapes
:
��*
dtype0*
shape:
��
�
"default_policy/AssignVariableOp_88AssignVariableOp6default_policy/default_policy/action_out/kernel/Adam_1Qdefault_policy/Placeholder_default_policy/default_policy/action_out/kernel/Adam_1*
dtype0
�
 default_policy/ReadVariableOp_89ReadVariableOp6default_policy/default_policy/action_out/kernel/Adam_1#^default_policy/AssignVariableOp_88* 
_output_shapes
:
��*
dtype0
�
 default_policy/ReadVariableOp_90ReadVariableOp2default_policy/default_policy/action_out/bias/Adam*
_output_shapes	
:�*
dtype0
�
Mdefault_policy/Placeholder_default_policy/default_policy/action_out/bias/AdamPlaceholder*
_output_shapes	
:�*
dtype0*
shape:�
�
"default_policy/AssignVariableOp_89AssignVariableOp2default_policy/default_policy/action_out/bias/AdamMdefault_policy/Placeholder_default_policy/default_policy/action_out/bias/Adam*
dtype0
�
 default_policy/ReadVariableOp_91ReadVariableOp2default_policy/default_policy/action_out/bias/Adam#^default_policy/AssignVariableOp_89*
_output_shapes	
:�*
dtype0
�
 default_policy/ReadVariableOp_92ReadVariableOp4default_policy/default_policy/action_out/bias/Adam_1*
_output_shapes	
:�*
dtype0
�
Odefault_policy/Placeholder_default_policy/default_policy/action_out/bias/Adam_1Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
"default_policy/AssignVariableOp_90AssignVariableOp4default_policy/default_policy/action_out/bias/Adam_1Odefault_policy/Placeholder_default_policy/default_policy/action_out/bias/Adam_1*
dtype0
�
 default_policy/ReadVariableOp_93ReadVariableOp4default_policy/default_policy/action_out/bias/Adam_1#^default_policy/AssignVariableOp_90*
_output_shapes	
:�*
dtype0
�
 default_policy/ReadVariableOp_94ReadVariableOp3default_policy/default_policy/value_out/kernel/Adam*
_output_shapes
:	�*
dtype0
�
Ndefault_policy/Placeholder_default_policy/default_policy/value_out/kernel/AdamPlaceholder*
_output_shapes
:	�*
dtype0*
shape:	�
�
"default_policy/AssignVariableOp_91AssignVariableOp3default_policy/default_policy/value_out/kernel/AdamNdefault_policy/Placeholder_default_policy/default_policy/value_out/kernel/Adam*
dtype0
�
 default_policy/ReadVariableOp_95ReadVariableOp3default_policy/default_policy/value_out/kernel/Adam#^default_policy/AssignVariableOp_91*
_output_shapes
:	�*
dtype0
�
 default_policy/ReadVariableOp_96ReadVariableOp5default_policy/default_policy/value_out/kernel/Adam_1*
_output_shapes
:	�*
dtype0
�
Pdefault_policy/Placeholder_default_policy/default_policy/value_out/kernel/Adam_1Placeholder*
_output_shapes
:	�*
dtype0*
shape:	�
�
"default_policy/AssignVariableOp_92AssignVariableOp5default_policy/default_policy/value_out/kernel/Adam_1Pdefault_policy/Placeholder_default_policy/default_policy/value_out/kernel/Adam_1*
dtype0
�
 default_policy/ReadVariableOp_97ReadVariableOp5default_policy/default_policy/value_out/kernel/Adam_1#^default_policy/AssignVariableOp_92*
_output_shapes
:	�*
dtype0
�
 default_policy/ReadVariableOp_98ReadVariableOp1default_policy/default_policy/value_out/bias/Adam*
_output_shapes
:*
dtype0
�
Ldefault_policy/Placeholder_default_policy/default_policy/value_out/bias/AdamPlaceholder*
_output_shapes
:*
dtype0*
shape:
�
"default_policy/AssignVariableOp_93AssignVariableOp1default_policy/default_policy/value_out/bias/AdamLdefault_policy/Placeholder_default_policy/default_policy/value_out/bias/Adam*
dtype0
�
 default_policy/ReadVariableOp_99ReadVariableOp1default_policy/default_policy/value_out/bias/Adam#^default_policy/AssignVariableOp_93*
_output_shapes
:*
dtype0
�
!default_policy/ReadVariableOp_100ReadVariableOp3default_policy/default_policy/value_out/bias/Adam_1*
_output_shapes
:*
dtype0
�
Ndefault_policy/Placeholder_default_policy/default_policy/value_out/bias/Adam_1Placeholder*
_output_shapes
:*
dtype0*
shape:
�
"default_policy/AssignVariableOp_94AssignVariableOp3default_policy/default_policy/value_out/bias/Adam_1Ndefault_policy/Placeholder_default_policy/default_policy/value_out/bias/Adam_1*
dtype0
�
!default_policy/ReadVariableOp_101ReadVariableOp3default_policy/default_policy/value_out/bias/Adam_1#^default_policy/AssignVariableOp_94*
_output_shapes
:*
dtype0
�
default_policy/init_3/NoOpNoOp&^default_policy/action_out/bias/Assign(^default_policy/action_out/kernel/Assign"^default_policy/beta1_power/Assign"^default_policy/beta2_power/Assign:^default_policy/default_policy/action_out/bias/Adam/Assign<^default_policy/default_policy/action_out/bias/Adam_1/Assign<^default_policy/default_policy/action_out/kernel/Adam/Assign>^default_policy/default_policy/action_out/kernel/Adam_1/Assign7^default_policy/default_policy/layer_1/bias/Adam/Assign9^default_policy/default_policy/layer_1/bias/Adam_1/Assign9^default_policy/default_policy/layer_1/kernel/Adam/Assign;^default_policy/default_policy/layer_1/kernel/Adam_1/Assign7^default_policy/default_policy/layer_2/bias/Adam/Assign9^default_policy/default_policy/layer_2/bias/Adam_1/Assign9^default_policy/default_policy/layer_2/kernel/Adam/Assign;^default_policy/default_policy/layer_2/kernel/Adam_1/Assign7^default_policy/default_policy/layer_3/bias/Adam/Assign9^default_policy/default_policy/layer_3/bias/Adam_1/Assign9^default_policy/default_policy/layer_3/kernel/Adam/Assign;^default_policy/default_policy/layer_3/kernel/Adam_1/Assign7^default_policy/default_policy/layer_4/bias/Adam/Assign9^default_policy/default_policy/layer_4/bias/Adam_1/Assign9^default_policy/default_policy/layer_4/kernel/Adam/Assign;^default_policy/default_policy/layer_4/kernel/Adam_1/Assign@^default_policy/default_policy/layer_val_hidden/bias/Adam/AssignB^default_policy/default_policy/layer_val_hidden/bias/Adam_1/AssignB^default_policy/default_policy/layer_val_hidden/kernel/Adam/AssignD^default_policy/default_policy/layer_val_hidden/kernel/Adam_1/Assign9^default_policy/default_policy/value_out/bias/Adam/Assign;^default_policy/default_policy/value_out/bias/Adam_1/Assign;^default_policy/default_policy/value_out/kernel/Adam/Assign=^default_policy/default_policy/value_out/kernel/Adam_1/Assign$^default_policy/entropy_coeff/Assign"^default_policy/global_step/Assign^default_policy/kl_coeff/Assign#^default_policy/layer_1/bias/Assign%^default_policy/layer_1/kernel/Assign#^default_policy/layer_2/bias/Assign%^default_policy/layer_2/kernel/Assign#^default_policy/layer_3/bias/Assign%^default_policy/layer_3/kernel/Assign#^default_policy/layer_4/bias/Assign%^default_policy/layer_4/kernel/Assign,^default_policy/layer_val_hidden/bias/Assign.^default_policy/layer_val_hidden/kernel/Assign^default_policy/lr/Assign!^default_policy/timestep_1/Assign%^default_policy/value_out/bias/Assign'^default_policy/value_out/kernel/Assign
�

default_policy/init_3/NoOp_1NoOp ^default_policy/AssignVariableOp"^default_policy/AssignVariableOp_1#^default_policy/AssignVariableOp_10#^default_policy/AssignVariableOp_11#^default_policy/AssignVariableOp_12#^default_policy/AssignVariableOp_13#^default_policy/AssignVariableOp_14#^default_policy/AssignVariableOp_15#^default_policy/AssignVariableOp_16#^default_policy/AssignVariableOp_17#^default_policy/AssignVariableOp_18#^default_policy/AssignVariableOp_19"^default_policy/AssignVariableOp_2#^default_policy/AssignVariableOp_24#^default_policy/AssignVariableOp_25#^default_policy/AssignVariableOp_26#^default_policy/AssignVariableOp_27#^default_policy/AssignVariableOp_28#^default_policy/AssignVariableOp_29"^default_policy/AssignVariableOp_3#^default_policy/AssignVariableOp_30#^default_policy/AssignVariableOp_31#^default_policy/AssignVariableOp_32#^default_policy/AssignVariableOp_33#^default_policy/AssignVariableOp_34#^default_policy/AssignVariableOp_35#^default_policy/AssignVariableOp_36#^default_policy/AssignVariableOp_37#^default_policy/AssignVariableOp_38"^default_policy/AssignVariableOp_4"^default_policy/AssignVariableOp_5"^default_policy/AssignVariableOp_6"^default_policy/AssignVariableOp_7"^default_policy/AssignVariableOp_8"^default_policy/AssignVariableOp_9"/device:CPU:0
Y
default_policy/init_3NoOp^default_policy/init_3/NoOp^default_policy/init_3/NoOp_1
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
{
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
f
save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2"/device:CPU:**
T0*
_output_shapes
: 
w
save/StringJoin
StringJoin
save/Constsave/Select"/device:CPU:**
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
�
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*�
value�B�TBdefault_policy/Adam/beta_1Bdefault_policy/Adam/beta_2Bdefault_policy/Adam/decayBdefault_policy/Adam/iterB!default_policy/Adam/learning_rateBdefault_policy/action_out/biasB default_policy/action_out/kernelBdefault_policy/beta1_powerBdefault_policy/beta2_powerBdefault_policy/biasBdefault_policy/bias_1Bdefault_policy/bias_2Bdefault_policy/bias_3Bdefault_policy/bias_4B2default_policy/default_policy/action_out/bias/AdamB4default_policy/default_policy/action_out/bias/Adam_1B4default_policy/default_policy/action_out/kernel/AdamB6default_policy/default_policy/action_out/kernel/Adam_1B/default_policy/default_policy/layer_1/bias/AdamB1default_policy/default_policy/layer_1/bias/Adam_1B1default_policy/default_policy/layer_1/kernel/AdamB3default_policy/default_policy/layer_1/kernel/Adam_1B/default_policy/default_policy/layer_2/bias/AdamB1default_policy/default_policy/layer_2/bias/Adam_1B1default_policy/default_policy/layer_2/kernel/AdamB3default_policy/default_policy/layer_2/kernel/Adam_1B/default_policy/default_policy/layer_3/bias/AdamB1default_policy/default_policy/layer_3/bias/Adam_1B1default_policy/default_policy/layer_3/kernel/AdamB3default_policy/default_policy/layer_3/kernel/Adam_1B/default_policy/default_policy/layer_4/bias/AdamB1default_policy/default_policy/layer_4/bias/Adam_1B1default_policy/default_policy/layer_4/kernel/AdamB3default_policy/default_policy/layer_4/kernel/Adam_1B8default_policy/default_policy/layer_val_hidden/bias/AdamB:default_policy/default_policy/layer_val_hidden/bias/Adam_1B:default_policy/default_policy/layer_val_hidden/kernel/AdamB<default_policy/default_policy/layer_val_hidden/kernel/Adam_1B1default_policy/default_policy/value_out/bias/AdamB3default_policy/default_policy/value_out/bias/Adam_1B3default_policy/default_policy/value_out/kernel/AdamB5default_policy/default_policy/value_out/kernel/Adam_1Bdefault_policy/dense_15/bias/mBdefault_policy/dense_15/bias/vB default_policy/dense_15/kernel/mB default_policy/dense_15/kernel/vBdefault_policy/dense_16/bias/mBdefault_policy/dense_16/bias/vB default_policy/dense_16/kernel/mB default_policy/dense_16/kernel/vBdefault_policy/dense_17/bias/mBdefault_policy/dense_17/bias/vB default_policy/dense_17/kernel/mB default_policy/dense_17/kernel/vBdefault_policy/dense_18/bias/mBdefault_policy/dense_18/bias/vB default_policy/dense_18/kernel/mB default_policy/dense_18/kernel/vBdefault_policy/dense_19/bias/mBdefault_policy/dense_19/bias/vB default_policy/dense_19/kernel/mB default_policy/dense_19/kernel/vBdefault_policy/entropy_coeffBdefault_policy/global_stepBdefault_policy/kernelBdefault_policy/kernel_1Bdefault_policy/kernel_2Bdefault_policy/kernel_3Bdefault_policy/kernel_4Bdefault_policy/kl_coeffBdefault_policy/layer_1/biasBdefault_policy/layer_1/kernelBdefault_policy/layer_2/biasBdefault_policy/layer_2/kernelBdefault_policy/layer_3/biasBdefault_policy/layer_3/kernelBdefault_policy/layer_4/biasBdefault_policy/layer_4/kernelB$default_policy/layer_val_hidden/biasB&default_policy/layer_val_hidden/kernelBdefault_policy/lrBdefault_policy/timestep_1Bdefault_policy/value_out/biasBdefault_policy/value_out/kernel
�
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*�
value�B�TB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�'
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices.default_policy/Adam/beta_1/Read/ReadVariableOp.default_policy/Adam/beta_2/Read/ReadVariableOp-default_policy/Adam/decay/Read/ReadVariableOp,default_policy/Adam/iter/Read/ReadVariableOp5default_policy/Adam/learning_rate/Read/ReadVariableOp2default_policy/action_out/bias/Read/ReadVariableOp4default_policy/action_out/kernel/Read/ReadVariableOp.default_policy/beta1_power/Read/ReadVariableOp.default_policy/beta2_power/Read/ReadVariableOp'default_policy/bias/Read/ReadVariableOp)default_policy/bias_1/Read/ReadVariableOp)default_policy/bias_2/Read/ReadVariableOp)default_policy/bias_3/Read/ReadVariableOp)default_policy/bias_4/Read/ReadVariableOpFdefault_policy/default_policy/action_out/bias/Adam/Read/ReadVariableOpHdefault_policy/default_policy/action_out/bias/Adam_1/Read/ReadVariableOpHdefault_policy/default_policy/action_out/kernel/Adam/Read/ReadVariableOpJdefault_policy/default_policy/action_out/kernel/Adam_1/Read/ReadVariableOpCdefault_policy/default_policy/layer_1/bias/Adam/Read/ReadVariableOpEdefault_policy/default_policy/layer_1/bias/Adam_1/Read/ReadVariableOpEdefault_policy/default_policy/layer_1/kernel/Adam/Read/ReadVariableOpGdefault_policy/default_policy/layer_1/kernel/Adam_1/Read/ReadVariableOpCdefault_policy/default_policy/layer_2/bias/Adam/Read/ReadVariableOpEdefault_policy/default_policy/layer_2/bias/Adam_1/Read/ReadVariableOpEdefault_policy/default_policy/layer_2/kernel/Adam/Read/ReadVariableOpGdefault_policy/default_policy/layer_2/kernel/Adam_1/Read/ReadVariableOpCdefault_policy/default_policy/layer_3/bias/Adam/Read/ReadVariableOpEdefault_policy/default_policy/layer_3/bias/Adam_1/Read/ReadVariableOpEdefault_policy/default_policy/layer_3/kernel/Adam/Read/ReadVariableOpGdefault_policy/default_policy/layer_3/kernel/Adam_1/Read/ReadVariableOpCdefault_policy/default_policy/layer_4/bias/Adam/Read/ReadVariableOpEdefault_policy/default_policy/layer_4/bias/Adam_1/Read/ReadVariableOpEdefault_policy/default_policy/layer_4/kernel/Adam/Read/ReadVariableOpGdefault_policy/default_policy/layer_4/kernel/Adam_1/Read/ReadVariableOpLdefault_policy/default_policy/layer_val_hidden/bias/Adam/Read/ReadVariableOpNdefault_policy/default_policy/layer_val_hidden/bias/Adam_1/Read/ReadVariableOpNdefault_policy/default_policy/layer_val_hidden/kernel/Adam/Read/ReadVariableOpPdefault_policy/default_policy/layer_val_hidden/kernel/Adam_1/Read/ReadVariableOpEdefault_policy/default_policy/value_out/bias/Adam/Read/ReadVariableOpGdefault_policy/default_policy/value_out/bias/Adam_1/Read/ReadVariableOpGdefault_policy/default_policy/value_out/kernel/Adam/Read/ReadVariableOpIdefault_policy/default_policy/value_out/kernel/Adam_1/Read/ReadVariableOp2default_policy/dense_15/bias/m/Read/ReadVariableOp2default_policy/dense_15/bias/v/Read/ReadVariableOp4default_policy/dense_15/kernel/m/Read/ReadVariableOp4default_policy/dense_15/kernel/v/Read/ReadVariableOp2default_policy/dense_16/bias/m/Read/ReadVariableOp2default_policy/dense_16/bias/v/Read/ReadVariableOp4default_policy/dense_16/kernel/m/Read/ReadVariableOp4default_policy/dense_16/kernel/v/Read/ReadVariableOp2default_policy/dense_17/bias/m/Read/ReadVariableOp2default_policy/dense_17/bias/v/Read/ReadVariableOp4default_policy/dense_17/kernel/m/Read/ReadVariableOp4default_policy/dense_17/kernel/v/Read/ReadVariableOp2default_policy/dense_18/bias/m/Read/ReadVariableOp2default_policy/dense_18/bias/v/Read/ReadVariableOp4default_policy/dense_18/kernel/m/Read/ReadVariableOp4default_policy/dense_18/kernel/v/Read/ReadVariableOp2default_policy/dense_19/bias/m/Read/ReadVariableOp2default_policy/dense_19/bias/v/Read/ReadVariableOp4default_policy/dense_19/kernel/m/Read/ReadVariableOp4default_policy/dense_19/kernel/v/Read/ReadVariableOp0default_policy/entropy_coeff/Read/ReadVariableOp.default_policy/global_step/Read/ReadVariableOp)default_policy/kernel/Read/ReadVariableOp+default_policy/kernel_1/Read/ReadVariableOp+default_policy/kernel_2/Read/ReadVariableOp+default_policy/kernel_3/Read/ReadVariableOp+default_policy/kernel_4/Read/ReadVariableOp+default_policy/kl_coeff/Read/ReadVariableOp/default_policy/layer_1/bias/Read/ReadVariableOp1default_policy/layer_1/kernel/Read/ReadVariableOp/default_policy/layer_2/bias/Read/ReadVariableOp1default_policy/layer_2/kernel/Read/ReadVariableOp/default_policy/layer_3/bias/Read/ReadVariableOp1default_policy/layer_3/kernel/Read/ReadVariableOp/default_policy/layer_4/bias/Read/ReadVariableOp1default_policy/layer_4/kernel/Read/ReadVariableOp8default_policy/layer_val_hidden/bias/Read/ReadVariableOp:default_policy/layer_val_hidden/kernel/Read/ReadVariableOp%default_policy/lr/Read/ReadVariableOp-default_policy/timestep_1/Read/ReadVariableOp1default_policy/value_out/bias/Read/ReadVariableOp3default_policy/value_out/kernel/Read/ReadVariableOp"/device:CPU:0*b
dtypesX
V2T			
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:*

axis 
�
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
�
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*�
value�B�TBdefault_policy/Adam/beta_1Bdefault_policy/Adam/beta_2Bdefault_policy/Adam/decayBdefault_policy/Adam/iterB!default_policy/Adam/learning_rateBdefault_policy/action_out/biasB default_policy/action_out/kernelBdefault_policy/beta1_powerBdefault_policy/beta2_powerBdefault_policy/biasBdefault_policy/bias_1Bdefault_policy/bias_2Bdefault_policy/bias_3Bdefault_policy/bias_4B2default_policy/default_policy/action_out/bias/AdamB4default_policy/default_policy/action_out/bias/Adam_1B4default_policy/default_policy/action_out/kernel/AdamB6default_policy/default_policy/action_out/kernel/Adam_1B/default_policy/default_policy/layer_1/bias/AdamB1default_policy/default_policy/layer_1/bias/Adam_1B1default_policy/default_policy/layer_1/kernel/AdamB3default_policy/default_policy/layer_1/kernel/Adam_1B/default_policy/default_policy/layer_2/bias/AdamB1default_policy/default_policy/layer_2/bias/Adam_1B1default_policy/default_policy/layer_2/kernel/AdamB3default_policy/default_policy/layer_2/kernel/Adam_1B/default_policy/default_policy/layer_3/bias/AdamB1default_policy/default_policy/layer_3/bias/Adam_1B1default_policy/default_policy/layer_3/kernel/AdamB3default_policy/default_policy/layer_3/kernel/Adam_1B/default_policy/default_policy/layer_4/bias/AdamB1default_policy/default_policy/layer_4/bias/Adam_1B1default_policy/default_policy/layer_4/kernel/AdamB3default_policy/default_policy/layer_4/kernel/Adam_1B8default_policy/default_policy/layer_val_hidden/bias/AdamB:default_policy/default_policy/layer_val_hidden/bias/Adam_1B:default_policy/default_policy/layer_val_hidden/kernel/AdamB<default_policy/default_policy/layer_val_hidden/kernel/Adam_1B1default_policy/default_policy/value_out/bias/AdamB3default_policy/default_policy/value_out/bias/Adam_1B3default_policy/default_policy/value_out/kernel/AdamB5default_policy/default_policy/value_out/kernel/Adam_1Bdefault_policy/dense_15/bias/mBdefault_policy/dense_15/bias/vB default_policy/dense_15/kernel/mB default_policy/dense_15/kernel/vBdefault_policy/dense_16/bias/mBdefault_policy/dense_16/bias/vB default_policy/dense_16/kernel/mB default_policy/dense_16/kernel/vBdefault_policy/dense_17/bias/mBdefault_policy/dense_17/bias/vB default_policy/dense_17/kernel/mB default_policy/dense_17/kernel/vBdefault_policy/dense_18/bias/mBdefault_policy/dense_18/bias/vB default_policy/dense_18/kernel/mB default_policy/dense_18/kernel/vBdefault_policy/dense_19/bias/mBdefault_policy/dense_19/bias/vB default_policy/dense_19/kernel/mB default_policy/dense_19/kernel/vBdefault_policy/entropy_coeffBdefault_policy/global_stepBdefault_policy/kernelBdefault_policy/kernel_1Bdefault_policy/kernel_2Bdefault_policy/kernel_3Bdefault_policy/kernel_4Bdefault_policy/kl_coeffBdefault_policy/layer_1/biasBdefault_policy/layer_1/kernelBdefault_policy/layer_2/biasBdefault_policy/layer_2/kernelBdefault_policy/layer_3/biasBdefault_policy/layer_3/kernelBdefault_policy/layer_4/biasBdefault_policy/layer_4/kernelB$default_policy/layer_val_hidden/biasB&default_policy/layer_val_hidden/kernelBdefault_policy/lrBdefault_policy/timestep_1Bdefault_policy/value_out/biasBdefault_policy/value_out/kernel
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*�
value�B�TB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*b
dtypesX
V2T			
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
c
save/AssignVariableOpAssignVariableOpdefault_policy/Adam/beta_1save/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
e
save/AssignVariableOp_1AssignVariableOpdefault_policy/Adam/beta_2save/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
d
save/AssignVariableOp_2AssignVariableOpdefault_policy/Adam/decaysave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0	*
_output_shapes
:
c
save/AssignVariableOp_3AssignVariableOpdefault_policy/Adam/itersave/Identity_4*
dtype0	
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
l
save/AssignVariableOp_4AssignVariableOp!default_policy/Adam/learning_ratesave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
i
save/AssignVariableOp_5AssignVariableOpdefault_policy/action_out/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
k
save/AssignVariableOp_6AssignVariableOp default_policy/action_out/kernelsave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
e
save/AssignVariableOp_7AssignVariableOpdefault_policy/beta1_powersave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
e
save/AssignVariableOp_8AssignVariableOpdefault_policy/beta2_powersave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
_
save/AssignVariableOp_9AssignVariableOpdefault_policy/biassave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
b
save/AssignVariableOp_10AssignVariableOpdefault_policy/bias_1save/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
b
save/AssignVariableOp_11AssignVariableOpdefault_policy/bias_2save/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
b
save/AssignVariableOp_12AssignVariableOpdefault_policy/bias_3save/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
b
save/AssignVariableOp_13AssignVariableOpdefault_policy/bias_4save/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:

save/AssignVariableOp_14AssignVariableOp2default_policy/default_policy/action_out/bias/Adamsave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
�
save/AssignVariableOp_15AssignVariableOp4default_policy/default_policy/action_out/bias/Adam_1save/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
�
save/AssignVariableOp_16AssignVariableOp4default_policy/default_policy/action_out/kernel/Adamsave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
�
save/AssignVariableOp_17AssignVariableOp6default_policy/default_policy/action_out/kernel/Adam_1save/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
|
save/AssignVariableOp_18AssignVariableOp/default_policy/default_policy/layer_1/bias/Adamsave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
~
save/AssignVariableOp_19AssignVariableOp1default_policy/default_policy/layer_1/bias/Adam_1save/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
~
save/AssignVariableOp_20AssignVariableOp1default_policy/default_policy/layer_1/kernel/Adamsave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
T0*
_output_shapes
:
�
save/AssignVariableOp_21AssignVariableOp3default_policy/default_policy/layer_1/kernel/Adam_1save/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:
|
save/AssignVariableOp_22AssignVariableOp/default_policy/default_policy/layer_2/bias/Adamsave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
~
save/AssignVariableOp_23AssignVariableOp1default_policy/default_policy/layer_2/bias/Adam_1save/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
T0*
_output_shapes
:
~
save/AssignVariableOp_24AssignVariableOp1default_policy/default_policy/layer_2/kernel/Adamsave/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:25*
T0*
_output_shapes
:
�
save/AssignVariableOp_25AssignVariableOp3default_policy/default_policy/layer_2/kernel/Adam_1save/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:26*
T0*
_output_shapes
:
|
save/AssignVariableOp_26AssignVariableOp/default_policy/default_policy/layer_3/bias/Adamsave/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:27*
T0*
_output_shapes
:
~
save/AssignVariableOp_27AssignVariableOp1default_policy/default_policy/layer_3/bias/Adam_1save/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:28*
T0*
_output_shapes
:
~
save/AssignVariableOp_28AssignVariableOp1default_policy/default_policy/layer_3/kernel/Adamsave/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:29*
T0*
_output_shapes
:
�
save/AssignVariableOp_29AssignVariableOp3default_policy/default_policy/layer_3/kernel/Adam_1save/Identity_30*
dtype0
R
save/Identity_31Identitysave/RestoreV2:30*
T0*
_output_shapes
:
|
save/AssignVariableOp_30AssignVariableOp/default_policy/default_policy/layer_4/bias/Adamsave/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:31*
T0*
_output_shapes
:
~
save/AssignVariableOp_31AssignVariableOp1default_policy/default_policy/layer_4/bias/Adam_1save/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:32*
T0*
_output_shapes
:
~
save/AssignVariableOp_32AssignVariableOp1default_policy/default_policy/layer_4/kernel/Adamsave/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:33*
T0*
_output_shapes
:
�
save/AssignVariableOp_33AssignVariableOp3default_policy/default_policy/layer_4/kernel/Adam_1save/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:34*
T0*
_output_shapes
:
�
save/AssignVariableOp_34AssignVariableOp8default_policy/default_policy/layer_val_hidden/bias/Adamsave/Identity_35*
dtype0
R
save/Identity_36Identitysave/RestoreV2:35*
T0*
_output_shapes
:
�
save/AssignVariableOp_35AssignVariableOp:default_policy/default_policy/layer_val_hidden/bias/Adam_1save/Identity_36*
dtype0
R
save/Identity_37Identitysave/RestoreV2:36*
T0*
_output_shapes
:
�
save/AssignVariableOp_36AssignVariableOp:default_policy/default_policy/layer_val_hidden/kernel/Adamsave/Identity_37*
dtype0
R
save/Identity_38Identitysave/RestoreV2:37*
T0*
_output_shapes
:
�
save/AssignVariableOp_37AssignVariableOp<default_policy/default_policy/layer_val_hidden/kernel/Adam_1save/Identity_38*
dtype0
R
save/Identity_39Identitysave/RestoreV2:38*
T0*
_output_shapes
:
~
save/AssignVariableOp_38AssignVariableOp1default_policy/default_policy/value_out/bias/Adamsave/Identity_39*
dtype0
R
save/Identity_40Identitysave/RestoreV2:39*
T0*
_output_shapes
:
�
save/AssignVariableOp_39AssignVariableOp3default_policy/default_policy/value_out/bias/Adam_1save/Identity_40*
dtype0
R
save/Identity_41Identitysave/RestoreV2:40*
T0*
_output_shapes
:
�
save/AssignVariableOp_40AssignVariableOp3default_policy/default_policy/value_out/kernel/Adamsave/Identity_41*
dtype0
R
save/Identity_42Identitysave/RestoreV2:41*
T0*
_output_shapes
:
�
save/AssignVariableOp_41AssignVariableOp5default_policy/default_policy/value_out/kernel/Adam_1save/Identity_42*
dtype0
R
save/Identity_43Identitysave/RestoreV2:42*
T0*
_output_shapes
:
k
save/AssignVariableOp_42AssignVariableOpdefault_policy/dense_15/bias/msave/Identity_43*
dtype0
R
save/Identity_44Identitysave/RestoreV2:43*
T0*
_output_shapes
:
k
save/AssignVariableOp_43AssignVariableOpdefault_policy/dense_15/bias/vsave/Identity_44*
dtype0
R
save/Identity_45Identitysave/RestoreV2:44*
T0*
_output_shapes
:
m
save/AssignVariableOp_44AssignVariableOp default_policy/dense_15/kernel/msave/Identity_45*
dtype0
R
save/Identity_46Identitysave/RestoreV2:45*
T0*
_output_shapes
:
m
save/AssignVariableOp_45AssignVariableOp default_policy/dense_15/kernel/vsave/Identity_46*
dtype0
R
save/Identity_47Identitysave/RestoreV2:46*
T0*
_output_shapes
:
k
save/AssignVariableOp_46AssignVariableOpdefault_policy/dense_16/bias/msave/Identity_47*
dtype0
R
save/Identity_48Identitysave/RestoreV2:47*
T0*
_output_shapes
:
k
save/AssignVariableOp_47AssignVariableOpdefault_policy/dense_16/bias/vsave/Identity_48*
dtype0
R
save/Identity_49Identitysave/RestoreV2:48*
T0*
_output_shapes
:
m
save/AssignVariableOp_48AssignVariableOp default_policy/dense_16/kernel/msave/Identity_49*
dtype0
R
save/Identity_50Identitysave/RestoreV2:49*
T0*
_output_shapes
:
m
save/AssignVariableOp_49AssignVariableOp default_policy/dense_16/kernel/vsave/Identity_50*
dtype0
R
save/Identity_51Identitysave/RestoreV2:50*
T0*
_output_shapes
:
k
save/AssignVariableOp_50AssignVariableOpdefault_policy/dense_17/bias/msave/Identity_51*
dtype0
R
save/Identity_52Identitysave/RestoreV2:51*
T0*
_output_shapes
:
k
save/AssignVariableOp_51AssignVariableOpdefault_policy/dense_17/bias/vsave/Identity_52*
dtype0
R
save/Identity_53Identitysave/RestoreV2:52*
T0*
_output_shapes
:
m
save/AssignVariableOp_52AssignVariableOp default_policy/dense_17/kernel/msave/Identity_53*
dtype0
R
save/Identity_54Identitysave/RestoreV2:53*
T0*
_output_shapes
:
m
save/AssignVariableOp_53AssignVariableOp default_policy/dense_17/kernel/vsave/Identity_54*
dtype0
R
save/Identity_55Identitysave/RestoreV2:54*
T0*
_output_shapes
:
k
save/AssignVariableOp_54AssignVariableOpdefault_policy/dense_18/bias/msave/Identity_55*
dtype0
R
save/Identity_56Identitysave/RestoreV2:55*
T0*
_output_shapes
:
k
save/AssignVariableOp_55AssignVariableOpdefault_policy/dense_18/bias/vsave/Identity_56*
dtype0
R
save/Identity_57Identitysave/RestoreV2:56*
T0*
_output_shapes
:
m
save/AssignVariableOp_56AssignVariableOp default_policy/dense_18/kernel/msave/Identity_57*
dtype0
R
save/Identity_58Identitysave/RestoreV2:57*
T0*
_output_shapes
:
m
save/AssignVariableOp_57AssignVariableOp default_policy/dense_18/kernel/vsave/Identity_58*
dtype0
R
save/Identity_59Identitysave/RestoreV2:58*
T0*
_output_shapes
:
k
save/AssignVariableOp_58AssignVariableOpdefault_policy/dense_19/bias/msave/Identity_59*
dtype0
R
save/Identity_60Identitysave/RestoreV2:59*
T0*
_output_shapes
:
k
save/AssignVariableOp_59AssignVariableOpdefault_policy/dense_19/bias/vsave/Identity_60*
dtype0
R
save/Identity_61Identitysave/RestoreV2:60*
T0*
_output_shapes
:
m
save/AssignVariableOp_60AssignVariableOp default_policy/dense_19/kernel/msave/Identity_61*
dtype0
R
save/Identity_62Identitysave/RestoreV2:61*
T0*
_output_shapes
:
m
save/AssignVariableOp_61AssignVariableOp default_policy/dense_19/kernel/vsave/Identity_62*
dtype0
R
save/Identity_63Identitysave/RestoreV2:62*
T0*
_output_shapes
:
i
save/AssignVariableOp_62AssignVariableOpdefault_policy/entropy_coeffsave/Identity_63*
dtype0
R
save/Identity_64Identitysave/RestoreV2:63*
T0	*
_output_shapes
:
g
save/AssignVariableOp_63AssignVariableOpdefault_policy/global_stepsave/Identity_64*
dtype0	
R
save/Identity_65Identitysave/RestoreV2:64*
T0*
_output_shapes
:
b
save/AssignVariableOp_64AssignVariableOpdefault_policy/kernelsave/Identity_65*
dtype0
R
save/Identity_66Identitysave/RestoreV2:65*
T0*
_output_shapes
:
d
save/AssignVariableOp_65AssignVariableOpdefault_policy/kernel_1save/Identity_66*
dtype0
R
save/Identity_67Identitysave/RestoreV2:66*
T0*
_output_shapes
:
d
save/AssignVariableOp_66AssignVariableOpdefault_policy/kernel_2save/Identity_67*
dtype0
R
save/Identity_68Identitysave/RestoreV2:67*
T0*
_output_shapes
:
d
save/AssignVariableOp_67AssignVariableOpdefault_policy/kernel_3save/Identity_68*
dtype0
R
save/Identity_69Identitysave/RestoreV2:68*
T0*
_output_shapes
:
d
save/AssignVariableOp_68AssignVariableOpdefault_policy/kernel_4save/Identity_69*
dtype0
R
save/Identity_70Identitysave/RestoreV2:69*
T0*
_output_shapes
:
d
save/AssignVariableOp_69AssignVariableOpdefault_policy/kl_coeffsave/Identity_70*
dtype0
R
save/Identity_71Identitysave/RestoreV2:70*
T0*
_output_shapes
:
h
save/AssignVariableOp_70AssignVariableOpdefault_policy/layer_1/biassave/Identity_71*
dtype0
R
save/Identity_72Identitysave/RestoreV2:71*
T0*
_output_shapes
:
j
save/AssignVariableOp_71AssignVariableOpdefault_policy/layer_1/kernelsave/Identity_72*
dtype0
R
save/Identity_73Identitysave/RestoreV2:72*
T0*
_output_shapes
:
h
save/AssignVariableOp_72AssignVariableOpdefault_policy/layer_2/biassave/Identity_73*
dtype0
R
save/Identity_74Identitysave/RestoreV2:73*
T0*
_output_shapes
:
j
save/AssignVariableOp_73AssignVariableOpdefault_policy/layer_2/kernelsave/Identity_74*
dtype0
R
save/Identity_75Identitysave/RestoreV2:74*
T0*
_output_shapes
:
h
save/AssignVariableOp_74AssignVariableOpdefault_policy/layer_3/biassave/Identity_75*
dtype0
R
save/Identity_76Identitysave/RestoreV2:75*
T0*
_output_shapes
:
j
save/AssignVariableOp_75AssignVariableOpdefault_policy/layer_3/kernelsave/Identity_76*
dtype0
R
save/Identity_77Identitysave/RestoreV2:76*
T0*
_output_shapes
:
h
save/AssignVariableOp_76AssignVariableOpdefault_policy/layer_4/biassave/Identity_77*
dtype0
R
save/Identity_78Identitysave/RestoreV2:77*
T0*
_output_shapes
:
j
save/AssignVariableOp_77AssignVariableOpdefault_policy/layer_4/kernelsave/Identity_78*
dtype0
R
save/Identity_79Identitysave/RestoreV2:78*
T0*
_output_shapes
:
q
save/AssignVariableOp_78AssignVariableOp$default_policy/layer_val_hidden/biassave/Identity_79*
dtype0
R
save/Identity_80Identitysave/RestoreV2:79*
T0*
_output_shapes
:
s
save/AssignVariableOp_79AssignVariableOp&default_policy/layer_val_hidden/kernelsave/Identity_80*
dtype0
R
save/Identity_81Identitysave/RestoreV2:80*
T0*
_output_shapes
:
^
save/AssignVariableOp_80AssignVariableOpdefault_policy/lrsave/Identity_81*
dtype0
R
save/Identity_82Identitysave/RestoreV2:81*
T0	*
_output_shapes
:
f
save/AssignVariableOp_81AssignVariableOpdefault_policy/timestep_1save/Identity_82*
dtype0	
R
save/Identity_83Identitysave/RestoreV2:82*
T0*
_output_shapes
:
j
save/AssignVariableOp_82AssignVariableOpdefault_policy/value_out/biassave/Identity_83*
dtype0
R
save/Identity_84Identitysave/RestoreV2:83*
T0*
_output_shapes
:
l
save/AssignVariableOp_83AssignVariableOpdefault_policy/value_out/kernelsave/Identity_84*
dtype0
�
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_37^save/AssignVariableOp_38^save/AssignVariableOp_39^save/AssignVariableOp_4^save/AssignVariableOp_40^save/AssignVariableOp_41^save/AssignVariableOp_42^save/AssignVariableOp_43^save/AssignVariableOp_44^save/AssignVariableOp_45^save/AssignVariableOp_46^save/AssignVariableOp_47^save/AssignVariableOp_48^save/AssignVariableOp_49^save/AssignVariableOp_5^save/AssignVariableOp_50^save/AssignVariableOp_51^save/AssignVariableOp_52^save/AssignVariableOp_53^save/AssignVariableOp_54^save/AssignVariableOp_55^save/AssignVariableOp_56^save/AssignVariableOp_57^save/AssignVariableOp_58^save/AssignVariableOp_59^save/AssignVariableOp_6^save/AssignVariableOp_60^save/AssignVariableOp_61^save/AssignVariableOp_62^save/AssignVariableOp_63^save/AssignVariableOp_64^save/AssignVariableOp_65^save/AssignVariableOp_66^save/AssignVariableOp_67^save/AssignVariableOp_68^save/AssignVariableOp_69^save/AssignVariableOp_7^save/AssignVariableOp_70^save/AssignVariableOp_71^save/AssignVariableOp_72^save/AssignVariableOp_73^save/AssignVariableOp_74^save/AssignVariableOp_75^save/AssignVariableOp_76^save/AssignVariableOp_77^save/AssignVariableOp_78^save/AssignVariableOp_79^save/AssignVariableOp_8^save/AssignVariableOp_80^save/AssignVariableOp_81^save/AssignVariableOp_82^save/AssignVariableOp_83^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard��
�
�
)__inference_dense_16_layer_call_fn_199289

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_199282`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������"
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
D__inference_dense_17_layer_call_and_return_conditional_losses_199385

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWCY
re_lu_3/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 j
IdentityIdentityre_lu_3/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_dense_17_layer_call_fn_199464

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_199385`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

d
E__inference_dropout_6_layer_call_and_return_conditional_losses_199476

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������S
dropout/ShapeShapeinputs*
T0*
_output_shapes
:*
out_type0�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0*

seed*
seed2 [
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *�@!>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
D__inference_dense_18_layer_call_and_return_conditional_losses_199164

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWCY
re_lu_3/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 j
IdentityIdentityre_lu_3/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

d
E__inference_dropout_7_layer_call_and_return_conditional_losses_199271

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������S
dropout/ShapeShapeinputs*
T0*
_output_shapes
:*
out_type0�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0*

seed*
seed2 [
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *�^�>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
D__inference_dense_16_layer_call_and_return_conditional_losses_199318

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWCY
re_lu_3/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 j
IdentityIdentityre_lu_3/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������"
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
-__inference_sequential_3_layer_call_fn_199457

inputs
unknown:
�	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*,
_read_only_resource_inputs

	
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_199427`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������	: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������	
 
_user_specified_nameinputs
�
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_199259

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�Q
�
__inference__traced_save_199238
file_prefix.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableop.
*savev2_dense_16_kernel_read_readvariableop,
(savev2_dense_16_bias_read_readvariableop.
*savev2_dense_17_kernel_read_readvariableop,
(savev2_dense_17_bias_read_readvariableop.
*savev2_dense_18_kernel_read_readvariableop,
(savev2_dense_18_bias_read_readvariableop.
*savev2_dense_19_kernel_read_readvariableop,
(savev2_dense_19_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_15_kernel_m_read_readvariableop3
/savev2_adam_dense_15_bias_m_read_readvariableop5
1savev2_adam_dense_16_kernel_m_read_readvariableop3
/savev2_adam_dense_16_bias_m_read_readvariableop5
1savev2_adam_dense_17_kernel_m_read_readvariableop3
/savev2_adam_dense_17_bias_m_read_readvariableop5
1savev2_adam_dense_18_kernel_m_read_readvariableop3
/savev2_adam_dense_18_bias_m_read_readvariableop5
1savev2_adam_dense_19_kernel_m_read_readvariableop3
/savev2_adam_dense_19_bias_m_read_readvariableop5
1savev2_adam_dense_15_kernel_v_read_readvariableop3
/savev2_adam_dense_15_bias_v_read_readvariableop5
1savev2_adam_dense_16_kernel_v_read_readvariableop3
/savev2_adam_dense_16_bias_v_read_readvariableop5
1savev2_adam_dense_17_kernel_v_read_readvariableop3
/savev2_adam_dense_17_bias_v_read_readvariableop5
1savev2_adam_dense_18_kernel_v_read_readvariableop3
/savev2_adam_dense_18_bias_v_read_readvariableop5
1savev2_adam_dense_19_kernel_v_read_readvariableop3
/savev2_adam_dense_19_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
: w

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: *
	separator L

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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*�
value�B�(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableop*savev2_dense_16_kernel_read_readvariableop(savev2_dense_16_bias_read_readvariableop*savev2_dense_17_kernel_read_readvariableop(savev2_dense_17_bias_read_readvariableop*savev2_dense_18_kernel_read_readvariableop(savev2_dense_18_bias_read_readvariableop*savev2_dense_19_kernel_read_readvariableop(savev2_dense_19_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_15_kernel_m_read_readvariableop/savev2_adam_dense_15_bias_m_read_readvariableop1savev2_adam_dense_16_kernel_m_read_readvariableop/savev2_adam_dense_16_bias_m_read_readvariableop1savev2_adam_dense_17_kernel_m_read_readvariableop/savev2_adam_dense_17_bias_m_read_readvariableop1savev2_adam_dense_18_kernel_m_read_readvariableop/savev2_adam_dense_18_bias_m_read_readvariableop1savev2_adam_dense_19_kernel_m_read_readvariableop/savev2_adam_dense_19_bias_m_read_readvariableop1savev2_adam_dense_15_kernel_v_read_readvariableop/savev2_adam_dense_15_bias_v_read_readvariableop1savev2_adam_dense_16_kernel_v_read_readvariableop/savev2_adam_dense_16_bias_v_read_readvariableop1savev2_adam_dense_17_kernel_v_read_readvariableop/savev2_adam_dense_17_bias_v_read_readvariableop1savev2_adam_dense_18_kernel_v_read_readvariableop/savev2_adam_dense_18_bias_v_read_readvariableop1savev2_adam_dense_19_kernel_v_read_readvariableop/savev2_adam_dense_19_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:*

axis �
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 *
delete_old_dirs(f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :
�	�:�:
��:�:
��:�:
��:�:
��:�: : : : : : : : : :
�	�:�:
��:�:
��:�:
��:�:
��:�:
�	�:�:
��:�:
��:�:
��:�:
��:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
�	�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&	"
 
_output_shapes
:
��:!


_output_shapes	
:�:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
�	�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
�	�:!

_output_shapes	
:�:& "
 
_output_shapes
:
��:!!

_output_shapes	
:�:&""
 
_output_shapes
:
��:!#

_output_shapes	
:�:&$"
 
_output_shapes
:
��:!%

_output_shapes	
:�:&&"
 
_output_shapes
:
��:!'

_output_shapes	
:�:(

_output_shapes
: 
�

�
D__inference_dense_15_layer_call_and_return_conditional_losses_199300

inputs2
matmul_readvariableop_resource:
�	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�	�*
dtype0�
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWCY
re_lu_3/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 j
IdentityIdentityre_lu_3/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������	
 
_user_specified_nameinputs
�

�
$__inference_signature_wrapper_199374
dense_15_input
unknown:
�	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*,
_read_only_resource_inputs

	
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type **
f%R#
!__inference__wrapped_model_199359`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������	: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
(
_output_shapes
:����������	
(
_user_specified_namedense_15_input
�A
�
H__inference_sequential_3_layer_call_and_return_conditional_losses_198919

inputs;
'dense_15_matmul_readvariableop_resource:
�	�7
(dense_15_biasadd_readvariableop_resource:	�;
'dense_16_matmul_readvariableop_resource:
��7
(dense_16_biasadd_readvariableop_resource:	�;
'dense_17_matmul_readvariableop_resource:
��7
(dense_17_biasadd_readvariableop_resource:	�;
'dense_18_matmul_readvariableop_resource:
��7
(dense_18_biasadd_readvariableop_resource:	�;
'dense_19_matmul_readvariableop_resource:
��7
(dense_19_biasadd_readvariableop_resource:	�
identity��dense_15/BiasAdd/ReadVariableOp�dense_15/MatMul/ReadVariableOp�dense_16/BiasAdd/ReadVariableOp�dense_16/MatMul/ReadVariableOp�dense_17/BiasAdd/ReadVariableOp�dense_17/MatMul/ReadVariableOp�dense_18/BiasAdd/ReadVariableOp�dense_18/MatMul/ReadVariableOp�dense_19/BiasAdd/ReadVariableOp�dense_19/MatMul/ReadVariableOp�
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource* 
_output_shapes
:
�	�*
dtype0�
dense_15/MatMulMatMulinputs&dense_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( �
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWCk
dense_15/re_lu_3/ReluReludense_15/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_16/MatMulMatMul#dense_15/re_lu_3/Relu:activations:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( �
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWCk
dense_16/re_lu_3/ReluReludense_16/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_17/MatMulMatMul#dense_16/re_lu_3/Relu:activations:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( �
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWCk
dense_17/re_lu_3/ReluReludense_17/BiasAdd:output:0*
T0*(
_output_shapes
:����������\
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
dropout_6/dropout/MulMul#dense_17/re_lu_3/Relu:activations:0 dropout_6/dropout/Const:output:0*
T0*(
_output_shapes
:����������z
dropout_6/dropout/ShapeShape#dense_17/re_lu_3/Relu:activations:0*
T0*
_output_shapes
:*
out_type0�
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0*

seed*
seed2 e
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *�@!>�
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *(
_output_shapes
:�����������
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*(
_output_shapes
:�����������
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_18/MatMulMatMuldropout_6/dropout/Mul_1:z:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( �
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWCk
dense_18/re_lu_3/ReluReludense_18/BiasAdd:output:0*
T0*(
_output_shapes
:����������\
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
dropout_7/dropout/MulMul#dense_18/re_lu_3/Relu:activations:0 dropout_7/dropout/Const:output:0*
T0*(
_output_shapes
:����������z
dropout_7/dropout/ShapeShape#dense_18/re_lu_3/Relu:activations:0*
T0*
_output_shapes
:*
out_type0�
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0*

seed*
seed2e
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *�^�>�
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *(
_output_shapes
:�����������
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*(
_output_shapes
:�����������
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_19/MatMulMatMuldropout_7/dropout/Mul_1:z:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( �
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWCi
dense_19/SoftmaxSoftmaxdense_19/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
NoOpNoOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 j
IdentityIdentitydense_19/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������	: : : : : : : : : : 2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp:P L
(
_output_shapes
:����������	
 
_user_specified_nameinputs
�

�
D__inference_dense_19_layer_call_and_return_conditional_losses_199105

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWCW
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 a
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_199243

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_198859

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
*__inference_dropout_6_layer_call_fn_199481

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_199476`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�&
�
H__inference_sequential_3_layer_call_and_return_conditional_losses_199502
dense_15_input#
dense_15_731322:
�	�
dense_15_731324:	�#
dense_16_731327:
��
dense_16_731329:	�#
dense_17_731332:
��
dense_17_731334:	�#
dense_18_731338:
��
dense_18_731340:	�#
dense_19_731344:
��
dense_19_731346:	�
identity�� dense_15/StatefulPartitionedCall� dense_16/StatefulPartitionedCall� dense_17/StatefulPartitionedCall� dense_18/StatefulPartitionedCall� dense_19/StatefulPartitionedCall�!dropout_6/StatefulPartitionedCall�!dropout_7/StatefulPartitionedCall�
 dense_15/StatefulPartitionedCallStatefulPartitionedCalldense_15_inputdense_15_731322dense_15_731324*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_199300�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_731327dense_16_731329*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_199282�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_731332dense_17_731334*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_199385�
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_199476�
 dense_18/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0dense_18_731338dense_18_731340*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_199164�
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_199078�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0dense_19_731344dense_19_731346*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_199105�
NoOpNoOp!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 y
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������	: : : : : : : : : : 2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall:X T
(
_output_shapes
:����������	
(
_user_specified_namedense_15_input
�

�
D__inference_dense_16_layer_call_and_return_conditional_losses_199282

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWCY
re_lu_3/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 j
IdentityIdentityre_lu_3/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������"
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
��
�
"__inference__traced_restore_199066
file_prefix4
 assignvariableop_dense_15_kernel:
�	�/
 assignvariableop_1_dense_15_bias:	�6
"assignvariableop_2_dense_16_kernel:
��/
 assignvariableop_3_dense_16_bias:	�6
"assignvariableop_4_dense_17_kernel:
��/
 assignvariableop_5_dense_17_bias:	�6
"assignvariableop_6_dense_18_kernel:
��/
 assignvariableop_7_dense_18_bias:	�6
"assignvariableop_8_dense_19_kernel:
��/
 assignvariableop_9_dense_19_bias:	�'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: >
*assignvariableop_19_adam_dense_15_kernel_m:
�	�7
(assignvariableop_20_adam_dense_15_bias_m:	�>
*assignvariableop_21_adam_dense_16_kernel_m:
��7
(assignvariableop_22_adam_dense_16_bias_m:	�>
*assignvariableop_23_adam_dense_17_kernel_m:
��7
(assignvariableop_24_adam_dense_17_bias_m:	�>
*assignvariableop_25_adam_dense_18_kernel_m:
��7
(assignvariableop_26_adam_dense_18_bias_m:	�>
*assignvariableop_27_adam_dense_19_kernel_m:
��7
(assignvariableop_28_adam_dense_19_bias_m:	�>
*assignvariableop_29_adam_dense_15_kernel_v:
�	�7
(assignvariableop_30_adam_dense_15_bias_v:	�>
*assignvariableop_31_adam_dense_16_kernel_v:
��7
(assignvariableop_32_adam_dense_16_bias_v:	�>
*assignvariableop_33_adam_dense_17_kernel_v:
��7
(assignvariableop_34_adam_dense_17_bias_v:	�>
*assignvariableop_35_adam_dense_18_kernel_v:
��7
(assignvariableop_36_adam_dense_18_bias_v:	�>
*assignvariableop_37_adam_dense_19_kernel_v:
��7
(assignvariableop_38_adam_dense_19_bias_v:	�
identity_40��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*�
value�B�(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp assignvariableop_dense_15_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_15_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_16_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_16_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_17_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_17_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_18_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_18_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_19_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_19_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_15_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_15_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_16_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_16_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_17_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_17_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_18_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_18_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_19_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_19_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_15_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_15_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_16_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_16_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_17_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_17_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_18_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_18_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_19_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_19_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 W
Identity_40IdentityIdentity_39:output:0^NoOp_1*
T0*
_output_shapes
: "#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382(
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
�
F
*__inference_dropout_7_layer_call_fn_198864

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_198859a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�1
�
H__inference_sequential_3_layer_call_and_return_conditional_losses_199153

inputs;
'dense_15_matmul_readvariableop_resource:
�	�7
(dense_15_biasadd_readvariableop_resource:	�;
'dense_16_matmul_readvariableop_resource:
��7
(dense_16_biasadd_readvariableop_resource:	�;
'dense_17_matmul_readvariableop_resource:
��7
(dense_17_biasadd_readvariableop_resource:	�;
'dense_18_matmul_readvariableop_resource:
��7
(dense_18_biasadd_readvariableop_resource:	�;
'dense_19_matmul_readvariableop_resource:
��7
(dense_19_biasadd_readvariableop_resource:	�
identity��dense_15/BiasAdd/ReadVariableOp�dense_15/MatMul/ReadVariableOp�dense_16/BiasAdd/ReadVariableOp�dense_16/MatMul/ReadVariableOp�dense_17/BiasAdd/ReadVariableOp�dense_17/MatMul/ReadVariableOp�dense_18/BiasAdd/ReadVariableOp�dense_18/MatMul/ReadVariableOp�dense_19/BiasAdd/ReadVariableOp�dense_19/MatMul/ReadVariableOp�
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource* 
_output_shapes
:
�	�*
dtype0�
dense_15/MatMulMatMulinputs&dense_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( �
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWCk
dense_15/re_lu_3/ReluReludense_15/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_16/MatMulMatMul#dense_15/re_lu_3/Relu:activations:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( �
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWCk
dense_16/re_lu_3/ReluReludense_16/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_17/MatMulMatMul#dense_16/re_lu_3/Relu:activations:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( �
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWCk
dense_17/re_lu_3/ReluReludense_17/BiasAdd:output:0*
T0*(
_output_shapes
:����������v
dropout_6/IdentityIdentity#dense_17/re_lu_3/Relu:activations:0*
T0*(
_output_shapes
:�����������
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_18/MatMulMatMuldropout_6/Identity:output:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( �
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWCk
dense_18/re_lu_3/ReluReludense_18/BiasAdd:output:0*
T0*(
_output_shapes
:����������v
dropout_7/IdentityIdentity#dense_18/re_lu_3/Relu:activations:0*
T0*(
_output_shapes
:�����������
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_19/MatMulMatMuldropout_7/Identity:output:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( �
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWCi
dense_19/SoftmaxSoftmaxdense_19/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
NoOpNoOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 j
IdentityIdentitydense_19/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������	: : : : : : : : : : 2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp:P L
(
_output_shapes
:����������	
 
_user_specified_nameinputs
�

�
-__inference_sequential_3_layer_call_fn_199442
dense_15_input
unknown:
�	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*,
_read_only_resource_inputs

	
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_199427`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������	: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
(
_output_shapes
:����������	
(
_user_specified_namedense_15_input
�

�
-__inference_sequential_3_layer_call_fn_199553
dense_15_input
unknown:
�	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*,
_read_only_resource_inputs

	
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_199523`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������	: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
(
_output_shapes
:����������	
(
_user_specified_namedense_15_input
�

�
D__inference_dense_18_layer_call_and_return_conditional_losses_199254

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWCY
re_lu_3/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 j
IdentityIdentityre_lu_3/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
D__inference_dense_19_layer_call_and_return_conditional_losses_199094

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWCW
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 a
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
*__inference_dropout_7_layer_call_fn_199083

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_199078`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_dense_15_layer_call_fn_199307

inputs
unknown:
�	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_199300`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������	: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������	
 
_user_specified_nameinputs
�
�
)__inference_dense_18_layer_call_fn_199171

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_199164`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
D__inference_dense_17_layer_call_and_return_conditional_losses_198854

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWCY
re_lu_3/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 j
IdentityIdentityre_lu_3/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
F
*__inference_dropout_6_layer_call_fn_198929

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_198924a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�#
�
H__inference_sequential_3_layer_call_and_return_conditional_losses_199406
dense_15_input#
dense_15_731291:
�	�
dense_15_731293:	�#
dense_16_731296:
��
dense_16_731298:	�#
dense_17_731301:
��
dense_17_731303:	�#
dense_18_731307:
��
dense_18_731309:	�#
dense_19_731313:
��
dense_19_731315:	�
identity�� dense_15/StatefulPartitionedCall� dense_16/StatefulPartitionedCall� dense_17/StatefulPartitionedCall� dense_18/StatefulPartitionedCall� dense_19/StatefulPartitionedCall�
 dense_15/StatefulPartitionedCallStatefulPartitionedCalldense_15_inputdense_15_731291dense_15_731293*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_199300�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_731296dense_16_731298*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_199282�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_731301dense_17_731303*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_199385�
dropout_6/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_198924�
 dense_18/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0dense_18_731307dense_18_731309*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_199164�
dropout_7/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_198859�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0dense_19_731313dense_19_731315*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_199105�
NoOpNoOp!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 y
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������	: : : : : : : : : : 2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall:X T
(
_output_shapes
:����������	
(
_user_specified_namedense_15_input
�&
�
H__inference_sequential_3_layer_call_and_return_conditional_losses_199523

inputs#
dense_15_731212:
�	�
dense_15_731214:	�#
dense_16_731217:
��
dense_16_731219:	�#
dense_17_731222:
��
dense_17_731224:	�#
dense_18_731228:
��
dense_18_731230:	�#
dense_19_731234:
��
dense_19_731236:	�
identity�� dense_15/StatefulPartitionedCall� dense_16/StatefulPartitionedCall� dense_17/StatefulPartitionedCall� dense_18/StatefulPartitionedCall� dense_19/StatefulPartitionedCall�!dropout_6/StatefulPartitionedCall�!dropout_7/StatefulPartitionedCall�
 dense_15/StatefulPartitionedCallStatefulPartitionedCallinputsdense_15_731212dense_15_731214*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_199300�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_731217dense_16_731219*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_199282�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_731222dense_17_731224*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_199385�
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_199476�
 dense_18/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0dense_18_731228dense_18_731230*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_199164�
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_199078�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0dense_19_731234dense_19_731236*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_199105�
NoOpNoOp!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 y
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������	: : : : : : : : : : 2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall:P L
(
_output_shapes
:����������	
 
_user_specified_nameinputs
�

�
D__inference_dense_15_layer_call_and_return_conditional_losses_199182

inputs2
matmul_readvariableop_resource:
�	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�	�*
dtype0�
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWCY
re_lu_3/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 j
IdentityIdentityre_lu_3/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������	
 
_user_specified_nameinputs
�=
�	
!__inference__wrapped_model_199359
dense_15_inputH
4sequential_3_dense_15_matmul_readvariableop_resource:
�	�D
5sequential_3_dense_15_biasadd_readvariableop_resource:	�H
4sequential_3_dense_16_matmul_readvariableop_resource:
��D
5sequential_3_dense_16_biasadd_readvariableop_resource:	�H
4sequential_3_dense_17_matmul_readvariableop_resource:
��D
5sequential_3_dense_17_biasadd_readvariableop_resource:	�H
4sequential_3_dense_18_matmul_readvariableop_resource:
��D
5sequential_3_dense_18_biasadd_readvariableop_resource:	�H
4sequential_3_dense_19_matmul_readvariableop_resource:
��D
5sequential_3_dense_19_biasadd_readvariableop_resource:	�
identity��,sequential_3/dense_15/BiasAdd/ReadVariableOp�+sequential_3/dense_15/MatMul/ReadVariableOp�,sequential_3/dense_16/BiasAdd/ReadVariableOp�+sequential_3/dense_16/MatMul/ReadVariableOp�,sequential_3/dense_17/BiasAdd/ReadVariableOp�+sequential_3/dense_17/MatMul/ReadVariableOp�,sequential_3/dense_18/BiasAdd/ReadVariableOp�+sequential_3/dense_18/MatMul/ReadVariableOp�,sequential_3/dense_19/BiasAdd/ReadVariableOp�+sequential_3/dense_19/MatMul/ReadVariableOp�
+sequential_3/dense_15/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_15_matmul_readvariableop_resource* 
_output_shapes
:
�	�*
dtype0�
sequential_3/dense_15/MatMulMatMuldense_15_input3sequential_3/dense_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( �
,sequential_3/dense_15/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_15_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_3/dense_15/BiasAddBiasAdd&sequential_3/dense_15/MatMul:product:04sequential_3/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWC�
"sequential_3/dense_15/re_lu_3/ReluRelu&sequential_3/dense_15/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
+sequential_3/dense_16/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_16_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential_3/dense_16/MatMulMatMul0sequential_3/dense_15/re_lu_3/Relu:activations:03sequential_3/dense_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( �
,sequential_3/dense_16/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_16_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_3/dense_16/BiasAddBiasAdd&sequential_3/dense_16/MatMul:product:04sequential_3/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWC�
"sequential_3/dense_16/re_lu_3/ReluRelu&sequential_3/dense_16/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
+sequential_3/dense_17/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_17_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential_3/dense_17/MatMulMatMul0sequential_3/dense_16/re_lu_3/Relu:activations:03sequential_3/dense_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( �
,sequential_3/dense_17/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_3/dense_17/BiasAddBiasAdd&sequential_3/dense_17/MatMul:product:04sequential_3/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWC�
"sequential_3/dense_17/re_lu_3/ReluRelu&sequential_3/dense_17/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
sequential_3/dropout_6/IdentityIdentity0sequential_3/dense_17/re_lu_3/Relu:activations:0*
T0*(
_output_shapes
:�����������
+sequential_3/dense_18/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_18_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential_3/dense_18/MatMulMatMul(sequential_3/dropout_6/Identity:output:03sequential_3/dense_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( �
,sequential_3/dense_18/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_18_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_3/dense_18/BiasAddBiasAdd&sequential_3/dense_18/MatMul:product:04sequential_3/dense_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWC�
"sequential_3/dense_18/re_lu_3/ReluRelu&sequential_3/dense_18/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
sequential_3/dropout_7/IdentityIdentity0sequential_3/dense_18/re_lu_3/Relu:activations:0*
T0*(
_output_shapes
:�����������
+sequential_3/dense_19/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_19_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential_3/dense_19/MatMulMatMul(sequential_3/dropout_7/Identity:output:03sequential_3/dense_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( �
,sequential_3/dense_19/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_19_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_3/dense_19/BiasAddBiasAdd&sequential_3/dense_19/MatMul:product:04sequential_3/dense_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
data_formatNHWC�
sequential_3/dense_19/SoftmaxSoftmax&sequential_3/dense_19/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
NoOpNoOp-^sequential_3/dense_15/BiasAdd/ReadVariableOp,^sequential_3/dense_15/MatMul/ReadVariableOp-^sequential_3/dense_16/BiasAdd/ReadVariableOp,^sequential_3/dense_16/MatMul/ReadVariableOp-^sequential_3/dense_17/BiasAdd/ReadVariableOp,^sequential_3/dense_17/MatMul/ReadVariableOp-^sequential_3/dense_18/BiasAdd/ReadVariableOp,^sequential_3/dense_18/MatMul/ReadVariableOp-^sequential_3/dense_19/BiasAdd/ReadVariableOp,^sequential_3/dense_19/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 w
IdentityIdentity'sequential_3/dense_19/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������	: : : : : : : : : : 2\
,sequential_3/dense_15/BiasAdd/ReadVariableOp,sequential_3/dense_15/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_15/MatMul/ReadVariableOp+sequential_3/dense_15/MatMul/ReadVariableOp2\
,sequential_3/dense_16/BiasAdd/ReadVariableOp,sequential_3/dense_16/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_16/MatMul/ReadVariableOp+sequential_3/dense_16/MatMul/ReadVariableOp2\
,sequential_3/dense_17/BiasAdd/ReadVariableOp,sequential_3/dense_17/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_17/MatMul/ReadVariableOp+sequential_3/dense_17/MatMul/ReadVariableOp2\
,sequential_3/dense_18/BiasAdd/ReadVariableOp,sequential_3/dense_18/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_18/MatMul/ReadVariableOp+sequential_3/dense_18/MatMul/ReadVariableOp2\
,sequential_3/dense_19/BiasAdd/ReadVariableOp,sequential_3/dense_19/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_19/MatMul/ReadVariableOp+sequential_3/dense_19/MatMul/ReadVariableOp:X T
(
_output_shapes
:����������	
(
_user_specified_namedense_15_input
�
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_198924

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
-__inference_sequential_3_layer_call_fn_199538

inputs
unknown:
�	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*,
_read_only_resource_inputs

	
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_199523`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������	: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������	
 
_user_specified_nameinputs
�

d
E__inference_dropout_6_layer_call_and_return_conditional_losses_198941

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������S
dropout/ShapeShapeinputs*
T0*
_output_shapes
:*
out_type0�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0*

seed*
seed2 [
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *�@!>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�#
�
H__inference_sequential_3_layer_call_and_return_conditional_losses_199427

inputs#
dense_15_730975:
�	�
dense_15_730977:	�#
dense_16_730992:
��
dense_16_730994:	�#
dense_17_731009:
��
dense_17_731011:	�#
dense_18_731033:
��
dense_18_731035:	�#
dense_19_731057:
��
dense_19_731059:	�
identity�� dense_15/StatefulPartitionedCall� dense_16/StatefulPartitionedCall� dense_17/StatefulPartitionedCall� dense_18/StatefulPartitionedCall� dense_19/StatefulPartitionedCall�
 dense_15/StatefulPartitionedCallStatefulPartitionedCallinputsdense_15_730975dense_15_730977*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_199300�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_730992dense_16_730994*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_199282�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_731009dense_17_731011*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_199385�
dropout_6/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_198924�
 dense_18/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0dense_18_731033dense_18_731035*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_199164�
dropout_7/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_198859�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0dense_19_731057dense_19_731059*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_199105�
NoOpNoOp!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 y
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������	: : : : : : : : : : 2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall:P L
(
_output_shapes
:����������	
 
_user_specified_nameinputs
�

d
E__inference_dropout_7_layer_call_and_return_conditional_losses_199078

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������S
dropout/ShapeShapeinputs*
T0*
_output_shapes
:*
out_type0�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0*

seed*
seed2 [
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *�^�>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_dense_19_layer_call_fn_199112

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8� *
executor_type *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_199105`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs"�<
save/Const:0save/Identity:0save/restore_all (5 @F8"�=
cond_context�<�<
�
'default_policy/dropout_6/cond/cond_text'default_policy/dropout_6/cond/pred_id:0(default_policy/dropout_6/cond/switch_t:0 *�
&default_policy/dense_17/re_lu_3/Relu:0
,default_policy/dropout_6/cond/dropout/Cast:0
-default_policy/dropout_6/cond/dropout/Const:0
6default_policy/dropout_6/cond/dropout/GreaterEqual/y:0
4default_policy/dropout_6/cond/dropout/GreaterEqual:0
2default_policy/dropout_6/cond/dropout/Mul/Switch:1
+default_policy/dropout_6/cond/dropout/Mul:0
-default_policy/dropout_6/cond/dropout/Mul_1:0
-default_policy/dropout_6/cond/dropout/Shape:0
Ddefault_policy/dropout_6/cond/dropout/random_uniform/RandomUniform:0
'default_policy/dropout_6/cond/pred_id:0
(default_policy/dropout_6/cond/switch_t:0R
'default_policy/dropout_6/cond/pred_id:0'default_policy/dropout_6/cond/pred_id:0\
&default_policy/dense_17/re_lu_3/Relu:02default_policy/dropout_6/cond/dropout/Mul/Switch:1
�
)default_policy/dropout_6/cond/cond_text_1'default_policy/dropout_6/cond/pred_id:0(default_policy/dropout_6/cond/switch_f:0*�
&default_policy/dense_17/re_lu_3/Relu:0
/default_policy/dropout_6/cond/Identity/Switch:0
(default_policy/dropout_6/cond/Identity:0
'default_policy/dropout_6/cond/pred_id:0
(default_policy/dropout_6/cond/switch_f:0Y
&default_policy/dense_17/re_lu_3/Relu:0/default_policy/dropout_6/cond/Identity/Switch:0R
'default_policy/dropout_6/cond/pred_id:0'default_policy/dropout_6/cond/pred_id:0
�
'default_policy/dropout_7/cond/cond_text'default_policy/dropout_7/cond/pred_id:0(default_policy/dropout_7/cond/switch_t:0 *�
&default_policy/dense_18/re_lu_3/Relu:0
,default_policy/dropout_7/cond/dropout/Cast:0
-default_policy/dropout_7/cond/dropout/Const:0
6default_policy/dropout_7/cond/dropout/GreaterEqual/y:0
4default_policy/dropout_7/cond/dropout/GreaterEqual:0
2default_policy/dropout_7/cond/dropout/Mul/Switch:1
+default_policy/dropout_7/cond/dropout/Mul:0
-default_policy/dropout_7/cond/dropout/Mul_1:0
-default_policy/dropout_7/cond/dropout/Shape:0
Ddefault_policy/dropout_7/cond/dropout/random_uniform/RandomUniform:0
'default_policy/dropout_7/cond/pred_id:0
(default_policy/dropout_7/cond/switch_t:0R
'default_policy/dropout_7/cond/pred_id:0'default_policy/dropout_7/cond/pred_id:0\
&default_policy/dense_18/re_lu_3/Relu:02default_policy/dropout_7/cond/dropout/Mul/Switch:1
�
)default_policy/dropout_7/cond/cond_text_1'default_policy/dropout_7/cond/pred_id:0(default_policy/dropout_7/cond/switch_f:0*�
&default_policy/dense_18/re_lu_3/Relu:0
/default_policy/dropout_7/cond/Identity/Switch:0
(default_policy/dropout_7/cond/Identity:0
'default_policy/dropout_7/cond/pred_id:0
(default_policy/dropout_7/cond/switch_f:0R
'default_policy/dropout_7/cond/pred_id:0'default_policy/dropout_7/cond/pred_id:0Y
&default_policy/dense_18/re_lu_3/Relu:0/default_policy/dropout_7/cond/Identity/Switch:0
�
default_policy/cond/cond_textdefault_policy/cond/pred_id:0default_policy/cond/switch_t:0 *�	
default_policy/cond/Const:0
(default_policy/cond/cond/ArgMax/Switch:0
+default_policy/cond/cond/ArgMax/dimension:0
!default_policy/cond/cond/ArgMax:0
 default_policy/cond/cond/Merge:0
 default_policy/cond/cond/Merge:1
'default_policy/cond/cond/Shape/Switch:1
)default_policy/cond/cond/Shape/Switch_1:1
 default_policy/cond/cond/Shape:0
!default_policy/cond/cond/Switch:0
!default_policy/cond/cond/Switch:1
"default_policy/cond/cond/pred_id:0
-default_policy/cond/cond/random_uniform/max:0
-default_policy/cond/cond/random_uniform/min:0
/default_policy/cond/cond/random_uniform/shape:0
)default_policy/cond/cond/random_uniform:0
.default_policy/cond/cond/strided_slice/stack:0
0default_policy/cond/cond/strided_slice/stack_1:0
0default_policy/cond/cond/strided_slice/stack_2:0
(default_policy/cond/cond/strided_slice:0
#default_policy/cond/cond/switch_f:0
#default_policy/cond/cond/switch_t:0
default_policy/cond/pred_id:0
default_policy/cond/switch_t:0
&default_policy/cond/zeros_like/Const:0
&default_policy/cond/zeros_like/Shape:0
 default_policy/cond/zeros_like:0
default_policy/truediv:0>
default_policy/cond/pred_id:0default_policy/cond/pred_id:0C
default_policy/truediv:0'default_policy/cond/cond/Shape/Switch:12�
�
"default_policy/cond/cond/cond_text"default_policy/cond/cond/pred_id:0#default_policy/cond/cond/switch_t:0 *�
'default_policy/cond/cond/Shape/Switch:1
)default_policy/cond/cond/Shape/Switch_1:1
 default_policy/cond/cond/Shape:0
"default_policy/cond/cond/pred_id:0
-default_policy/cond/cond/random_uniform/max:0
-default_policy/cond/cond/random_uniform/min:0
/default_policy/cond/cond/random_uniform/shape:0
)default_policy/cond/cond/random_uniform:0
.default_policy/cond/cond/strided_slice/stack:0
0default_policy/cond/cond/strided_slice/stack_1:0
0default_policy/cond/cond/strided_slice/stack_2:0
(default_policy/cond/cond/strided_slice:0
#default_policy/cond/cond/switch_t:0
default_policy/truediv:0R
'default_policy/cond/cond/Shape/Switch:1'default_policy/cond/cond/Shape/Switch:1E
default_policy/truediv:0)default_policy/cond/cond/Shape/Switch_1:1H
"default_policy/cond/cond/pred_id:0"default_policy/cond/cond/pred_id:02�
�
$default_policy/cond/cond/cond_text_1"default_policy/cond/cond/pred_id:0#default_policy/cond/cond/switch_f:0*�
(default_policy/cond/cond/ArgMax/Switch:0
+default_policy/cond/cond/ArgMax/dimension:0
!default_policy/cond/cond/ArgMax:0
'default_policy/cond/cond/Shape/Switch:1
"default_policy/cond/cond/pred_id:0
#default_policy/cond/cond/switch_f:0
default_policy/truediv:0R
'default_policy/cond/cond/Shape/Switch:1'default_policy/cond/cond/Shape/Switch:1D
default_policy/truediv:0(default_policy/cond/cond/ArgMax/Switch:0H
"default_policy/cond/cond/pred_id:0"default_policy/cond/cond/pred_id:0
�
default_policy/cond/cond_text_1default_policy/cond/pred_id:0default_policy/cond/switch_f:0*�
default_policy/Squeeze:0
default_policy/cond/Switch_1:0
default_policy/cond/Switch_1:1
default_policy/cond/pred_id:0
default_policy/cond/switch_f:0>
default_policy/cond/pred_id:0default_policy/cond/pred_id:0:
default_policy/Squeeze:0default_policy/cond/Switch_1:0
�
default_policy/cond_1/cond_textdefault_policy/cond_1/pred_id:0 default_policy/cond_1/switch_t:0 *�
default_policy/cond/Merge:0
 default_policy/cond_1/Switch_1:0
 default_policy/cond_1/Switch_1:1
default_policy/cond_1/pred_id:0
 default_policy/cond_1/switch_t:0B
default_policy/cond_1/pred_id:0default_policy/cond_1/pred_id:0?
default_policy/cond/Merge:0 default_policy/cond_1/Switch_1:1
�
!default_policy/cond_1/cond_text_1default_policy/cond_1/pred_id:0 default_policy/cond_1/switch_f:0*�
default_policy/ArgMax:0
 default_policy/cond_1/Switch_2:0
 default_policy/cond_1/Switch_2:1
default_policy/cond_1/pred_id:0
 default_policy/cond_1/switch_f:0B
default_policy/cond_1/pred_id:0default_policy/cond_1/pred_id:0;
default_policy/ArgMax:0 default_policy/cond_1/Switch_2:0
�
default_policy/cond_2/cond_textdefault_policy/cond_2/pred_id:0 default_policy/cond_2/switch_t:0 *�
default_policy/Neg:0
 default_policy/cond_2/Switch_1:0
 default_policy/cond_2/Switch_1:1
default_policy/cond_2/pred_id:0
 default_policy/cond_2/switch_t:08
default_policy/Neg:0 default_policy/cond_2/Switch_1:1B
default_policy/cond_2/pred_id:0default_policy/cond_2/pred_id:0
�
!default_policy/cond_2/cond_text_1default_policy/cond_2/pred_id:0 default_policy/cond_2/switch_f:0*�
default_policy/ArgMax:0
default_policy/cond_2/pred_id:0
 default_policy/cond_2/switch_f:0
(default_policy/cond_2/zeros_like/Const:0
/default_policy/cond_2/zeros_like/Shape/Switch:0
(default_policy/cond_2/zeros_like/Shape:0
"default_policy/cond_2/zeros_like:0J
default_policy/ArgMax:0/default_policy/cond_2/zeros_like/Shape/Switch:0B
default_policy/cond_2/pred_id:0default_policy/cond_2/pred_id:0"�
global_step��
�
default_policy/global_step:0!default_policy/global_step/Assign0default_policy/global_step/Read/ReadVariableOp:0(2.default_policy/global_step/Initializer/zeros:0H"#
train_op

default_policy/Adam"� 
trainable_variables� � 
�
default_policy/layer_1/kernel:0$default_policy/layer_1/kernel/Assign3default_policy/layer_1/kernel/Read/ReadVariableOp:0(21default_policy/layer_1/kernel/Initializer/mul_1:08
�
default_policy/layer_1/bias:0"default_policy/layer_1/bias/Assign1default_policy/layer_1/bias/Read/ReadVariableOp:0(2/default_policy/layer_1/bias/Initializer/zeros:08
�
default_policy/layer_2/kernel:0$default_policy/layer_2/kernel/Assign3default_policy/layer_2/kernel/Read/ReadVariableOp:0(21default_policy/layer_2/kernel/Initializer/mul_1:08
�
default_policy/layer_2/bias:0"default_policy/layer_2/bias/Assign1default_policy/layer_2/bias/Read/ReadVariableOp:0(2/default_policy/layer_2/bias/Initializer/zeros:08
�
default_policy/layer_3/kernel:0$default_policy/layer_3/kernel/Assign3default_policy/layer_3/kernel/Read/ReadVariableOp:0(21default_policy/layer_3/kernel/Initializer/mul_1:08
�
default_policy/layer_3/bias:0"default_policy/layer_3/bias/Assign1default_policy/layer_3/bias/Read/ReadVariableOp:0(2/default_policy/layer_3/bias/Initializer/zeros:08
�
default_policy/layer_4/kernel:0$default_policy/layer_4/kernel/Assign3default_policy/layer_4/kernel/Read/ReadVariableOp:0(21default_policy/layer_4/kernel/Initializer/mul_1:08
�
default_policy/layer_4/bias:0"default_policy/layer_4/bias/Assign1default_policy/layer_4/bias/Read/ReadVariableOp:0(2/default_policy/layer_4/bias/Initializer/zeros:08
�
"default_policy/action_out/kernel:0'default_policy/action_out/kernel/Assign6default_policy/action_out/kernel/Read/ReadVariableOp:0(24default_policy/action_out/kernel/Initializer/mul_1:08
�
 default_policy/action_out/bias:0%default_policy/action_out/bias/Assign4default_policy/action_out/bias/Read/ReadVariableOp:0(22default_policy/action_out/bias/Initializer/zeros:08
�
(default_policy/layer_val_hidden/kernel:0-default_policy/layer_val_hidden/kernel/Assign<default_policy/layer_val_hidden/kernel/Read/ReadVariableOp:0(2:default_policy/layer_val_hidden/kernel/Initializer/mul_1:08
�
&default_policy/layer_val_hidden/bias:0+default_policy/layer_val_hidden/bias/Assign:default_policy/layer_val_hidden/bias/Read/ReadVariableOp:0(28default_policy/layer_val_hidden/bias/Initializer/zeros:08
�
!default_policy/value_out/kernel:0&default_policy/value_out/kernel/Assign5default_policy/value_out/kernel/Read/ReadVariableOp:0(23default_policy/value_out/kernel/Initializer/mul_1:08
�
default_policy/value_out/bias:0$default_policy/value_out/bias/Assign3default_policy/value_out/bias/Read/ReadVariableOp:0(21default_policy/value_out/bias/Initializer/zeros:08
�
default_policy/kernel:0"default_policy/AssignVariableOp_25+default_policy/kernel/Read/ReadVariableOp:0(2)default_policy/kernel/Initializer/mul_1:08
�
default_policy/bias:0"default_policy/AssignVariableOp_24)default_policy/bias/Read/ReadVariableOp:0(2'default_policy/bias/Initializer/zeros:08
�
default_policy/kernel_1:0"default_policy/AssignVariableOp_27-default_policy/kernel_1/Read/ReadVariableOp:0(2+default_policy/kernel_1/Initializer/mul_1:08
�
default_policy/bias_1:0"default_policy/AssignVariableOp_26+default_policy/bias_1/Read/ReadVariableOp:0(2)default_policy/bias_1/Initializer/zeros:08
�
default_policy/kernel_2:0"default_policy/AssignVariableOp_29-default_policy/kernel_2/Read/ReadVariableOp:0(2+default_policy/kernel_2/Initializer/mul_1:08
�
default_policy/bias_2:0"default_policy/AssignVariableOp_28+default_policy/bias_2/Read/ReadVariableOp:0(2)default_policy/bias_2/Initializer/zeros:08
�
default_policy/kernel_3:0"default_policy/AssignVariableOp_31-default_policy/kernel_3/Read/ReadVariableOp:0(2+default_policy/kernel_3/Initializer/mul_1:08
�
default_policy/bias_3:0"default_policy/AssignVariableOp_30+default_policy/bias_3/Read/ReadVariableOp:0(2)default_policy/bias_3/Initializer/zeros:08
�
default_policy/kernel_4:0"default_policy/AssignVariableOp_33-default_policy/kernel_4/Read/ReadVariableOp:0(24default_policy/kernel_4/Initializer/random_uniform:08
�
default_policy/bias_4:0"default_policy/AssignVariableOp_32+default_policy/bias_4/Read/ReadVariableOp:0(2)default_policy/bias_4/Initializer/zeros:08"��
	variables����
�
default_policy/layer_1/kernel:0$default_policy/layer_1/kernel/Assign3default_policy/layer_1/kernel/Read/ReadVariableOp:0(21default_policy/layer_1/kernel/Initializer/mul_1:08
�
default_policy/layer_1/bias:0"default_policy/layer_1/bias/Assign1default_policy/layer_1/bias/Read/ReadVariableOp:0(2/default_policy/layer_1/bias/Initializer/zeros:08
�
default_policy/layer_2/kernel:0$default_policy/layer_2/kernel/Assign3default_policy/layer_2/kernel/Read/ReadVariableOp:0(21default_policy/layer_2/kernel/Initializer/mul_1:08
�
default_policy/layer_2/bias:0"default_policy/layer_2/bias/Assign1default_policy/layer_2/bias/Read/ReadVariableOp:0(2/default_policy/layer_2/bias/Initializer/zeros:08
�
default_policy/layer_3/kernel:0$default_policy/layer_3/kernel/Assign3default_policy/layer_3/kernel/Read/ReadVariableOp:0(21default_policy/layer_3/kernel/Initializer/mul_1:08
�
default_policy/layer_3/bias:0"default_policy/layer_3/bias/Assign1default_policy/layer_3/bias/Read/ReadVariableOp:0(2/default_policy/layer_3/bias/Initializer/zeros:08
�
default_policy/layer_4/kernel:0$default_policy/layer_4/kernel/Assign3default_policy/layer_4/kernel/Read/ReadVariableOp:0(21default_policy/layer_4/kernel/Initializer/mul_1:08
�
default_policy/layer_4/bias:0"default_policy/layer_4/bias/Assign1default_policy/layer_4/bias/Read/ReadVariableOp:0(2/default_policy/layer_4/bias/Initializer/zeros:08
�
"default_policy/action_out/kernel:0'default_policy/action_out/kernel/Assign6default_policy/action_out/kernel/Read/ReadVariableOp:0(24default_policy/action_out/kernel/Initializer/mul_1:08
�
 default_policy/action_out/bias:0%default_policy/action_out/bias/Assign4default_policy/action_out/bias/Read/ReadVariableOp:0(22default_policy/action_out/bias/Initializer/zeros:08
�
(default_policy/layer_val_hidden/kernel:0-default_policy/layer_val_hidden/kernel/Assign<default_policy/layer_val_hidden/kernel/Read/ReadVariableOp:0(2:default_policy/layer_val_hidden/kernel/Initializer/mul_1:08
�
&default_policy/layer_val_hidden/bias:0+default_policy/layer_val_hidden/bias/Assign:default_policy/layer_val_hidden/bias/Read/ReadVariableOp:0(28default_policy/layer_val_hidden/bias/Initializer/zeros:08
�
!default_policy/value_out/kernel:0&default_policy/value_out/kernel/Assign5default_policy/value_out/kernel/Read/ReadVariableOp:0(23default_policy/value_out/kernel/Initializer/mul_1:08
�
default_policy/value_out/bias:0$default_policy/value_out/bias/Assign3default_policy/value_out/bias/Read/ReadVariableOp:0(21default_policy/value_out/bias/Initializer/zeros:08
�
default_policy/kernel:0"default_policy/AssignVariableOp_25+default_policy/kernel/Read/ReadVariableOp:0(2)default_policy/kernel/Initializer/mul_1:08
�
default_policy/bias:0"default_policy/AssignVariableOp_24)default_policy/bias/Read/ReadVariableOp:0(2'default_policy/bias/Initializer/zeros:08
�
default_policy/kernel_1:0"default_policy/AssignVariableOp_27-default_policy/kernel_1/Read/ReadVariableOp:0(2+default_policy/kernel_1/Initializer/mul_1:08
�
default_policy/bias_1:0"default_policy/AssignVariableOp_26+default_policy/bias_1/Read/ReadVariableOp:0(2)default_policy/bias_1/Initializer/zeros:08
�
default_policy/kernel_2:0"default_policy/AssignVariableOp_29-default_policy/kernel_2/Read/ReadVariableOp:0(2+default_policy/kernel_2/Initializer/mul_1:08
�
default_policy/bias_2:0"default_policy/AssignVariableOp_28+default_policy/bias_2/Read/ReadVariableOp:0(2)default_policy/bias_2/Initializer/zeros:08
�
default_policy/kernel_3:0"default_policy/AssignVariableOp_31-default_policy/kernel_3/Read/ReadVariableOp:0(2+default_policy/kernel_3/Initializer/mul_1:08
�
default_policy/bias_3:0"default_policy/AssignVariableOp_30+default_policy/bias_3/Read/ReadVariableOp:0(2)default_policy/bias_3/Initializer/zeros:08
�
default_policy/kernel_4:0"default_policy/AssignVariableOp_33-default_policy/kernel_4/Read/ReadVariableOp:0(24default_policy/kernel_4/Initializer/random_uniform:08
�
default_policy/bias_4:0"default_policy/AssignVariableOp_32+default_policy/bias_4/Read/ReadVariableOp:0(2)default_policy/bias_4/Initializer/zeros:08
t
default_policy/Adam/iter:0"default_policy/AssignVariableOp_37.default_policy/Adam/iter/Read/ReadVariableOp:0(H
x
default_policy/Adam/beta_1:0"default_policy/AssignVariableOp_340default_policy/Adam/beta_1/Read/ReadVariableOp:0(H
x
default_policy/Adam/beta_2:0"default_policy/AssignVariableOp_350default_policy/Adam/beta_2/Read/ReadVariableOp:0(H
v
default_policy/Adam/decay:0"default_policy/AssignVariableOp_36/default_policy/Adam/decay/Read/ReadVariableOp:0(H
�
#default_policy/Adam/learning_rate:0"default_policy/AssignVariableOp_387default_policy/Adam/learning_rate/Read/ReadVariableOp:0(H
�
"default_policy/dense_15/kernel/m:0default_policy/AssignVariableOp6default_policy/dense_15/kernel/m/Read/ReadVariableOp:0(24default_policy/dense_15/kernel/m/Initializer/zeros:0
�
 default_policy/dense_15/bias/m:0!default_policy/AssignVariableOp_24default_policy/dense_15/bias/m/Read/ReadVariableOp:0(22default_policy/dense_15/bias/m/Initializer/zeros:0
�
"default_policy/dense_16/kernel/m:0!default_policy/AssignVariableOp_46default_policy/dense_16/kernel/m/Read/ReadVariableOp:0(24default_policy/dense_16/kernel/m/Initializer/zeros:0
�
 default_policy/dense_16/bias/m:0!default_policy/AssignVariableOp_64default_policy/dense_16/bias/m/Read/ReadVariableOp:0(22default_policy/dense_16/bias/m/Initializer/zeros:0
�
"default_policy/dense_17/kernel/m:0!default_policy/AssignVariableOp_86default_policy/dense_17/kernel/m/Read/ReadVariableOp:0(24default_policy/dense_17/kernel/m/Initializer/zeros:0
�
 default_policy/dense_17/bias/m:0"default_policy/AssignVariableOp_104default_policy/dense_17/bias/m/Read/ReadVariableOp:0(22default_policy/dense_17/bias/m/Initializer/zeros:0
�
"default_policy/dense_18/kernel/m:0"default_policy/AssignVariableOp_126default_policy/dense_18/kernel/m/Read/ReadVariableOp:0(24default_policy/dense_18/kernel/m/Initializer/zeros:0
�
 default_policy/dense_18/bias/m:0"default_policy/AssignVariableOp_144default_policy/dense_18/bias/m/Read/ReadVariableOp:0(22default_policy/dense_18/bias/m/Initializer/zeros:0
�
"default_policy/dense_19/kernel/m:0"default_policy/AssignVariableOp_166default_policy/dense_19/kernel/m/Read/ReadVariableOp:0(24default_policy/dense_19/kernel/m/Initializer/zeros:0
�
 default_policy/dense_19/bias/m:0"default_policy/AssignVariableOp_184default_policy/dense_19/bias/m/Read/ReadVariableOp:0(22default_policy/dense_19/bias/m/Initializer/zeros:0
�
"default_policy/dense_15/kernel/v:0!default_policy/AssignVariableOp_16default_policy/dense_15/kernel/v/Read/ReadVariableOp:0(24default_policy/dense_15/kernel/v/Initializer/zeros:0
�
 default_policy/dense_15/bias/v:0!default_policy/AssignVariableOp_34default_policy/dense_15/bias/v/Read/ReadVariableOp:0(22default_policy/dense_15/bias/v/Initializer/zeros:0
�
"default_policy/dense_16/kernel/v:0!default_policy/AssignVariableOp_56default_policy/dense_16/kernel/v/Read/ReadVariableOp:0(24default_policy/dense_16/kernel/v/Initializer/zeros:0
�
 default_policy/dense_16/bias/v:0!default_policy/AssignVariableOp_74default_policy/dense_16/bias/v/Read/ReadVariableOp:0(22default_policy/dense_16/bias/v/Initializer/zeros:0
�
"default_policy/dense_17/kernel/v:0!default_policy/AssignVariableOp_96default_policy/dense_17/kernel/v/Read/ReadVariableOp:0(24default_policy/dense_17/kernel/v/Initializer/zeros:0
�
 default_policy/dense_17/bias/v:0"default_policy/AssignVariableOp_114default_policy/dense_17/bias/v/Read/ReadVariableOp:0(22default_policy/dense_17/bias/v/Initializer/zeros:0
�
"default_policy/dense_18/kernel/v:0"default_policy/AssignVariableOp_136default_policy/dense_18/kernel/v/Read/ReadVariableOp:0(24default_policy/dense_18/kernel/v/Initializer/zeros:0
�
 default_policy/dense_18/bias/v:0"default_policy/AssignVariableOp_154default_policy/dense_18/bias/v/Read/ReadVariableOp:0(22default_policy/dense_18/bias/v/Initializer/zeros:0
�
"default_policy/dense_19/kernel/v:0"default_policy/AssignVariableOp_176default_policy/dense_19/kernel/v/Read/ReadVariableOp:0(24default_policy/dense_19/kernel/v/Initializer/zeros:0
�
 default_policy/dense_19/bias/v:0"default_policy/AssignVariableOp_194default_policy/dense_19/bias/v/Read/ReadVariableOp:0(22default_policy/dense_19/bias/v/Initializer/zeros:0
�
default_policy/timestep_1:0 default_policy/timestep_1/Assign/default_policy/timestep_1/Read/ReadVariableOp:0(25default_policy/timestep_1/Initializer/initial_value:0
�
default_policy/kl_coeff:0default_policy/kl_coeff/Assign-default_policy/kl_coeff/Read/ReadVariableOp:0(23default_policy/kl_coeff/Initializer/initial_value:0
�
default_policy/entropy_coeff:0#default_policy/entropy_coeff/Assign2default_policy/entropy_coeff/Read/ReadVariableOp:0(28default_policy/entropy_coeff/Initializer/initial_value:0
�
default_policy/lr:0default_policy/lr/Assign'default_policy/lr/Read/ReadVariableOp:0(2-default_policy/lr/Initializer/initial_value:0
�
default_policy/global_step:0!default_policy/global_step/Assign0default_policy/global_step/Read/ReadVariableOp:0(2.default_policy/global_step/Initializer/zeros:0H
�
default_policy/beta1_power:0!default_policy/beta1_power/Assign0default_policy/beta1_power/Read/ReadVariableOp:0(26default_policy/beta1_power/Initializer/initial_value:0
�
default_policy/beta2_power:0!default_policy/beta2_power/Assign0default_policy/beta2_power/Read/ReadVariableOp:0(26default_policy/beta2_power/Initializer/initial_value:0
�
3default_policy/default_policy/layer_1/kernel/Adam:08default_policy/default_policy/layer_1/kernel/Adam/AssignGdefault_policy/default_policy/layer_1/kernel/Adam/Read/ReadVariableOp:0(2Edefault_policy/default_policy/layer_1/kernel/Adam/Initializer/zeros:0
�
5default_policy/default_policy/layer_1/kernel/Adam_1:0:default_policy/default_policy/layer_1/kernel/Adam_1/AssignIdefault_policy/default_policy/layer_1/kernel/Adam_1/Read/ReadVariableOp:0(2Gdefault_policy/default_policy/layer_1/kernel/Adam_1/Initializer/zeros:0
�
1default_policy/default_policy/layer_1/bias/Adam:06default_policy/default_policy/layer_1/bias/Adam/AssignEdefault_policy/default_policy/layer_1/bias/Adam/Read/ReadVariableOp:0(2Cdefault_policy/default_policy/layer_1/bias/Adam/Initializer/zeros:0
�
3default_policy/default_policy/layer_1/bias/Adam_1:08default_policy/default_policy/layer_1/bias/Adam_1/AssignGdefault_policy/default_policy/layer_1/bias/Adam_1/Read/ReadVariableOp:0(2Edefault_policy/default_policy/layer_1/bias/Adam_1/Initializer/zeros:0
�
3default_policy/default_policy/layer_2/kernel/Adam:08default_policy/default_policy/layer_2/kernel/Adam/AssignGdefault_policy/default_policy/layer_2/kernel/Adam/Read/ReadVariableOp:0(2Edefault_policy/default_policy/layer_2/kernel/Adam/Initializer/zeros:0
�
5default_policy/default_policy/layer_2/kernel/Adam_1:0:default_policy/default_policy/layer_2/kernel/Adam_1/AssignIdefault_policy/default_policy/layer_2/kernel/Adam_1/Read/ReadVariableOp:0(2Gdefault_policy/default_policy/layer_2/kernel/Adam_1/Initializer/zeros:0
�
1default_policy/default_policy/layer_2/bias/Adam:06default_policy/default_policy/layer_2/bias/Adam/AssignEdefault_policy/default_policy/layer_2/bias/Adam/Read/ReadVariableOp:0(2Cdefault_policy/default_policy/layer_2/bias/Adam/Initializer/zeros:0
�
3default_policy/default_policy/layer_2/bias/Adam_1:08default_policy/default_policy/layer_2/bias/Adam_1/AssignGdefault_policy/default_policy/layer_2/bias/Adam_1/Read/ReadVariableOp:0(2Edefault_policy/default_policy/layer_2/bias/Adam_1/Initializer/zeros:0
�
3default_policy/default_policy/layer_3/kernel/Adam:08default_policy/default_policy/layer_3/kernel/Adam/AssignGdefault_policy/default_policy/layer_3/kernel/Adam/Read/ReadVariableOp:0(2Edefault_policy/default_policy/layer_3/kernel/Adam/Initializer/zeros:0
�
5default_policy/default_policy/layer_3/kernel/Adam_1:0:default_policy/default_policy/layer_3/kernel/Adam_1/AssignIdefault_policy/default_policy/layer_3/kernel/Adam_1/Read/ReadVariableOp:0(2Gdefault_policy/default_policy/layer_3/kernel/Adam_1/Initializer/zeros:0
�
1default_policy/default_policy/layer_3/bias/Adam:06default_policy/default_policy/layer_3/bias/Adam/AssignEdefault_policy/default_policy/layer_3/bias/Adam/Read/ReadVariableOp:0(2Cdefault_policy/default_policy/layer_3/bias/Adam/Initializer/zeros:0
�
3default_policy/default_policy/layer_3/bias/Adam_1:08default_policy/default_policy/layer_3/bias/Adam_1/AssignGdefault_policy/default_policy/layer_3/bias/Adam_1/Read/ReadVariableOp:0(2Edefault_policy/default_policy/layer_3/bias/Adam_1/Initializer/zeros:0
�
3default_policy/default_policy/layer_4/kernel/Adam:08default_policy/default_policy/layer_4/kernel/Adam/AssignGdefault_policy/default_policy/layer_4/kernel/Adam/Read/ReadVariableOp:0(2Edefault_policy/default_policy/layer_4/kernel/Adam/Initializer/zeros:0
�
5default_policy/default_policy/layer_4/kernel/Adam_1:0:default_policy/default_policy/layer_4/kernel/Adam_1/AssignIdefault_policy/default_policy/layer_4/kernel/Adam_1/Read/ReadVariableOp:0(2Gdefault_policy/default_policy/layer_4/kernel/Adam_1/Initializer/zeros:0
�
1default_policy/default_policy/layer_4/bias/Adam:06default_policy/default_policy/layer_4/bias/Adam/AssignEdefault_policy/default_policy/layer_4/bias/Adam/Read/ReadVariableOp:0(2Cdefault_policy/default_policy/layer_4/bias/Adam/Initializer/zeros:0
�
3default_policy/default_policy/layer_4/bias/Adam_1:08default_policy/default_policy/layer_4/bias/Adam_1/AssignGdefault_policy/default_policy/layer_4/bias/Adam_1/Read/ReadVariableOp:0(2Edefault_policy/default_policy/layer_4/bias/Adam_1/Initializer/zeros:0
�
<default_policy/default_policy/layer_val_hidden/kernel/Adam:0Adefault_policy/default_policy/layer_val_hidden/kernel/Adam/AssignPdefault_policy/default_policy/layer_val_hidden/kernel/Adam/Read/ReadVariableOp:0(2Ndefault_policy/default_policy/layer_val_hidden/kernel/Adam/Initializer/zeros:0
�
>default_policy/default_policy/layer_val_hidden/kernel/Adam_1:0Cdefault_policy/default_policy/layer_val_hidden/kernel/Adam_1/AssignRdefault_policy/default_policy/layer_val_hidden/kernel/Adam_1/Read/ReadVariableOp:0(2Pdefault_policy/default_policy/layer_val_hidden/kernel/Adam_1/Initializer/zeros:0
�
:default_policy/default_policy/layer_val_hidden/bias/Adam:0?default_policy/default_policy/layer_val_hidden/bias/Adam/AssignNdefault_policy/default_policy/layer_val_hidden/bias/Adam/Read/ReadVariableOp:0(2Ldefault_policy/default_policy/layer_val_hidden/bias/Adam/Initializer/zeros:0
�
<default_policy/default_policy/layer_val_hidden/bias/Adam_1:0Adefault_policy/default_policy/layer_val_hidden/bias/Adam_1/AssignPdefault_policy/default_policy/layer_val_hidden/bias/Adam_1/Read/ReadVariableOp:0(2Ndefault_policy/default_policy/layer_val_hidden/bias/Adam_1/Initializer/zeros:0
�
6default_policy/default_policy/action_out/kernel/Adam:0;default_policy/default_policy/action_out/kernel/Adam/AssignJdefault_policy/default_policy/action_out/kernel/Adam/Read/ReadVariableOp:0(2Hdefault_policy/default_policy/action_out/kernel/Adam/Initializer/zeros:0
�
8default_policy/default_policy/action_out/kernel/Adam_1:0=default_policy/default_policy/action_out/kernel/Adam_1/AssignLdefault_policy/default_policy/action_out/kernel/Adam_1/Read/ReadVariableOp:0(2Jdefault_policy/default_policy/action_out/kernel/Adam_1/Initializer/zeros:0
�
4default_policy/default_policy/action_out/bias/Adam:09default_policy/default_policy/action_out/bias/Adam/AssignHdefault_policy/default_policy/action_out/bias/Adam/Read/ReadVariableOp:0(2Fdefault_policy/default_policy/action_out/bias/Adam/Initializer/zeros:0
�
6default_policy/default_policy/action_out/bias/Adam_1:0;default_policy/default_policy/action_out/bias/Adam_1/AssignJdefault_policy/default_policy/action_out/bias/Adam_1/Read/ReadVariableOp:0(2Hdefault_policy/default_policy/action_out/bias/Adam_1/Initializer/zeros:0
�
5default_policy/default_policy/value_out/kernel/Adam:0:default_policy/default_policy/value_out/kernel/Adam/AssignIdefault_policy/default_policy/value_out/kernel/Adam/Read/ReadVariableOp:0(2Gdefault_policy/default_policy/value_out/kernel/Adam/Initializer/zeros:0
�
7default_policy/default_policy/value_out/kernel/Adam_1:0<default_policy/default_policy/value_out/kernel/Adam_1/AssignKdefault_policy/default_policy/value_out/kernel/Adam_1/Read/ReadVariableOp:0(2Idefault_policy/default_policy/value_out/kernel/Adam_1/Initializer/zeros:0
�
3default_policy/default_policy/value_out/bias/Adam:08default_policy/default_policy/value_out/bias/Adam/AssignGdefault_policy/default_policy/value_out/bias/Adam/Read/ReadVariableOp:0(2Edefault_policy/default_policy/value_out/bias/Adam/Initializer/zeros:0
�
5default_policy/default_policy/value_out/bias/Adam_1:0:default_policy/default_policy/value_out/bias/Adam_1/AssignIdefault_policy/default_policy/value_out/bias/Adam_1/Read/ReadVariableOp:0(2Gdefault_policy/default_policy/value_out/bias/Adam_1/Initializer/zeros:0*�
serving_default�
1
is_training"
default_policy/is_training:0
 
<
observations,
default_policy/obs:0����������	
+
timestep
default_policy/timestep:0	 W
action_dist_inputsA
)default_policy/model/action_out/BiasAdd:0����������?
action_logp0
default_policy/cond_2/Merge:0���������6
action_prob'
default_policy/Exp:0���������=
	actions_00
default_policy/cond_1/Merge:0	���������7
vf_preds+
default_policy/Reshape:0���������tensorflow/serving/predict