??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
-
Tanh
x"T
y"T"
Ttype:

2
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718՚
?
rnn/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*%
shared_namernn/lstm_cell/kernel
~
(rnn/lstm_cell/kernel/Read/ReadVariableOpReadVariableOprnn/lstm_cell/kernel*
_output_shapes
:	?*
dtype0
?
rnn/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*/
shared_name rnn/lstm_cell/recurrent_kernel
?
2rnn/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOprnn/lstm_cell/recurrent_kernel*
_output_shapes
:	 ?*
dtype0
}
rnn/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_namernn/lstm_cell/bias
v
&rnn/lstm_cell/bias/Read/ReadVariableOpReadVariableOprnn/lstm_cell/bias*
_output_shapes	
:?*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

: *
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/rnn/lstm_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_nameAdam/rnn/lstm_cell/kernel/m
?
/Adam/rnn/lstm_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/rnn/lstm_cell/kernel/m*
_output_shapes
:	?*
dtype0
?
%Adam/rnn/lstm_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*6
shared_name'%Adam/rnn/lstm_cell/recurrent_kernel/m
?
9Adam/rnn/lstm_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp%Adam/rnn/lstm_cell/recurrent_kernel/m*
_output_shapes
:	 ?*
dtype0
?
Adam/rnn/lstm_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameAdam/rnn/lstm_cell/bias/m
?
-Adam/rnn/lstm_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/rnn/lstm_cell/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

: *
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
?
Adam/rnn/lstm_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_nameAdam/rnn/lstm_cell/kernel/v
?
/Adam/rnn/lstm_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/rnn/lstm_cell/kernel/v*
_output_shapes
:	?*
dtype0
?
%Adam/rnn/lstm_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*6
shared_name'%Adam/rnn/lstm_cell/recurrent_kernel/v
?
9Adam/rnn/lstm_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp%Adam/rnn/lstm_cell/recurrent_kernel/v*
_output_shapes
:	 ?*
dtype0
?
Adam/rnn/lstm_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameAdam/rnn/lstm_cell/bias/v
?
-Adam/rnn/lstm_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/rnn/lstm_cell/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

: *
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?!
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?!
value?!B?! B?!
?
	lstm_cell
lstm_rnn
	dense
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api
	
signatures
?


state_size

kernel
recurrent_kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
l
cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
?
iter

beta_1

beta_2
	 decay
!learning_ratemBmCmDmEmFvGvHvIvJvK
#
0
1
2
3
4
#
0
1
2
3
4
 
?
"metrics
#layer_regularization_losses
$layer_metrics
trainable_variables

%layers
	variables
regularization_losses
&non_trainable_variables
 
 
US
VARIABLE_VALUErnn/lstm_cell/kernel+lstm_cell/kernel/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUErnn/lstm_cell/recurrent_kernel5lstm_cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUErnn/lstm_cell/bias)lstm_cell/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
2

0
1
2
 
?
'metrics
(layer_regularization_losses
)layer_metrics
trainable_variables

*layers
	variables
regularization_losses
+non_trainable_variables
 

0
1
2

0
1
2
 
?
,metrics

-states
.layer_regularization_losses
/layer_metrics
trainable_variables

0layers
	variables
regularization_losses
1non_trainable_variables
IG
VARIABLE_VALUEdense/kernel'dense/kernel/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUE
dense/bias%dense/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
2metrics
3layer_regularization_losses
4layer_metrics
trainable_variables

5layers
	variables
regularization_losses
6non_trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

70
81
 
 

0
1
2
 
 
 
 
 
 
 
 
 
 

0
 
 
 
 
 
 
4
	9total
	:count
;	variables
<	keras_api
D
	=total
	>count
?
_fn_kwargs
@	variables
A	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

90
:1

;	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

=0
>1

@	variables
xv
VARIABLE_VALUEAdam/rnn/lstm_cell/kernel/mGlstm_cell/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/rnn/lstm_cell/recurrent_kernel/mQlstm_cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/rnn/lstm_cell/bias/mElstm_cell/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense/kernel/mCdense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEAdam/dense/bias/mAdense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/rnn/lstm_cell/kernel/vGlstm_cell/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/rnn/lstm_cell/recurrent_kernel/vQlstm_cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/rnn/lstm_cell/bias/vElstm_cell/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense/kernel/vCdense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEAdam/dense/bias/vAdense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_1Placeholder*+
_output_shapes
:?????????<*
dtype0* 
shape:?????????<
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1rnn/lstm_cell/kernelrnn/lstm_cell/recurrent_kernelrnn/lstm_cell/biasdense/kernel
dense/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_23046
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(rnn/lstm_cell/kernel/Read/ReadVariableOp2rnn/lstm_cell/recurrent_kernel/Read/ReadVariableOp&rnn/lstm_cell/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp/Adam/rnn/lstm_cell/kernel/m/Read/ReadVariableOp9Adam/rnn/lstm_cell/recurrent_kernel/m/Read/ReadVariableOp-Adam/rnn/lstm_cell/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp/Adam/rnn/lstm_cell/kernel/v/Read/ReadVariableOp9Adam/rnn/lstm_cell/recurrent_kernel/v/Read/ReadVariableOp-Adam/rnn/lstm_cell/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOpConst*%
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_24820
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamernn/lstm_cell/kernelrnn/lstm_cell/recurrent_kernelrnn/lstm_cell/biasdense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/rnn/lstm_cell/kernel/m%Adam/rnn/lstm_cell/recurrent_kernel/mAdam/rnn/lstm_cell/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/rnn/lstm_cell/kernel/v%Adam/rnn/lstm_cell/recurrent_kernel/vAdam/rnn/lstm_cell/bias/vAdam/dense/kernel/vAdam/dense/bias/v*$
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_24902??
?F
?
>__inference_rnn_layer_call_and_return_conditional_losses_22576

inputs"
lstm_cell_22493:	?"
lstm_cell_22495:	 ?
lstm_cell_22497:	?
identity

identity_1

identity_2??!lstm_cell/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_22493lstm_cell_22495lstm_cell_22497*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_218732#
!lstm_cell/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_22493lstm_cell_22495lstm_cell_22497*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_22506*
condR
while_cond_22505*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????< 2
transpose_1?
IdentityIdentitystrided_slice_3:output:0"^lstm_cell/StatefulPartitionedCall^while*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identitywhile:output:4"^lstm_cell/StatefulPartitionedCall^while*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identitywhile:output:5"^lstm_cell/StatefulPartitionedCall^while*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????<: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
?
)__inference_lstm_cell_layer_call_fn_23893

inputs
states_0
states_1
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_226332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_24006

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?	
?
rnn_while_cond_23540$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2
rnn_while_placeholder_3&
"rnn_while_less_rnn_strided_slice_1;
7rnn_while_rnn_while_cond_23540___redundant_placeholder0;
7rnn_while_rnn_while_cond_23540___redundant_placeholder1;
7rnn_while_rnn_while_cond_23540___redundant_placeholder2;
7rnn_while_rnn_while_cond_23540___redundant_placeholder3
rnn_while_identity
?
rnn/while/LessLessrnn_while_placeholder"rnn_while_less_rnn_strided_slice_1*
T0*
_output_shapes
: 2
rnn/while/Lessi
rnn/while/IdentityIdentityrnn/while/Less:z:0*
T0
*
_output_shapes
: 2
rnn/while/Identity"1
rnn_while_identityrnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?F
?	
rnn_while_body_23725$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2
rnn_while_placeholder_3#
rnn_while_rnn_strided_slice_1_0_
[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0G
4rnn_while_lstm_cell_matmul_readvariableop_resource_0:	?I
6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0:	 ?D
5rnn_while_lstm_cell_biasadd_readvariableop_resource_0:	?
rnn_while_identity
rnn_while_identity_1
rnn_while_identity_2
rnn_while_identity_3
rnn_while_identity_4
rnn_while_identity_5!
rnn_while_rnn_strided_slice_1]
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensorE
2rnn_while_lstm_cell_matmul_readvariableop_resource:	?G
4rnn_while_lstm_cell_matmul_1_readvariableop_resource:	 ?B
3rnn_while_lstm_cell_biasadd_readvariableop_resource:	???*rnn/while/lstm_cell/BiasAdd/ReadVariableOp?)rnn/while/lstm_cell/MatMul/ReadVariableOp?+rnn/while/lstm_cell/MatMul_1/ReadVariableOp?
;rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2=
;rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape?
-rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0rnn_while_placeholderDrnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02/
-rnn/while/TensorArrayV2Read/TensorListGetItem?
)rnn/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp4rnn_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)rnn/while/lstm_cell/MatMul/ReadVariableOp?
rnn/while/lstm_cell/MatMulMatMul4rnn/while/TensorArrayV2Read/TensorListGetItem:item:01rnn/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/while/lstm_cell/MatMul?
+rnn/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+rnn/while/lstm_cell/MatMul_1/ReadVariableOp?
rnn/while/lstm_cell/MatMul_1MatMulrnn_while_placeholder_23rnn/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/while/lstm_cell/MatMul_1?
rnn/while/lstm_cell/addAddV2$rnn/while/lstm_cell/MatMul:product:0&rnn/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
rnn/while/lstm_cell/add?
*rnn/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp5rnn_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*rnn/while/lstm_cell/BiasAdd/ReadVariableOp?
rnn/while/lstm_cell/BiasAddBiasAddrnn/while/lstm_cell/add:z:02rnn/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/while/lstm_cell/BiasAdd?
#rnn/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#rnn/while/lstm_cell/split/split_dim?
rnn/while/lstm_cell/splitSplit,rnn/while/lstm_cell/split/split_dim:output:0$rnn/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
rnn/while/lstm_cell/split?
rnn/while/lstm_cell/SigmoidSigmoid"rnn/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/Sigmoid?
rnn/while/lstm_cell/Sigmoid_1Sigmoid"rnn/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/Sigmoid_1?
rnn/while/lstm_cell/mulMul!rnn/while/lstm_cell/Sigmoid_1:y:0rnn_while_placeholder_3*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/mul?
rnn/while/lstm_cell/TanhTanh"rnn/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/Tanh?
rnn/while/lstm_cell/mul_1Mulrnn/while/lstm_cell/Sigmoid:y:0rnn/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/mul_1?
rnn/while/lstm_cell/add_1AddV2rnn/while/lstm_cell/mul:z:0rnn/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/add_1?
rnn/while/lstm_cell/Sigmoid_2Sigmoid"rnn/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/Sigmoid_2?
rnn/while/lstm_cell/Tanh_1Tanhrnn/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/Tanh_1?
rnn/while/lstm_cell/mul_2Mul!rnn/while/lstm_cell/Sigmoid_2:y:0rnn/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/mul_2?
.rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_while_placeholder_1rnn_while_placeholderrnn/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype020
.rnn/while/TensorArrayV2Write/TensorListSetItemd
rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
rnn/while/add/yy
rnn/while/addAddV2rnn_while_placeholderrnn/while/add/y:output:0*
T0*
_output_shapes
: 2
rnn/while/addh
rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
rnn/while/add_1/y?
rnn/while/add_1AddV2 rnn_while_rnn_while_loop_counterrnn/while/add_1/y:output:0*
T0*
_output_shapes
: 2
rnn/while/add_1?
rnn/while/IdentityIdentityrnn/while/add_1:z:0+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity?
rnn/while/Identity_1Identity&rnn_while_rnn_while_maximum_iterations+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity_1?
rnn/while/Identity_2Identityrnn/while/add:z:0+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity_2?
rnn/while/Identity_3Identity>rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity_3?
rnn/while/Identity_4Identityrnn/while/lstm_cell/mul_2:z:0+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
rnn/while/Identity_4?
rnn/while/Identity_5Identityrnn/while/lstm_cell/add_1:z:0+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
rnn/while/Identity_5"1
rnn_while_identityrnn/while/Identity:output:0"5
rnn_while_identity_1rnn/while/Identity_1:output:0"5
rnn_while_identity_2rnn/while/Identity_2:output:0"5
rnn_while_identity_3rnn/while/Identity_3:output:0"5
rnn_while_identity_4rnn/while/Identity_4:output:0"5
rnn_while_identity_5rnn/while/Identity_5:output:0"l
3rnn_while_lstm_cell_biasadd_readvariableop_resource5rnn_while_lstm_cell_biasadd_readvariableop_resource_0"n
4rnn_while_lstm_cell_matmul_1_readvariableop_resource6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0"j
2rnn_while_lstm_cell_matmul_readvariableop_resource4rnn_while_lstm_cell_matmul_readvariableop_resource_0"@
rnn_while_rnn_strided_slice_1rnn_while_rnn_strided_slice_1_0"?
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*rnn/while/lstm_cell/BiasAdd/ReadVariableOp*rnn/while/lstm_cell/BiasAdd/ReadVariableOp2V
)rnn/while/lstm_cell/MatMul/ReadVariableOp)rnn/while/lstm_cell/MatMul/ReadVariableOp2Z
+rnn/while/lstm_cell/MatMul_1/ReadVariableOp+rnn/while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_23942

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?
?
#__inference_rnn_layer_call_fn_24053
inputs_0
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_rnn_layer_call_and_return_conditional_losses_219572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_22505
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_22505___redundant_placeholder03
/while_while_cond_22505___redundant_placeholder13
/while_while_cond_22505___redundant_placeholder23
/while_while_cond_22505___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?F
?
>__inference_rnn_layer_call_and_return_conditional_losses_22875

inputs"
lstm_cell_22792:	?"
lstm_cell_22794:	 ?
lstm_cell_22796:	?
identity

identity_1

