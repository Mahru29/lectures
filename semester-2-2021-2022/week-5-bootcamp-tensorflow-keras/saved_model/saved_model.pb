рх
нЦ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
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
.
Identity

input"T
output"T"	
Ttype
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
delete_old_dirsbool(ѕ
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
dtypetypeѕ
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
┴
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
executor_typestring ѕе
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
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68С│
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
љђ*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
љђ*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:ђ*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ
*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	ђ
*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:
*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
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
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0

NoOpNoOp
┤(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*№'
valueт'BР' B█'
і
layer_with_weights-0
layer-0
layer-1
	optimizer
loss
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures*
Щ
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
ј
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
* 
* 
 
0
1
2
 3*
 
0
1
2
 3*
* 
░
!non_trainable_variables

"layers
#metrics
$layer_regularization_losses
%layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
* 
* 
* 

&serving_default* 
ј
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses* 
д

kernel
bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses*
д

kernel
 bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses*
:
9iter
	:decay
;learning_rate
<momentum*
 
0
1
2
 3*
 
0
1
2
 3*
* 
Њ
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Љ
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
LF
VARIABLE_VALUEdense/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
dense/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

G0*
* 
* 
* 
* 
* 
* 
Љ
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses* 
* 
* 

0
1*

0
1*
* 
Њ
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*
* 
* 

0
 1*

0
 1*
* 
Њ
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUESGD/iter>layer_with_weights-0/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE	SGD/decay?layer_with_weights-0/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUESGD/learning_rateGlayer_with_weights-0/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUESGD/momentumBlayer_with_weights-0/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

W0
X1*
* 
* 
* 
* 
* 
* 
* 
8
	Ytotal
	Zcount
[	variables
\	keras_api*
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
8
	]total
	^count
_	variables
`	keras_api*
H
	atotal
	bcount
c
_fn_kwargs
d	variables
e	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Y0
Z1*

[	variables*
jd
VARIABLE_VALUEtotal_1Ilayer_with_weights-0/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEcount_1Ilayer_with_weights-0/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

]0
^1*

_	variables*
jd
VARIABLE_VALUEtotal_2Ilayer_with_weights-0/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEcount_2Ilayer_with_weights-0/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

a0
b1*

d	variables*
Ѕ
serving_default_my_model_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
Ч
StatefulPartitionedCallStatefulPartitionedCallserving_default_my_model_inputdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *-
f(R&
$__inference_signature_wrapper_163366
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
С
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOpConst*
Tin
2	*
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
GPU2*0J 8ѓ *(
f#R!
__inference__traced_save_163559
К
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1total_2count_2*
Tin
2*
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
GPU2*0J 8ѓ *+
f&R$
"__inference__traced_restore_163611╣Т
╬
Ќ
P__inference_my_probability_model_layer_call_and_return_conditional_losses_163351

inputsA
-my_model_dense_matmul_readvariableop_resource:
љђ=
.my_model_dense_biasadd_readvariableop_resource:	ђB
/my_model_dense_1_matmul_readvariableop_resource:	ђ
>
0my_model_dense_1_biasadd_readvariableop_resource:

identityѕб%my_model/dense/BiasAdd/ReadVariableOpб$my_model/dense/MatMul/ReadVariableOpб'my_model/dense_1/BiasAdd/ReadVariableOpб&my_model/dense_1/MatMul/ReadVariableOpg
my_model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
my_model/flatten/ReshapeReshapeinputsmy_model/flatten/Const:output:0*
T0*(
_output_shapes
:         љћ
$my_model/dense/MatMul/ReadVariableOpReadVariableOp-my_model_dense_matmul_readvariableop_resource* 
_output_shapes
:
љђ*
dtype0Б
my_model/dense/MatMulMatMul!my_model/flatten/Reshape:output:0,my_model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЉ
%my_model/dense/BiasAdd/ReadVariableOpReadVariableOp.my_model_dense_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ц
my_model/dense/BiasAddBiasAddmy_model/dense/MatMul:product:0-my_model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђu
my_model/dense/SigmoidSigmoidmy_model/dense/BiasAdd:output:0*
T0*(
_output_shapes
:         ђЌ
&my_model/dense_1/MatMul/ReadVariableOpReadVariableOp/my_model_dense_1_matmul_readvariableop_resource*
_output_shapes
:	ђ
*
dtype0Ъ
my_model/dense_1/MatMulMatMulmy_model/dense/Sigmoid:y:0.my_model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
ћ
'my_model/dense_1/BiasAdd/ReadVariableOpReadVariableOp0my_model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0Е
my_model/dense_1/BiasAddBiasAdd!my_model/dense_1/MatMul:product:0/my_model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
o
softmax/SoftmaxSoftmax!my_model/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         
h
IdentityIdentitysoftmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         
У
NoOpNoOp&^my_model/dense/BiasAdd/ReadVariableOp%^my_model/dense/MatMul/ReadVariableOp(^my_model/dense_1/BiasAdd/ReadVariableOp'^my_model/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 2N
%my_model/dense/BiasAdd/ReadVariableOp%my_model/dense/BiasAdd/ReadVariableOp2L
$my_model/dense/MatMul/ReadVariableOp$my_model/dense/MatMul/ReadVariableOp2R
'my_model/dense_1/BiasAdd/ReadVariableOp'my_model/dense_1/BiasAdd/ReadVariableOp2P
&my_model/dense_1/MatMul/ReadVariableOp&my_model/dense_1/MatMul/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ћ9
┼
"__inference__traced_restore_163611
file_prefix1
assignvariableop_dense_kernel:
љђ,
assignvariableop_1_dense_bias:	ђ4
!assignvariableop_2_dense_1_kernel:	ђ
-
assignvariableop_3_dense_1_bias:
%
assignvariableop_4_sgd_iter:	 &
assignvariableop_5_sgd_decay: .
$assignvariableop_6_sgd_learning_rate: )
assignvariableop_7_sgd_momentum: "
assignvariableop_8_total: "
assignvariableop_9_count: %
assignvariableop_10_total_1: %
assignvariableop_11_count_1: %
assignvariableop_12_total_2: %
assignvariableop_13_count_2: 
identity_15ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_2бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9М
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*щ
value№BВB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-0/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-0/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHј
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B ж
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:і
AssignVariableOp_4AssignVariableOpassignvariableop_4_sgd_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_5AssignVariableOpassignvariableop_5_sgd_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_6AssignVariableOp$assignvariableop_6_sgd_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_7AssignVariableOpassignvariableop_7_sgd_momentumIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_8AssignVariableOpassignvariableop_8_totalIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_9AssignVariableOpassignvariableop_9_countIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_10AssignVariableOpassignvariableop_10_total_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_11AssignVariableOpassignvariableop_11_count_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_2Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ѓ
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_15IdentityIdentity_14:output:0^NoOp_1*
T0*
_output_shapes
: ­
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
й
▄
5__inference_my_probability_model_layer_call_fn_163298

inputs
unknown:
љђ
	unknown_0:	ђ
	unknown_1:	ђ

	unknown_2:

identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Y
fTRR
P__inference_my_probability_model_layer_call_and_return_conditional_losses_163187o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
в
г
D__inference_my_model_layer_call_and_return_conditional_losses_163148
flatten_input 
dense_163137:
љђ
dense_163139:	ђ!
dense_1_163142:	ђ

dense_1_163144:

identityѕбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCall┴
flatten/PartitionedCallPartitionedCallflatten_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_163006ѓ
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_163137dense_163139*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_163019Ј
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_163142dense_1_163144*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_163035w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
ѕ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Z V
+
_output_shapes
:         
'
_user_specified_nameflatten_input
║
О
)__inference_my_model_layer_call_fn_163053
flatten_input
unknown:
љђ
	unknown_0:	ђ
	unknown_1:	ђ

	unknown_2:

identityѕбStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_my_model_layer_call_and_return_conditional_losses_163042o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:         
'
_user_specified_nameflatten_input
о
Ц
D__inference_my_model_layer_call_and_return_conditional_losses_163109

inputs 
dense_163098:
љђ
dense_163100:	ђ!
dense_1_163103:	ђ

dense_1_163105:

identityѕбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCall║
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_163006ѓ
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_163098dense_163100*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_163019Ј
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_163103dense_1_163105*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_163035w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
ѕ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ї
џ
P__inference_my_probability_model_layer_call_and_return_conditional_losses_163187

inputs#
my_model_163170:
љђ
my_model_163172:	ђ"
my_model_163174:	ђ

my_model_163176:

identityѕб my_model/StatefulPartitionedCallЎ
 my_model/StatefulPartitionedCallStatefulPartitionedCallinputsmy_model_163170my_model_163172my_model_163174my_model_163176*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_my_model_layer_call_and_return_conditional_losses_163042▄
softmax/PartitionedCallPartitionedCall)my_model/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_softmax_layer_call_and_return_conditional_losses_163184o
IdentityIdentity softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
i
NoOpNoOp!^my_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 2D
 my_model/StatefulPartitionedCall my_model/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Н
С
5__inference_my_probability_model_layer_call_fn_163257
my_model_input
unknown:
љђ
	unknown_0:	ђ
	unknown_1:	ђ

	unknown_2:

identityѕбStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallmy_model_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Y
fTRR
P__inference_my_probability_model_layer_call_and_return_conditional_losses_163233o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namemy_model_input
ъ
D
(__inference_softmax_layer_call_fn_163439

inputs
identity▒
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_softmax_layer_call_and_return_conditional_losses_163184`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         
:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
ц
б
P__inference_my_probability_model_layer_call_and_return_conditional_losses_163271
my_model_input#
my_model_163260:
љђ
my_model_163262:	ђ"
my_model_163264:	ђ

my_model_163266:

identityѕб my_model/StatefulPartitionedCallА
 my_model/StatefulPartitionedCallStatefulPartitionedCallmy_model_inputmy_model_163260my_model_163262my_model_163264my_model_163266*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_my_model_layer_call_and_return_conditional_losses_163042▄
softmax/PartitionedCallPartitionedCall)my_model/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_softmax_layer_call_and_return_conditional_losses_163184o
IdentityIdentity softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
i
NoOpNoOp!^my_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 2D
 my_model/StatefulPartitionedCall my_model/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namemy_model_input
║
О
)__inference_my_model_layer_call_fn_163133
flatten_input
unknown:
љђ
	unknown_0:	ђ
	unknown_1:	ђ

	unknown_2:

identityѕбStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_my_model_layer_call_and_return_conditional_losses_163109o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:         
'
_user_specified_nameflatten_input
й
_
C__inference_flatten_layer_call_and_return_conditional_losses_163006

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"      ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         љY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         љ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ћ
М
$__inference_signature_wrapper_163366
my_model_input
unknown:
љђ
	unknown_0:	ђ
	unknown_1:	ђ

	unknown_2:

identityѕбStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallmy_model_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ **
f%R#
!__inference__wrapped_model_162993o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namemy_model_input
ї
џ
P__inference_my_probability_model_layer_call_and_return_conditional_losses_163233

inputs#
my_model_163222:
љђ
my_model_163224:	ђ"
my_model_163226:	ђ

my_model_163228:

identityѕб my_model/StatefulPartitionedCallЎ
 my_model/StatefulPartitionedCallStatefulPartitionedCallinputsmy_model_163222my_model_163224my_model_163226my_model_163228*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_my_model_layer_call_and_return_conditional_losses_163109▄
softmax/PartitionedCallPartitionedCall)my_model/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_softmax_layer_call_and_return_conditional_losses_163184o
IdentityIdentity softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
i
NoOpNoOp!^my_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 2D
 my_model/StatefulPartitionedCall my_model/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╬
Ќ
P__inference_my_probability_model_layer_call_and_return_conditional_losses_163331

