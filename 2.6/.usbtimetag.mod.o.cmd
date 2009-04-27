cmd_/home/chris/programs/usbtimetagdriver/2.6/usbtimetag.mod.o := gcc -Wp,-MD,/home/chris/programs/usbtimetagdriver/2.6/.usbtimetag.mod.o.d  -nostdinc -isystem /usr/lib64/gcc/x86_64-suse-linux/4.2.1/include -D__KERNEL__ -Iinclude -Iinclude2 -I/usr/src/linux-2.6.22.17-0.1/include -include include/linux/autoconf.h  -I/usr/src/linux-2.6.22.17-0.1/ -I -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -Werror-implicit-function-declaration -fno-strict-aliasing -fno-common -Os -mtune=generic -m64 -mno-red-zone -mcmodel=kernel -pipe -Wno-sign-compare -fno-asynchronous-unwind-tables -funit-at-a-time -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -maccumulate-outgoing-args -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -fomit-frame-pointer -fno-stack-protector -Wdeclaration-after-statement -Wno-pointer-sign  -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(usbtimetag.mod)"  -D"KBUILD_MODNAME=KBUILD_STR(usbtimetag)" -DMODULE -c -o /home/chris/programs/usbtimetagdriver/2.6/usbtimetag.mod.o /home/chris/programs/usbtimetagdriver/2.6/usbtimetag.mod.c