identity_2??!lstm_cell/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_22792lstm_cell_22794lstm_cell_22796*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_220242#
!lstm_cell/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_22792lstm_cell_22794lstm_cell_22796*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_22805*
condR
while_cond_22804*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????< 2
transpose_1?
IdentityIdentitystrided_slice_3:output:0"^lstm_cell/StatefulPartitionedCall^while*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identitywhile:output:4"^lstm_cell/StatefulPartitionedCall^while*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identitywhile:output:5"^lstm_cell/StatefulPartitionedCall^while*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????<: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?%
?
while_body_22506
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_lstm_cell_22530_0:	?*
while_lstm_cell_22532_0:	 ?&
while_lstm_cell_22534_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_lstm_cell_22530:	?(
while_lstm_cell_22532:	 ?$
while_lstm_cell_22534:	???'while/lstm_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_22530_0while_lstm_cell_22532_0while_lstm_cell_22534_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_218732)
'while/lstm_cell/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1(^while/lstm_cell/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2(^while/lstm_cell/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_22530while_lstm_cell_22530_0"0
while_lstm_cell_22532while_lstm_cell_22532_0"0
while_lstm_cell_22534while_lstm_cell_22534_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?	
?
@__inference_dense_layer_call_and_return_conditional_losses_24725

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_21873

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates
?
?
D__inference_feed_back_layer_call_and_return_conditional_losses_22935

inputs
	rnn_22908:	?
	rnn_22910:	 ?
	rnn_22912:	?
dense_22917: 
dense_22919:
identity??dense/StatefulPartitionedCall?dense/StatefulPartitionedCall_1?!lstm_cell/StatefulPartitionedCall?rnn/StatefulPartitionedCall?
rnn/StatefulPartitionedCallStatefulPartitionedCallinputs	rnn_22908	rnn_22910	rnn_22912*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_rnn_layer_call_and_return_conditional_losses_228752
rnn/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0dense_22917dense_22919*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_225962
dense/StatefulPartitionedCall?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0$rnn/StatefulPartitionedCall:output:1$rnn/StatefulPartitionedCall:output:2	rnn_22908	rnn_22910	rnn_22912*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_227232#
!lstm_cell/StatefulPartitionedCall?
dense/StatefulPartitionedCall_1StatefulPartitionedCall*lstm_cell/StatefulPartitionedCall:output:0dense_22917dense_22919*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_225962!
dense/StatefulPartitionedCall_1?
stackPack&dense/StatefulPartitionedCall:output:0(dense/StatefulPartitionedCall_1:output:0*
N*
T0*+
_output_shapes
:?????????2
stacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposestack:output:0transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transpose?
IdentityIdentitytranspose:y:0^dense/StatefulPartitionedCall ^dense/StatefulPartitionedCall_1"^lstm_cell/StatefulPartitionedCall^rnn/StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????<: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense/StatefulPartitionedCall_1dense/StatefulPartitionedCall_12F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_23046
input_1
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
	unknown_2: 
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_217982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????<: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????<
!
_user_specified_name	input_1
?
?
while_cond_22804
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_22804___redundant_placeholder03
/while_while_cond_22804___redundant_placeholder13
/while_while_cond_22804___redundant_placeholder23
/while_while_cond_22804___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?	
?
@__inference_dense_layer_call_and_return_conditional_losses_22596

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
D__inference_feed_back_layer_call_and_return_conditional_losses_23658
input_1?
,rnn_lstm_cell_matmul_readvariableop_resource:	?A
.rnn_lstm_cell_matmul_1_readvariableop_resource:	 ?<
-rnn_lstm_cell_biasadd_readvariableop_resource:	?6
$dense_matmul_readvariableop_resource: 3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/BiasAdd_1/ReadVariableOp?dense/MatMul/ReadVariableOp?dense/MatMul_1/ReadVariableOp? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?$rnn/lstm_cell/BiasAdd/ReadVariableOp?#rnn/lstm_cell/MatMul/ReadVariableOp?%rnn/lstm_cell/MatMul_1/ReadVariableOp?	rnn/whileM
	rnn/ShapeShapeinput_1*
T0*
_output_shapes
:2
	rnn/Shape|
rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice/stack?
rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice/stack_1?
rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice/stack_2?
rnn/strided_sliceStridedSlicernn/Shape:output:0 rnn/strided_slice/stack:output:0"rnn/strided_slice/stack_1:output:0"rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
rnn/strided_sliced
rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
rnn/zeros/mul/y|
rnn/zeros/mulMulrnn/strided_slice:output:0rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
rnn/zeros/mulg
rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
rnn/zeros/Less/yw
rnn/zeros/LessLessrnn/zeros/mul:z:0rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
rnn/zeros/Lessj
rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
rnn/zeros/packed/1?
rnn/zeros/packedPackrnn/strided_slice:output:0rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
rnn/zeros/packedg
rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rnn/zeros/Const?
	rnn/zerosFillrnn/zeros/packed:output:0rnn/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
	rnn/zerosh
rnn/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
rnn/zeros_1/mul/y?
rnn/zeros_1/mulMulrnn/strided_slice:output:0rnn/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
rnn/zeros_1/mulk
rnn/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
rnn/zeros_1/Less/y
rnn/zeros_1/LessLessrnn/zeros_1/mul:z:0rnn/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
rnn/zeros_1/Lessn
rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
rnn/zeros_1/packed/1?
rnn/zeros_1/packedPackrnn/strided_slice:output:0rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
rnn/zeros_1/packedk
rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rnn/zeros_1/Const?
rnn/zeros_1Fillrnn/zeros_1/packed:output:0rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
rnn/zeros_1}
rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
rnn/transpose/perm?
rnn/transpose	Transposeinput_1rnn/transpose/perm:output:0*
T0*+
_output_shapes
:<?????????2
rnn/transpose[
rnn/Shape_1Shapernn/transpose:y:0*
T0*
_output_shapes
:2
rnn/Shape_1?
rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice_1/stack?
rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_1/stack_1?
rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_1/stack_2?
rnn/strided_slice_1StridedSlicernn/Shape_1:output:0"rnn/strided_slice_1/stack:output:0$rnn/strided_slice_1/stack_1:output:0$rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
rnn/strided_slice_1?
rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
rnn/TensorArrayV2/element_shape?
rnn/TensorArrayV2TensorListReserve(rnn/TensorArrayV2/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
rnn/TensorArrayV2?
9rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2;
9rnn/TensorArrayUnstack/TensorListFromTensor/element_shape?
+rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn/transpose:y:0Brnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02-
+rnn/TensorArrayUnstack/TensorListFromTensor?
rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice_2/stack?
rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_2/stack_1?
rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_2/stack_2?
rnn/strided_slice_2StridedSlicernn/transpose:y:0"rnn/strided_slice_2/stack:output:0$rnn/strided_slice_2/stack_1:output:0$rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
rnn/strided_slice_2?
#rnn/lstm_cell/MatMul/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#rnn/lstm_cell/MatMul/ReadVariableOp?
rnn/lstm_cell/MatMulMatMulrnn/strided_slice_2:output:0+rnn/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/lstm_cell/MatMul?
%rnn/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%rnn/lstm_cell/MatMul_1/ReadVariableOp?
rnn/lstm_cell/MatMul_1MatMulrnn/zeros:output:0-rnn/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/lstm_cell/MatMul_1?
rnn/lstm_cell/addAddV2rnn/lstm_cell/MatMul:product:0 rnn/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
rnn/lstm_cell/add?
$rnn/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$rnn/lstm_cell/BiasAdd/ReadVariableOp?
rnn/lstm_cell/BiasAddBiasAddrnn/lstm_cell/add:z:0,rnn/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/lstm_cell/BiasAdd?
rnn/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
rnn/lstm_cell/split/split_dim?
rnn/lstm_cell/splitSplit&rnn/lstm_cell/split/split_dim:output:0rnn/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
rnn/lstm_cell/split?
rnn/lstm_cell/SigmoidSigmoidrnn/lstm_cell/split:output:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/Sigmoid?
rnn/lstm_cell/Sigmoid_1Sigmoidrnn/lstm_cell/split:output:1*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/Sigmoid_1?
rnn/lstm_cell/mulMulrnn/lstm_cell/Sigmoid_1:y:0rnn/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/mul?
rnn/lstm_cell/TanhTanhrnn/lstm_cell/split:output:2*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/Tanh?
rnn/lstm_cell/mul_1Mulrnn/lstm_cell/Sigmoid:y:0rnn/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/mul_1?
rnn/lstm_cell/add_1AddV2rnn/lstm_cell/mul:z:0rnn/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/add_1?
rnn/lstm_cell/Sigmoid_2Sigmoidrnn/lstm_cell/split:output:3*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/Sigmoid_2
rnn/lstm_cell/Tanh_1Tanhrnn/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/Tanh_1?
rnn/lstm_cell/mul_2Mulrnn/lstm_cell/Sigmoid_2:y:0rnn/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/mul_2?
!rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2#
!rnn/TensorArrayV2_1/element_shape?
rnn/TensorArrayV2_1TensorListReserve*rnn/TensorArrayV2_1/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
rnn/TensorArrayV2_1V
rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

rnn/time?
rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
rnn/while/maximum_iterationsr
rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
rnn/while/loop_counter?
	rnn/whileWhilernn/while/loop_counter:output:0%rnn/while/maximum_iterations:output:0rnn/time:output:0rnn/TensorArrayV2_1:handle:0rnn/zeros:output:0rnn/zeros_1:output:0rnn/strided_slice_1:output:0;rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0,rnn_lstm_cell_matmul_readvariableop_resource.rnn_lstm_cell_matmul_1_readvariableop_resource-rnn_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
* 
bodyR
rnn_while_body_23541* 
condR
rnn_while_cond_23540*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
	rnn/while?
4rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    26
4rnn/TensorArrayV2Stack/TensorListStack/element_shape?
&rnn/TensorArrayV2Stack/TensorListStackTensorListStackrnn/while:output:3=rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<????????? *
element_dtype02(
&rnn/TensorArrayV2Stack/TensorListStack?
rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
rnn/strided_slice_3/stack?
rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice_3/stack_1?
rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_3/stack_2?
rnn/strided_slice_3StridedSlice/rnn/TensorArrayV2Stack/TensorListStack:tensor:0"rnn/strided_slice_3/stack:output:0$rnn/strided_slice_3/stack_1:output:0$rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
rnn/strided_slice_3?
rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
rnn/transpose_1/perm?
rnn/transpose_1	Transpose/rnn/TensorArrayV2Stack/TensorListStack:tensor:0rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????< 2
rnn/transpose_1?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulrnn/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/BiasAdd?
lstm_cell/MatMul/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
lstm_cell/MatMul/ReadVariableOp?
lstm_cell/MatMulMatMuldense/BiasAdd:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul?
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm_cell/MatMul_1/ReadVariableOp?
lstm_cell/MatMul_1MatMulrnn/while:output:4)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_1?
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add?
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/BiasAdd/ReadVariableOp?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAddx
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell/split}
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid?
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid_1?
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0rnn/while:output:5*
T0*'
_output_shapes
:????????? 2
lstm_cell/mult
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell/Tanh?
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_1?
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/add_1?
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid_2s
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/Tanh_1?
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_2?
dense/MatMul_1/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense/MatMul_1/ReadVariableOp?
dense/MatMul_1MatMullstm_cell/mul_2:z:0%dense/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/MatMul_1?
dense/BiasAdd_1/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense/BiasAdd_1/ReadVariableOp?
dense/BiasAdd_1BiasAdddense/MatMul_1:product:0&dense/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/BiasAdd_1?
stackPackdense/BiasAdd:output:0dense/BiasAdd_1:output:0*
N*
T0*+
_output_shapes
:?????????2
stacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposestack:output:0transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transpose?
IdentityIdentitytranspose:y:0^dense/BiasAdd/ReadVariableOp^dense/BiasAdd_1/ReadVariableOp^dense/MatMul/ReadVariableOp^dense/MatMul_1/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp%^rnn/lstm_cell/BiasAdd/ReadVariableOp$^rnn/lstm_cell/MatMul/ReadVariableOp&^rnn/lstm_cell/MatMul_1/ReadVariableOp
^rnn/while*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????<: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/BiasAdd_1/ReadVariableOpdense/BiasAdd_1/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2>
dense/MatMul_1/ReadVariableOpdense/MatMul_1/ReadVariableOp2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2L
$rnn/lstm_cell/BiasAdd/ReadVariableOp$rnn/lstm_cell/BiasAdd/ReadVariableOp2J
#rnn/lstm_cell/MatMul/ReadVariableOp#rnn/lstm_cell/MatMul/ReadVariableOp2N
%rnn/lstm_cell/MatMul_1/ReadVariableOp%rnn/lstm_cell/MatMul_1/ReadVariableOp2
	rnn/while	rnn/while:T P
+
_output_shapes
:?????????<
!
_user_specified_name	input_1
?
?
#__inference_rnn_layer_call_fn_24098

inputs
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_rnn_layer_call_and_return_conditional_losses_228752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????<: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
?
D__inference_feed_back_layer_call_and_return_conditional_losses_22647

inputs
	rnn_22577:	?
	rnn_22579:	 ?
	rnn_22581:	?
dense_22597: 
dense_22599:
identity??dense/StatefulPartitionedCall?dense/StatefulPartitionedCall_1?!lstm_cell/StatefulPartitionedCall?rnn/StatefulPartitionedCall?
rnn/StatefulPartitionedCallStatefulPartitionedCallinputs	rnn_22577	rnn_22579	rnn_22581*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_rnn_layer_call_and_return_conditional_losses_225762
rnn/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0dense_22597dense_22599*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_225962
dense/StatefulPartitionedCall?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0$rnn/StatefulPartitionedCall:output:1$rnn/StatefulPartitionedCall:output:2	rnn_22577	rnn_22579	rnn_22581*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_226332#
!lstm_cell/StatefulPartitionedCall?
dense/StatefulPartitionedCall_1StatefulPartitionedCall*lstm_cell/StatefulPartitionedCall:output:0dense_22597dense_22599*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_225962!
dense/StatefulPartitionedCall_1?
stackPack&dense/StatefulPartitionedCall:output:0(dense/StatefulPartitionedCall_1:output:0*
N*
T0*+
_output_shapes
:?????????2
stacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposestack:output:0transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transpose?
IdentityIdentitytranspose:y:0^dense/StatefulPartitionedCall ^dense/StatefulPartitionedCall_1"^lstm_cell/StatefulPartitionedCall^rnn/StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????<: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense/StatefulPartitionedCall_1dense/StatefulPartitionedCall_12F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_23974

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?\
?
>__inference_rnn_layer_call_and_return_conditional_losses_24706

inputs;
(lstm_cell_matmul_readvariableop_resource:	?=
*lstm_cell_matmul_1_readvariableop_resource:	 ?8
)lstm_cell_biasadd_readvariableop_resource:	?
identity

identity_1

identity_2?? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
lstm_cell/MatMul/ReadVariableOp?
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul?
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm_cell/MatMul_1/ReadVariableOp?
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_1?
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add?
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/BiasAdd/ReadVariableOp?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAddx
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell/split}
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid?
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid_1?
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mult
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell/Tanh?
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_1?
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/add_1?
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid_2s
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/Tanh_1?
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_24621*
condR
while_cond_24620*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????< 2
transpose_1?
IdentityIdentitystrided_slice_3:output:0!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identitywhile:output:4!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identitywhile:output:5!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????<: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
??
?
 __inference__wrapped_model_21798
input_1I
6feed_back_rnn_lstm_cell_matmul_readvariableop_resource:	?K
8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource:	 ?F
7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource:	?@
.feed_back_dense_matmul_readvariableop_resource: =
/feed_back_dense_biasadd_readvariableop_resource:
identity??&feed_back/dense/BiasAdd/ReadVariableOp?(feed_back/dense/BiasAdd_1/ReadVariableOp?%feed_back/dense/MatMul/ReadVariableOp?'feed_back/dense/MatMul_1/ReadVariableOp?*feed_back/lstm_cell/BiasAdd/ReadVariableOp?)feed_back/lstm_cell/MatMul/ReadVariableOp?+feed_back/lstm_cell/MatMul_1/ReadVariableOp?.feed_back/rnn/lstm_cell/BiasAdd/ReadVariableOp?-feed_back/rnn/lstm_cell/MatMul/ReadVariableOp?/feed_back/rnn/lstm_cell/MatMul_1/ReadVariableOp?feed_back/rnn/whilea
feed_back/rnn/ShapeShapeinput_1*
T0*
_output_shapes
:2
feed_back/rnn/Shape?
!feed_back/rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!feed_back/rnn/strided_slice/stack?
#feed_back/rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#feed_back/rnn/strided_slice/stack_1?
#feed_back/rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#feed_back/rnn/strided_slice/stack_2?
feed_back/rnn/strided_sliceStridedSlicefeed_back/rnn/Shape:output:0*feed_back/rnn/strided_slice/stack:output:0,feed_back/rnn/strided_slice/stack_1:output:0,feed_back/rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
feed_back/rnn/strided_slicex
feed_back/rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
feed_back/rnn/zeros/mul/y?
feed_back/rnn/zeros/mulMul$feed_back/rnn/strided_slice:output:0"feed_back/rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
feed_back/rnn/zeros/mul{
feed_back/rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
feed_back/rnn/zeros/Less/y?
feed_back/rnn/zeros/LessLessfeed_back/rnn/zeros/mul:z:0#feed_back/rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
feed_back/rnn/zeros/Less~
feed_back/rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
feed_back/rnn/zeros/packed/1?
feed_back/rnn/zeros/packedPack$feed_back/rnn/strided_slice:output:0%feed_back/rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
feed_back/rnn/zeros/packed{
feed_back/rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
feed_back/rnn/zeros/Const?
feed_back/rnn/zerosFill#feed_back/rnn/zeros/packed:output:0"feed_back/rnn/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
feed_back/rnn/zeros|
feed_back/rnn/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
feed_back/rnn/zeros_1/mul/y?
feed_back/rnn/zeros_1/mulMul$feed_back/rnn/strided_slice:output:0$feed_back/rnn/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
feed_back/rnn/zeros_1/mul
feed_back/rnn/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
feed_back/rnn/zeros_1/Less/y?
feed_back/rnn/zeros_1/LessLessfeed_back/rnn/zeros_1/mul:z:0%feed_back/rnn/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
feed_back/rnn/zeros_1/Less?
feed_back/rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2 
feed_back/rnn/zeros_1/packed/1?
feed_back/rnn/zeros_1/packedPack$feed_back/rnn/strided_slice:output:0'feed_back/rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
feed_back/rnn/zeros_1/packed
feed_back/rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
feed_back/rnn/zeros_1/Const?
feed_back/rnn/zeros_1Fill%feed_back/rnn/zeros_1/packed:output:0$feed_back/rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
feed_back/rnn/zeros_1?
feed_back/rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
feed_back/rnn/transpose/perm?
feed_back/rnn/transpose	Transposeinput_1%feed_back/rnn/transpose/perm:output:0*
T0*+
_output_shapes
:<?????????2
feed_back/rnn/transposey
feed_back/rnn/Shape_1Shapefeed_back/rnn/transpose:y:0*
T0*
_output_shapes
:2
feed_back/rnn/Shape_1?
#feed_back/rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#feed_back/rnn/strided_slice_1/stack?
%feed_back/rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%feed_back/rnn/strided_slice_1/stack_1?
%feed_back/rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%feed_back/rnn/strided_slice_1/stack_2?
feed_back/rnn/strided_slice_1StridedSlicefeed_back/rnn/Shape_1:output:0,feed_back/rnn/strided_slice_1/stack:output:0.feed_back/rnn/strided_slice_1/stack_1:output:0.feed_back/rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
feed_back/rnn/strided_slice_1?
)feed_back/rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2+
)feed_back/rnn/TensorArrayV2/element_shape?
feed_back/rnn/TensorArrayV2TensorListReserve2feed_back/rnn/TensorArrayV2/element_shape:output:0&feed_back/rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
feed_back/rnn/TensorArrayV2?
Cfeed_back/rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2E
Cfeed_back/rnn/TensorArrayUnstack/TensorListFromTensor/element_shape?
5feed_back/rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorfeed_back/rnn/transpose:y:0Lfeed_back/rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type027
5feed_back/rnn/TensorArrayUnstack/TensorListFromTensor?
#feed_back/rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#feed_back/rnn/strided_slice_2/stack?
%feed_back/rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%feed_back/rnn/strided_slice_2/stack_1?
%feed_back/rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%feed_back/rnn/strided_slice_2/stack_2?
feed_back/rnn/strided_slice_2StridedSlicefeed_back/rnn/transpose:y:0,feed_back/rnn/strided_slice_2/stack:output:0.feed_back/rnn/strided_slice_2/stack_1:output:0.feed_back/rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
feed_back/rnn/strided_slice_2?
-feed_back/rnn/lstm_cell/MatMul/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02/
-feed_back/rnn/lstm_cell/MatMul/ReadVariableOp?
feed_back/rnn/lstm_cell/MatMulMatMul&feed_back/rnn/strided_slice_2:output:05feed_back/rnn/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
feed_back/rnn/lstm_cell/MatMul?
/feed_back/rnn/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype021
/feed_back/rnn/lstm_cell/MatMul_1/ReadVariableOp?
 feed_back/rnn/lstm_cell/MatMul_1MatMulfeed_back/rnn/zeros:output:07feed_back/rnn/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 feed_back/rnn/lstm_cell/MatMul_1?
feed_back/rnn/lstm_cell/addAddV2(feed_back/rnn/lstm_cell/MatMul:product:0*feed_back/rnn/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
feed_back/rnn/lstm_cell/add?
.feed_back/rnn/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.feed_back/rnn/lstm_cell/BiasAdd/ReadVariableOp?
feed_back/rnn/lstm_cell/BiasAddBiasAddfeed_back/rnn/lstm_cell/add:z:06feed_back/rnn/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
feed_back/rnn/lstm_cell/BiasAdd?
'feed_back/rnn/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2)
'feed_back/rnn/lstm_cell/split/split_dim?
feed_back/rnn/lstm_cell/splitSplit0feed_back/rnn/lstm_cell/split/split_dim:output:0(feed_back/rnn/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
feed_back/rnn/lstm_cell/split?
feed_back/rnn/lstm_cell/SigmoidSigmoid&feed_back/rnn/lstm_cell/split:output:0*
T0*'
_output_shapes
:????????? 2!
feed_back/rnn/lstm_cell/Sigmoid?
!feed_back/rnn/lstm_cell/Sigmoid_1Sigmoid&feed_back/rnn/lstm_cell/split:output:1*
T0*'
_output_shapes
:????????? 2#
!feed_back/rnn/lstm_cell/Sigmoid_1?
feed_back/rnn/lstm_cell/mulMul%feed_back/rnn/lstm_cell/Sigmoid_1:y:0feed_back/rnn/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
feed_back/rnn/lstm_cell/mul?
feed_back/rnn/lstm_cell/TanhTanh&feed_back/rnn/lstm_cell/split:output:2*
T0*'
_output_shapes
:????????? 2
feed_back/rnn/lstm_cell/Tanh?
feed_back/rnn/lstm_cell/mul_1Mul#feed_back/rnn/lstm_cell/Sigmoid:y:0 feed_back/rnn/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
feed_back/rnn/lstm_cell/mul_1?
feed_back/rnn/lstm_cell/add_1AddV2feed_back/rnn/lstm_cell/mul:z:0!feed_back/rnn/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
feed_back/rnn/lstm_cell/add_1?
!feed_back/rnn/lstm_cell/Sigmoid_2Sigmoid&feed_back/rnn/lstm_cell/split:output:3*
T0*'
_output_shapes
:????????? 2#
!feed_back/rnn/lstm_cell/Sigmoid_2?
feed_back/rnn/lstm_cell/Tanh_1Tanh!feed_back/rnn/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:????????? 2 
feed_back/rnn/lstm_cell/Tanh_1?
feed_back/rnn/lstm_cell/mul_2Mul%feed_back/rnn/lstm_cell/Sigmoid_2:y:0"feed_back/rnn/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
feed_back/rnn/lstm_cell/mul_2?
+feed_back/rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2-
+feed_back/rnn/TensorArrayV2_1/element_shape?
feed_back/rnn/TensorArrayV2_1TensorListReserve4feed_back/rnn/TensorArrayV2_1/element_shape:output:0&feed_back/rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
feed_back/rnn/TensorArrayV2_1j
feed_back/rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
feed_back/rnn/time?
&feed_back/rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&feed_back/rnn/while/maximum_iterations?
 feed_back/rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2"
 feed_back/rnn/while/loop_counter?
feed_back/rnn/whileWhile)feed_back/rnn/while/loop_counter:output:0/feed_back/rnn/while/maximum_iterations:output:0feed_back/rnn/time:output:0&feed_back/rnn/TensorArrayV2_1:handle:0feed_back/rnn/zeros:output:0feed_back/rnn/zeros_1:output:0&feed_back/rnn/strided_slice_1:output:0Efeed_back/rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:06feed_back_rnn_lstm_cell_matmul_readvariableop_resource8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
**
body"R 
feed_back_rnn_while_body_21681**
cond"R 
feed_back_rnn_while_cond_21680*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
feed_back/rnn/while?
>feed_back/rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2@
>feed_back/rnn/TensorArrayV2Stack/TensorListStack/element_shape?
0feed_back/rnn/TensorArrayV2Stack/TensorListStackTensorListStackfeed_back/rnn/while:output:3Gfeed_back/rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<????????? *
element_dtype022
0feed_back/rnn/TensorArrayV2Stack/TensorListStack?
#feed_back/rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2%
#feed_back/rnn/strided_slice_3/stack?
%feed_back/rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2'
%feed_back/rnn/strided_slice_3/stack_1?
%feed_back/rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%feed_back/rnn/strided_slice_3/stack_2?
feed_back/rnn/strided_slice_3StridedSlice9feed_back/rnn/TensorArrayV2Stack/TensorListStack:tensor:0,feed_back/rnn/strided_slice_3/stack:output:0.feed_back/rnn/strided_slice_3/stack_1:output:0.feed_back/rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
feed_back/rnn/strided_slice_3?
feed_back/rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
feed_back/rnn/transpose_1/perm?
feed_back/rnn/transpose_1	Transpose9feed_back/rnn/TensorArrayV2Stack/TensorListStack:tensor:0'feed_back/rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????< 2
feed_back/rnn/transpose_1?
%feed_back/dense/MatMul/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02'
%feed_back/dense/MatMul/ReadVariableOp?
feed_back/dense/MatMulMatMul&feed_back/rnn/strided_slice_3:output:0-feed_back/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
feed_back/dense/MatMul?
&feed_back/dense/BiasAdd/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&feed_back/dense/BiasAdd/ReadVariableOp?
feed_back/dense/BiasAddBiasAdd feed_back/dense/MatMul:product:0.feed_back/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
feed_back/dense/BiasAdd?
)feed_back/lstm_cell/MatMul/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02+
)feed_back/lstm_cell/MatMul/ReadVariableOp?
feed_back/lstm_cell/MatMulMatMul feed_back/dense/BiasAdd:output:01feed_back/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
feed_back/lstm_cell/MatMul?
+feed_back/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02-
+feed_back/lstm_cell/MatMul_1/ReadVariableOp?
feed_back/lstm_cell/MatMul_1MatMulfeed_back/rnn/while:output:43feed_back/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
feed_back/lstm_cell/MatMul_1?
feed_back/lstm_cell/addAddV2$feed_back/lstm_cell/MatMul:product:0&feed_back/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
feed_back/lstm_cell/add?
*feed_back/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*feed_back/lstm_cell/BiasAdd/ReadVariableOp?
feed_back/lstm_cell/BiasAddBiasAddfeed_back/lstm_cell/add:z:02feed_back/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
feed_back/lstm_cell/BiasAdd?
#feed_back/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#feed_back/lstm_cell/split/split_dim?
feed_back/lstm_cell/splitSplit,feed_back/lstm_cell/split/split_dim:output:0$feed_back/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
feed_back/lstm_cell/split?
feed_back/lstm_cell/SigmoidSigmoid"feed_back/lstm_cell/split:output:0*
T0*'
_output_shapes
:????????? 2
feed_back/lstm_cell/Sigmoid?
feed_back/lstm_cell/Sigmoid_1Sigmoid"feed_back/lstm_cell/split:output:1*
T0*'
_output_shapes
:????????? 2
feed_back/lstm_cell/Sigmoid_1?
feed_back/lstm_cell/mulMul!feed_back/lstm_cell/Sigmoid_1:y:0feed_back/rnn/while:output:5*
T0*'
_output_shapes
:????????? 2
feed_back/lstm_cell/mul?
feed_back/lstm_cell/TanhTanh"feed_back/lstm_cell/split:output:2*
T0*'
_output_shapes
:????????? 2
feed_back/lstm_cell/Tanh?
feed_back/lstm_cell/mul_1Mulfeed_back/lstm_cell/Sigmoid:y:0feed_back/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
feed_back/lstm_cell/mul_1?
feed_back/lstm_cell/add_1AddV2feed_back/lstm_cell/mul:z:0feed_back/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
feed_back/lstm_cell/add_1?
feed_back/lstm_cell/Sigmoid_2Sigmoid"feed_back/lstm_cell/split:output:3*
T0*'
_output_shapes
:????????? 2
feed_back/lstm_cell/Sigmoid_2?
feed_back/lstm_cell/Tanh_1Tanhfeed_back/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:????????? 2
feed_back/lstm_cell/Tanh_1?
feed_back/lstm_cell/mul_2Mul!feed_back/lstm_cell/Sigmoid_2:y:0feed_back/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
feed_back/lstm_cell/mul_2?
'feed_back/dense/MatMul_1/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02)
'feed_back/dense/MatMul_1/ReadVariableOp?
feed_back/dense/MatMul_1MatMulfeed_back/lstm_cell/mul_2:z:0/feed_back/dense/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
feed_back/dense/MatMul_1?
(feed_back/dense/BiasAdd_1/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(feed_back/dense/BiasAdd_1/ReadVariableOp?
feed_back/dense/BiasAdd_1BiasAdd"feed_back/dense/MatMul_1:product:00feed_back/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
feed_back/dense/BiasAdd_1?
feed_back/stackPack feed_back/dense/BiasAdd:output:0"feed_back/dense/BiasAdd_1:output:0*
N*
T0*+
_output_shapes
:?????????2
feed_back/stack?
feed_back/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
feed_back/transpose/perm?
feed_back/transpose	Transposefeed_back/stack:output:0!feed_back/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
feed_back/transpose?
IdentityIdentityfeed_back/transpose:y:0'^feed_back/dense/BiasAdd/ReadVariableOp)^feed_back/dense/BiasAdd_1/ReadVariableOp&^feed_back/dense/MatMul/ReadVariableOp(^feed_back/dense/MatMul_1/ReadVariableOp+^feed_back/lstm_cell/BiasAdd/ReadVariableOp*^feed_back/lstm_cell/MatMul/ReadVariableOp,^feed_back/lstm_cell/MatMul_1/ReadVariableOp/^feed_back/rnn/lstm_cell/BiasAdd/ReadVariableOp.^feed_back/rnn/lstm_cell/MatMul/ReadVariableOp0^feed_back/rnn/lstm_cell/MatMul_1/ReadVariableOp^feed_back/rnn/while*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????<: : : : : 2P
&feed_back/dense/BiasAdd/ReadVariableOp&feed_back/dense/BiasAdd/ReadVariableOp2T
(feed_back/dense/BiasAdd_1/ReadVariableOp(feed_back/dense/BiasAdd_1/ReadVariableOp2N
%feed_back/dense/MatMul/ReadVariableOp%feed_back/dense/MatMul/ReadVariableOp2R
'feed_back/dense/MatMul_1/ReadVariableOp'feed_back/dense/MatMul_1/ReadVariableOp2X
*feed_back/lstm_cell/BiasAdd/ReadVariableOp*feed_back/lstm_cell/BiasAdd/ReadVariableOp2V
)feed_back/lstm_cell/MatMul/ReadVariableOp)feed_back/lstm_cell/MatMul/ReadVariableOp2Z
+feed_back/lstm_cell/MatMul_1/ReadVariableOp+feed_back/lstm_cell/MatMul_1/ReadVariableOp2`
.feed_back/rnn/lstm_cell/BiasAdd/ReadVariableOp.feed_back/rnn/lstm_cell/BiasAdd/ReadVariableOp2^
-feed_back/rnn/lstm_cell/MatMul/ReadVariableOp-feed_back/rnn/lstm_cell/MatMul/ReadVariableOp2b
/feed_back/rnn/lstm_cell/MatMul_1/ReadVariableOp/feed_back/rnn/lstm_cell/MatMul_1/ReadVariableOp2*
feed_back/rnn/whilefeed_back/rnn/while:T P
+
_output_shapes
:?????????<
!
_user_specified_name	input_1
?	
?
rnn_while_cond_23724$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2
rnn_while_placeholder_3&
"rnn_while_less_rnn_strided_slice_1;
7rnn_while_rnn_while_cond_23724___redundant_placeholder0;
7rnn_while_rnn_while_cond_23724___redundant_placeholder1;
7rnn_while_rnn_while_cond_23724___redundant_placeholder2;
7rnn_while_rnn_while_cond_23724___redundant_placeholder3
rnn_while_identity
?
rnn/while/LessLessrnn_while_placeholder"rnn_while_less_rnn_strided_slice_1*
T0*
_output_shapes
: 2
rnn/while/Lessi
rnn/while/IdentityIdentityrnn/while/Less:z:0*
T0
*
_output_shapes
: 2
rnn/while/Identity"1
rnn_while_identityrnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?@
?
while_body_24621
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	?E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	 ?@
1while_lstm_cell_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	?C
0while_lstm_cell_matmul_1_readvariableop_resource:	 ?>
/while_lstm_cell_biasadd_readvariableop_resource:	???&while/lstm_cell/BiasAdd/ReadVariableOp?%while/lstm_cell/MatMul/ReadVariableOp?'while/lstm_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02'
%while/lstm_cell/MatMul/ReadVariableOp?
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul?
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02)
'while/lstm_cell/MatMul_1/ReadVariableOp?
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_1?
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add?
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/BiasAdd/ReadVariableOp?
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell/split?
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/Sigmoid?
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/Sigmoid_1?
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul?
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/Tanh?
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_1?
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/add_1?
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/Sigmoid_2?
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/Tanh_1?
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_1:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
#__inference_rnn_layer_call_fn_24083

inputs
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_rnn_layer_call_and_return_conditional_losses_225762
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????<: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?@
?
while_body_24469
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	?E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	 ?@
1while_lstm_cell_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	?C
0while_lstm_cell_matmul_1_readvariableop_resource:	 ?>
/while_lstm_cell_biasadd_readvariableop_resource:	???&while/lstm_cell/BiasAdd/ReadVariableOp?%while/lstm_cell/MatMul/ReadVariableOp?'while/lstm_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02'
%while/lstm_cell/MatMul/ReadVariableOp?
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul?
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02)
'while/lstm_cell/MatMul_1/ReadVariableOp?
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_1?
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add?
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/BiasAdd/ReadVariableOp?
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell/split?
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/Sigmoid?
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/Sigmoid_1?
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul?
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/Tanh?
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_1?
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/add_1?
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/Sigmoid_2?
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/Tanh_1?
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_1:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?%
?
while_body_22106
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_lstm_cell_22130_0:	?*
while_lstm_cell_22132_0:	 ?&
while_lstm_cell_22134_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_lstm_cell_22130:	?(
while_lstm_cell_22132:	 ?$
while_lstm_cell_22134:	???'while/lstm_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_22130_0while_lstm_cell_22132_0while_lstm_cell_22134_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_220242)
'while/lstm_cell/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1(^while/lstm_cell/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2(^while/lstm_cell/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_22130while_lstm_cell_22130_0"0
while_lstm_cell_22132while_lstm_cell_22132_0"0
while_lstm_cell_22134while_lstm_cell_22134_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?F
?	
rnn_while_body_23541$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2
rnn_while_placeholder_3#
rnn_while_rnn_strided_slice_1_0_
[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0G
4rnn_while_lstm_cell_matmul_readvariableop_resource_0:	?I
6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0:	 ?D
5rnn_while_lstm_cell_biasadd_readvariableop_resource_0:	?
rnn_while_identity
rnn_while_identity_1
rnn_while_identity_2
rnn_while_identity_3
rnn_while_identity_4
rnn_while_identity_5!
rnn_while_rnn_strided_slice_1]
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensorE
2rnn_while_lstm_cell_matmul_readvariableop_resource:	?G
4rnn_while_lstm_cell_matmul_1_readvariableop_resource:	 ?B
3rnn_while_lstm_cell_biasadd_readvariableop_resource:	???*rnn/while/lstm_cell/BiasAdd/ReadVariableOp?)rnn/while/lstm_cell/MatMul/ReadVariableOp?+rnn/while/lstm_cell/MatMul_1/ReadVariableOp?
;rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2=
;rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape?
-rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0rnn_while_placeholderDrnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02/
-rnn/while/TensorArrayV2Read/TensorListGetItem?
)rnn/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp4rnn_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)rnn/while/lstm_cell/MatMul/ReadVariableOp?
rnn/while/lstm_cell/MatMulMatMul4rnn/while/TensorArrayV2Read/TensorListGetItem:item:01rnn/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/while/lstm_cell/MatMul?
+rnn/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+rnn/while/lstm_cell/MatMul_1/ReadVariableOp?
rnn/while/lstm_cell/MatMul_1MatMulrnn_while_placeholder_23rnn/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/while/lstm_cell/MatMul_1?
rnn/while/lstm_cell/addAddV2$rnn/while/lstm_cell/MatMul:product:0&rnn/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
rnn/while/lstm_cell/add?
*rnn/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp5rnn_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*rnn/while/lstm_cell/BiasAdd/ReadVariableOp?
rnn/while/lstm_cell/BiasAddBiasAddrnn/while/lstm_cell/add:z:02rnn/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/while/lstm_cell/BiasAdd?
#rnn/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#rnn/while/lstm_cell/split/split_dim?
rnn/while/lstm_cell/splitSplit,rnn/while/lstm_cell/split/split_dim:output:0$rnn/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
rnn/while/lstm_cell/split?
rnn/while/lstm_cell/SigmoidSigmoid"rnn/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/Sigmoid?
rnn/while/lstm_cell/Sigmoid_1Sigmoid"rnn/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/Sigmoid_1?
rnn/while/lstm_cell/mulMul!rnn/while/lstm_cell/Sigmoid_1:y:0rnn_while_placeholder_3*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/mul?
rnn/while/lstm_cell/TanhTanh"rnn/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/Tanh?
rnn/while/lstm_cell/mul_1Mulrnn/while/lstm_cell/Sigmoid:y:0rnn/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/mul_1?
rnn/while/lstm_cell/add_1AddV2rnn/while/lstm_cell/mul:z:0rnn/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/add_1?
rnn/while/lstm_cell/Sigmoid_2Sigmoid"rnn/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/Sigmoid_2?
rnn/while/lstm_cell/Tanh_1Tanhrnn/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/Tanh_1?
rnn/while/lstm_cell/mul_2Mul!rnn/while/lstm_cell/Sigmoid_2:y:0rnn/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/mul_2?
.rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_while_placeholder_1rnn_while_placeholderrnn/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype020
.rnn/while/TensorArrayV2Write/TensorListSetItemd
rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
rnn/while/add/yy
rnn/while/addAddV2rnn_while_placeholderrnn/while/add/y:output:0*
T0*
_output_shapes
: 2
rnn/while/addh
rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
rnn/while/add_1/y?
rnn/while/add_1AddV2 rnn_while_rnn_while_loop_counterrnn/while/add_1/y:output:0*
T0*
_output_shapes
: 2
rnn/while/add_1?
rnn/while/IdentityIdentityrnn/while/add_1:z:0+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity?
rnn/while/Identity_1Identity&rnn_while_rnn_while_maximum_iterations+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity_1?
rnn/while/Identity_2Identityrnn/while/add:z:0+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity_2?
rnn/while/Identity_3Identity>rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity_3?
rnn/while/Identity_4Identityrnn/while/lstm_cell/mul_2:z:0+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
rnn/while/Identity_4?
rnn/while/Identity_5Identityrnn/while/lstm_cell/add_1:z:0+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
rnn/while/Identity_5"1
rnn_while_identityrnn/while/Identity:output:0"5
rnn_while_identity_1rnn/while/Identity_1:output:0"5
rnn_while_identity_2rnn/while/Identity_2:output:0"5
rnn_while_identity_3rnn/while/Identity_3:output:0"5
rnn_while_identity_4rnn/while/Identity_4:output:0"5
rnn_while_identity_5rnn/while/Identity_5:output:0"l
3rnn_while_lstm_cell_biasadd_readvariableop_resource5rnn_while_lstm_cell_biasadd_readvariableop_resource_0"n
4rnn_while_lstm_cell_matmul_1_readvariableop_resource6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0"j
2rnn_while_lstm_cell_matmul_readvariableop_resource4rnn_while_lstm_cell_matmul_readvariableop_resource_0"@
rnn_while_rnn_strided_slice_1rnn_while_rnn_strided_slice_1_0"?
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*rnn/while/lstm_cell/BiasAdd/ReadVariableOp*rnn/while/lstm_cell/BiasAdd/ReadVariableOp2V
)rnn/while/lstm_cell/MatMul/ReadVariableOp)rnn/while/lstm_cell/MatMul/ReadVariableOp2Z
+rnn/while/lstm_cell/MatMul_1/ReadVariableOp+rnn/while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?%
?
while_body_22805
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_lstm_cell_22829_0:	?*
while_lstm_cell_22831_0:	 ?&
while_lstm_cell_22833_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_lstm_cell_22829:	?(
while_lstm_cell_22831:	 ?$
while_lstm_cell_22833:	???'while/lstm_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_22829_0while_lstm_cell_22831_0while_lstm_cell_22833_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_220242)
'while/lstm_cell/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1(^while/lstm_cell/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2(^while/lstm_cell/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_22829while_lstm_cell_22829_0"0
while_lstm_cell_22831while_lstm_cell_22831_0"0
while_lstm_cell_22833while_lstm_cell_22833_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_22723

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates
?%
?
while_body_21887
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_lstm_cell_21911_0:	?*
while_lstm_cell_21913_0:	 ?&
while_lstm_cell_21915_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_lstm_cell_21911:	?(
while_lstm_cell_21913:	 ?$
while_lstm_cell_21915:	???'while/lstm_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_21911_0while_lstm_cell_21913_0while_lstm_cell_21915_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_218732)
'while/lstm_cell/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1(^while/lstm_cell/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2(^while/lstm_cell/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_21911while_lstm_cell_21911_0"0
while_lstm_cell_21913while_lstm_cell_21913_0"0
while_lstm_cell_21915while_lstm_cell_21915_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?	
?
rnn_while_cond_23172$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2
rnn_while_placeholder_3&
"rnn_while_less_rnn_strided_slice_1;
7rnn_while_rnn_while_cond_23172___redundant_placeholder0;
7rnn_while_rnn_while_cond_23172___redundant_placeholder1;
7rnn_while_rnn_while_cond_23172___redundant_placeholder2;
7rnn_while_rnn_while_cond_23172___redundant_placeholder3
rnn_while_identity
?
rnn/while/LessLessrnn_while_placeholder"rnn_while_less_rnn_strided_slice_1*
T0*
_output_shapes
: 2
rnn/while/Lessi
rnn/while/IdentityIdentityrnn/while/Less:z:0*
T0
*
_output_shapes
: 2
rnn/while/Identity"1
rnn_while_identityrnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
??
?
D__inference_feed_back_layer_call_and_return_conditional_losses_23842
input_1?
,rnn_lstm_cell_matmul_readvariableop_resource:	?A
.rnn_lstm_cell_matmul_1_readvariableop_resource:	 ?<
-rnn_lstm_cell_biasadd_readvariableop_resource:	?6
$dense_matmul_readvariableop_resource: 3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/BiasAdd_1/ReadVariableOp?dense/MatMul/ReadVariableOp?dense/MatMul_1/ReadVariableOp? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?$rnn/lstm_cell/BiasAdd/ReadVariableOp?#rnn/lstm_cell/MatMul/ReadVariableOp?%rnn/lstm_cell/MatMul_1/ReadVariableOp?	rnn/whileM
	rnn/ShapeShapeinput_1*
T0*
_output_shapes
:2
	rnn/Shape|
rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice/stack?
rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice/stack_1?
rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice/stack_2?
rnn/strided_sliceStridedSlicernn/Shape:output:0 rnn/strided_slice/stack:output:0"rnn/strided_slice/stack_1:output:0"rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
rnn/strided_sliced
rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
rnn/zeros/mul/y|
rnn/zeros/mulMulrnn/strided_slice:output:0rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
rnn/zeros/mulg
rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
rnn/zeros/Less/yw
rnn/zeros/LessLessrnn/zeros/mul:z:0rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
rnn/zeros/Lessj
rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
rnn/zeros/packed/1?
rnn/zeros/packedPackrnn/strided_slice:output:0rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
rnn/zeros/packedg
rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rnn/zeros/Const?
	rnn/zerosFillrnn/zeros/packed:output:0rnn/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
	rnn/zerosh
rnn/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
rnn/zeros_1/mul/y?
rnn/zeros_1/mulMulrnn/strided_slice:output:0rnn/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
rnn/zeros_1/mulk
rnn/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
rnn/zeros_1/Less/y
rnn/zeros_1/LessLessrnn/zeros_1/mul:z:0rnn/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
rnn/zeros_1/Lessn
rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
rnn/zeros_1/packed/1?
rnn/zeros_1/packedPackrnn/strided_slice:output:0rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
rnn/zeros_1/packedk
rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rnn/zeros_1/Const?
rnn/zeros_1Fillrnn/zeros_1/packed:output:0rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
rnn/zeros_1}
rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
rnn/transpose/perm?
rnn/transpose	Transposeinput_1rnn/transpose/perm:output:0*
T0*+
_output_shapes
:<?????????2
rnn/transpose[
rnn/Shape_1Shapernn/transpose:y:0*
T0*
_output_shapes
:2
rnn/Shape_1?
rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice_1/stack?
rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_1/stack_1?
rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_1/stack_2?
rnn/strided_slice_1StridedSlicernn/Shape_1:output:0"rnn/strided_slice_1/stack:output:0$rnn/strided_slice_1/stack_1:output:0$rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
rnn/strided_slice_1?
rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
rnn/TensorArrayV2/element_shape?
rnn/TensorArrayV2TensorListReserve(rnn/TensorArrayV2/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
rnn/TensorArrayV2?
9rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2;
9rnn/TensorArrayUnstack/TensorListFromTensor/element_shape?
+rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn/transpose:y:0Brnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02-
+rnn/TensorArrayUnstack/TensorListFromTensor?
rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice_2/stack?
rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_2/stack_1?
rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_2/stack_2?
rnn/strided_slice_2StridedSlicernn/transpose:y:0"rnn/strided_slice_2/stack:output:0$rnn/strided_slice_2/stack_1:output:0$rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
rnn/strided_slice_2?
#rnn/lstm_cell/MatMul/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#rnn/lstm_cell/MatMul/ReadVariableOp?
rnn/lstm_cell/MatMulMatMulrnn/strided_slice_2:output:0+rnn/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/lstm_cell/MatMul?
%rnn/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%rnn/lstm_cell/MatMul_1/ReadVariableOp?
rnn/lstm_cell/MatMul_1MatMulrnn/zeros:output:0-rnn/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/lstm_cell/MatMul_1?
rnn/lstm_cell/addAddV2rnn/lstm_cell/MatMul:product:0 rnn/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
rnn/lstm_cell/add?
$rnn/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$rnn/lstm_cell/BiasAdd/ReadVariableOp?
rnn/lstm_cell/BiasAddBiasAddrnn/lstm_cell/add:z:0,rnn/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/lstm_cell/BiasAdd?
rnn/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
rnn/lstm_cell/split/split_dim?
rnn/lstm_cell/splitSplit&rnn/lstm_cell/split/split_dim:output:0rnn/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
rnn/lstm_cell/split?
rnn/lstm_cell/SigmoidSigmoidrnn/lstm_cell/split:output:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/Sigmoid?
rnn/lstm_cell/Sigmoid_1Sigmoidrnn/lstm_cell/split:output:1*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/Sigmoid_1?
rnn/lstm_cell/mulMulrnn/lstm_cell/Sigmoid_1:y:0rnn/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/mul?
rnn/lstm_cell/TanhTanhrnn/lstm_cell/split:output:2*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/Tanh?
rnn/lstm_cell/mul_1Mulrnn/lstm_cell/Sigmoid:y:0rnn/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/mul_1?
rnn/lstm_cell/add_1AddV2rnn/lstm_cell/mul:z:0rnn/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/add_1?
rnn/lstm_cell/Sigmoid_2Sigmoidrnn/lstm_cell/split:output:3*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/Sigmoid_2
rnn/lstm_cell/Tanh_1Tanhrnn/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/Tanh_1?
rnn/lstm_cell/mul_2Mulrnn/lstm_cell/Sigmoid_2:y:0rnn/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/mul_2?
!rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2#
!rnn/TensorArrayV2_1/element_shape?
rnn/TensorArrayV2_1TensorListReserve*rnn/TensorArrayV2_1/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
rnn/TensorArrayV2_1V
rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

rnn/time?
rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
rnn/while/maximum_iterationsr
rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
rnn/while/loop_counter?
	rnn/whileWhilernn/while/loop_counter:output:0%rnn/while/maximum_iterations:output:0rnn/time:output:0rnn/TensorArrayV2_1:handle:0rnn/zeros:output:0rnn/zeros_1:output:0rnn/strided_slice_1:output:0;rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0,rnn_lstm_cell_matmul_readvariableop_resource.rnn_lstm_cell_matmul_1_readvariableop_resource-rnn_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
* 
bodyR
rnn_while_body_23725* 
condR
rnn_while_cond_23724*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
	rnn/while?
4rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    26
4rnn/TensorArrayV2Stack/TensorListStack/element_shape?
&rnn/TensorArrayV2Stack/TensorListStackTensorListStackrnn/while:output:3=rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<????????? *
element_dtype02(
&rnn/TensorArrayV2Stack/TensorListStack?
rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
rnn/strided_slice_3/stack?
rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice_3/stack_1?
rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_3/stack_2?
rnn/strided_slice_3StridedSlice/rnn/TensorArrayV2Stack/TensorListStack:tensor:0"rnn/strided_slice_3/stack:output:0$rnn/strided_slice_3/stack_1:output:0$rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
rnn/strided_slice_3?
rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
rnn/transpose_1/perm?
rnn/transpose_1	Transpose/rnn/TensorArrayV2Stack/TensorListStack:tensor:0rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????< 2
rnn/transpose_1?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulrnn/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/BiasAdd?
lstm_cell/MatMul/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
lstm_cell/MatMul/ReadVariableOp?
lstm_cell/MatMulMatMuldense/BiasAdd:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul?
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm_cell/MatMul_1/ReadVariableOp?
lstm_cell/MatMul_1MatMulrnn/while:output:4)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_1?
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add?
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/BiasAdd/ReadVariableOp?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAddx
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell/split}
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid?
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid_1?
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0rnn/while:output:5*
T0*'
_output_shapes
:????????? 2
lstm_cell/mult
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell/Tanh?
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_1?
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/add_1?
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid_2s
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/Tanh_1?
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_2?
dense/MatMul_1/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense/MatMul_1/ReadVariableOp?
dense/MatMul_1MatMullstm_cell/mul_2:z:0%dense/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/MatMul_1?
dense/BiasAdd_1/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense/BiasAdd_1/ReadVariableOp?
dense/BiasAdd_1BiasAdddense/MatMul_1:product:0&dense/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/BiasAdd_1?
stackPackdense/BiasAdd:output:0dense/BiasAdd_1:output:0*
N*
T0*+
_output_shapes
:?????????2
stacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposestack:output:0transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transpose?
IdentityIdentitytranspose:y:0^dense/BiasAdd/ReadVariableOp^dense/BiasAdd_1/ReadVariableOp^dense/MatMul/ReadVariableOp^dense/MatMul_1/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp%^rnn/lstm_cell/BiasAdd/ReadVariableOp$^rnn/lstm_cell/MatMul/ReadVariableOp&^rnn/lstm_cell/MatMul_1/ReadVariableOp
^rnn/while*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????<: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/BiasAdd_1/ReadVariableOpdense/BiasAdd_1/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2>
dense/MatMul_1/ReadVariableOpdense/MatMul_1/ReadVariableOp2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2L
$rnn/lstm_cell/BiasAdd/ReadVariableOp$rnn/lstm_cell/BiasAdd/ReadVariableOp2J
#rnn/lstm_cell/MatMul/ReadVariableOp#rnn/lstm_cell/MatMul/ReadVariableOp2N
%rnn/lstm_cell/MatMul_1/ReadVariableOp%rnn/lstm_cell/MatMul_1/ReadVariableOp2
	rnn/while	rnn/while:T P
+
_output_shapes
:?????????<
!
_user_specified_name	input_1
?
?
)__inference_feed_back_layer_call_fn_23106
input_1
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
	unknown_2: 
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_feed_back_layer_call_and_return_conditional_losses_229352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????<: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????<
!
_user_specified_name	input_1
?\
?
>__inference_rnn_layer_call_and_return_conditional_losses_24250
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	?=
*lstm_cell_matmul_1_readvariableop_resource:	 ?8
)lstm_cell_biasadd_readvariableop_resource:	?
identity

identity_1

identity_2?? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
lstm_cell/MatMul/ReadVariableOp?
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul?
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm_cell/MatMul_1/ReadVariableOp?
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_1?
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add?
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/BiasAdd/ReadVariableOp?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAddx
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell/split}
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid?
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid_1?
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mult
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell/Tanh?
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_1?
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/add_1?
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid_2s
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/Tanh_1?
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_24165*
condR
while_cond_24164*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1?
IdentityIdentitystrided_slice_3:output:0!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identitywhile:output:4!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identitywhile:output:5!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_24316
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_24316___redundant_placeholder03
/while_while_cond_24316___redundant_placeholder13
/while_while_cond_24316___redundant_placeholder23
/while_while_cond_24316___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?G
?
>__inference_rnn_layer_call_and_return_conditional_losses_22176

inputs"
lstm_cell_22093:	?"
lstm_cell_22095:	 ?
lstm_cell_22097:	?
identity

identity_1

identity_2??!lstm_cell/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_22093lstm_cell_22095lstm_cell_22097*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_220242#
!lstm_cell/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_22093lstm_cell_22095lstm_cell_22097*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_22106*
condR
while_cond_22105*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1?
IdentityIdentitystrided_slice_3:output:0"^lstm_cell/StatefulPartitionedCall^while*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identitywhile:output:4"^lstm_cell/StatefulPartitionedCall^while*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identitywhile:output:5"^lstm_cell/StatefulPartitionedCall^while*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?F
?	
rnn_while_body_23173$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2
rnn_while_placeholder_3#
rnn_while_rnn_strided_slice_1_0_
[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0G
4rnn_while_lstm_cell_matmul_readvariableop_resource_0:	?I
6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0:	 ?D
5rnn_while_lstm_cell_biasadd_readvariableop_resource_0:	?
rnn_while_identity
rnn_while_identity_1
rnn_while_identity_2
rnn_while_identity_3
rnn_while_identity_4
rnn_while_identity_5!
rnn_while_rnn_strided_slice_1]
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensorE
2rnn_while_lstm_cell_matmul_readvariableop_resource:	?G
4rnn_while_lstm_cell_matmul_1_readvariableop_resource:	 ?B
3rnn_while_lstm_cell_biasadd_readvariableop_resource:	???*rnn/while/lstm_cell/BiasAdd/ReadVariableOp?)rnn/while/lstm_cell/MatMul/ReadVariableOp?+rnn/while/lstm_cell/MatMul_1/ReadVariableOp?
;rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2=
;rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape?
-rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0rnn_while_placeholderDrnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02/
-rnn/while/TensorArrayV2Read/TensorListGetItem?
)rnn/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp4rnn_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)rnn/while/lstm_cell/MatMul/ReadVariableOp?
rnn/while/lstm_cell/MatMulMatMul4rnn/while/TensorArrayV2Read/TensorListGetItem:item:01rnn/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/while/lstm_cell/MatMul?
+rnn/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+rnn/while/lstm_cell/MatMul_1/ReadVariableOp?
rnn/while/lstm_cell/MatMul_1MatMulrnn_while_placeholder_23rnn/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/while/lstm_cell/MatMul_1?
rnn/while/lstm_cell/addAddV2$rnn/while/lstm_cell/MatMul:product:0&rnn/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
rnn/while/lstm_cell/add?
*rnn/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp5rnn_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*rnn/while/lstm_cell/BiasAdd/ReadVariableOp?
rnn/while/lstm_cell/BiasAddBiasAddrnn/while/lstm_cell/add:z:02rnn/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/while/lstm_cell/BiasAdd?
#rnn/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#rnn/while/lstm_cell/split/split_dim?
rnn/while/lstm_cell/splitSplit,rnn/while/lstm_cell/split/split_dim:output:0$rnn/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
rnn/while/lstm_cell/split?
rnn/while/lstm_cell/SigmoidSigmoid"rnn/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/Sigmoid?
rnn/while/lstm_cell/Sigmoid_1Sigmoid"rnn/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/Sigmoid_1?
rnn/while/lstm_cell/mulMul!rnn/while/lstm_cell/Sigmoid_1:y:0rnn_while_placeholder_3*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/mul?
rnn/while/lstm_cell/TanhTanh"rnn/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/Tanh?
rnn/while/lstm_cell/mul_1Mulrnn/while/lstm_cell/Sigmoid:y:0rnn/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/mul_1?
rnn/while/lstm_cell/add_1AddV2rnn/while/lstm_cell/mul:z:0rnn/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/add_1?
rnn/while/lstm_cell/Sigmoid_2Sigmoid"rnn/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/Sigmoid_2?
rnn/while/lstm_cell/Tanh_1Tanhrnn/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/Tanh_1?
rnn/while/lstm_cell/mul_2Mul!rnn/while/lstm_cell/Sigmoid_2:y:0rnn/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/mul_2?
.rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_while_placeholder_1rnn_while_placeholderrnn/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype020
.rnn/while/TensorArrayV2Write/TensorListSetItemd
rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
rnn/while/add/yy
rnn/while/addAddV2rnn_while_placeholderrnn/while/add/y:output:0*
T0*
_output_shapes
: 2
rnn/while/addh
rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
rnn/while/add_1/y?
rnn/while/add_1AddV2 rnn_while_rnn_while_loop_counterrnn/while/add_1/y:output:0*
T0*
_output_shapes
: 2
rnn/while/add_1?
rnn/while/IdentityIdentityrnn/while/add_1:z:0+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity?
rnn/while/Identity_1Identity&rnn_while_rnn_while_maximum_iterations+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity_1?
rnn/while/Identity_2Identityrnn/while/add:z:0+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity_2?
rnn/while/Identity_3Identity>rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity_3?
rnn/while/Identity_4Identityrnn/while/lstm_cell/mul_2:z:0+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
rnn/while/Identity_4?
rnn/while/Identity_5Identityrnn/while/lstm_cell/add_1:z:0+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
rnn/while/Identity_5"1
rnn_while_identityrnn/while/Identity:output:0"5
rnn_while_identity_1rnn/while/Identity_1:output:0"5
rnn_while_identity_2rnn/while/Identity_2:output:0"5
rnn_while_identity_3rnn/while/Identity_3:output:0"5
rnn_while_identity_4rnn/while/Identity_4:output:0"5
rnn_while_identity_5rnn/while/Identity_5:output:0"l
3rnn_while_lstm_cell_biasadd_readvariableop_resource5rnn_while_lstm_cell_biasadd_readvariableop_resource_0"n
4rnn_while_lstm_cell_matmul_1_readvariableop_resource6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0"j
2rnn_while_lstm_cell_matmul_readvariableop_resource4rnn_while_lstm_cell_matmul_readvariableop_resource_0"@
rnn_while_rnn_strided_slice_1rnn_while_rnn_strided_slice_1_0"?
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*rnn/while/lstm_cell/BiasAdd/ReadVariableOp*rnn/while/lstm_cell/BiasAdd/ReadVariableOp2V
)rnn/while/lstm_cell/MatMul/ReadVariableOp)rnn/while/lstm_cell/MatMul/ReadVariableOp2Z
+rnn/while/lstm_cell/MatMul_1/ReadVariableOp+rnn/while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?F
?	
rnn_while_body_23357$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2
rnn_while_placeholder_3#
rnn_while_rnn_strided_slice_1_0_
[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0G
4rnn_while_lstm_cell_matmul_readvariableop_resource_0:	?I
6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0:	 ?D
5rnn_while_lstm_cell_biasadd_readvariableop_resource_0:	?
rnn_while_identity
rnn_while_identity_1
rnn_while_identity_2
rnn_while_identity_3
rnn_while_identity_4
rnn_while_identity_5!
rnn_while_rnn_strided_slice_1]
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensorE
2rnn_while_lstm_cell_matmul_readvariableop_resource:	?G
4rnn_while_lstm_cell_matmul_1_readvariableop_resource:	 ?B
3rnn_while_lstm_cell_biasadd_readvariableop_resource:	???*rnn/while/lstm_cell/BiasAdd/ReadVariableOp?)rnn/while/lstm_cell/MatMul/ReadVariableOp?+rnn/while/lstm_cell/MatMul_1/ReadVariableOp?
;rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2=
;rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape?
-rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0rnn_while_placeholderDrnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02/
-rnn/while/TensorArrayV2Read/TensorListGetItem?
)rnn/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp4rnn_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)rnn/while/lstm_cell/MatMul/ReadVariableOp?
rnn/while/lstm_cell/MatMulMatMul4rnn/while/TensorArrayV2Read/TensorListGetItem:item:01rnn/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/while/lstm_cell/MatMul?
+rnn/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+rnn/while/lstm_cell/MatMul_1/ReadVariableOp?
rnn/while/lstm_cell/MatMul_1MatMulrnn_while_placeholder_23rnn/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/while/lstm_cell/MatMul_1?
rnn/while/lstm_cell/addAddV2$rnn/while/lstm_cell/MatMul:product:0&rnn/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
rnn/while/lstm_cell/add?
*rnn/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp5rnn_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*rnn/while/lstm_cell/BiasAdd/ReadVariableOp?
rnn/while/lstm_cell/BiasAddBiasAddrnn/while/lstm_cell/add:z:02rnn/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/while/lstm_cell/BiasAdd?
#rnn/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#rnn/while/lstm_cell/split/split_dim?
rnn/while/lstm_cell/splitSplit,rnn/while/lstm_cell/split/split_dim:output:0$rnn/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
rnn/while/lstm_cell/split?
rnn/while/lstm_cell/SigmoidSigmoid"rnn/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/Sigmoid?
rnn/while/lstm_cell/Sigmoid_1Sigmoid"rnn/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/Sigmoid_1?
rnn/while/lstm_cell/mulMul!rnn/while/lstm_cell/Sigmoid_1:y:0rnn_while_placeholder_3*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/mul?
rnn/while/lstm_cell/TanhTanh"rnn/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/Tanh?
rnn/while/lstm_cell/mul_1Mulrnn/while/lstm_cell/Sigmoid:y:0rnn/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/mul_1?
rnn/while/lstm_cell/add_1AddV2rnn/while/lstm_cell/mul:z:0rnn/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/add_1?
rnn/while/lstm_cell/Sigmoid_2Sigmoid"rnn/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/Sigmoid_2?
rnn/while/lstm_cell/Tanh_1Tanhrnn/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/Tanh_1?
rnn/while/lstm_cell/mul_2Mul!rnn/while/lstm_cell/Sigmoid_2:y:0rnn/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
rnn/while/lstm_cell/mul_2?
.rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_while_placeholder_1rnn_while_placeholderrnn/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype020
.rnn/while/TensorArrayV2Write/TensorListSetItemd
rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
rnn/while/add/yy
rnn/while/addAddV2rnn_while_placeholderrnn/while/add/y:output:0*
T0*
_output_shapes
: 2
rnn/while/addh
rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
rnn/while/add_1/y?
rnn/while/add_1AddV2 rnn_while_rnn_while_loop_counterrnn/while/add_1/y:output:0*
T0*
_output_shapes
: 2
rnn/while/add_1?
rnn/while/IdentityIdentityrnn/while/add_1:z:0+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity?
rnn/while/Identity_1Identity&rnn_while_rnn_while_maximum_iterations+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity_1?
rnn/while/Identity_2Identityrnn/while/add:z:0+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity_2?
rnn/while/Identity_3Identity>rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity_3?
rnn/while/Identity_4Identityrnn/while/lstm_cell/mul_2:z:0+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
rnn/while/Identity_4?
rnn/while/Identity_5Identityrnn/while/lstm_cell/add_1:z:0+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
rnn/while/Identity_5"1
rnn_while_identityrnn/while/Identity:output:0"5
rnn_while_identity_1rnn/while/Identity_1:output:0"5
rnn_while_identity_2rnn/while/Identity_2:output:0"5
rnn_while_identity_3rnn/while/Identity_3:output:0"5
rnn_while_identity_4rnn/while/Identity_4:output:0"5
rnn_while_identity_5rnn/while/Identity_5:output:0"l
3rnn_while_lstm_cell_biasadd_readvariableop_resource5rnn_while_lstm_cell_biasadd_readvariableop_resource_0"n
4rnn_while_lstm_cell_matmul_1_readvariableop_resource6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0"j
2rnn_while_lstm_cell_matmul_readvariableop_resource4rnn_while_lstm_cell_matmul_readvariableop_resource_0"@
rnn_while_rnn_strided_slice_1rnn_while_rnn_strided_slice_1_0"?
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*rnn/while/lstm_cell/BiasAdd/ReadVariableOp*rnn/while/lstm_cell/BiasAdd/ReadVariableOp2V
)rnn/while/lstm_cell/MatMul/ReadVariableOp)rnn/while/lstm_cell/MatMul/ReadVariableOp2Z
+rnn/while/lstm_cell/MatMul_1/ReadVariableOp+rnn/while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_24164
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_24164___redundant_placeholder03
/while_while_cond_24164___redundant_placeholder13
/while_while_cond_24164___redundant_placeholder23
/while_while_cond_24164___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?\
?
>__inference_rnn_layer_call_and_return_conditional_losses_24554

inputs;
(lstm_cell_matmul_readvariableop_resource:	?=
*lstm_cell_matmul_1_readvariableop_resource:	 ?8
)lstm_cell_biasadd_readvariableop_resource:	?
identity

identity_1

identity_2?? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
lstm_cell/MatMul/ReadVariableOp?
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul?
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm_cell/MatMul_1/ReadVariableOp?
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_1?
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add?
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/BiasAdd/ReadVariableOp?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAddx
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell/split}
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid?
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid_1?
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mult
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell/Tanh?
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_1?
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/add_1?
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid_2s
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/Tanh_1?
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_24469*
condR
while_cond_24468*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????< 2
transpose_1?
IdentityIdentitystrided_slice_3:output:0!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identitywhile:output:4!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identitywhile:output:5!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????<: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
?
)__inference_lstm_cell_layer_call_fn_23910

inputs
states_0
states_1
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_227232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_24038

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?@
?
while_body_24317
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	?E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	 ?@
1while_lstm_cell_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	?C
0while_lstm_cell_matmul_1_readvariableop_resource:	 ?>
/while_lstm_cell_biasadd_readvariableop_resource:	???&while/lstm_cell/BiasAdd/ReadVariableOp?%while/lstm_cell/MatMul/ReadVariableOp?'while/lstm_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02'
%while/lstm_cell/MatMul/ReadVariableOp?
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul?
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02)
'while/lstm_cell/MatMul_1/ReadVariableOp?
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_1?
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add?
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/BiasAdd/ReadVariableOp?
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell/split?
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/Sigmoid?
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/Sigmoid_1?
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul?
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/Tanh?
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_1?
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/add_1?
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/Sigmoid_2?
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/Tanh_1?
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_1:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?8
?

__inference__traced_save_24820
file_prefix3
/savev2_rnn_lstm_cell_kernel_read_readvariableop=
9savev2_rnn_lstm_cell_recurrent_kernel_read_readvariableop1
-savev2_rnn_lstm_cell_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop:
6savev2_adam_rnn_lstm_cell_kernel_m_read_readvariableopD
@savev2_adam_rnn_lstm_cell_recurrent_kernel_m_read_readvariableop8
4savev2_adam_rnn_lstm_cell_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop:
6savev2_adam_rnn_lstm_cell_kernel_v_read_readvariableopD
@savev2_adam_rnn_lstm_cell_recurrent_kernel_v_read_readvariableop8
4savev2_adam_rnn_lstm_cell_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B+lstm_cell/kernel/.ATTRIBUTES/VARIABLE_VALUEB5lstm_cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUEB)lstm_cell/bias/.ATTRIBUTES/VARIABLE_VALUEB'dense/kernel/.ATTRIBUTES/VARIABLE_VALUEB%dense/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBGlstm_cell/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlstm_cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBElstm_cell/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGlstm_cell/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlstm_cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBElstm_cell/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_rnn_lstm_cell_kernel_read_readvariableop9savev2_rnn_lstm_cell_recurrent_kernel_read_readvariableop-savev2_rnn_lstm_cell_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop6savev2_adam_rnn_lstm_cell_kernel_m_read_readvariableop@savev2_adam_rnn_lstm_cell_recurrent_kernel_m_read_readvariableop4savev2_adam_rnn_lstm_cell_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop6savev2_adam_rnn_lstm_cell_kernel_v_read_readvariableop@savev2_adam_rnn_lstm_cell_recurrent_kernel_v_read_readvariableop4savev2_adam_rnn_lstm_cell_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *'
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?:	 ?:?: :: : : : : : : : : :	?:	 ?:?: ::	?:	 ?:?: :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?:%!

_output_shapes
:	 ?:!

_output_shapes	
:?:$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :
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
: :%!

_output_shapes
:	?:%!

_output_shapes
:	 ?:!

_output_shapes	
:?:$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	?:%!

_output_shapes
:	 ?:!

_output_shapes	
:?:$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: 
?
?
while_cond_24468
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_24468___redundant_placeholder03
/while_while_cond_24468___redundant_placeholder13
/while_while_cond_24468___redundant_placeholder23
/while_while_cond_24468___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
%__inference_dense_layer_call_fn_24715

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_225962
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
)__inference_feed_back_layer_call_fn_23076

inputs
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
	unknown_2: 
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_feed_back_layer_call_and_return_conditional_losses_226472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????<: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
?
)__inference_feed_back_layer_call_fn_23061
input_1
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
	unknown_2: 
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_feed_back_layer_call_and_return_conditional_losses_226472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????<: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????<
!
_user_specified_name	input_1
?U
?
feed_back_rnn_while_body_216818
4feed_back_rnn_while_feed_back_rnn_while_loop_counter>
:feed_back_rnn_while_feed_back_rnn_while_maximum_iterations#
feed_back_rnn_while_placeholder%
!feed_back_rnn_while_placeholder_1%
!feed_back_rnn_while_placeholder_2%
!feed_back_rnn_while_placeholder_37
3feed_back_rnn_while_feed_back_rnn_strided_slice_1_0s
ofeed_back_rnn_while_tensorarrayv2read_tensorlistgetitem_feed_back_rnn_tensorarrayunstack_tensorlistfromtensor_0Q
>feed_back_rnn_while_lstm_cell_matmul_readvariableop_resource_0:	?S
@feed_back_rnn_while_lstm_cell_matmul_1_readvariableop_resource_0:	 ?N
?feed_back_rnn_while_lstm_cell_biasadd_readvariableop_resource_0:	? 
feed_back_rnn_while_identity"
feed_back_rnn_while_identity_1"
feed_back_rnn_while_identity_2"
feed_back_rnn_while_identity_3"
feed_back_rnn_while_identity_4"
feed_back_rnn_while_identity_55
1feed_back_rnn_while_feed_back_rnn_strided_slice_1q
mfeed_back_rnn_while_tensorarrayv2read_tensorlistgetitem_feed_back_rnn_tensorarrayunstack_tensorlistfromtensorO
<feed_back_rnn_while_lstm_cell_matmul_readvariableop_resource:	?Q
>feed_back_rnn_while_lstm_cell_matmul_1_readvariableop_resource:	 ?L
=feed_back_rnn_while_lstm_cell_biasadd_readvariableop_resource:	???4feed_back/rnn/while/lstm_cell/BiasAdd/ReadVariableOp?3feed_back/rnn/while/lstm_cell/MatMul/ReadVariableOp?5feed_back/rnn/while/lstm_cell/MatMul_1/ReadVariableOp?
Efeed_back/rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2G
Efeed_back/rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape?
7feed_back/rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemofeed_back_rnn_while_tensorarrayv2read_tensorlistgetitem_feed_back_rnn_tensorarrayunstack_tensorlistfromtensor_0feed_back_rnn_while_placeholderNfeed_back/rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype029
7feed_back/rnn/while/TensorArrayV2Read/TensorListGetItem?
3feed_back/rnn/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp>feed_back_rnn_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype025
3feed_back/rnn/while/lstm_cell/MatMul/ReadVariableOp?
$feed_back/rnn/while/lstm_cell/MatMulMatMul>feed_back/rnn/while/TensorArrayV2Read/TensorListGetItem:item:0;feed_back/rnn/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$feed_back/rnn/while/lstm_cell/MatMul?
5feed_back/rnn/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp@feed_back_rnn_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype027
5feed_back/rnn/while/lstm_cell/MatMul_1/ReadVariableOp?
&feed_back/rnn/while/lstm_cell/MatMul_1MatMul!feed_back_rnn_while_placeholder_2=feed_back/rnn/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2(
&feed_back/rnn/while/lstm_cell/MatMul_1?
!feed_back/rnn/while/lstm_cell/addAddV2.feed_back/rnn/while/lstm_cell/MatMul:product:00feed_back/rnn/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2#
!feed_back/rnn/while/lstm_cell/add?
4feed_back/rnn/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp?feed_back_rnn_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype026
4feed_back/rnn/while/lstm_cell/BiasAdd/ReadVariableOp?
%feed_back/rnn/while/lstm_cell/BiasAddBiasAdd%feed_back/rnn/while/lstm_cell/add:z:0<feed_back/rnn/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%feed_back/rnn/while/lstm_cell/BiasAdd?
-feed_back/rnn/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2/
-feed_back/rnn/while/lstm_cell/split/split_dim?
#feed_back/rnn/while/lstm_cell/splitSplit6feed_back/rnn/while/lstm_cell/split/split_dim:output:0.feed_back/rnn/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2%
#feed_back/rnn/while/lstm_cell/split?
%feed_back/rnn/while/lstm_cell/SigmoidSigmoid,feed_back/rnn/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:????????? 2'
%feed_back/rnn/while/lstm_cell/Sigmoid?
'feed_back/rnn/while/lstm_cell/Sigmoid_1Sigmoid,feed_back/rnn/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:????????? 2)
'feed_back/rnn/while/lstm_cell/Sigmoid_1?
!feed_back/rnn/while/lstm_cell/mulMul+feed_back/rnn/while/lstm_cell/Sigmoid_1:y:0!feed_back_rnn_while_placeholder_3*
T0*'
_output_shapes
:????????? 2#
!feed_back/rnn/while/lstm_cell/mul?
"feed_back/rnn/while/lstm_cell/TanhTanh,feed_back/rnn/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:????????? 2$
"feed_back/rnn/while/lstm_cell/Tanh?
#feed_back/rnn/while/lstm_cell/mul_1Mul)feed_back/rnn/while/lstm_cell/Sigmoid:y:0&feed_back/rnn/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:????????? 2%
#feed_back/rnn/while/lstm_cell/mul_1?
#feed_back/rnn/while/lstm_cell/add_1AddV2%feed_back/rnn/while/lstm_cell/mul:z:0'feed_back/rnn/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:????????? 2%
#feed_back/rnn/while/lstm_cell/add_1?
'feed_back/rnn/while/lstm_cell/Sigmoid_2Sigmoid,feed_back/rnn/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:????????? 2)
'feed_back/rnn/while/lstm_cell/Sigmoid_2?
$feed_back/rnn/while/lstm_cell/Tanh_1Tanh'feed_back/rnn/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:????????? 2&
$feed_back/rnn/while/lstm_cell/Tanh_1?
#feed_back/rnn/while/lstm_cell/mul_2Mul+feed_back/rnn/while/lstm_cell/Sigmoid_2:y:0(feed_back/rnn/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2%
#feed_back/rnn/while/lstm_cell/mul_2?
8feed_back/rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!feed_back_rnn_while_placeholder_1feed_back_rnn_while_placeholder'feed_back/rnn/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype02:
8feed_back/rnn/while/TensorArrayV2Write/TensorListSetItemx
feed_back/rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
feed_back/rnn/while/add/y?
feed_back/rnn/while/addAddV2feed_back_rnn_while_placeholder"feed_back/rnn/while/add/y:output:0*
T0*
_output_shapes
: 2
feed_back/rnn/while/add|
feed_back/rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
feed_back/rnn/while/add_1/y?
feed_back/rnn/while/add_1AddV24feed_back_rnn_while_feed_back_rnn_while_loop_counter$feed_back/rnn/while/add_1/y:output:0*
T0*
_output_shapes
: 2
feed_back/rnn/while/add_1?
feed_back/rnn/while/IdentityIdentityfeed_back/rnn/while/add_1:z:05^feed_back/rnn/while/lstm_cell/BiasAdd/ReadVariableOp4^feed_back/rnn/while/lstm_cell/MatMul/ReadVariableOp6^feed_back/rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
feed_back/rnn/while/Identity?
feed_back/rnn/while/Identity_1Identity:feed_back_rnn_while_feed_back_rnn_while_maximum_iterations5^feed_back/rnn/while/lstm_cell/BiasAdd/ReadVariableOp4^feed_back/rnn/while/lstm_cell/MatMul/ReadVariableOp6^feed_back/rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
feed_back/rnn/while/Identity_1?
feed_back/rnn/while/Identity_2Identityfeed_back/rnn/while/add:z:05^feed_back/rnn/while/lstm_cell/BiasAdd/ReadVariableOp4^feed_back/rnn/while/lstm_cell/MatMul/ReadVariableOp6^feed_back/rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
feed_back/rnn/while/Identity_2?
feed_back/rnn/while/Identity_3IdentityHfeed_back/rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:05^feed_back/rnn/while/lstm_cell/BiasAdd/ReadVariableOp4^feed_back/rnn/while/lstm_cell/MatMul/ReadVariableOp6^feed_back/rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
feed_back/rnn/while/Identity_3?
feed_back/rnn/while/Identity_4Identity'feed_back/rnn/while/lstm_cell/mul_2:z:05^feed_back/rnn/while/lstm_cell/BiasAdd/ReadVariableOp4^feed_back/rnn/while/lstm_cell/MatMul/ReadVariableOp6^feed_back/rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2 
feed_back/rnn/while/Identity_4?
feed_back/rnn/while/Identity_5Identity'feed_back/rnn/while/lstm_cell/add_1:z:05^feed_back/rnn/while/lstm_cell/BiasAdd/ReadVariableOp4^feed_back/rnn/while/lstm_cell/MatMul/ReadVariableOp6^feed_back/rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2 
feed_back/rnn/while/Identity_5"h
1feed_back_rnn_while_feed_back_rnn_strided_slice_13feed_back_rnn_while_feed_back_rnn_strided_slice_1_0"E
feed_back_rnn_while_identity%feed_back/rnn/while/Identity:output:0"I
feed_back_rnn_while_identity_1'feed_back/rnn/while/Identity_1:output:0"I
feed_back_rnn_while_identity_2'feed_back/rnn/while/Identity_2:output:0"I
feed_back_rnn_while_identity_3'feed_back/rnn/while/Identity_3:output:0"I
feed_back_rnn_while_identity_4'feed_back/rnn/while/Identity_4:output:0"I
feed_back_rnn_while_identity_5'feed_back/rnn/while/Identity_5:output:0"?
=feed_back_rnn_while_lstm_cell_biasadd_readvariableop_resource?feed_back_rnn_while_lstm_cell_biasadd_readvariableop_resource_0"?
>feed_back_rnn_while_lstm_cell_matmul_1_readvariableop_resource@feed_back_rnn_while_lstm_cell_matmul_1_readvariableop_resource_0"~
<feed_back_rnn_while_lstm_cell_matmul_readvariableop_resource>feed_back_rnn_while_lstm_cell_matmul_readvariableop_resource_0"?
mfeed_back_rnn_while_tensorarrayv2read_tensorlistgetitem_feed_back_rnn_tensorarrayunstack_tensorlistfromtensorofeed_back_rnn_while_tensorarrayv2read_tensorlistgetitem_feed_back_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2l
4feed_back/rnn/while/lstm_cell/BiasAdd/ReadVariableOp4feed_back/rnn/while/lstm_cell/BiasAdd/ReadVariableOp2j
3feed_back/rnn/while/lstm_cell/MatMul/ReadVariableOp3feed_back/rnn/while/lstm_cell/MatMul/ReadVariableOp2n
5feed_back/rnn/while/lstm_cell/MatMul_1/ReadVariableOp5feed_back/rnn/while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_22633

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates
?g
?
!__inference__traced_restore_24902
file_prefix8
%assignvariableop_rnn_lstm_cell_kernel:	?D
1assignvariableop_1_rnn_lstm_cell_recurrent_kernel:	 ?4
%assignvariableop_2_rnn_lstm_cell_bias:	?1
assignvariableop_3_dense_kernel: +
assignvariableop_4_dense_bias:&
assignvariableop_5_adam_iter:	 (
assignvariableop_6_adam_beta_1: (
assignvariableop_7_adam_beta_2: '
assignvariableop_8_adam_decay: /
%assignvariableop_9_adam_learning_rate: #
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: B
/assignvariableop_14_adam_rnn_lstm_cell_kernel_m:	?L
9assignvariableop_15_adam_rnn_lstm_cell_recurrent_kernel_m:	 ?<
-assignvariableop_16_adam_rnn_lstm_cell_bias_m:	?9
'assignvariableop_17_adam_dense_kernel_m: 3
%assignvariableop_18_adam_dense_bias_m:B
/assignvariableop_19_adam_rnn_lstm_cell_kernel_v:	?L
9assignvariableop_20_adam_rnn_lstm_cell_recurrent_kernel_v:	 ?<
-assignvariableop_21_adam_rnn_lstm_cell_bias_v:	?9
'assignvariableop_22_adam_dense_kernel_v: 3
%assignvariableop_23_adam_dense_bias_v:
identity_25??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B+lstm_cell/kernel/.ATTRIBUTES/VARIABLE_VALUEB5lstm_cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUEB)lstm_cell/bias/.ATTRIBUTES/VARIABLE_VALUEB'dense/kernel/.ATTRIBUTES/VARIABLE_VALUEB%dense/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBGlstm_cell/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlstm_cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBElstm_cell/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGlstm_cell/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlstm_cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBElstm_cell/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp%assignvariableop_rnn_lstm_cell_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp1assignvariableop_1_rnn_lstm_cell_recurrent_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp%assignvariableop_2_rnn_lstm_cell_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_iterIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_1Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_2Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_decayIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp%assignvariableop_9_adam_learning_rateIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp/assignvariableop_14_adam_rnn_lstm_cell_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp9assignvariableop_15_adam_rnn_lstm_cell_recurrent_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp-assignvariableop_16_adam_rnn_lstm_cell_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_adam_dense_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp/assignvariableop_19_adam_rnn_lstm_cell_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp9assignvariableop_20_adam_rnn_lstm_cell_recurrent_kernel_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp-assignvariableop_21_adam_rnn_lstm_cell_bias_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp%assignvariableop_23_adam_dense_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_239
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_24?
Identity_25IdentityIdentity_24:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_25"#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_23AssignVariableOp_232(
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
?
?
while_cond_21886
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_21886___redundant_placeholder03
/while_while_cond_21886___redundant_placeholder13
/while_while_cond_21886___redundant_placeholder23
/while_while_cond_21886___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?@
?
while_body_24165
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	?E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	 ?@
1while_lstm_cell_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	?C
0while_lstm_cell_matmul_1_readvariableop_resource:	 ?>
/while_lstm_cell_biasadd_readvariableop_resource:	???&while/lstm_cell/BiasAdd/ReadVariableOp?%while/lstm_cell/MatMul/ReadVariableOp?'while/lstm_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02'
%while/lstm_cell/MatMul/ReadVariableOp?
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul?
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02)
'while/lstm_cell/MatMul_1/ReadVariableOp?
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_1?
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add?
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/BiasAdd/ReadVariableOp?
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell/split?
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/Sigmoid?
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/Sigmoid_1?
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul?
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/Tanh?
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_1?
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/add_1?
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/Sigmoid_2?
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/Tanh_1?
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_1:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
)__inference_lstm_cell_layer_call_fn_23876

inputs
states_0
states_1
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_220242
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?
?
)__inference_feed_back_layer_call_fn_23091

inputs
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
	unknown_2: 
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_feed_back_layer_call_and_return_conditional_losses_229352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????<: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
??
?
D__inference_feed_back_layer_call_and_return_conditional_losses_23290

inputs?
,rnn_lstm_cell_matmul_readvariableop_resource:	?A
.rnn_lstm_cell_matmul_1_readvariableop_resource:	 ?<
-rnn_lstm_cell_biasadd_readvariableop_resource:	?6
$dense_matmul_readvariableop_resource: 3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/BiasAdd_1/ReadVariableOp?dense/MatMul/ReadVariableOp?dense/MatMul_1/ReadVariableOp? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?$rnn/lstm_cell/BiasAdd/ReadVariableOp?#rnn/lstm_cell/MatMul/ReadVariableOp?%rnn/lstm_cell/MatMul_1/ReadVariableOp?	rnn/whileL
	rnn/ShapeShapeinputs*
T0*
_output_shapes
:2
	rnn/Shape|
rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice/stack?
rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice/stack_1?
rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice/stack_2?
rnn/strided_sliceStridedSlicernn/Shape:output:0 rnn/strided_slice/stack:output:0"rnn/strided_slice/stack_1:output:0"rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
rnn/strided_sliced
rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
rnn/zeros/mul/y|
rnn/zeros/mulMulrnn/strided_slice:output:0rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
rnn/zeros/mulg
rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
rnn/zeros/Less/yw
rnn/zeros/LessLessrnn/zeros/mul:z:0rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
rnn/zeros/Lessj
rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
rnn/zeros/packed/1?
rnn/zeros/packedPackrnn/strided_slice:output:0rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
rnn/zeros/packedg
rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rnn/zeros/Const?
	rnn/zerosFillrnn/zeros/packed:output:0rnn/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
	rnn/zerosh
rnn/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
rnn/zeros_1/mul/y?
rnn/zeros_1/mulMulrnn/strided_slice:output:0rnn/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
rnn/zeros_1/mulk
rnn/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
rnn/zeros_1/Less/y
rnn/zeros_1/LessLessrnn/zeros_1/mul:z:0rnn/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
rnn/zeros_1/Lessn
rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
rnn/zeros_1/packed/1?
rnn/zeros_1/packedPackrnn/strided_slice:output:0rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
rnn/zeros_1/packedk
rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rnn/zeros_1/Const?
rnn/zeros_1Fillrnn/zeros_1/packed:output:0rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
rnn/zeros_1}
rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
rnn/transpose/perm?
rnn/transpose	Transposeinputsrnn/transpose/perm:output:0*
T0*+
_output_shapes
:<?????????2
rnn/transpose[
rnn/Shape_1Shapernn/transpose:y:0*
T0*
_output_shapes
:2
rnn/Shape_1?
rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice_1/stack?
rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_1/stack_1?
rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_1/stack_2?
rnn/strided_slice_1StridedSlicernn/Shape_1:output:0"rnn/strided_slice_1/stack:output:0$rnn/strided_slice_1/stack_1:output:0$rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
rnn/strided_slice_1?
rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
rnn/TensorArrayV2/element_shape?
rnn/TensorArrayV2TensorListReserve(rnn/TensorArrayV2/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
rnn/TensorArrayV2?
9rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2;
9rnn/TensorArrayUnstack/TensorListFromTensor/element_shape?
+rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn/transpose:y:0Brnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02-
+rnn/TensorArrayUnstack/TensorListFromTensor?
rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice_2/stack?
rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_2/stack_1?
rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_2/stack_2?
rnn/strided_slice_2StridedSlicernn/transpose:y:0"rnn/strided_slice_2/stack:output:0$rnn/strided_slice_2/stack_1:output:0$rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
rnn/strided_slice_2?
#rnn/lstm_cell/MatMul/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#rnn/lstm_cell/MatMul/ReadVariableOp?
rnn/lstm_cell/MatMulMatMulrnn/strided_slice_2:output:0+rnn/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/lstm_cell/MatMul?
%rnn/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%rnn/lstm_cell/MatMul_1/ReadVariableOp?
rnn/lstm_cell/MatMul_1MatMulrnn/zeros:output:0-rnn/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/lstm_cell/MatMul_1?
rnn/lstm_cell/addAddV2rnn/lstm_cell/MatMul:product:0 rnn/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
rnn/lstm_cell/add?
$rnn/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$rnn/lstm_cell/BiasAdd/ReadVariableOp?
rnn/lstm_cell/BiasAddBiasAddrnn/lstm_cell/add:z:0,rnn/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/lstm_cell/BiasAdd?
rnn/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
rnn/lstm_cell/split/split_dim?
rnn/lstm_cell/splitSplit&rnn/lstm_cell/split/split_dim:output:0rnn/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
rnn/lstm_cell/split?
rnn/lstm_cell/SigmoidSigmoidrnn/lstm_cell/split:output:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/Sigmoid?
rnn/lstm_cell/Sigmoid_1Sigmoidrnn/lstm_cell/split:output:1*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/Sigmoid_1?
rnn/lstm_cell/mulMulrnn/lstm_cell/Sigmoid_1:y:0rnn/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/mul?
rnn/lstm_cell/TanhTanhrnn/lstm_cell/split:output:2*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/Tanh?
rnn/lstm_cell/mul_1Mulrnn/lstm_cell/Sigmoid:y:0rnn/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/mul_1?
rnn/lstm_cell/add_1AddV2rnn/lstm_cell/mul:z:0rnn/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/add_1?
rnn/lstm_cell/Sigmoid_2Sigmoidrnn/lstm_cell/split:output:3*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/Sigmoid_2
rnn/lstm_cell/Tanh_1Tanhrnn/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/Tanh_1?
rnn/lstm_cell/mul_2Mulrnn/lstm_cell/Sigmoid_2:y:0rnn/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/mul_2?
!rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2#
!rnn/TensorArrayV2_1/element_shape?
rnn/TensorArrayV2_1TensorListReserve*rnn/TensorArrayV2_1/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
rnn/TensorArrayV2_1V
rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

rnn/time?
rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
rnn/while/maximum_iterationsr
rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
rnn/while/loop_counter?
	rnn/whileWhilernn/while/loop_counter:output:0%rnn/while/maximum_iterations:output:0rnn/time:output:0rnn/TensorArrayV2_1:handle:0rnn/zeros:output:0rnn/zeros_1:output:0rnn/strided_slice_1:output:0;rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0,rnn_lstm_cell_matmul_readvariableop_resource.rnn_lstm_cell_matmul_1_readvariableop_resource-rnn_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
* 
bodyR
rnn_while_body_23173* 
condR
rnn_while_cond_23172*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
	rnn/while?
4rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    26
4rnn/TensorArrayV2Stack/TensorListStack/element_shape?
&rnn/TensorArrayV2Stack/TensorListStackTensorListStackrnn/while:output:3=rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<????????? *
element_dtype02(
&rnn/TensorArrayV2Stack/TensorListStack?
rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
rnn/strided_slice_3/stack?
rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice_3/stack_1?
rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_3/stack_2?
rnn/strided_slice_3StridedSlice/rnn/TensorArrayV2Stack/TensorListStack:tensor:0"rnn/strided_slice_3/stack:output:0$rnn/strided_slice_3/stack_1:output:0$rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
rnn/strided_slice_3?
rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
rnn/transpose_1/perm?
rnn/transpose_1	Transpose/rnn/TensorArrayV2Stack/TensorListStack:tensor:0rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????< 2
rnn/transpose_1?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulrnn/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/BiasAdd?
lstm_cell/MatMul/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
lstm_cell/MatMul/ReadVariableOp?
lstm_cell/MatMulMatMuldense/BiasAdd:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul?
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm_cell/MatMul_1/ReadVariableOp?
lstm_cell/MatMul_1MatMulrnn/while:output:4)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_1?
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add?
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/BiasAdd/ReadVariableOp?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAddx
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell/split}
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid?
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid_1?
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0rnn/while:output:5*
T0*'
_output_shapes
:????????? 2
lstm_cell/mult
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell/Tanh?
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_1?
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/add_1?
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid_2s
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/Tanh_1?
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_2?
dense/MatMul_1/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense/MatMul_1/ReadVariableOp?
dense/MatMul_1MatMullstm_cell/mul_2:z:0%dense/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/MatMul_1?
dense/BiasAdd_1/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense/BiasAdd_1/ReadVariableOp?
dense/BiasAdd_1BiasAdddense/MatMul_1:product:0&dense/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/BiasAdd_1?
stackPackdense/BiasAdd:output:0dense/BiasAdd_1:output:0*
N*
T0*+
_output_shapes
:?????????2
stacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposestack:output:0transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transpose?
IdentityIdentitytranspose:y:0^dense/BiasAdd/ReadVariableOp^dense/BiasAdd_1/ReadVariableOp^dense/MatMul/ReadVariableOp^dense/MatMul_1/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp%^rnn/lstm_cell/BiasAdd/ReadVariableOp$^rnn/lstm_cell/MatMul/ReadVariableOp&^rnn/lstm_cell/MatMul_1/ReadVariableOp
^rnn/while*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????<: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/BiasAdd_1/ReadVariableOpdense/BiasAdd_1/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2>
dense/MatMul_1/ReadVariableOpdense/MatMul_1/ReadVariableOp2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2L
$rnn/lstm_cell/BiasAdd/ReadVariableOp$rnn/lstm_cell/BiasAdd/ReadVariableOp2J
#rnn/lstm_cell/MatMul/ReadVariableOp#rnn/lstm_cell/MatMul/ReadVariableOp2N
%rnn/lstm_cell/MatMul_1/ReadVariableOp%rnn/lstm_cell/MatMul_1/ReadVariableOp2
	rnn/while	rnn/while:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
?
#__inference_rnn_layer_call_fn_24068
inputs_0
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_rnn_layer_call_and_return_conditional_losses_221762
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?\
?
>__inference_rnn_layer_call_and_return_conditional_losses_24402
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	?=
*lstm_cell_matmul_1_readvariableop_resource:	 ?8
)lstm_cell_biasadd_readvariableop_resource:	?
identity

identity_1

identity_2?? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
lstm_cell/MatMul/ReadVariableOp?
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul?
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm_cell/MatMul_1/ReadVariableOp?
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_1?
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add?
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/BiasAdd/ReadVariableOp?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAddx
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell/split}
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid?
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid_1?
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mult
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell/Tanh?
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_1?
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/add_1?
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid_2s
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/Tanh_1?
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_24317*
condR
while_cond_24316*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1?
IdentityIdentitystrided_slice_3:output:0!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identitywhile:output:4!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identitywhile:output:5!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
??
?
D__inference_feed_back_layer_call_and_return_conditional_losses_23474

inputs?
,rnn_lstm_cell_matmul_readvariableop_resource:	?A
.rnn_lstm_cell_matmul_1_readvariableop_resource:	 ?<
-rnn_lstm_cell_biasadd_readvariableop_resource:	?6
$dense_matmul_readvariableop_resource: 3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/BiasAdd_1/ReadVariableOp?dense/MatMul/ReadVariableOp?dense/MatMul_1/ReadVariableOp? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?$rnn/lstm_cell/BiasAdd/ReadVariableOp?#rnn/lstm_cell/MatMul/ReadVariableOp?%rnn/lstm_cell/MatMul_1/ReadVariableOp?	rnn/whileL
	rnn/ShapeShapeinputs*
T0*
_output_shapes
:2
	rnn/Shape|
rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice/stack?
rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice/stack_1?
rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice/stack_2?
rnn/strided_sliceStridedSlicernn/Shape:output:0 rnn/strided_slice/stack:output:0"rnn/strided_slice/stack_1:output:0"rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
rnn/strided_sliced
rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
rnn/zeros/mul/y|
rnn/zeros/mulMulrnn/strided_slice:output:0rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
rnn/zeros/mulg
rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
rnn/zeros/Less/yw
rnn/zeros/LessLessrnn/zeros/mul:z:0rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
rnn/zeros/Lessj
rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
rnn/zeros/packed/1?
rnn/zeros/packedPackrnn/strided_slice:output:0rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
rnn/zeros/packedg
rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rnn/zeros/Const?
	rnn/zerosFillrnn/zeros/packed:output:0rnn/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
	rnn/zerosh
rnn/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
rnn/zeros_1/mul/y?
rnn/zeros_1/mulMulrnn/strided_slice:output:0rnn/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
rnn/zeros_1/mulk
rnn/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
rnn/zeros_1/Less/y
rnn/zeros_1/LessLessrnn/zeros_1/mul:z:0rnn/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
rnn/zeros_1/Lessn
rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
rnn/zeros_1/packed/1?
rnn/zeros_1/packedPackrnn/strided_slice:output:0rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
rnn/zeros_1/packedk
rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rnn/zeros_1/Const?
rnn/zeros_1Fillrnn/zeros_1/packed:output:0rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
rnn/zeros_1}
rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
rnn/transpose/perm?
rnn/transpose	Transposeinputsrnn/transpose/perm:output:0*
T0*+
_output_shapes
:<?????????2
rnn/transpose[
rnn/Shape_1Shapernn/transpose:y:0*
T0*
_output_shapes
:2
rnn/Shape_1?
rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice_1/stack?
rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_1/stack_1?
rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_1/stack_2?
rnn/strided_slice_1StridedSlicernn/Shape_1:output:0"rnn/strided_slice_1/stack:output:0$rnn/strided_slice_1/stack_1:output:0$rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
rnn/strided_slice_1?
rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
rnn/TensorArrayV2/element_shape?
rnn/TensorArrayV2TensorListReserve(rnn/TensorArrayV2/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
rnn/TensorArrayV2?
9rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2;
9rnn/TensorArrayUnstack/TensorListFromTensor/element_shape?
+rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn/transpose:y:0Brnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02-
+rnn/TensorArrayUnstack/TensorListFromTensor?
rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice_2/stack?
rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_2/stack_1?
rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_2/stack_2?
rnn/strided_slice_2StridedSlicernn/transpose:y:0"rnn/strided_slice_2/stack:output:0$rnn/strided_slice_2/stack_1:output:0$rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
rnn/strided_slice_2?
#rnn/lstm_cell/MatMul/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#rnn/lstm_cell/MatMul/ReadVariableOp?
rnn/lstm_cell/MatMulMatMulrnn/strided_slice_2:output:0+rnn/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/lstm_cell/MatMul?
%rnn/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%rnn/lstm_cell/MatMul_1/ReadVariableOp?
rnn/lstm_cell/MatMul_1MatMulrnn/zeros:output:0-rnn/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/lstm_cell/MatMul_1?
rnn/lstm_cell/addAddV2rnn/lstm_cell/MatMul:product:0 rnn/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
rnn/lstm_cell/add?
$rnn/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$rnn/lstm_cell/BiasAdd/ReadVariableOp?
rnn/lstm_cell/BiasAddBiasAddrnn/lstm_cell/add:z:0,rnn/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
rnn/lstm_cell/BiasAdd?
rnn/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
rnn/lstm_cell/split/split_dim?
rnn/lstm_cell/splitSplit&rnn/lstm_cell/split/split_dim:output:0rnn/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
rnn/lstm_cell/split?
rnn/lstm_cell/SigmoidSigmoidrnn/lstm_cell/split:output:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/Sigmoid?
rnn/lstm_cell/Sigmoid_1Sigmoidrnn/lstm_cell/split:output:1*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/Sigmoid_1?
rnn/lstm_cell/mulMulrnn/lstm_cell/Sigmoid_1:y:0rnn/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/mul?
rnn/lstm_cell/TanhTanhrnn/lstm_cell/split:output:2*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/Tanh?
rnn/lstm_cell/mul_1Mulrnn/lstm_cell/Sigmoid:y:0rnn/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/mul_1?
rnn/lstm_cell/add_1AddV2rnn/lstm_cell/mul:z:0rnn/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/add_1?
rnn/lstm_cell/Sigmoid_2Sigmoidrnn/lstm_cell/split:output:3*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/Sigmoid_2
rnn/lstm_cell/Tanh_1Tanhrnn/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/Tanh_1?
rnn/lstm_cell/mul_2Mulrnn/lstm_cell/Sigmoid_2:y:0rnn/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
rnn/lstm_cell/mul_2?
!rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2#
!rnn/TensorArrayV2_1/element_shape?
rnn/TensorArrayV2_1TensorListReserve*rnn/TensorArrayV2_1/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
rnn/TensorArrayV2_1V
rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

rnn/time?
rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
rnn/while/maximum_iterationsr
rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
rnn/while/loop_counter?
	rnn/whileWhilernn/while/loop_counter:output:0%rnn/while/maximum_iterations:output:0rnn/time:output:0rnn/TensorArrayV2_1:handle:0rnn/zeros:output:0rnn/zeros_1:output:0rnn/strided_slice_1:output:0;rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0,rnn_lstm_cell_matmul_readvariableop_resource.rnn_lstm_cell_matmul_1_readvariableop_resource-rnn_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
* 
bodyR
rnn_while_body_23357* 
condR
rnn_while_cond_23356*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
	rnn/while?
4rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    26
4rnn/TensorArrayV2Stack/TensorListStack/element_shape?
&rnn/TensorArrayV2Stack/TensorListStackTensorListStackrnn/while:output:3=rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<????????? *
element_dtype02(
&rnn/TensorArrayV2Stack/TensorListStack?
rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
rnn/strided_slice_3/stack?
rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice_3/stack_1?
rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_3/stack_2?
rnn/strided_slice_3StridedSlice/rnn/TensorArrayV2Stack/TensorListStack:tensor:0"rnn/strided_slice_3/stack:output:0$rnn/strided_slice_3/stack_1:output:0$rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
rnn/strided_slice_3?
rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
rnn/transpose_1/perm?
rnn/transpose_1	Transpose/rnn/TensorArrayV2Stack/TensorListStack:tensor:0rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????< 2
rnn/transpose_1?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulrnn/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/BiasAdd?
lstm_cell/MatMul/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
lstm_cell/MatMul/ReadVariableOp?
lstm_cell/MatMulMatMuldense/BiasAdd:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul?
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm_cell/MatMul_1/ReadVariableOp?
lstm_cell/MatMul_1MatMulrnn/while:output:4)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_1?
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add?
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/BiasAdd/ReadVariableOp?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAddx
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell/split}
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid?
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid_1?
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0rnn/while:output:5*
T0*'
_output_shapes
:????????? 2
lstm_cell/mult
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell/Tanh?
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_1?
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/add_1?
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell/Sigmoid_2s
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/Tanh_1?
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_2?
dense/MatMul_1/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense/MatMul_1/ReadVariableOp?
dense/MatMul_1MatMullstm_cell/mul_2:z:0%dense/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/MatMul_1?
dense/BiasAdd_1/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense/BiasAdd_1/ReadVariableOp?
dense/BiasAdd_1BiasAdddense/MatMul_1:product:0&dense/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/BiasAdd_1?
stackPackdense/BiasAdd:output:0dense/BiasAdd_1:output:0*
N*
T0*+
_output_shapes
:?????????2
stacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposestack:output:0transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transpose?
IdentityIdentitytranspose:y:0^dense/BiasAdd/ReadVariableOp^dense/BiasAdd_1/ReadVariableOp^dense/MatMul/ReadVariableOp^dense/MatMul_1/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp%^rnn/lstm_cell/BiasAdd/ReadVariableOp$^rnn/lstm_cell/MatMul/ReadVariableOp&^rnn/lstm_cell/MatMul_1/ReadVariableOp
^rnn/while*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????<: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/BiasAdd_1/ReadVariableOpdense/BiasAdd_1/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2>
dense/MatMul_1/ReadVariableOpdense/MatMul_1/ReadVariableOp2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2L
$rnn/lstm_cell/BiasAdd/ReadVariableOp$rnn/lstm_cell/BiasAdd/ReadVariableOp2J
#rnn/lstm_cell/MatMul/ReadVariableOp#rnn/lstm_cell/MatMul/ReadVariableOp2N
%rnn/lstm_cell/MatMul_1/ReadVariableOp%rnn/lstm_cell/MatMul_1/ReadVariableOp2
	rnn/while	rnn/while:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?G
?
>__inference_rnn_layer_call_and_return_conditional_losses_21957

inputs"
lstm_cell_21874:	?"
lstm_cell_21876:	 ?
lstm_cell_21878:	?
identity

identity_1

identity_2??!lstm_cell/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_21874lstm_cell_21876lstm_cell_21878*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_218732#
!lstm_cell/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_21874lstm_cell_21876lstm_cell_21878*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_21887*
condR
while_cond_21886*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1?
IdentityIdentitystrided_slice_3:output:0"^lstm_cell/StatefulPartitionedCall^while*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identitywhile:output:4"^lstm_cell/StatefulPartitionedCall^while*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identitywhile:output:5"^lstm_cell/StatefulPartitionedCall^while*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_22105
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_22105___redundant_placeholder03
/while_while_cond_22105___redundant_placeholder13
/while_while_cond_22105___redundant_placeholder23
/while_while_cond_22105___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_22024

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates
?
?
)__inference_lstm_cell_layer_call_fn_23859

inputs
states_0
states_1
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_218732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?
?
while_cond_24620
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_24620___redundant_placeholder03
/while_while_cond_24620___redundant_placeholder13
/while_while_cond_24620___redundant_placeholder23
/while_while_cond_24620___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
feed_back_rnn_while_cond_216808
4feed_back_rnn_while_feed_back_rnn_while_loop_counter>
:feed_back_rnn_while_feed_back_rnn_while_maximum_iterations#
feed_back_rnn_while_placeholder%
!feed_back_rnn_while_placeholder_1%
!feed_back_rnn_while_placeholder_2%
!feed_back_rnn_while_placeholder_3:
6feed_back_rnn_while_less_feed_back_rnn_strided_slice_1O
Kfeed_back_rnn_while_feed_back_rnn_while_cond_21680___redundant_placeholder0O
Kfeed_back_rnn_while_feed_back_rnn_while_cond_21680___redundant_placeholder1O
Kfeed_back_rnn_while_feed_back_rnn_while_cond_21680___redundant_placeholder2O
Kfeed_back_rnn_while_feed_back_rnn_while_cond_21680___redundant_placeholder3 
feed_back_rnn_while_identity
?
feed_back/rnn/while/LessLessfeed_back_rnn_while_placeholder6feed_back_rnn_while_less_feed_back_rnn_strided_slice_1*
T0*
_output_shapes
: 2
feed_back/rnn/while/Less?
feed_back/rnn/while/IdentityIdentityfeed_back/rnn/while/Less:z:0*
T0
*
_output_shapes
: 2
feed_back/rnn/while/Identity"E
feed_back_rnn_while_identity%feed_back/rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?	
?
rnn_while_cond_23356$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2
rnn_while_placeholder_3&
"rnn_while_less_rnn_strided_slice_1;
7rnn_while_rnn_while_cond_23356___redundant_placeholder0;
7rnn_while_rnn_while_cond_23356___redundant_placeholder1;
7rnn_while_rnn_while_cond_23356___redundant_placeholder2;
7rnn_while_rnn_while_cond_23356___redundant_placeholder3
rnn_while_identity
?
rnn/while/LessLessrnn_while_placeholder"rnn_while_less_rnn_strided_slice_1*
T0*
_output_shapes
: 2
rnn/while/Lessi
rnn/while/IdentityIdentityrnn/while/Less:z:0*
T0
*
_output_shapes
: 2
rnn/while/Identity"1
rnn_while_identityrnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
?
input_14
serving_default_input_1:0?????????<@
output_14
StatefulPartitionedCall:0?????????tensorflow/serving/predict:ޗ
?

	lstm_cell
lstm_rnn
	dense
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api
	
signatures
L_default_save_signature
M__call__
*N&call_and_return_all_conditional_losses"?
_tf_keras_model?{"name": "feed_back", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "FeedBack", "config": {"layer was saved without config": true}, "is_graph_network": false, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [32, 60, 4]}, "float32", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "FeedBack"}, "training_config": {"loss": {"class_name": "MeanSquaredError", "config": {"reduction": "auto", "name": "mean_squared_error"}, "shared_object_id": 0}, "metrics": [[{"class_name": "MeanAbsoluteError", "config": {"name": "mean_absolute_error", "dtype": "float32"}, "shared_object_id": 1}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?	


state_size

kernel
recurrent_kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
O__call__
*P&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "lstm_cell", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 3}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5}
?
cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"?
_tf_keras_rnn_layer?{"name": "rnn", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "RNN", "config": {"name": "rnn", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": true, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "LSTMCell", "config": {"name": "lstm_cell", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 3}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5}}, "shared_object_id": 6, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 4]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 7}], "build_input_shape": {"class_name": "TensorShape", "items": [32, 60, 4]}}
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
S__call__
*T&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 11}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 32]}}
?
iter

beta_1

beta_2
	 decay
!learning_ratemBmCmDmEmFvGvHvIvJvK"
	optimizer
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
?
"metrics
#layer_regularization_losses
$layer_metrics
trainable_variables

%layers
	variables
regularization_losses
&non_trainable_variables
M__call__
L_default_save_signature
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
,
Userving_default"
signature_map
 "
trackable_list_wrapper
':%	?2rnn/lstm_cell/kernel
1:/	 ?2rnn/lstm_cell/recurrent_kernel
!:?2rnn/lstm_cell/bias
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
'metrics
(layer_regularization_losses
)layer_metrics
trainable_variables

*layers
	variables
regularization_losses
+non_trainable_variables
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
,metrics

-states
.layer_regularization_losses
/layer_metrics
trainable_variables

0layers
	variables
regularization_losses
1non_trainable_variables
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
: 2dense/kernel
:2
dense/bias
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
?
2metrics
3layer_regularization_losses
4layer_metrics
trainable_variables

5layers
	variables
regularization_losses
6non_trainable_variables
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
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
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	9total
	:count
;	variables
<	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 12}
?
	=total
	>count
?
_fn_kwargs
@	variables
A	keras_api"?
_tf_keras_metric?{"class_name": "MeanAbsoluteError", "name": "mean_absolute_error", "dtype": "float32", "config": {"name": "mean_absolute_error", "dtype": "float32"}, "shared_object_id": 1}
:  (2total
:  (2count
.
90
:1"
trackable_list_wrapper
-
;	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
=0
>1"
trackable_list_wrapper
-
@	variables"
_generic_user_object
,:*	?2Adam/rnn/lstm_cell/kernel/m
6:4	 ?2%Adam/rnn/lstm_cell/recurrent_kernel/m
&:$?2Adam/rnn/lstm_cell/bias/m
#:! 2Adam/dense/kernel/m
:2Adam/dense/bias/m
,:*	?2Adam/rnn/lstm_cell/kernel/v
6:4	 ?2%Adam/rnn/lstm_cell/recurrent_kernel/v
&:$?2Adam/rnn/lstm_cell/bias/v
#:! 2Adam/dense/kernel/v
:2Adam/dense/bias/v
?2?
 __inference__wrapped_model_21798?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? **?'
%?"
input_1?????????<
?2?
)__inference_feed_back_layer_call_fn_23061
)__inference_feed_back_layer_call_fn_23076
)__inference_feed_back_layer_call_fn_23091
)__inference_feed_back_layer_call_fn_23106?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_feed_back_layer_call_and_return_conditional_losses_23290
D__inference_feed_back_layer_call_and_return_conditional_losses_23474
D__inference_feed_back_layer_call_and_return_conditional_losses_23658
D__inference_feed_back_layer_call_and_return_conditional_losses_23842?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_lstm_cell_layer_call_fn_23859
)__inference_lstm_cell_layer_call_fn_23876
)__inference_lstm_cell_layer_call_fn_23893
)__inference_lstm_cell_layer_call_fn_23910?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_23942
D__inference_lstm_cell_layer_call_and_return_conditional_losses_23974
D__inference_lstm_cell_layer_call_and_return_conditional_losses_24006
D__inference_lstm_cell_layer_call_and_return_conditional_losses_24038?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
#__inference_rnn_layer_call_fn_24053
#__inference_rnn_layer_call_fn_24068
#__inference_rnn_layer_call_fn_24083
#__inference_rnn_layer_call_fn_24098?
???
FullArgSpecO
argsG?D
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults?

 
p 

 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
>__inference_rnn_layer_call_and_return_conditional_losses_24250
>__inference_rnn_layer_call_and_return_conditional_losses_24402
>__inference_rnn_layer_call_and_return_conditional_losses_24554
>__inference_rnn_layer_call_and_return_conditional_losses_24706?
???
FullArgSpecO
argsG?D
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults?

 
p 

 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
%__inference_dense_layer_call_fn_24715?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_dense_layer_call_and_return_conditional_losses_24725?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_23046input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
 __inference__wrapped_model_21798v4?1
*?'
%?"
input_1?????????<
? "7?4
2
output_1&?#
output_1??????????
@__inference_dense_layer_call_and_return_conditional_losses_24725\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? x
%__inference_dense_layer_call_fn_24715O/?,
%?"
 ?
inputs????????? 
? "???????????
D__inference_feed_back_layer_call_and_return_conditional_losses_23290k7?4
-?*
$?!
inputs?????????<
p 
? ")?&
?
0?????????
? ?
D__inference_feed_back_layer_call_and_return_conditional_losses_23474k7?4
-?*
$?!
inputs?????????<
p
? ")?&
?
0?????????
? ?
D__inference_feed_back_layer_call_and_return_conditional_losses_23658l8?5
.?+
%?"
input_1?????????<
p 
? ")?&
?
0?????????
? ?
D__inference_feed_back_layer_call_and_return_conditional_losses_23842l8?5
.?+
%?"
input_1?????????<
p
? ")?&
?
0?????????
? ?
)__inference_feed_back_layer_call_fn_23061_8?5
.?+
%?"
input_1?????????<
p 
? "???????????
)__inference_feed_back_layer_call_fn_23076^7?4
-?*
$?!
inputs?????????<
p 
? "???????????
)__inference_feed_back_layer_call_fn_23091^7?4
-?*
$?!
inputs?????????<
p
? "???????????
)__inference_feed_back_layer_call_fn_23106_8?5
.?+
%?"
input_1?????????<
p
? "???????????
D__inference_lstm_cell_layer_call_and_return_conditional_losses_23942???}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p 
? "s?p
i?f
?
0/0????????? 
E?B
?
0/1/0????????? 
?
0/1/1????????? 
? ?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_23974???}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p
? "s?p
i?f
?
0/0????????? 
E?B
?
0/1/0????????? 
?
0/1/1????????? 
? ?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_24006???}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p 
? "s?p
i?f
?
0/0????????? 
E?B
?
0/1/0????????? 
?
0/1/1????????? 
? ?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_24038???}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p
? "s?p
i?f
?
0/0????????? 
E?B
?
0/1/0????????? 
?
0/1/1????????? 
? ?
)__inference_lstm_cell_layer_call_fn_23859???}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p 
? "c?`
?
0????????? 
A?>
?
1/0????????? 
?
1/1????????? ?
)__inference_lstm_cell_layer_call_fn_23876???}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p
? "c?`
?
0????????? 
A?>
?
1/0????????? 
?
1/1????????? ?
)__inference_lstm_cell_layer_call_fn_23893???}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p 
? "c?`
?
0????????? 
A?>
?
1/0????????? 
?
1/1????????? ?
)__inference_lstm_cell_layer_call_fn_23910???}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p
? "c?`
?
0????????? 
A?>
?
1/0????????? 
?
1/1????????? ?
>__inference_rnn_layer_call_and_return_conditional_losses_24250?S?P
I?F
4?1
/?,
inputs/0??????????????????

 
p 

 

 
? "j?g
`?]
?
0/0????????? 
?
0/1????????? 
?
0/2????????? 
? ?
>__inference_rnn_layer_call_and_return_conditional_losses_24402?S?P
I?F
4?1
/?,
inputs/0??????????????????

 
p

 

 
? "j?g
`?]
?
0/0????????? 
?
0/1????????? 
?
0/2????????? 
? ?
>__inference_rnn_layer_call_and_return_conditional_losses_24554?C?@
9?6
$?!
inputs?????????<

 
p 

 

 
? "j?g
`?]
?
0/0????????? 
?
0/1????????? 
?
0/2????????? 
? ?
>__inference_rnn_layer_call_and_return_conditional_losses_24706?C?@
9?6
$?!
inputs?????????<

 
p

 

 
? "j?g
`?]
?
0/0????????? 
?
0/1????????? 
?
0/2????????? 
? ?
#__inference_rnn_layer_call_fn_24053?S?P
I?F
4?1
/?,
inputs/0??????????????????

 
p 

 

 
? "Z?W
?
0????????? 
?
1????????? 
?
2????????? ?
#__inference_rnn_layer_call_fn_24068?S?P
I?F
4?1
/?,
inputs/0??????????????????

 
p

 

 
? "Z?W
?
0????????? 
?
1????????? 
?
2????????? ?
#__inference_rnn_layer_call_fn_24083?C?@
9?6
$?!
inputs?????????<

 
p 

 

 
? "Z?W
?
0????????? 
?
1????????? 
?
2????????? ?
#__inference_rnn_layer_call_fn_24098?C?@
9?6
$?!
inputs?????????<

 
p

 

 
? "Z?W
?
0????????? 
?
1????????? 
?
2????????? ?
#__inference_signature_wrapper_23046???<
? 
5?2
0
input_1%?"
input_1?????????<"7?4
2
output_1&?#
output_1?????????