inputsA
-my_model_dense_matmul_readvariableop_resource:
љђ=
.my_model_dense_biasadd_readvariableop_resource:	ђB
/my_model_dense_1_matmul_readvariableop_resource:	ђ
>
0my_model_dense_1_biasadd_readvariableop_resource:

identityѕб%my_model/dense/BiasAdd/ReadVariableOpб$my_model/dense/MatMul/ReadVariableOpб'my_model/dense_1/BiasAdd/ReadVariableOpб&my_model/dense_1/MatMul/ReadVariableOpg
my_model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
my_model/flatten/ReshapeReshapeinputsmy_model/flatten/Const:output:0*
T0*(
_output_shapes
:         љћ
$my_model/dense/MatMul/ReadVariableOpReadVariableOp-my_model_dense_matmul_readvariableop_resource* 
_output_shapes
:
љђ*
dtype0Б
my_model/dense/MatMulMatMul!my_model/flatten/Reshape:output:0,my_model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЉ
%my_model/dense/BiasAdd/ReadVariableOpReadVariableOp.my_model_dense_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ц
my_model/dense/BiasAddBiasAddmy_model/dense/MatMul:product:0-my_model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђu
my_model/dense/SigmoidSigmoidmy_model/dense/BiasAdd:output:0*
T0*(
_output_shapes
:         ђЌ
&my_model/dense_1/MatMul/ReadVariableOpReadVariableOp/my_model_dense_1_matmul_readvariableop_resource*
_output_shapes
:	ђ
*
dtype0Ъ
my_model/dense_1/MatMulMatMulmy_model/dense/Sigmoid:y:0.my_model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
ћ
'my_model/dense_1/BiasAdd/ReadVariableOpReadVariableOp0my_model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0Е
my_model/dense_1/BiasAddBiasAdd!my_model/dense_1/MatMul:product:0/my_model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
o
softmax/SoftmaxSoftmax!my_model/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         
h
IdentityIdentitysoftmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         
У
NoOpNoOp&^my_model/dense/BiasAdd/ReadVariableOp%^my_model/dense/MatMul/ReadVariableOp(^my_model/dense_1/BiasAdd/ReadVariableOp'^my_model/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 2N
%my_model/dense/BiasAdd/ReadVariableOp%my_model/dense/BiasAdd/ReadVariableOp2L
$my_model/dense/MatMul/ReadVariableOp$my_model/dense/MatMul/ReadVariableOp2R
'my_model/dense_1/BiasAdd/ReadVariableOp'my_model/dense_1/BiasAdd/ReadVariableOp2P
&my_model/dense_1/MatMul/ReadVariableOp&my_model/dense_1/MatMul/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
║
├
D__inference_my_model_layer_call_and_return_conditional_losses_163415

inputs8
$dense_matmul_readvariableop_resource:
љђ4
%dense_biasadd_readvariableop_resource:	ђ9
&dense_1_matmul_readvariableop_resource:	ђ
5
'dense_1_biasadd_readvariableop_resource:

identityѕбdense/BiasAdd/ReadVariableOpбdense/MatMul/ReadVariableOpбdense_1/BiasAdd/ReadVariableOpбdense_1/MatMul/ReadVariableOp^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"      m
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*(
_output_shapes
:         љѓ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
љђ*
dtype0ѕ
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђc
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*(
_output_shapes
:         ђЁ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	ђ
*
dtype0ё
dense_1/MatMulMatMuldense/Sigmoid:y:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
ѓ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0ј
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
g
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         
─
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ц
л
)__inference_my_model_layer_call_fn_163396

inputs
unknown:
љђ
	unknown_0:	ђ
	unknown_1:	ђ

	unknown_2:

identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_my_model_layer_call_and_return_conditional_losses_163109o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ф 
ў
!__inference__wrapped_model_162993
my_model_inputV
Bmy_probability_model_my_model_dense_matmul_readvariableop_resource:
љђR
Cmy_probability_model_my_model_dense_biasadd_readvariableop_resource:	ђW
Dmy_probability_model_my_model_dense_1_matmul_readvariableop_resource:	ђ
S
Emy_probability_model_my_model_dense_1_biasadd_readvariableop_resource:

identityѕб:my_probability_model/my_model/dense/BiasAdd/ReadVariableOpб9my_probability_model/my_model/dense/MatMul/ReadVariableOpб<my_probability_model/my_model/dense_1/BiasAdd/ReadVariableOpб;my_probability_model/my_model/dense_1/MatMul/ReadVariableOp|
+my_probability_model/my_model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"      ▒
-my_probability_model/my_model/flatten/ReshapeReshapemy_model_input4my_probability_model/my_model/flatten/Const:output:0*
T0*(
_output_shapes
:         љЙ
9my_probability_model/my_model/dense/MatMul/ReadVariableOpReadVariableOpBmy_probability_model_my_model_dense_matmul_readvariableop_resource* 
_output_shapes
:
љђ*
dtype0Р
*my_probability_model/my_model/dense/MatMulMatMul6my_probability_model/my_model/flatten/Reshape:output:0Amy_probability_model/my_model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ╗
:my_probability_model/my_model/dense/BiasAdd/ReadVariableOpReadVariableOpCmy_probability_model_my_model_dense_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0с
+my_probability_model/my_model/dense/BiasAddBiasAdd4my_probability_model/my_model/dense/MatMul:product:0Bmy_probability_model/my_model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЪ
+my_probability_model/my_model/dense/SigmoidSigmoid4my_probability_model/my_model/dense/BiasAdd:output:0*
T0*(
_output_shapes
:         ђ┴
;my_probability_model/my_model/dense_1/MatMul/ReadVariableOpReadVariableOpDmy_probability_model_my_model_dense_1_matmul_readvariableop_resource*
_output_shapes
:	ђ
*
dtype0я
,my_probability_model/my_model/dense_1/MatMulMatMul/my_probability_model/my_model/dense/Sigmoid:y:0Cmy_probability_model/my_model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
Й
<my_probability_model/my_model/dense_1/BiasAdd/ReadVariableOpReadVariableOpEmy_probability_model_my_model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0У
-my_probability_model/my_model/dense_1/BiasAddBiasAdd6my_probability_model/my_model/dense_1/MatMul:product:0Dmy_probability_model/my_model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
Ў
$my_probability_model/softmax/SoftmaxSoftmax6my_probability_model/my_model/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         
}
IdentityIdentity.my_probability_model/softmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         
╝
NoOpNoOp;^my_probability_model/my_model/dense/BiasAdd/ReadVariableOp:^my_probability_model/my_model/dense/MatMul/ReadVariableOp=^my_probability_model/my_model/dense_1/BiasAdd/ReadVariableOp<^my_probability_model/my_model/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 2x
:my_probability_model/my_model/dense/BiasAdd/ReadVariableOp:my_probability_model/my_model/dense/BiasAdd/ReadVariableOp2v
9my_probability_model/my_model/dense/MatMul/ReadVariableOp9my_probability_model/my_model/dense/MatMul/ReadVariableOp2|
<my_probability_model/my_model/dense_1/BiasAdd/ReadVariableOp<my_probability_model/my_model/dense_1/BiasAdd/ReadVariableOp2z
;my_probability_model/my_model/dense_1/MatMul/ReadVariableOp;my_probability_model/my_model/dense_1/MatMul/ReadVariableOp:[ W
+
_output_shapes
:         
(
_user_specified_namemy_model_input
к
ќ
&__inference_dense_layer_call_fn_163464

inputs
unknown:
љђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_163019p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         љ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         љ
 
_user_specified_nameinputs
Ц
л
)__inference_my_model_layer_call_fn_163383

inputs
unknown:
љђ
	unknown_0:	ђ
	unknown_1:	ђ

	unknown_2:

identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_my_model_layer_call_and_return_conditional_losses_163042o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╠
_
C__inference_softmax_layer_call_and_return_conditional_losses_163184

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:         
Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:         
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         
:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
в
г
D__inference_my_model_layer_call_and_return_conditional_losses_163163
flatten_input 
dense_163152:
љђ
dense_163154:	ђ!
dense_1_163157:	ђ

dense_1_163159:

identityѕбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCall┴
flatten/PartitionedCallPartitionedCallflatten_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_163006ѓ
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_163152dense_163154*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_163019Ј
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_163157dense_1_163159*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_163035w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
ѕ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Z V
+
_output_shapes
:         
'
_user_specified_nameflatten_input
е
D
(__inference_flatten_layer_call_fn_163449

inputs
identity▓
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_163006a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         љ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Б

ш
A__inference_dense_layer_call_and_return_conditional_losses_163475

inputs2
matmul_readvariableop_resource:
љђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
љђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђW
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:         ђ[
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:         ђw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         љ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         љ
 
_user_specified_nameinputs
у$
Й
__inference__traced_save_163559
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: л
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*щ
value№BВB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-0/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-0/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHІ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B п
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*O
_input_shapes>
<: :
љђ:ђ:	ђ
:
: : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
љђ:!

_output_shapes	
:ђ:%!

_output_shapes
:	ђ
: 

_output_shapes
:
:

_output_shapes
: :
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
: :

_output_shapes
: 
о
Ц
D__inference_my_model_layer_call_and_return_conditional_losses_163042

inputs 
dense_163020:
љђ
dense_163022:	ђ!
dense_1_163036:	ђ

dense_1_163038:

identityѕбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCall║
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_163006ѓ
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_163020dense_163022*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_163019Ј
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_163036dense_1_163038*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_163035w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
ѕ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Б

ш
A__inference_dense_layer_call_and_return_conditional_losses_163019

inputs2
matmul_readvariableop_resource:
љђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
љђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђW
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:         ђ[
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:         ђw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         љ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         љ
 
_user_specified_nameinputs
Н
С
5__inference_my_probability_model_layer_call_fn_163198
my_model_input
unknown:
љђ
	unknown_0:	ђ
	unknown_1:	ђ

	unknown_2:

identityѕбStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallmy_model_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Y
fTRR
P__inference_my_probability_model_layer_call_and_return_conditional_losses_163187o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namemy_model_input
к
ќ
(__inference_dense_1_layer_call_fn_163484

inputs
unknown:	ђ

	unknown_0:

identityѕбStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_163035o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
╠
_
C__inference_softmax_layer_call_and_return_conditional_losses_163444

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:         
Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:         
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         
:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
й
_
C__inference_flatten_layer_call_and_return_conditional_losses_163455

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"      ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         љY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         љ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
й
▄
5__inference_my_probability_model_layer_call_fn_163311

inputs
unknown:
љђ
	unknown_0:	ђ
	unknown_1:	ђ

	unknown_2:

identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Y
fTRR
P__inference_my_probability_model_layer_call_and_return_conditional_losses_163233o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╩	
ш
C__inference_dense_1_layer_call_and_return_conditional_losses_163494

inputs1
matmul_readvariableop_resource:	ђ
-
biasadd_readvariableop_resource:

identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
║
├
D__inference_my_model_layer_call_and_return_conditional_losses_163434

inputs8
$dense_matmul_readvariableop_resource:
љђ4
%dense_biasadd_readvariableop_resource:	ђ9
&dense_1_matmul_readvariableop_resource:	ђ
5
'dense_1_biasadd_readvariableop_resource:

identityѕбdense/BiasAdd/ReadVariableOpбdense/MatMul/ReadVariableOpбdense_1/BiasAdd/ReadVariableOpбdense_1/MatMul/ReadVariableOp^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"      m
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*(
_output_shapes
:         љѓ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
љђ*
dtype0ѕ
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђc
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*(
_output_shapes
:         ђЁ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	ђ
*
dtype0ё
dense_1/MatMulMatMuldense/Sigmoid:y:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
ѓ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0ј
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
g
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         
─
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╩	
ш
C__inference_dense_1_layer_call_and_return_conditional_losses_163035

inputs1
matmul_readvariableop_resource:	ђ
-
biasadd_readvariableop_resource:

identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
ц
б
P__inference_my_probability_model_layer_call_and_return_conditional_losses_163285
my_model_input#
my_model_163274:
љђ
my_model_163276:	ђ"
my_model_163278:	ђ

my_model_163280:

identityѕб my_model/StatefulPartitionedCallА
 my_model/StatefulPartitionedCallStatefulPartitionedCallmy_model_inputmy_model_163274my_model_163276my_model_163278my_model_163280*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_my_model_layer_call_and_return_conditional_losses_163109▄
softmax/PartitionedCallPartitionedCall)my_model/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_softmax_layer_call_and_return_conditional_losses_163184o
IdentityIdentity softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
i
NoOpNoOp!^my_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 2D
 my_model/StatefulPartitionedCall my_model/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namemy_model_input"█L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╝
serving_defaultе
M
my_model_input;
 serving_default_my_model_input:0         ;
softmax0
StatefulPartitionedCall:0         
tensorflow/serving/predict:▒p
ц
layer_with_weights-0
layer-0
layer-1
	optimizer
loss
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
ћ
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ц
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
"
	optimizer
 "
trackable_dict_wrapper
<
0
1
2
 3"
trackable_list_wrapper
<
0
1
2
 3"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
!non_trainable_variables

"layers
#metrics
$layer_regularization_losses
%layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
б2Ъ
5__inference_my_probability_model_layer_call_fn_163198
5__inference_my_probability_model_layer_call_fn_163298
5__inference_my_probability_model_layer_call_fn_163311
5__inference_my_probability_model_layer_call_fn_163257└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ј2І
P__inference_my_probability_model_layer_call_and_return_conditional_losses_163331
P__inference_my_probability_model_layer_call_and_return_conditional_losses_163351
P__inference_my_probability_model_layer_call_and_return_conditional_losses_163271
P__inference_my_probability_model_layer_call_and_return_conditional_losses_163285└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
МBл
!__inference__wrapped_model_162993my_model_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
,
&serving_default"
signature_map
Ц
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

kernel
bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

kernel
 bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses"
_tf_keras_layer
I
9iter
	:decay
;learning_rate
<momentum"
	optimizer
<
0
1
2
 3"
trackable_list_wrapper
<
0
1
2
 3"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ы2№
)__inference_my_model_layer_call_fn_163053
)__inference_my_model_layer_call_fn_163383
)__inference_my_model_layer_call_fn_163396
)__inference_my_model_layer_call_fn_163133└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
я2█
D__inference_my_model_layer_call_and_return_conditional_losses_163415
D__inference_my_model_layer_call_and_return_conditional_losses_163434
D__inference_my_model_layer_call_and_return_conditional_losses_163148
D__inference_my_model_layer_call_and_return_conditional_losses_163163└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
▀2▄
(__inference_softmax_layer_call_fn_163439»
д▓б
FullArgSpec%
argsџ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsб

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Щ2э
C__inference_softmax_layer_call_and_return_conditional_losses_163444»
д▓б
FullArgSpec%
argsџ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsб

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 :
љђ2dense/kernel
:ђ2
dense/bias
!:	ђ
2dense_1/kernel
:
2dense_1/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
G0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
мB¤
$__inference_signature_wrapper_163366my_model_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
м2¤
(__inference_flatten_layer_call_fn_163449б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ь2Ж
C__inference_flatten_layer_call_and_return_conditional_losses_163455б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
л2═
&__inference_dense_layer_call_fn_163464б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
в2У
A__inference_dense_layer_call_and_return_conditional_losses_163475б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
Г
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
м2¤
(__inference_dense_1_layer_call_fn_163484б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ь2Ж
C__inference_dense_1_layer_call_and_return_conditional_losses_163494б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
W0
X1"
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
trackable_dict_wrapper
N
	Ytotal
	Zcount
[	variables
\	keras_api"
_tf_keras_metric
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
N
	]total
	^count
_	variables
`	keras_api"
_tf_keras_metric
^
	atotal
	bcount
c
_fn_kwargs
d	variables
e	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
Y0
Z1"
trackable_list_wrapper
-
[	variables"
_generic_user_object
:  (2total
:  (2count
.
]0
^1"
trackable_list_wrapper
-
_	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
a0
b1"
trackable_list_wrapper
-
d	variables"
_generic_user_objectЏ
!__inference__wrapped_model_162993v ;б8
1б.
,і)
my_model_input         
ф "1ф.
,
softmax!і
softmax         
ц
C__inference_dense_1_layer_call_and_return_conditional_losses_163494] 0б-
&б#
!і
inputs         ђ
ф "%б"
і
0         

џ |
(__inference_dense_1_layer_call_fn_163484P 0б-
&б#
!і
inputs         ђ
ф "і         
Б
A__inference_dense_layer_call_and_return_conditional_losses_163475^0б-
&б#
!і
inputs         љ
ф "&б#
і
0         ђ
џ {
&__inference_dense_layer_call_fn_163464Q0б-
&б#
!і
inputs         љ
ф "і         ђц
C__inference_flatten_layer_call_and_return_conditional_losses_163455]3б0
)б&
$і!
inputs         
ф "&б#
і
0         љ
џ |
(__inference_flatten_layer_call_fn_163449P3б0
)б&
$і!
inputs         
ф "і         љ╣
D__inference_my_model_layer_call_and_return_conditional_losses_163148q Bб?
8б5
+і(
flatten_input         
p 

 
ф "%б"
і
0         

џ ╣
D__inference_my_model_layer_call_and_return_conditional_losses_163163q Bб?
8б5
+і(
flatten_input         
p

 
ф "%б"
і
0         

џ ▓
D__inference_my_model_layer_call_and_return_conditional_losses_163415j ;б8
1б.
$і!
inputs         
p 

 
ф "%б"
і
0         

џ ▓
D__inference_my_model_layer_call_and_return_conditional_losses_163434j ;б8
1б.
$і!
inputs         
p

 
ф "%б"
і
0         

џ Љ
)__inference_my_model_layer_call_fn_163053d Bб?
8б5
+і(
flatten_input         
p 

 
ф "і         
Љ
)__inference_my_model_layer_call_fn_163133d Bб?
8б5
+і(
flatten_input         
p

 
ф "і         
і
)__inference_my_model_layer_call_fn_163383] ;б8
1б.
$і!
inputs         
p 

 
ф "і         
і
)__inference_my_model_layer_call_fn_163396] ;б8
1б.
$і!
inputs         
p

 
ф "і         
к
P__inference_my_probability_model_layer_call_and_return_conditional_losses_163271r Cб@
9б6
,і)
my_model_input         
p 

 
ф "%б"
і
0         

џ к
P__inference_my_probability_model_layer_call_and_return_conditional_losses_163285r Cб@
9б6
,і)
my_model_input         
p

 
ф "%б"
і
0         

џ Й
P__inference_my_probability_model_layer_call_and_return_conditional_losses_163331j ;б8
1б.
$і!
inputs         
p 

 
ф "%б"
і
0         

џ Й
P__inference_my_probability_model_layer_call_and_return_conditional_losses_163351j ;б8
1б.
$і!
inputs         
p

 
ф "%б"
і
0         

џ ъ
5__inference_my_probability_model_layer_call_fn_163198e Cб@
9б6
,і)
my_model_input         
p 

 
ф "і         
ъ
5__inference_my_probability_model_layer_call_fn_163257e Cб@
9б6
,і)
my_model_input         
p

 
ф "і         
ќ
5__inference_my_probability_model_layer_call_fn_163298] ;б8
1б.
$і!
inputs         
p 

 
ф "і         
ќ
5__inference_my_probability_model_layer_call_fn_163311] ;б8
1б.
$і!
inputs         
p

 
ф "і         
▒
$__inference_signature_wrapper_163366ѕ MбJ
б 
Cф@
>
my_model_input,і)
my_model_input         "1ф.
,
softmax!і
softmax         
Б
C__inference_softmax_layer_call_and_return_conditional_losses_163444\3б0
)б&
 і
inputs         


 
ф "%б"
і
0         

џ {
(__inference_softmax_layer_call_fn_163439O3б0
)б&
 і
inputs         


 
ф "і         
