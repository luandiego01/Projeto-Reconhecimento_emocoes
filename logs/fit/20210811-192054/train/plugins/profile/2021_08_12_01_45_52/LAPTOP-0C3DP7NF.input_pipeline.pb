	??Vϙk?@??Vϙk?@!??Vϙk?@	)???3?b?)???3?b?!)???3?b?"{
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails:??Vϙk?@`>Y1\??AZ??[k?@YȘ?????rEagerKernelExecute 0*?????A)      ?=2~
GIterator::Model::MaxIntraOpParallelism::Prefetch::FlatMap[0]::Generator?
F%u@i@!P?l8??X@)?
F%u@i@1P?l8??X@:Preprocessing2g
0Iterator::Model::MaxIntraOpParallelism::PrefetchaTR'????!fEB^??)aTR'????1fEB^??:Preprocessing2]
&Iterator::Model::MaxIntraOpParallelismW[??재?!?.%yS??)??0?*??1@??????:Preprocessing2F
Iterator::Model??????!$????)-C??6z?1??gX??i?:Preprocessing2p
9Iterator::Model::MaxIntraOpParallelism::Prefetch::FlatMap??0?@i@!?????X@)/n??r?1EE?9?a?:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
device?Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9)???3?b?I?????X@Zno#You may skip the rest of this page.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	`>Y1\??`>Y1\??!`>Y1\??      ??!       "      ??!       *      ??!       2	Z??[k?@Z??[k?@!Z??[k?@:      ??!       B      ??!       J	Ș?????Ș?????!Ș?????R      ??!       Z	Ș?????Ș?????!Ș?????b      ??!       JCPU_ONLYY)???3?b?b q?????X@