deps_/home/chris/programs/usbtimetagdriver/2.6/usbtimetag.mod.o := \
  /home/chris/programs/usbtimetagdriver/2.6/usbtimetag.mod.c \
    $(wildcard include/config/module/unload.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/module.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/sysfs.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/spinlock.h \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/thread_info.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbd.h) \
    $(wildcard include/config/lsf.h) \
    $(wildcard include/config/resources/64bit.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/posix_types.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/stddef.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/compiler.h \
    $(wildcard include/config/enable/must/check.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/compiler-gcc4.h \
    $(wildcard include/config/forced/inlining.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/compiler-gcc.h \
  include2/asm/posix_types.h \
  include2/asm/types.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/bitops.h \
  include2/asm/bitops.h \
  include2/asm/alternative.h \
    $(wildcard include/config/paravirt.h) \
  include2/asm/cpufeature.h \
  /usr/src/linux-2.6.22.17-0.1/include/asm-generic/bitops/sched.h \
  /usr/src/linux-2.6.22.17-0.1/include/asm-generic/bitops/hweight.h \
  /usr/src/linux-2.6.22.17-0.1/include/asm-generic/bitops/ext2-non-atomic.h \
  /usr/src/linux-2.6.22.17-0.1/include/asm-generic/bitops/le.h \
  include2/asm/byteorder.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/byteorder/little_endian.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/byteorder/swab.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/byteorder/generic.h \
  /usr/src/linux-2.6.22.17-0.1/include/asm-generic/bitops/minix.h \
  include2/asm/thread_info.h \
    $(wildcard include/config/debug/stack/usage.h) \
    $(wildcard include/config/xen.h) \
  include2/asm/page.h \
    $(wildcard include/config/physical/start.h) \
    $(wildcard include/config/flatmem.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/const.h \
  include2/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/debug/bugverbose.h) \
  /usr/src/linux-2.6.22.17-0.1/include/asm-generic/bug.h \
  /usr/src/linux-2.6.22.17-0.1/include/asm-generic/memory_model.h \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/out/of/line/pfn/to/page.h) \
  /usr/src/linux-2.6.22.17-0.1/include/asm-generic/page.h \
  include2/asm/pda.h \
    $(wildcard include/config/cc/stackprotector.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/cache.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/spinlock/sleep.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/numa.h) \
  /usr/lib64/gcc/x86_64-suse-linux/4.2.1/include/stdarg.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/linkage.h \
  include2/asm/linkage.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include2/asm/cache.h \
    $(wildcard include/config/x86/l1/cache/shift.h) \
    $(wildcard include/config/x86/vsmp.h) \
  include2/asm/mmsegment.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/stringify.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/bottom_half.h \
  include2/asm/system.h \
    $(wildcard include/config/unordered/io.h) \
  include2/asm/segment.h \
  include2/asm/cmpxchg.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
    $(wildcard include/config/x86.h) \
  include2/asm/irqflags.h \
  include2/asm/processor-flags.h \
  /usr/src/linux-2.6.22.17-0.1/include/asm-i386/processor-flags.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/spinlock_types.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/generic/hardirqs.h) \
    $(wildcard include/config/prove/locking.h) \
  include2/asm/spinlock_types.h \
  include2/asm/spinlock.h \
  include2/asm/atomic.h \
  /usr/src/linux-2.6.22.17-0.1/include/asm-generic/atomic.h \
  include2/asm/rwlock.h \
  include2/asm/processor.h \
  include2/asm/sigcontext.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  include2/asm/msr.h \
  include2/asm/msr-index.h \
  /usr/src/linux-2.6.22.17-0.1/include/asm-i386/msr-index.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/errno.h \
  include2/asm/errno.h \
  /usr/src/linux-2.6.22.17-0.1/include/asm-generic/errno.h \
  /usr/src/linux-2.6.22.17-0.1/include/asm-generic/errno-base.h \
  include2/asm/current.h \
  include2/asm/percpu.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/personality.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/cpumask.h \
    $(wildcard include/config/hotplug/cpu.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/bitmap.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/string.h \
  include2/asm/string.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/spinlock_api_smp.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/poison.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/prefetch.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/stat.h \
  include2/asm/stat.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/time.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/seqlock.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/kmod.h \
    $(wildcard include/config/kmod.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/elf.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/elf-em.h \
  include2/asm/elf.h \
  include2/asm/ptrace.h \
  include2/asm/ptrace-abi.h \
  include2/asm/user.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/kobject.h \
    $(wildcard include/config/hotplug.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/sysfs.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/kref.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/wait.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/moduleparam.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/init.h \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/acpi/hotplug/memory.h) \
  include2/asm/local.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/percpu.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/slab.h \
    $(wildcard include/config/slab/debug.h) \
    $(wildcard include/config/slab.h) \
    $(wildcard include/config/slub.h) \
    $(wildcard include/config/debug/slab.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/gfp.h \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/highmem.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/arch/populates/node/map.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/nodemask.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/memory_hotplug.h \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/notifier.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/rwsem-spinlock.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/srcu.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/smp.h \
  include2/asm/smp.h \
  include2/asm/mpspec.h \
    $(wildcard include/config/acpi.h) \
  include2/asm/apic.h \
    $(wildcard include/config/x86/good/apic.h) \
    $(wildcard include/config/x86/local/apic.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/pm.h \
    $(wildcard include/config/pm.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/delay.h \
  include2/asm/delay.h \
  include2/asm/fixmap.h \
  include2/asm/apicdef.h \
  include2/asm/vsyscall.h \
    $(wildcard include/config/generic/time.h) \
  include2/asm/io_apic.h \
  include2/asm/topology.h \
    $(wildcard include/config/acpi/numa.h) \
  /usr/src/linux-2.6.22.17-0.1/include/asm-generic/topology.h \
  include2/asm/mmzone.h \
    $(wildcard include/config/numa/emu.h) \
  /usr/src/linux-2.6.22.17-0.1/include/linux/slab_def.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/kmalloc_sizes.h \
  include2/asm/module.h \
  /usr/src/linux-2.6.22.17-0.1/include/linux/vermagic.h \
  include/linux/utsrelease.h \

/home/chris/programs/usbtimetagdriver/2.6/usbtimetag.mod.o: $(deps_/home/chris/programs/usbtimetagdriver/2.6/usbtimetag.mod.o)

$(deps_/home/chris/programs/usbtimetagdriver/2.6/usbtimetag.mod.o):
