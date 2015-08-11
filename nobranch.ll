; ModuleID = '/home/paslab/weichen/llvm_hsa/test/nobranch.cl'
target datalayout = "e-p:32:32:32-i1:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v32:32:32-v64:64:64-v128:128:128-n16:32:64"
target triple = "hsail"

; Function Attrs: nounwind readnone
define i32 @fun(i32* %in) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %sum.04 = phi i32 [ undef, %entry ], [ %conv, %for.body ]
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %add.ptr = getelementptr inbounds i32* %in, i32 %sum.04
  %conv = ptrtoint i32* %add.ptr to i32
  %inc = add nsw i32 %i.03, 1
  %exitcond = icmp eq i32 %inc, 1000
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret i32 %conv
}

; Function Attrs: noinline nounwind
define void @vector_copy(i32 addrspace(1)* nocapture %in, i32 addrspace(1)* nocapture %out, i32 %iter, i32 %element) #1 {
entry:
  %0 = tail call i32 @llvm.hsavm.workgroupid(i32 0)
  %1 = tail call i32 @llvm.hsavm.workgroupsize(i32 0)
  %mul = mul nsw i32 %1, %0
  %2 = tail call i32 @llvm.hsavm.workitemid(i32 0)
  %add = add nsw i32 %mul, %2
  %arrayidx = getelementptr inbounds i32 addrspace(1)* %in, i32 %add
  %3 = load i32 addrspace(1)* %arrayidx, align 4, !tbaa !2
  %4 = inttoptr i32 %3 to i32*
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %sum.04.i = phi i32 [ undef, %entry ], [ %conv.i, %for.body.i ]
  %i.03.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  %add.ptr.i = getelementptr inbounds i32* %4, i32 %sum.04.i
  %conv.i = ptrtoint i32* %add.ptr.i to i32
  %inc.i = add nsw i32 %i.03.i, 1
  %exitcond.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.i, label %fun.exit, label %for.body.i

fun.exit:                                         ; preds = %for.body.i
  %arrayidx1 = getelementptr inbounds i32 addrspace(1)* %out, i32 %add
  store i32 %conv.i, i32 addrspace(1)* %arrayidx1, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @llvm.hsavm.workgroupid(i32) #2

; Function Attrs: nounwind readnone
declare i32 @llvm.hsavm.workgroupsize(i32) #2

; Function Attrs: nounwind readnone
declare i32 @llvm.hsavm.workitemid(i32) #2

attributes #0 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!opencl.kernels = !{!0}
!hsavm.annotations = !{!1}

!0 = metadata !{void (i32 addrspace(1)*, i32 addrspace(1)*, i32, i32)* @vector_copy}
!1 = metadata !{void (i32 addrspace(1)*, i32 addrspace(1)*, i32, i32)* @vector_copy, metadata !"kernel", i32 1}
!2 = metadata !{metadata !"int", metadata !3}
!3 = metadata !{metadata !"omnipotent char", metadata !4}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
