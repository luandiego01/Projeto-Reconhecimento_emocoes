?	?I??(?@?I??(?@!?I??(?@	??/cM????/cM??!??/cM??"{
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails:?I??(?@?wJ@A??V5?@Yf?c]ܦ!@rEagerKernelExecute 0*	?????A2~
GIterator::Model::MaxIntraOpParallelism::Prefetch::FlatMap[0]::Generator,e?X?v@!S0??̫X@),e?X?v@1S0??̫X@:Preprocessing2g
0Iterator::Model::MaxIntraOpParallelism::Prefetch?[ A???!p?n?(%??)?[ A???1p?n?(%??:Preprocessing2]
&Iterator::Model::MaxIntraOpParallelism?N@aC@!
?QeD??)/?$????15??gx>??:Preprocessing2F
Iterator::Model5?8EGr@!7Z?c???)?c?ZB??1???¬??:Preprocessing2p
9Iterator::Model::MaxIntraOpParallelism::Prefetch::FlatMap??H.??v@!?j?sʰX@))??0???1%??(???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
device?Your program is NOT input-bound because only 0.4% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9??/cM??I2М???X@Zno#You may skip the rest of this page.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?wJ@?wJ@!?wJ@      ??!       "      ??!       *      ??!       2	??V5?@??V5?@!??V5?@:      ??!       B      ??!       J	f?c]ܦ!@f?c]ܦ!@!f?c]ܦ!@R      ??!       Z	f?c]ܦ!@f?c]ܦ!@!f?c]ܦ!@b      ??!       JCPU_ONLYY??/cM??b q2М???X@Y      Y@q!%?M?"??"?
device?Your program is NOT input-bound because only 0.4% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2M
=type.googleapis.com/tensorflow.profiler.GenericRecommendation
nono2no:
Refer to the TF2 Profiler FAQ2"CPU: B 