;    Copyright 2005-2006 The Apache Software Foundation or its licensors, as applicable
;
;    Licensed under the Apache License, Version 2.0 (the "License");
;    you may not use this file except in compliance with the License.
;    You may obtain a copy of the License at
;
;       http://www.apache.org/licenses/LICENSE-2.0
;
;    Unless required by applicable law or agreed to in writing, software
;    distributed under the License is distributed on an "AS IS" BASIS,
;    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
;
;    See the License for the specific language governing permissions and
;    limitations under the License.

;
; Author: Alexander D. Shipilov
; Version: $Revision: 1.2 $
;

.class public org/apache/harmony/vts/test/vm/jvms/instructions/sync/monitorexit/monitorexit02/monitorexit0201/monitorexit0201p
.super java/lang/Thread

;
; initializer
.method public <init>()V
   aload_0
   invokespecial java/lang/Thread/<init>()V  
   return
.end method

;
; test method
.method public test([Ljava/lang/String;)I
   .limit stack 2
   .limit locals 3

   .catch java/lang/NullPointerException from first to second using catcher
 first:

   aconst_null ; push null
   monitorexit ; must throw java/lang/NullPointerException
   sipush 105
   ireturn

 second:
 catcher:
 ; exception has been thrown
   sipush 104
   ireturn

   return
.end method

;
; standard main function
.method public static main([Ljava/lang/String;)V
  .limit stack 3
  .limit locals 1

  new org/apache/harmony/vts/test/vm/jvms/instructions/sync/monitorexit/monitorexit02/monitorexit0201/monitorexit0201p
  dup
  dup
  invokespecial org/apache/harmony/vts/test/vm/jvms/instructions/sync/monitorexit/monitorexit02/monitorexit0201/monitorexit0201p/<init>()V
  aload_0
  invokevirtual org/apache/harmony/vts/test/vm/jvms/instructions/sync/monitorexit/monitorexit02/monitorexit0201/monitorexit0201p/test([Ljava/lang/String;)I
  invokestatic java/lang/System/exit(I)V
  
  return
.end method
