#set solib-absolute-prefix /home/mamk/ssd/workcode/BrowserShell/platform/android/obj/local/armeabi
#set solib-search-path /home/mamk/ssd/workcode/BrowserShell/platform/android/obj/local/armeabi:/home/mamk/ssd/u3player/sdk-android/RockPlayerSDK/obj/local/armeabi:/home/mamk/ssd/u3player/ffmpeg/build-ffmpeg/android/armv7_neon/debug/
set solib-search-path /home/mamk/ssd/u3player/OUT/SYMBOL:/home/mamk/ssd/workcode/BrowserShell/platform/android/obj/local/armeabi:/home/mamk/gdb/huawei/
set pagination off
handle SIGHUP nostop pass noprint
handle SIG34 nostop noprint pass
define gobt  
  set logging file .gdb.btt  
  set logging overwrite on  
  set logging redirect on  
  set logging on  
  bt  
  set logging off  
  shell echo \#Local Variables: \# >>  .gdb.btt  
  shell echo \#mode: compilation \# >>  .gdb.btt  
  shell echo \#End: \# >>  .gdb.btt  
  shell emacsclient -n .gdb.btt  
end 

file ~/gdb/app_process
target remote:5039
