add_llvm_library(LLVMCodeGen
  BranchFolding.cpp
  CodePlacementOpt.cpp
  DeadMachineInstructionElim.cpp
  Dump.cpp
  DwarfEHPrepare.cpp
  ELFCodeEmitter.cpp
  ELFWriter.cpp
  ExactHazardRecognizer.cpp
  GCMetadata.cpp
  GCMetadataPrinter.cpp
  GCStrategy.cpp
  IfConversion.cpp
  IntrinsicLowering.cpp
  LLVMTargetMachine.cpp
  LatencyPriorityQueue.cpp
  LazyLiveness.cpp
  LiveInterval.cpp
  LiveIntervalAnalysis.cpp
  LiveStackAnalysis.cpp
  LiveVariables.cpp
  LowerSubregs.cpp
  MachOCodeEmitter.cpp
  MachOWriter.cpp
  MachineBasicBlock.cpp
  MachineDominators.cpp
  MachineFunction.cpp
  MachineFunctionAnalysis.cpp
  MachineFunctionPass.cpp
  MachineInstr.cpp
  MachineLICM.cpp
  MachineLoopInfo.cpp
  MachineModuleInfo.cpp
  MachinePassRegistry.cpp
  MachineRegisterInfo.cpp
  MachineSink.cpp
  MachineVerifier.cpp
  ObjectCodeEmitter.cpp
  OcamlGC.cpp
  PHIElimination.cpp
  Passes.cpp
  PostRASchedulerList.cpp
  PreAllocSplitting.cpp
  PrologEpilogInserter.cpp
  PseudoSourceValue.cpp
  RegAllocLinearScan.cpp
  RegAllocLocal.cpp
  RegAllocPBQP.cpp
  RegAllocSimple.cpp
  RegisterCoalescer.cpp
  RegisterScavenging.cpp
  ScheduleDAG.cpp
  ScheduleDAGEmit.cpp
  ScheduleDAGInstrs.cpp
  ScheduleDAGPrinter.cpp
  ShadowStackGC.cpp
  ShrinkWrapping.cpp
  SimpleRegisterCoalescing.cpp
  SjLjEHPrepare.cpp
  Spiller.cpp
  StackProtector.cpp
  StackSlotColoring.cpp
  StrongPHIElimination.cpp
  TargetInstrInfoImpl.cpp
  TwoAddressInstructionPass.cpp
  UnreachableBlockElim.cpp
  VirtRegMap.cpp
  VirtRegRewriter.cpp
  )

target_link_libraries (LLVMCodeGen LLVMCore LLVMScalarOpts)
