# HelloBlock

we have a crash in our app, here is the call stack:
 
EXC_BAD_ACCESS KERN_INVALID_ADDRESS 0x0000000e4f52bec8
 
#17. Crashed: com.apple.NSURLSession-work
0  libobjc.A.dylib                0x184c997f4 objc_object::release() + 8
1  CoreFoundation                 0x1861020a8 -[__NSDictionaryI dealloc] + 136
2  Foundation                     0x186c0cb34 -[NSError dealloc] + 68
3  CFNetwork                      0x186a75fbc -[__NSCFURLSessionTask dealloc] + 480
4  CFNetwork                      0x18683bab0 -[__NSCFLocalSessionTask dealloc] + 444
5  libsystem_blocks.dylib         0x185127a68 _Block_release + 160
6  libdispatch.dylib              0x1850d29a0 _dispatch_client_callout + 16
7  libdispatch.dylib              0x1850df604 _dispatch_continuation_pop + 448
8  libdispatch.dylib              0x1850d4930 _dispatch_source_invoke + 948
9  libdispatch.dylib              0x1850e0964 _dispatch_queue_serial_drain + 560
10 libdispatch.dylib              0x1850d62cc _dispatch_queue_invoke + 884
11 libdispatch.dylib              0x1850e2a50 _dispatch_root_queue_drain + 540
12 libdispatch.dylib              0x1850e27d0 _dispatch_worker_thread3 + 124
13 libsystem_pthread.dylib        0x1852db100 _pthread_wqthread + 1096
14 libsystem_pthread.dylib        0x1852dacac start_wqthread + 4
