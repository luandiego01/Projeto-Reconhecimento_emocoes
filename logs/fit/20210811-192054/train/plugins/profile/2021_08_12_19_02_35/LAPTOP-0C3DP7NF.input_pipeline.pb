	?H?>??@?H?>??@!?H?>??@	˒֩???˒֩???!˒֩???"{
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails:?H?>??@??<????A??$b??@Y`YiR
z??rEagerKernelExecute 0*	1???A2~
GIterator::Model::MaxIntraOpParallelism::Prefetch::FlatMap[0]::Generator+???Y
g@!!r???X@)+???Y
g@1!r???X@:Preprocessing2F
Iterator::Model?g??????!î??????)???????1??\˝x??:Preprocessing2g
0Iterator::Model::MaxIntraOpParallelism::Prefetcha???p???!T??GӁ??)a???p???1T??GӁ??:Preprocessing2]
&Iterator::Model::MaxIntraOpParallelism=?;k?]??!??<J??)???3???1?;?)FC??:Preprocessing2p
9Iterator::Model::MaxIntraOpParallelism::Prefetch::FlatMapY???
g@!?.Db?X@)?m?2d??1?g?h??s?:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
device?Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9˒֩???I[??x?X@Zno#You may skip the rest of this page.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??<??????<????!??<????      ??!       "      ??!       *      ??!       2	??$b??@??$b??@!??$b??@:      ??!       B      ??!       J	`YiR
z??`YiR
z??!`YiR
z??R      ??!       Z	`YiR
z??`YiR
z??!`YiR
z??b      ??!       JCPU_ONLYY˒֩???b q[??x?X@