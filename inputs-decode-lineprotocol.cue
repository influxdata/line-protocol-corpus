package lpcorpus

inputs: decode: lineprotocol: [{
	text:        "c\\ pu value=42"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "c\\,pu value=42"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text: """
		cpu abababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababab=invalid
		cpu value=42
		"""
	defaultTime: -6795364578871345152
	precision:   "1ns"
}, {
	text:        "cpu va\\ lue=42"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "cpu va\\,lue=42"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "cpu va\\=lue=42"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "cpu va\\lue=42"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "cpu value=18446744073709551615u"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "cpu value=18446744073709551616u"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "cpu value=42 0"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text: """
		cpu value=42 0

		"""
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "cpu value=42"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "cpu value=42"
	defaultTime: 42123456789
	precision:   "1ns"
}, {
	text: """
		cpu value=42
		cpu value=invalid
		cpu value=42
		"""
	defaultTime: -6795364578871345152
	precision:   "1ns"
}, {
	text: """
		cpu value=42
		cpu value=invalid
		cpu value=42
		cpu value=invalid
		"""
	defaultTime: -6795364578871345152
	precision:   "1ns"
}, {
	text:        "cpu value=42i"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "cpu value=42u"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "cpu value=9223372036854775807i"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "cpu value=9223372036854775808i"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text: """
		cpu value=9223372036854775808i
		cpu value=42
		"""
	defaultTime: -6795364578871345152
	precision:   "1ns"
}, {
	text:        "cpu value=\"42\""
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text: """
		cpu value="4
		2"
		"""
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "cpu value=\"how\\\"dy\""
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "cpu value=\"how\\\\dy\""
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "cpu value=true"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "cpu"
	defaultTime: -6795364578871345152
	precision:   "1ns"
}, {
	text:        "cpu"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "cpu,a="
	defaultTime: -6795364578871345152
	precision:   "1ns"
}, {
	text:        "cpu,a=x,b=y"
	defaultTime: -6795364578871345152
	precision:   "1ns"
}, {
	text:        "cpu,cpu=cpu0,host=localhost value=42"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "cpu,ho\\,st=localhost value=42"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "cpu,ho\\=st=localhost value=42"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "cpu,ho\\st=localhost value=42"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "cpu,host=two\\ words value=42"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "cpu,host=two\\\\ words value=42"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "cpu,host=two\\\\\\ words value=42"
	defaultTime: 42000000000
	precision:   "1ns"
}, {
	text:        "procstat,exe=bash,process_name=bash voluntary_context_switches=42i,memory_rss=5103616i,rlimit_memory_data_hard=2147483647i,cpu_time_user=0.02,rlimit_file_locks_soft=2147483647i,pid=29417i,cpu_time_nice=0,rlimit_memory_locked_soft=65536i,read_count=259i,rlimit_memory_vms_hard=2147483647i,memory_swap=0i,rlimit_num_fds_soft=1024i,rlimit_nice_priority_hard=0i,cpu_time_soft_irq=0,cpu_time=0i,rlimit_memory_locked_hard=65536i,realtime_priority=0i,signals_pending=0i,nice_priority=20i,cpu_time_idle=0,memory_stack=139264i,memory_locked=0i,rlimit_memory_stack_soft=8388608i,cpu_time_iowait=0,cpu_time_guest=0,cpu_time_guest_nice=0,rlimit_memory_data_soft=2147483647i,read_bytes=0i,rlimit_cpu_time_soft=2147483647i,involuntary_context_switches=2i,write_bytes=106496i,cpu_time_system=0,cpu_time_irq=0,cpu_usage=0,memory_vms=21659648i,memory_data=1576960i,rlimit_memory_stack_hard=2147483647i,num_threads=1i,rlimit_memory_rss_soft=2147483647i,rlimit_realtime_priority_soft=0i,num_fds=4i,write_count=35i,rlimit_signals_pending_soft=78994i,cpu_time_steal=0,rlimit_num_fds_hard=4096i,rlimit_file_locks_hard=2147483647i,rlimit_cpu_time_hard=2147483647i,rlimit_signals_pending_hard=78994i,rlimit_nice_priority_soft=0i,rlimit_memory_rss_hard=2147483647i,rlimit_memory_vms_soft=2147483647i,rlimit_realtime_priority_hard=0i 1517620624000000000"
	defaultTime: 42000000000
	precision:   "1ns"
}]
