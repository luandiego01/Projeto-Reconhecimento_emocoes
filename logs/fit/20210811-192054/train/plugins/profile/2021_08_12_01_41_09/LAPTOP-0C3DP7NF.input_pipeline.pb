	0?????@0?????@!0?????@	ޚ?xT?U?ޚ?xT?U?!ޚ?xT?U?"{
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails:0?????@~?[?~l??A?????@Y5^?I??rEagerKernelExecute 0*	    ?A2~
GIterator::Model::MaxIntraOpParallelism::Prefetch::FlatMap[0]::Generator?Pk?w6l@!m00GZ?X@)?Pk?w6l@1m00GZ?X@:Preprocessing2g
0Iterator::Model::MaxIntraOpParallelism::Prefetch??&???!e?????)??&???1e?????:Preprocessing2]
&Iterator::Model::MaxIntraOpParallelismQk?w????!KE8w[d??)?Zd;??1+J??????:Preprocessing2F
Iterator::Model#J{?/L??!^W????)??_?L??1??????r?:Preprocessing2p
9Iterator::Model::MaxIntraOpParallelism::Prefetch::FlatMap?z6?6l@!?-????X@) ?o_?y?1??~V?f?:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
device?Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9ݚ?xT?U?I??@??X@Zno#You may skip the rest of this page.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	~?[?~l??~?[?~l??!~?[?~l??      ??!       "      ??!       *      ??!       2	?????@?????@!?????@:      ??!       B      ??!       J	5^?I??5^?I??!5^?I??R      ??!       Z	5^?I??5^?I??!5^?I??b      ??!       JCPU_ONLYYݚ?xT?U?b q??@??X@