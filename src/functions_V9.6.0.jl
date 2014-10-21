# Julia wrapper for header: NIDAQmx_V9.6.0.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function DAQmxLoadTask(taskName::Ptr{Uint8},taskHandle::Ptr{TaskHandle})
    ccall((:DAQmxLoadTask,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{TaskHandle}),taskName,taskHandle)
end

function DAQmxCreateTask(taskName::Ptr{Uint8},taskHandle::Ptr{TaskHandle})
    ccall((:DAQmxCreateTask,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{TaskHandle}),taskName,taskHandle)
end

function DAQmxAddGlobalChansToTask(taskHandle::TaskHandle,channelNames::Ptr{Uint8})
    ccall((:DAQmxAddGlobalChansToTask,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channelNames)
end

function DAQmxStartTask(taskHandle::TaskHandle)
    ccall((:DAQmxStartTask,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxStopTask(taskHandle::TaskHandle)
    ccall((:DAQmxStopTask,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxClearTask(taskHandle::TaskHandle)
    ccall((:DAQmxClearTask,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxWaitUntilTaskDone(taskHandle::TaskHandle,timeToWait::float64)
    ccall((:DAQmxWaitUntilTaskDone,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,timeToWait)
end

function DAQmxIsTaskDone(taskHandle::TaskHandle,isTaskDone::Ptr{bool32})
    ccall((:DAQmxIsTaskDone,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,isTaskDone)
end

function DAQmxTaskControl(taskHandle::TaskHandle,action::int32)
    ccall((:DAQmxTaskControl,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,action)
end

function DAQmxGetNthTaskChannel(taskHandle::TaskHandle,index::uInt32,buffer::Ptr{Uint8},bufferSize::int32)
    ccall((:DAQmxGetNthTaskChannel,NIDAQmx_V9.6.0),int32,(TaskHandle,uInt32,Ptr{Uint8},int32),taskHandle,index,buffer,bufferSize)
end

function DAQmxGetNthTaskDevice(taskHandle::TaskHandle,index::uInt32,buffer::Ptr{Uint8},bufferSize::int32)
    ccall((:DAQmxGetNthTaskDevice,NIDAQmx_V9.6.0),int32,(TaskHandle,uInt32,Ptr{Uint8},int32),taskHandle,index,buffer,bufferSize)
end

function DAQmxRegisterEveryNSamplesEvent(task::TaskHandle,everyNsamplesEventType::int32,nSamples::uInt32,options::uInt32,callbackFunction::DAQmxEveryNSamplesEventCallbackPtr,callbackData::Ptr{Void})
    ccall((:DAQmxRegisterEveryNSamplesEvent,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,uInt32,uInt32,DAQmxEveryNSamplesEventCallbackPtr,Ptr{Void}),task,everyNsamplesEventType,nSamples,options,callbackFunction,callbackData)
end

function DAQmxRegisterDoneEvent(task::TaskHandle,options::uInt32,callbackFunction::DAQmxDoneEventCallbackPtr,callbackData::Ptr{Void})
    ccall((:DAQmxRegisterDoneEvent,NIDAQmx_V9.6.0),int32,(TaskHandle,uInt32,DAQmxDoneEventCallbackPtr,Ptr{Void}),task,options,callbackFunction,callbackData)
end

function DAQmxRegisterSignalEvent(task::TaskHandle,signalID::int32,options::uInt32,callbackFunction::DAQmxSignalEventCallbackPtr,callbackData::Ptr{Void})
    ccall((:DAQmxRegisterSignalEvent,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,uInt32,DAQmxSignalEventCallbackPtr,Ptr{Void}),task,signalID,options,callbackFunction,callbackData)
end

function DAQmxCreateAIVoltageChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAIVoltageChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,float64,float64,int32,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,customScaleName)
end

function DAQmxCreateAICurrentChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,shuntResistorLoc::int32,extShuntResistorVal::float64,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAICurrentChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,float64,float64,int32,int32,float64,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,shuntResistorLoc,extShuntResistorVal,customScaleName)
end

function DAQmxCreateAIVoltageRMSChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAIVoltageRMSChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,float64,float64,int32,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,customScaleName)
end

function DAQmxCreateAICurrentRMSChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,shuntResistorLoc::int32,extShuntResistorVal::float64,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAICurrentRMSChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,float64,float64,int32,int32,float64,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,shuntResistorLoc,extShuntResistorVal,customScaleName)
end

function DAQmxCreateAIThrmcplChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,thermocoupleType::int32,cjcSource::int32,cjcVal::float64,cjcChannel::Ptr{Uint8})
    ccall((:DAQmxCreateAIThrmcplChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,int32,float64,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,thermocoupleType,cjcSource,cjcVal,cjcChannel)
end

function DAQmxCreateAIRTDChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,rtdType::int32,resistanceConfig::int32,currentExcitSource::int32,currentExcitVal::float64,r0::float64)
    ccall((:DAQmxCreateAIRTDChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,int32,int32,float64,float64),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,rtdType,resistanceConfig,currentExcitSource,currentExcitVal,r0)
end

function DAQmxCreateAIThrmstrChanIex(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,resistanceConfig::int32,currentExcitSource::int32,currentExcitVal::float64,a::float64,b::float64,c::float64)
    ccall((:DAQmxCreateAIThrmstrChanIex,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,int32,float64,float64,float64,float64),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,resistanceConfig,currentExcitSource,currentExcitVal,a,b,c)
end

function DAQmxCreateAIThrmstrChanVex(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,resistanceConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,a::float64,b::float64,c::float64,r1::float64)
    ccall((:DAQmxCreateAIThrmstrChanVex,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,int32,float64,float64,float64,float64,float64),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,resistanceConfig,voltageExcitSource,voltageExcitVal,a,b,c,r1)
end

function DAQmxCreateAIFreqVoltageChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,thresholdLevel::float64,hysteresis::float64,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAIFreqVoltageChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,float64,float64,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,thresholdLevel,hysteresis,customScaleName)
end

function DAQmxCreateAIResistanceChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,resistanceConfig::int32,currentExcitSource::int32,currentExcitVal::float64,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAIResistanceChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,int32,float64,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,resistanceConfig,currentExcitSource,currentExcitVal,customScaleName)
end

function DAQmxCreateAIStrainGageChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,strainConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,gageFactor::float64,initialBridgeVoltage::float64,nominalGageResistance::float64,poissonRatio::float64,leadWireResistance::float64,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAIStrainGageChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,int32,float64,float64,float64,float64,float64,float64,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,strainConfig,voltageExcitSource,voltageExcitVal,gageFactor,initialBridgeVoltage,nominalGageResistance,poissonRatio,leadWireResistance,customScaleName)
end

function DAQmxCreateAIRosetteStrainGageChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,rosetteType::int32,gageOrientation::float64,rosetteMeasTypes::Ptr{int32},numRosetteMeasTypes::uInt32,strainConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,gageFactor::float64,nominalGageResistance::float64,poissonRatio::float64,leadWireResistance::float64)
    ccall((:DAQmxCreateAIRosetteStrainGageChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,float64,Ptr{int32},uInt32,int32,int32,float64,float64,float64,float64,float64),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,rosetteType,gageOrientation,rosetteMeasTypes,numRosetteMeasTypes,strainConfig,voltageExcitSource,voltageExcitVal,gageFactor,nominalGageResistance,poissonRatio,leadWireResistance)
end

function DAQmxCreateAIForceBridgeTwoPointLinChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,bridgeConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,nominalBridgeResistance::float64,firstElectricalVal::float64,secondElectricalVal::float64,electricalUnits::int32,firstPhysicalVal::float64,secondPhysicalVal::float64,physicalUnits::int32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAIForceBridgeTwoPointLinChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,int32,float64,float64,float64,float64,int32,float64,float64,int32,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,bridgeConfig,voltageExcitSource,voltageExcitVal,nominalBridgeResistance,firstElectricalVal,secondElectricalVal,electricalUnits,firstPhysicalVal,secondPhysicalVal,physicalUnits,customScaleName)
end

function DAQmxCreateAIForceBridgeTableChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,bridgeConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,nominalBridgeResistance::float64,electricalVals::Ptr{float64},numElectricalVals::uInt32,electricalUnits::int32,physicalVals::Ptr{float64},numPhysicalVals::uInt32,physicalUnits::int32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAIForceBridgeTableChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,int32,float64,float64,Ptr{float64},uInt32,int32,Ptr{float64},uInt32,int32,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,bridgeConfig,voltageExcitSource,voltageExcitVal,nominalBridgeResistance,electricalVals,numElectricalVals,electricalUnits,physicalVals,numPhysicalVals,physicalUnits,customScaleName)
end

function DAQmxCreateAIForceBridgePolynomialChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,bridgeConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,nominalBridgeResistance::float64,forwardCoeffs::Ptr{float64},numForwardCoeffs::uInt32,reverseCoeffs::Ptr{float64},numReverseCoeffs::uInt32,electricalUnits::int32,physicalUnits::int32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAIForceBridgePolynomialChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,int32,float64,float64,Ptr{float64},uInt32,Ptr{float64},uInt32,int32,int32,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,bridgeConfig,voltageExcitSource,voltageExcitVal,nominalBridgeResistance,forwardCoeffs,numForwardCoeffs,reverseCoeffs,numReverseCoeffs,electricalUnits,physicalUnits,customScaleName)
end

function DAQmxCreateAIPressureBridgeTwoPointLinChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,bridgeConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,nominalBridgeResistance::float64,firstElectricalVal::float64,secondElectricalVal::float64,electricalUnits::int32,firstPhysicalVal::float64,secondPhysicalVal::float64,physicalUnits::int32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAIPressureBridgeTwoPointLinChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,int32,float64,float64,float64,float64,int32,float64,float64,int32,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,bridgeConfig,voltageExcitSource,voltageExcitVal,nominalBridgeResistance,firstElectricalVal,secondElectricalVal,electricalUnits,firstPhysicalVal,secondPhysicalVal,physicalUnits,customScaleName)
end

function DAQmxCreateAIPressureBridgeTableChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,bridgeConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,nominalBridgeResistance::float64,electricalVals::Ptr{float64},numElectricalVals::uInt32,electricalUnits::int32,physicalVals::Ptr{float64},numPhysicalVals::uInt32,physicalUnits::int32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAIPressureBridgeTableChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,int32,float64,float64,Ptr{float64},uInt32,int32,Ptr{float64},uInt32,int32,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,bridgeConfig,voltageExcitSource,voltageExcitVal,nominalBridgeResistance,electricalVals,numElectricalVals,electricalUnits,physicalVals,numPhysicalVals,physicalUnits,customScaleName)
end

function DAQmxCreateAIPressureBridgePolynomialChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,bridgeConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,nominalBridgeResistance::float64,forwardCoeffs::Ptr{float64},numForwardCoeffs::uInt32,reverseCoeffs::Ptr{float64},numReverseCoeffs::uInt32,electricalUnits::int32,physicalUnits::int32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAIPressureBridgePolynomialChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,int32,float64,float64,Ptr{float64},uInt32,Ptr{float64},uInt32,int32,int32,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,bridgeConfig,voltageExcitSource,voltageExcitVal,nominalBridgeResistance,forwardCoeffs,numForwardCoeffs,reverseCoeffs,numReverseCoeffs,electricalUnits,physicalUnits,customScaleName)
end

function DAQmxCreateAITorqueBridgeTwoPointLinChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,bridgeConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,nominalBridgeResistance::float64,firstElectricalVal::float64,secondElectricalVal::float64,electricalUnits::int32,firstPhysicalVal::float64,secondPhysicalVal::float64,physicalUnits::int32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAITorqueBridgeTwoPointLinChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,int32,float64,float64,float64,float64,int32,float64,float64,int32,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,bridgeConfig,voltageExcitSource,voltageExcitVal,nominalBridgeResistance,firstElectricalVal,secondElectricalVal,electricalUnits,firstPhysicalVal,secondPhysicalVal,physicalUnits,customScaleName)
end

function DAQmxCreateAITorqueBridgeTableChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,bridgeConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,nominalBridgeResistance::float64,electricalVals::Ptr{float64},numElectricalVals::uInt32,electricalUnits::int32,physicalVals::Ptr{float64},numPhysicalVals::uInt32,physicalUnits::int32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAITorqueBridgeTableChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,int32,float64,float64,Ptr{float64},uInt32,int32,Ptr{float64},uInt32,int32,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,bridgeConfig,voltageExcitSource,voltageExcitVal,nominalBridgeResistance,electricalVals,numElectricalVals,electricalUnits,physicalVals,numPhysicalVals,physicalUnits,customScaleName)
end

function DAQmxCreateAITorqueBridgePolynomialChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,bridgeConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,nominalBridgeResistance::float64,forwardCoeffs::Ptr{float64},numForwardCoeffs::uInt32,reverseCoeffs::Ptr{float64},numReverseCoeffs::uInt32,electricalUnits::int32,physicalUnits::int32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAITorqueBridgePolynomialChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,int32,float64,float64,Ptr{float64},uInt32,Ptr{float64},uInt32,int32,int32,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,bridgeConfig,voltageExcitSource,voltageExcitVal,nominalBridgeResistance,forwardCoeffs,numForwardCoeffs,reverseCoeffs,numReverseCoeffs,electricalUnits,physicalUnits,customScaleName)
end

function DAQmxCreateAIBridgeChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,bridgeConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,nominalBridgeResistance::float64,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAIBridgeChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,int32,float64,float64,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,bridgeConfig,voltageExcitSource,voltageExcitVal,nominalBridgeResistance,customScaleName)
end

function DAQmxCreateAIVoltageChanWithExcit(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,bridgeConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,useExcitForScaling::bool32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAIVoltageChanWithExcit,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,float64,float64,int32,int32,int32,float64,bool32,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,bridgeConfig,voltageExcitSource,voltageExcitVal,useExcitForScaling,customScaleName)
end

function DAQmxCreateAITempBuiltInSensorChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},units::int32)
    ccall((:DAQmxCreateAITempBuiltInSensorChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32),taskHandle,physicalChannel,nameToAssignToChannel,units)
end

function DAQmxCreateAIAccelChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,sensitivity::float64,sensitivityUnits::int32,currentExcitSource::int32,currentExcitVal::float64,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAIAccelChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,float64,float64,int32,float64,int32,int32,float64,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,sensitivity,sensitivityUnits,currentExcitSource,currentExcitVal,customScaleName)
end

function DAQmxCreateAIVelocityIEPEChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,sensitivity::float64,sensitivityUnits::int32,currentExcitSource::int32,currentExcitVal::float64,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAIVelocityIEPEChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,float64,float64,int32,float64,int32,int32,float64,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,sensitivity,sensitivityUnits,currentExcitSource,currentExcitVal,customScaleName)
end

function DAQmxCreateAIForceIEPEChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,sensitivity::float64,sensitivityUnits::int32,currentExcitSource::int32,currentExcitVal::float64,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAIForceIEPEChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,float64,float64,int32,float64,int32,int32,float64,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,sensitivity,sensitivityUnits,currentExcitSource,currentExcitVal,customScaleName)
end

function DAQmxCreateAIMicrophoneChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},terminalConfig::int32,units::int32,micSensitivity::float64,maxSndPressLevel::float64,currentExcitSource::int32,currentExcitVal::float64,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAIMicrophoneChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,int32,float64,float64,int32,float64,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,units,micSensitivity,maxSndPressLevel,currentExcitSource,currentExcitVal,customScaleName)
end

function DAQmxCreateAIPosLVDTChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,sensitivity::float64,sensitivityUnits::int32,voltageExcitSource::int32,voltageExcitVal::float64,voltageExcitFreq::float64,ACExcitWireMode::int32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAIPosLVDTChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,float64,int32,int32,float64,float64,int32,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,sensitivity,sensitivityUnits,voltageExcitSource,voltageExcitVal,voltageExcitFreq,ACExcitWireMode,customScaleName)
end

function DAQmxCreateAIPosRVDTChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,sensitivity::float64,sensitivityUnits::int32,voltageExcitSource::int32,voltageExcitVal::float64,voltageExcitFreq::float64,ACExcitWireMode::int32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAIPosRVDTChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,float64,int32,int32,float64,float64,int32,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,sensitivity,sensitivityUnits,voltageExcitSource,voltageExcitVal,voltageExcitFreq,ACExcitWireMode,customScaleName)
end

function DAQmxCreateAIPosEddyCurrProxProbeChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,sensitivity::float64,sensitivityUnits::int32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAIPosEddyCurrProxProbeChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,float64,int32,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,sensitivity,sensitivityUnits,customScaleName)
end

function DAQmxCreateAIDeviceTempChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},units::int32)
    ccall((:DAQmxCreateAIDeviceTempChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32),taskHandle,physicalChannel,nameToAssignToChannel,units)
end

function DAQmxCreateTEDSAIVoltageChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateTEDSAIVoltageChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,float64,float64,int32,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,customScaleName)
end

function DAQmxCreateTEDSAICurrentChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,shuntResistorLoc::int32,extShuntResistorVal::float64,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateTEDSAICurrentChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,float64,float64,int32,int32,float64,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,shuntResistorLoc,extShuntResistorVal,customScaleName)
end

function DAQmxCreateTEDSAIThrmcplChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,cjcSource::int32,cjcVal::float64,cjcChannel::Ptr{Uint8})
    ccall((:DAQmxCreateTEDSAIThrmcplChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,float64,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,cjcSource,cjcVal,cjcChannel)
end

function DAQmxCreateTEDSAIRTDChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,resistanceConfig::int32,currentExcitSource::int32,currentExcitVal::float64)
    ccall((:DAQmxCreateTEDSAIRTDChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,int32,float64),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,resistanceConfig,currentExcitSource,currentExcitVal)
end

function DAQmxCreateTEDSAIThrmstrChanIex(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,resistanceConfig::int32,currentExcitSource::int32,currentExcitVal::float64)
    ccall((:DAQmxCreateTEDSAIThrmstrChanIex,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,int32,float64),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,resistanceConfig,currentExcitSource,currentExcitVal)
end

function DAQmxCreateTEDSAIThrmstrChanVex(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,resistanceConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,r1::float64)
    ccall((:DAQmxCreateTEDSAIThrmstrChanVex,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,int32,float64,float64),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,resistanceConfig,voltageExcitSource,voltageExcitVal,r1)
end

function DAQmxCreateTEDSAIResistanceChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,resistanceConfig::int32,currentExcitSource::int32,currentExcitVal::float64,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateTEDSAIResistanceChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,int32,float64,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,resistanceConfig,currentExcitSource,currentExcitVal,customScaleName)
end

function DAQmxCreateTEDSAIStrainGageChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,voltageExcitSource::int32,voltageExcitVal::float64,initialBridgeVoltage::float64,leadWireResistance::float64,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateTEDSAIStrainGageChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,float64,float64,float64,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,voltageExcitSource,voltageExcitVal,initialBridgeVoltage,leadWireResistance,customScaleName)
end

function DAQmxCreateTEDSAIForceBridgeChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,voltageExcitSource::int32,voltageExcitVal::float64,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateTEDSAIForceBridgeChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,float64,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,voltageExcitSource,voltageExcitVal,customScaleName)
end

function DAQmxCreateTEDSAIPressureBridgeChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,voltageExcitSource::int32,voltageExcitVal::float64,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateTEDSAIPressureBridgeChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,float64,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,voltageExcitSource,voltageExcitVal,customScaleName)
end

function DAQmxCreateTEDSAITorqueBridgeChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,voltageExcitSource::int32,voltageExcitVal::float64,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateTEDSAITorqueBridgeChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,float64,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,voltageExcitSource,voltageExcitVal,customScaleName)
end

function DAQmxCreateTEDSAIBridgeChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,voltageExcitSource::int32,voltageExcitVal::float64,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateTEDSAIBridgeChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,float64,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,voltageExcitSource,voltageExcitVal,customScaleName)
end

function DAQmxCreateTEDSAIVoltageChanWithExcit(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,voltageExcitSource::int32,voltageExcitVal::float64,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateTEDSAIVoltageChanWithExcit,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,float64,float64,int32,int32,float64,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,voltageExcitSource,voltageExcitVal,customScaleName)
end

function DAQmxCreateTEDSAIAccelChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,currentExcitSource::int32,currentExcitVal::float64,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateTEDSAIAccelChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,float64,float64,int32,int32,float64,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,currentExcitSource,currentExcitVal,customScaleName)
end

function DAQmxCreateTEDSAIForceIEPEChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,currentExcitSource::int32,currentExcitVal::float64,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateTEDSAIForceIEPEChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,float64,float64,int32,int32,float64,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,currentExcitSource,currentExcitVal,customScaleName)
end

function DAQmxCreateTEDSAIMicrophoneChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},terminalConfig::int32,units::int32,maxSndPressLevel::float64,currentExcitSource::int32,currentExcitVal::float64,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateTEDSAIMicrophoneChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,int32,float64,int32,float64,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,units,maxSndPressLevel,currentExcitSource,currentExcitVal,customScaleName)
end

function DAQmxCreateTEDSAIPosLVDTChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,voltageExcitSource::int32,voltageExcitVal::float64,voltageExcitFreq::float64,ACExcitWireMode::int32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateTEDSAIPosLVDTChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,float64,float64,int32,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,voltageExcitSource,voltageExcitVal,voltageExcitFreq,ACExcitWireMode,customScaleName)
end

function DAQmxCreateTEDSAIPosRVDTChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,voltageExcitSource::int32,voltageExcitVal::float64,voltageExcitFreq::float64,ACExcitWireMode::int32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateTEDSAIPosRVDTChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,float64,float64,int32,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,voltageExcitSource,voltageExcitVal,voltageExcitFreq,ACExcitWireMode,customScaleName)
end

function DAQmxCreateAOVoltageChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAOVoltageChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,customScaleName)
end

function DAQmxCreateAOCurrentChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateAOCurrentChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,Ptr{Uint8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,customScaleName)
end

function DAQmxCreateAOFuncGenChan(taskHandle::TaskHandle,physicalChannel::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},_type::int32,freq::float64,amplitude::float64,offset::float64)
    ccall((:DAQmxCreateAOFuncGenChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,float64,float64,float64),taskHandle,physicalChannel,nameToAssignToChannel,_type,freq,amplitude,offset)
end

function DAQmxCreateDIChan(taskHandle::TaskHandle,lines::Ptr{Uint8},nameToAssignToLines::Ptr{Uint8},lineGrouping::int32)
    ccall((:DAQmxCreateDIChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32),taskHandle,lines,nameToAssignToLines,lineGrouping)
end

function DAQmxCreateDOChan(taskHandle::TaskHandle,lines::Ptr{Uint8},nameToAssignToLines::Ptr{Uint8},lineGrouping::int32)
    ccall((:DAQmxCreateDOChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32),taskHandle,lines,nameToAssignToLines,lineGrouping)
end

function DAQmxCreateCIFreqChan(taskHandle::TaskHandle,counter::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,edge::int32,measMethod::int32,measTime::float64,divisor::uInt32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateCIFreqChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,int32,float64,uInt32,Ptr{Uint8}),taskHandle,counter,nameToAssignToChannel,minVal,maxVal,units,edge,measMethod,measTime,divisor,customScaleName)
end

function DAQmxCreateCIPeriodChan(taskHandle::TaskHandle,counter::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,edge::int32,measMethod::int32,measTime::float64,divisor::uInt32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateCIPeriodChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,int32,float64,uInt32,Ptr{Uint8}),taskHandle,counter,nameToAssignToChannel,minVal,maxVal,units,edge,measMethod,measTime,divisor,customScaleName)
end

function DAQmxCreateCICountEdgesChan(taskHandle::TaskHandle,counter::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},edge::int32,initialCount::uInt32,countDirection::int32)
    ccall((:DAQmxCreateCICountEdgesChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,uInt32,int32),taskHandle,counter,nameToAssignToChannel,edge,initialCount,countDirection)
end

function DAQmxCreateCIPulseWidthChan(taskHandle::TaskHandle,counter::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,startingEdge::int32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateCIPulseWidthChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,Ptr{Uint8}),taskHandle,counter,nameToAssignToChannel,minVal,maxVal,units,startingEdge,customScaleName)
end

function DAQmxCreateCISemiPeriodChan(taskHandle::TaskHandle,counter::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateCISemiPeriodChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,Ptr{Uint8}),taskHandle,counter,nameToAssignToChannel,minVal,maxVal,units,customScaleName)
end

function DAQmxCreateCITwoEdgeSepChan(taskHandle::TaskHandle,counter::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32,firstEdge::int32,secondEdge::int32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateCITwoEdgeSepChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32,int32,int32,Ptr{Uint8}),taskHandle,counter,nameToAssignToChannel,minVal,maxVal,units,firstEdge,secondEdge,customScaleName)
end

function DAQmxCreateCIPulseChanFreq(taskHandle::TaskHandle,counter::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32)
    ccall((:DAQmxCreateCIPulseChanFreq,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32),taskHandle,counter,nameToAssignToChannel,minVal,maxVal,units)
end

function DAQmxCreateCIPulseChanTime(taskHandle::TaskHandle,counter::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},minVal::float64,maxVal::float64,units::int32)
    ccall((:DAQmxCreateCIPulseChanTime,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},float64,float64,int32),taskHandle,counter,nameToAssignToChannel,minVal,maxVal,units)
end

function DAQmxCreateCIPulseChanTicks(taskHandle::TaskHandle,counter::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},sourceTerminal::Ptr{Uint8},minVal::float64,maxVal::float64)
    ccall((:DAQmxCreateCIPulseChanTicks,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},Ptr{Uint8},float64,float64),taskHandle,counter,nameToAssignToChannel,sourceTerminal,minVal,maxVal)
end

function DAQmxCreateCILinEncoderChan(taskHandle::TaskHandle,counter::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},decodingType::int32,ZidxEnable::bool32,ZidxVal::float64,ZidxPhase::int32,units::int32,distPerPulse::float64,initialPos::float64,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateCILinEncoderChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,bool32,float64,int32,int32,float64,float64,Ptr{Uint8}),taskHandle,counter,nameToAssignToChannel,decodingType,ZidxEnable,ZidxVal,ZidxPhase,units,distPerPulse,initialPos,customScaleName)
end

function DAQmxCreateCIAngEncoderChan(taskHandle::TaskHandle,counter::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},decodingType::int32,ZidxEnable::bool32,ZidxVal::float64,ZidxPhase::int32,units::int32,pulsesPerRev::uInt32,initialAngle::float64,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateCIAngEncoderChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,bool32,float64,int32,int32,uInt32,float64,Ptr{Uint8}),taskHandle,counter,nameToAssignToChannel,decodingType,ZidxEnable,ZidxVal,ZidxPhase,units,pulsesPerRev,initialAngle,customScaleName)
end

function DAQmxCreateCIGPSTimestampChan(taskHandle::TaskHandle,counter::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},units::int32,syncMethod::int32,customScaleName::Ptr{Uint8})
    ccall((:DAQmxCreateCIGPSTimestampChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,int32,Ptr{Uint8}),taskHandle,counter,nameToAssignToChannel,units,syncMethod,customScaleName)
end

function DAQmxCreateCOPulseChanFreq(taskHandle::TaskHandle,counter::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},units::int32,idleState::int32,initialDelay::float64,freq::float64,dutyCycle::float64)
    ccall((:DAQmxCreateCOPulseChanFreq,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,int32,float64,float64,float64),taskHandle,counter,nameToAssignToChannel,units,idleState,initialDelay,freq,dutyCycle)
end

function DAQmxCreateCOPulseChanTime(taskHandle::TaskHandle,counter::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},units::int32,idleState::int32,initialDelay::float64,lowTime::float64,highTime::float64)
    ccall((:DAQmxCreateCOPulseChanTime,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,int32,float64,float64,float64),taskHandle,counter,nameToAssignToChannel,units,idleState,initialDelay,lowTime,highTime)
end

function DAQmxCreateCOPulseChanTicks(taskHandle::TaskHandle,counter::Ptr{Uint8},nameToAssignToChannel::Ptr{Uint8},sourceTerminal::Ptr{Uint8},idleState::int32,initialDelay::int32,lowTicks::int32,highTicks::int32)
    ccall((:DAQmxCreateCOPulseChanTicks,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},Ptr{Uint8},int32,int32,int32,int32),taskHandle,counter,nameToAssignToChannel,sourceTerminal,idleState,initialDelay,lowTicks,highTicks)
end

function DAQmxGetAIChanCalCalDate(taskHandle::TaskHandle,channelName::Ptr{Uint8},year::Ptr{uInt32},month::Ptr{uInt32},day::Ptr{uInt32},hour::Ptr{uInt32},minute::Ptr{uInt32})
    ccall((:DAQmxGetAIChanCalCalDate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32}),taskHandle,channelName,year,month,day,hour,minute)
end

function DAQmxSetAIChanCalCalDate(taskHandle::TaskHandle,channelName::Ptr{Uint8},year::uInt32,month::uInt32,day::uInt32,hour::uInt32,minute::uInt32)
    ccall((:DAQmxSetAIChanCalCalDate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32,uInt32,uInt32,uInt32,uInt32),taskHandle,channelName,year,month,day,hour,minute)
end

function DAQmxGetAIChanCalExpDate(taskHandle::TaskHandle,channelName::Ptr{Uint8},year::Ptr{uInt32},month::Ptr{uInt32},day::Ptr{uInt32},hour::Ptr{uInt32},minute::Ptr{uInt32})
    ccall((:DAQmxGetAIChanCalExpDate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32}),taskHandle,channelName,year,month,day,hour,minute)
end

function DAQmxSetAIChanCalExpDate(taskHandle::TaskHandle,channelName::Ptr{Uint8},year::uInt32,month::uInt32,day::uInt32,hour::uInt32,minute::uInt32)
    ccall((:DAQmxSetAIChanCalExpDate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32,uInt32,uInt32,uInt32,uInt32),taskHandle,channelName,year,month,day,hour,minute)
end

function DAQmxResetChanAttribute(taskHandle::TaskHandle,channel::Ptr{Uint8},attribute::int32)
    ccall((:DAQmxResetChanAttribute,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,attribute)
end

function DAQmxCfgSampClkTiming(taskHandle::TaskHandle,source::Ptr{Uint8},rate::float64,activeEdge::int32,sampleMode::int32,sampsPerChan::uInt64)
    ccall((:DAQmxCfgSampClkTiming,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64,int32,int32,uInt64),taskHandle,source,rate,activeEdge,sampleMode,sampsPerChan)
end

function DAQmxCfgHandshakingTiming(taskHandle::TaskHandle,sampleMode::int32,sampsPerChan::uInt64)
    ccall((:DAQmxCfgHandshakingTiming,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,uInt64),taskHandle,sampleMode,sampsPerChan)
end

function DAQmxCfgBurstHandshakingTimingImportClock(taskHandle::TaskHandle,sampleMode::int32,sampsPerChan::uInt64,sampleClkRate::float64,sampleClkSrc::Ptr{Uint8},sampleClkActiveEdge::int32,pauseWhen::int32,readyEventActiveLevel::int32)
    ccall((:DAQmxCfgBurstHandshakingTimingImportClock,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,uInt64,float64,Ptr{Uint8},int32,int32,int32),taskHandle,sampleMode,sampsPerChan,sampleClkRate,sampleClkSrc,sampleClkActiveEdge,pauseWhen,readyEventActiveLevel)
end

function DAQmxCfgBurstHandshakingTimingExportClock(taskHandle::TaskHandle,sampleMode::int32,sampsPerChan::uInt64,sampleClkRate::float64,sampleClkOutpTerm::Ptr{Uint8},sampleClkPulsePolarity::int32,pauseWhen::int32,readyEventActiveLevel::int32)
    ccall((:DAQmxCfgBurstHandshakingTimingExportClock,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,uInt64,float64,Ptr{Uint8},int32,int32,int32),taskHandle,sampleMode,sampsPerChan,sampleClkRate,sampleClkOutpTerm,sampleClkPulsePolarity,pauseWhen,readyEventActiveLevel)
end

function DAQmxCfgChangeDetectionTiming(taskHandle::TaskHandle,risingEdgeChan::Ptr{Uint8},fallingEdgeChan::Ptr{Uint8},sampleMode::int32,sampsPerChan::uInt64)
    ccall((:DAQmxCfgChangeDetectionTiming,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,uInt64),taskHandle,risingEdgeChan,fallingEdgeChan,sampleMode,sampsPerChan)
end

function DAQmxCfgImplicitTiming(taskHandle::TaskHandle,sampleMode::int32,sampsPerChan::uInt64)
    ccall((:DAQmxCfgImplicitTiming,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,uInt64),taskHandle,sampleMode,sampsPerChan)
end

function DAQmxCfgPipelinedSampClkTiming(taskHandle::TaskHandle,source::Ptr{Uint8},rate::float64,activeEdge::int32,sampleMode::int32,sampsPerChan::uInt64)
    ccall((:DAQmxCfgPipelinedSampClkTiming,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64,int32,int32,uInt64),taskHandle,source,rate,activeEdge,sampleMode,sampsPerChan)
end

function DAQmxResetTimingAttribute(taskHandle::TaskHandle,attribute::int32)
    ccall((:DAQmxResetTimingAttribute,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,attribute)
end

function DAQmxResetTimingAttributeEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},attribute::int32)
    ccall((:DAQmxResetTimingAttributeEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,deviceNames,attribute)
end

function DAQmxDisableStartTrig(taskHandle::TaskHandle)
    ccall((:DAQmxDisableStartTrig,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxCfgDigEdgeStartTrig(taskHandle::TaskHandle,triggerSource::Ptr{Uint8},triggerEdge::int32)
    ccall((:DAQmxCfgDigEdgeStartTrig,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,triggerSource,triggerEdge)
end

function DAQmxCfgAnlgEdgeStartTrig(taskHandle::TaskHandle,triggerSource::Ptr{Uint8},triggerSlope::int32,triggerLevel::float64)
    ccall((:DAQmxCfgAnlgEdgeStartTrig,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32,float64),taskHandle,triggerSource,triggerSlope,triggerLevel)
end

function DAQmxCfgAnlgWindowStartTrig(taskHandle::TaskHandle,triggerSource::Ptr{Uint8},triggerWhen::int32,windowTop::float64,windowBottom::float64)
    ccall((:DAQmxCfgAnlgWindowStartTrig,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32,float64,float64),taskHandle,triggerSource,triggerWhen,windowTop,windowBottom)
end

function DAQmxCfgDigPatternStartTrig(taskHandle::TaskHandle,triggerSource::Ptr{Uint8},triggerPattern::Ptr{Uint8},triggerWhen::int32)
    ccall((:DAQmxCfgDigPatternStartTrig,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32),taskHandle,triggerSource,triggerPattern,triggerWhen)
end

function DAQmxDisableRefTrig(taskHandle::TaskHandle)
    ccall((:DAQmxDisableRefTrig,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxCfgDigEdgeRefTrig(taskHandle::TaskHandle,triggerSource::Ptr{Uint8},triggerEdge::int32,pretriggerSamples::uInt32)
    ccall((:DAQmxCfgDigEdgeRefTrig,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32,uInt32),taskHandle,triggerSource,triggerEdge,pretriggerSamples)
end

function DAQmxCfgAnlgEdgeRefTrig(taskHandle::TaskHandle,triggerSource::Ptr{Uint8},triggerSlope::int32,triggerLevel::float64,pretriggerSamples::uInt32)
    ccall((:DAQmxCfgAnlgEdgeRefTrig,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32,float64,uInt32),taskHandle,triggerSource,triggerSlope,triggerLevel,pretriggerSamples)
end

function DAQmxCfgAnlgWindowRefTrig(taskHandle::TaskHandle,triggerSource::Ptr{Uint8},triggerWhen::int32,windowTop::float64,windowBottom::float64,pretriggerSamples::uInt32)
    ccall((:DAQmxCfgAnlgWindowRefTrig,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32,float64,float64,uInt32),taskHandle,triggerSource,triggerWhen,windowTop,windowBottom,pretriggerSamples)
end

function DAQmxCfgDigPatternRefTrig(taskHandle::TaskHandle,triggerSource::Ptr{Uint8},triggerPattern::Ptr{Uint8},triggerWhen::int32,pretriggerSamples::uInt32)
    ccall((:DAQmxCfgDigPatternRefTrig,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},int32,uInt32),taskHandle,triggerSource,triggerPattern,triggerWhen,pretriggerSamples)
end

function DAQmxDisableAdvTrig(taskHandle::TaskHandle)
    ccall((:DAQmxDisableAdvTrig,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxCfgDigEdgeAdvTrig(taskHandle::TaskHandle,triggerSource::Ptr{Uint8},triggerEdge::int32)
    ccall((:DAQmxCfgDigEdgeAdvTrig,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,triggerSource,triggerEdge)
end

function DAQmxResetTrigAttribute(taskHandle::TaskHandle,attribute::int32)
    ccall((:DAQmxResetTrigAttribute,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,attribute)
end

function DAQmxSendSoftwareTrigger(taskHandle::TaskHandle,triggerID::int32)
    ccall((:DAQmxSendSoftwareTrigger,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,triggerID)
end

function DAQmxReadAnalogF64(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,fillMode::bool32,readArray::Ptr{float64},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadAnalogF64,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,float64,bool32,Ptr{float64},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,fillMode,readArray,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadAnalogScalarF64(taskHandle::TaskHandle,timeout::float64,value::Ptr{float64},reserved::Ptr{bool32})
    ccall((:DAQmxReadAnalogScalarF64,NIDAQmx_V9.6.0),int32,(TaskHandle,float64,Ptr{float64},Ptr{bool32}),taskHandle,timeout,value,reserved)
end

function DAQmxReadBinaryI16(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,fillMode::bool32,readArray::Ptr{int16},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadBinaryI16,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,float64,bool32,Ptr{int16},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,fillMode,readArray,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadBinaryU16(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,fillMode::bool32,readArray::Ptr{uInt16},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadBinaryU16,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,float64,bool32,Ptr{uInt16},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,fillMode,readArray,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadBinaryI32(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,fillMode::bool32,readArray::Ptr{int32},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadBinaryI32,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,float64,bool32,Ptr{int32},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,fillMode,readArray,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadBinaryU32(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,fillMode::bool32,readArray::Ptr{uInt32},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadBinaryU32,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,float64,bool32,Ptr{uInt32},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,fillMode,readArray,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadDigitalU8(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,fillMode::bool32,readArray::Ptr{uInt8},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadDigitalU8,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,float64,bool32,Ptr{uInt8},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,fillMode,readArray,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadDigitalU16(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,fillMode::bool32,readArray::Ptr{uInt16},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadDigitalU16,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,float64,bool32,Ptr{uInt16},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,fillMode,readArray,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadDigitalU32(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,fillMode::bool32,readArray::Ptr{uInt32},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadDigitalU32,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,float64,bool32,Ptr{uInt32},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,fillMode,readArray,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadDigitalScalarU32(taskHandle::TaskHandle,timeout::float64,value::Ptr{uInt32},reserved::Ptr{bool32})
    ccall((:DAQmxReadDigitalScalarU32,NIDAQmx_V9.6.0),int32,(TaskHandle,float64,Ptr{uInt32},Ptr{bool32}),taskHandle,timeout,value,reserved)
end

function DAQmxReadDigitalLines(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,fillMode::bool32,readArray::Ptr{uInt8},arraySizeInBytes::uInt32,sampsPerChanRead::Ptr{int32},numBytesPerSamp::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadDigitalLines,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,float64,bool32,Ptr{uInt8},uInt32,Ptr{int32},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,fillMode,readArray,arraySizeInBytes,sampsPerChanRead,numBytesPerSamp,reserved)
end

function DAQmxReadCounterF64(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,readArray::Ptr{float64},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadCounterF64,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,float64,Ptr{float64},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,readArray,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadCounterU32(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,readArray::Ptr{uInt32},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadCounterU32,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,float64,Ptr{uInt32},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,readArray,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadCounterScalarF64(taskHandle::TaskHandle,timeout::float64,value::Ptr{float64},reserved::Ptr{bool32})
    ccall((:DAQmxReadCounterScalarF64,NIDAQmx_V9.6.0),int32,(TaskHandle,float64,Ptr{float64},Ptr{bool32}),taskHandle,timeout,value,reserved)
end

function DAQmxReadCounterScalarU32(taskHandle::TaskHandle,timeout::float64,value::Ptr{uInt32},reserved::Ptr{bool32})
    ccall((:DAQmxReadCounterScalarU32,NIDAQmx_V9.6.0),int32,(TaskHandle,float64,Ptr{uInt32},Ptr{bool32}),taskHandle,timeout,value,reserved)
end

function DAQmxReadCtrFreq(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,interleaved::bool32,readArrayFrequency::Ptr{float64},readArrayDutyCycle::Ptr{float64},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadCtrFreq,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,float64,bool32,Ptr{float64},Ptr{float64},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,interleaved,readArrayFrequency,readArrayDutyCycle,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadCtrTime(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,interleaved::bool32,readArrayHighTime::Ptr{float64},readArrayLowTime::Ptr{float64},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadCtrTime,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,float64,bool32,Ptr{float64},Ptr{float64},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,interleaved,readArrayHighTime,readArrayLowTime,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadCtrTicks(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,interleaved::bool32,readArrayHighTicks::Ptr{uInt32},readArrayLowTicks::Ptr{uInt32},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadCtrTicks,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,float64,bool32,Ptr{uInt32},Ptr{uInt32},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,interleaved,readArrayHighTicks,readArrayLowTicks,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadCtrFreqScalar(taskHandle::TaskHandle,timeout::float64,frequency::Ptr{float64},dutyCycle::Ptr{float64},reserved::Ptr{bool32})
    ccall((:DAQmxReadCtrFreqScalar,NIDAQmx_V9.6.0),int32,(TaskHandle,float64,Ptr{float64},Ptr{float64},Ptr{bool32}),taskHandle,timeout,frequency,dutyCycle,reserved)
end

function DAQmxReadCtrTimeScalar(taskHandle::TaskHandle,timeout::float64,highTime::Ptr{float64},lowTime::Ptr{float64},reserved::Ptr{bool32})
    ccall((:DAQmxReadCtrTimeScalar,NIDAQmx_V9.6.0),int32,(TaskHandle,float64,Ptr{float64},Ptr{float64},Ptr{bool32}),taskHandle,timeout,highTime,lowTime,reserved)
end

function DAQmxReadCtrTicksScalar(taskHandle::TaskHandle,timeout::float64,highTicks::Ptr{uInt32},lowTicks::Ptr{uInt32},reserved::Ptr{bool32})
    ccall((:DAQmxReadCtrTicksScalar,NIDAQmx_V9.6.0),int32,(TaskHandle,float64,Ptr{uInt32},Ptr{uInt32},Ptr{bool32}),taskHandle,timeout,highTicks,lowTicks,reserved)
end

function DAQmxReadRaw(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,readArray::Ptr{Void},arraySizeInBytes::uInt32,sampsRead::Ptr{int32},numBytesPerSamp::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadRaw,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,float64,Ptr{Void},uInt32,Ptr{int32},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,readArray,arraySizeInBytes,sampsRead,numBytesPerSamp,reserved)
end

function DAQmxGetNthTaskReadChannel(taskHandle::TaskHandle,index::uInt32,buffer::Ptr{Uint8},bufferSize::int32)
    ccall((:DAQmxGetNthTaskReadChannel,NIDAQmx_V9.6.0),int32,(TaskHandle,uInt32,Ptr{Uint8},int32),taskHandle,index,buffer,bufferSize)
end

function DAQmxResetReadAttribute(taskHandle::TaskHandle,attribute::int32)
    ccall((:DAQmxResetReadAttribute,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,attribute)
end

function DAQmxConfigureLogging(taskHandle::TaskHandle,filePath::Ptr{Uint8},loggingMode::int32,groupName::Ptr{Uint8},operation::int32)
    ccall((:DAQmxConfigureLogging,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32,Ptr{Uint8},int32),taskHandle,filePath,loggingMode,groupName,operation)
end

function DAQmxStartNewFile(taskHandle::TaskHandle,filePath::Ptr{Uint8})
    ccall((:DAQmxStartNewFile,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,filePath)
end

function DAQmxWriteAnalogF64(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,writeArray::Ptr{float64},sampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteAnalogF64,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{float64},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,writeArray,sampsPerChanWritten,reserved)
end

function DAQmxWriteAnalogScalarF64(taskHandle::TaskHandle,autoStart::bool32,timeout::float64,value::float64,reserved::Ptr{bool32})
    ccall((:DAQmxWriteAnalogScalarF64,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32,float64,float64,Ptr{bool32}),taskHandle,autoStart,timeout,value,reserved)
end

function DAQmxWriteBinaryI16(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,writeArray::Ptr{int16},sampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteBinaryI16,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{int16},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,writeArray,sampsPerChanWritten,reserved)
end

function DAQmxWriteBinaryU16(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,writeArray::Ptr{uInt16},sampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteBinaryU16,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{uInt16},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,writeArray,sampsPerChanWritten,reserved)
end

function DAQmxWriteBinaryI32(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,writeArray::Ptr{int32},sampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteBinaryI32,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{int32},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,writeArray,sampsPerChanWritten,reserved)
end

function DAQmxWriteBinaryU32(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,writeArray::Ptr{uInt32},sampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteBinaryU32,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{uInt32},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,writeArray,sampsPerChanWritten,reserved)
end

function DAQmxWriteDigitalU8(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,writeArray::Ptr{uInt8},sampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteDigitalU8,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{uInt8},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,writeArray,sampsPerChanWritten,reserved)
end

function DAQmxWriteDigitalU16(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,writeArray::Ptr{uInt16},sampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteDigitalU16,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{uInt16},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,writeArray,sampsPerChanWritten,reserved)
end

function DAQmxWriteDigitalU32(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,writeArray::Ptr{uInt32},sampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteDigitalU32,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{uInt32},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,writeArray,sampsPerChanWritten,reserved)
end

function DAQmxWriteDigitalScalarU32(taskHandle::TaskHandle,autoStart::bool32,timeout::float64,value::uInt32,reserved::Ptr{bool32})
    ccall((:DAQmxWriteDigitalScalarU32,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32,float64,uInt32,Ptr{bool32}),taskHandle,autoStart,timeout,value,reserved)
end

function DAQmxWriteDigitalLines(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,writeArray::Ptr{uInt8},sampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteDigitalLines,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{uInt8},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,writeArray,sampsPerChanWritten,reserved)
end

function DAQmxWriteCtrFreq(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,frequency::Ptr{float64},dutyCycle::Ptr{float64},numSampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteCtrFreq,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{float64},Ptr{float64},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,frequency,dutyCycle,numSampsPerChanWritten,reserved)
end

function DAQmxWriteCtrFreqScalar(taskHandle::TaskHandle,autoStart::bool32,timeout::float64,frequency::float64,dutyCycle::float64,reserved::Ptr{bool32})
    ccall((:DAQmxWriteCtrFreqScalar,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32,float64,float64,float64,Ptr{bool32}),taskHandle,autoStart,timeout,frequency,dutyCycle,reserved)
end

function DAQmxWriteCtrTime(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,highTime::Ptr{float64},lowTime::Ptr{float64},numSampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteCtrTime,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{float64},Ptr{float64},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,highTime,lowTime,numSampsPerChanWritten,reserved)
end

function DAQmxWriteCtrTimeScalar(taskHandle::TaskHandle,autoStart::bool32,timeout::float64,highTime::float64,lowTime::float64,reserved::Ptr{bool32})
    ccall((:DAQmxWriteCtrTimeScalar,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32,float64,float64,float64,Ptr{bool32}),taskHandle,autoStart,timeout,highTime,lowTime,reserved)
end

function DAQmxWriteCtrTicks(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,highTicks::Ptr{uInt32},lowTicks::Ptr{uInt32},numSampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteCtrTicks,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{uInt32},Ptr{uInt32},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,highTicks,lowTicks,numSampsPerChanWritten,reserved)
end

function DAQmxWriteCtrTicksScalar(taskHandle::TaskHandle,autoStart::bool32,timeout::float64,highTicks::uInt32,lowTicks::uInt32,reserved::Ptr{bool32})
    ccall((:DAQmxWriteCtrTicksScalar,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32,float64,uInt32,uInt32,Ptr{bool32}),taskHandle,autoStart,timeout,highTicks,lowTicks,reserved)
end

function DAQmxWriteRaw(taskHandle::TaskHandle,numSamps::int32,autoStart::bool32,timeout::float64,writeArray::Ptr{Void},sampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteRaw,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,bool32,float64,Ptr{Void},Ptr{int32},Ptr{bool32}),taskHandle,numSamps,autoStart,timeout,writeArray,sampsPerChanWritten,reserved)
end

function DAQmxResetWriteAttribute(taskHandle::TaskHandle,attribute::int32)
    ccall((:DAQmxResetWriteAttribute,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,attribute)
end

function DAQmxExportSignal(taskHandle::TaskHandle,signalID::int32,outputTerminal::Ptr{Uint8})
    ccall((:DAQmxExportSignal,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,Ptr{Uint8}),taskHandle,signalID,outputTerminal)
end

function DAQmxResetExportedSignalAttribute(taskHandle::TaskHandle,attribute::int32)
    ccall((:DAQmxResetExportedSignalAttribute,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,attribute)
end

function DAQmxCreateLinScale(name::Ptr{Uint8},slope::float64,yIntercept::float64,preScaledUnits::int32,scaledUnits::Ptr{Uint8})
    ccall((:DAQmxCreateLinScale,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},float64,float64,int32,Ptr{Uint8}),name,slope,yIntercept,preScaledUnits,scaledUnits)
end

function DAQmxCreateMapScale(name::Ptr{Uint8},prescaledMin::float64,prescaledMax::float64,scaledMin::float64,scaledMax::float64,preScaledUnits::int32,scaledUnits::Ptr{Uint8})
    ccall((:DAQmxCreateMapScale,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},float64,float64,float64,float64,int32,Ptr{Uint8}),name,prescaledMin,prescaledMax,scaledMin,scaledMax,preScaledUnits,scaledUnits)
end

function DAQmxCreatePolynomialScale(name::Ptr{Uint8},forwardCoeffs::Ptr{float64},numForwardCoeffsIn::uInt32,reverseCoeffs::Ptr{float64},numReverseCoeffsIn::uInt32,preScaledUnits::int32,scaledUnits::Ptr{Uint8})
    ccall((:DAQmxCreatePolynomialScale,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32,Ptr{float64},uInt32,int32,Ptr{Uint8}),name,forwardCoeffs,numForwardCoeffsIn,reverseCoeffs,numReverseCoeffsIn,preScaledUnits,scaledUnits)
end

function DAQmxCreateTableScale(name::Ptr{Uint8},prescaledVals::Ptr{float64},numPrescaledValsIn::uInt32,scaledVals::Ptr{float64},numScaledValsIn::uInt32,preScaledUnits::int32,scaledUnits::Ptr{Uint8})
    ccall((:DAQmxCreateTableScale,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32,Ptr{float64},uInt32,int32,Ptr{Uint8}),name,prescaledVals,numPrescaledValsIn,scaledVals,numScaledValsIn,preScaledUnits,scaledUnits)
end

function DAQmxCalculateReversePolyCoeff(forwardCoeffs::Ptr{float64},numForwardCoeffsIn::uInt32,minValX::float64,maxValX::float64,numPointsToCompute::int32,reversePolyOrder::int32,reverseCoeffs::Ptr{float64})
    ccall((:DAQmxCalculateReversePolyCoeff,NIDAQmx_V9.6.0),int32,(Ptr{float64},uInt32,float64,float64,int32,int32,Ptr{float64}),forwardCoeffs,numForwardCoeffsIn,minValX,maxValX,numPointsToCompute,reversePolyOrder,reverseCoeffs)
end

function DAQmxCfgInputBuffer(taskHandle::TaskHandle,numSampsPerChan::uInt32)
    ccall((:DAQmxCfgInputBuffer,NIDAQmx_V9.6.0),int32,(TaskHandle,uInt32),taskHandle,numSampsPerChan)
end

function DAQmxCfgOutputBuffer(taskHandle::TaskHandle,numSampsPerChan::uInt32)
    ccall((:DAQmxCfgOutputBuffer,NIDAQmx_V9.6.0),int32,(TaskHandle,uInt32),taskHandle,numSampsPerChan)
end

function DAQmxGetBufferAttribute(taskHandle::TaskHandle,attribute::int32,value::Ptr{Void})
    ccall((:DAQmxGetBufferAttribute,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,Ptr{Void}),taskHandle,attribute,value)
end

function DAQmxResetBufferAttribute(taskHandle::TaskHandle,attribute::int32)
    ccall((:DAQmxResetBufferAttribute,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,attribute)
end

function DAQmxSwitchCreateScanList(scanList::Ptr{Uint8},taskHandle::Ptr{TaskHandle})
    ccall((:DAQmxSwitchCreateScanList,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{TaskHandle}),scanList,taskHandle)
end

function DAQmxSwitchConnect(switchChannel1::Ptr{Uint8},switchChannel2::Ptr{Uint8},waitForSettling::bool32)
    ccall((:DAQmxSwitchConnect,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},bool32),switchChannel1,switchChannel2,waitForSettling)
end

function DAQmxSwitchConnectMulti(connectionList::Ptr{Uint8},waitForSettling::bool32)
    ccall((:DAQmxSwitchConnectMulti,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},bool32),connectionList,waitForSettling)
end

function DAQmxSwitchDisconnect(switchChannel1::Ptr{Uint8},switchChannel2::Ptr{Uint8},waitForSettling::bool32)
    ccall((:DAQmxSwitchDisconnect,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},bool32),switchChannel1,switchChannel2,waitForSettling)
end

function DAQmxSwitchDisconnectMulti(connectionList::Ptr{Uint8},waitForSettling::bool32)
    ccall((:DAQmxSwitchDisconnectMulti,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},bool32),connectionList,waitForSettling)
end

function DAQmxSwitchDisconnectAll(deviceName::Ptr{Uint8},waitForSettling::bool32)
    ccall((:DAQmxSwitchDisconnectAll,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},bool32),deviceName,waitForSettling)
end

function DAQmxSwitchSetTopologyAndReset(deviceName::Ptr{Uint8},newTopology::Ptr{Uint8})
    ccall((:DAQmxSwitchSetTopologyAndReset,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8}),deviceName,newTopology)
end

function DAQmxSwitchFindPath(switchChannel1::Ptr{Uint8},switchChannel2::Ptr{Uint8},path::Ptr{Uint8},pathBufferSize::uInt32,pathStatus::Ptr{int32})
    ccall((:DAQmxSwitchFindPath,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},Ptr{Uint8},uInt32,Ptr{int32}),switchChannel1,switchChannel2,path,pathBufferSize,pathStatus)
end

function DAQmxSwitchOpenRelays(relayList::Ptr{Uint8},waitForSettling::bool32)
    ccall((:DAQmxSwitchOpenRelays,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},bool32),relayList,waitForSettling)
end

function DAQmxSwitchCloseRelays(relayList::Ptr{Uint8},waitForSettling::bool32)
    ccall((:DAQmxSwitchCloseRelays,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},bool32),relayList,waitForSettling)
end

function DAQmxSwitchGetSingleRelayCount(relayName::Ptr{Uint8},count::Ptr{uInt32})
    ccall((:DAQmxSwitchGetSingleRelayCount,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),relayName,count)
end

function DAQmxSwitchGetMultiRelayCount(relayList::Ptr{Uint8},count::Ptr{uInt32},countArraySize::uInt32,numRelayCountsRead::Ptr{uInt32})
    ccall((:DAQmxSwitchGetMultiRelayCount,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32},uInt32,Ptr{uInt32}),relayList,count,countArraySize,numRelayCountsRead)
end

function DAQmxSwitchGetSingleRelayPos(relayName::Ptr{Uint8},relayPos::Ptr{uInt32})
    ccall((:DAQmxSwitchGetSingleRelayPos,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),relayName,relayPos)
end

function DAQmxSwitchGetMultiRelayPos(relayList::Ptr{Uint8},relayPos::Ptr{uInt32},relayPosArraySize::uInt32,numRelayPossRead::Ptr{uInt32})
    ccall((:DAQmxSwitchGetMultiRelayPos,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32},uInt32,Ptr{uInt32}),relayList,relayPos,relayPosArraySize,numRelayPossRead)
end

function DAQmxSwitchWaitForSettling(deviceName::Ptr{Uint8})
    ccall((:DAQmxSwitchWaitForSettling,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},),deviceName)
end

function DAQmxGetSwitchChanAttribute(switchChannelName::Ptr{Uint8},attribute::int32,value::Ptr{Void})
    ccall((:DAQmxGetSwitchChanAttribute,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},int32,Ptr{Void}),switchChannelName,attribute,value)
end

function DAQmxGetSwitchScanAttribute(taskHandle::TaskHandle,attribute::int32,value::Ptr{Void})
    ccall((:DAQmxGetSwitchScanAttribute,NIDAQmx_V9.6.0),int32,(TaskHandle,int32,Ptr{Void}),taskHandle,attribute,value)
end

function DAQmxResetSwitchScanAttribute(taskHandle::TaskHandle,attribute::int32)
    ccall((:DAQmxResetSwitchScanAttribute,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,attribute)
end

function DAQmxConnectTerms(sourceTerminal::Ptr{Uint8},destinationTerminal::Ptr{Uint8},signalModifiers::int32)
    ccall((:DAQmxConnectTerms,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},int32),sourceTerminal,destinationTerminal,signalModifiers)
end

function DAQmxDisconnectTerms(sourceTerminal::Ptr{Uint8},destinationTerminal::Ptr{Uint8})
    ccall((:DAQmxDisconnectTerms,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8}),sourceTerminal,destinationTerminal)
end

function DAQmxTristateOutputTerm(outputTerminal::Ptr{Uint8})
    ccall((:DAQmxTristateOutputTerm,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},),outputTerminal)
end

function DAQmxResetDevice(deviceName::Ptr{Uint8})
    ccall((:DAQmxResetDevice,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},),deviceName)
end

function DAQmxSelfTestDevice(deviceName::Ptr{Uint8})
    ccall((:DAQmxSelfTestDevice,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},),deviceName)
end

function DAQmxControlWatchdogTask(taskHandle::TaskHandle,action::int32)
    ccall((:DAQmxControlWatchdogTask,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,action)
end

function DAQmxResetWatchdogAttribute(taskHandle::TaskHandle,lines::Ptr{Uint8},attribute::int32)
    ccall((:DAQmxResetWatchdogAttribute,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,lines,attribute)
end

function DAQmxSelfCal(deviceName::Ptr{Uint8})
    ccall((:DAQmxSelfCal,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},),deviceName)
end

function DAQmxPerformBridgeOffsetNullingCal(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxPerformBridgeOffsetNullingCal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxPerformBridgeOffsetNullingCalEx(taskHandle::TaskHandle,channel::Ptr{Uint8},skipUnsupportedChannels::bool32)
    ccall((:DAQmxPerformBridgeOffsetNullingCalEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,skipUnsupportedChannels)
end

function DAQmxPerformThrmcplLeadOffsetNullingCal(taskHandle::TaskHandle,channel::Ptr{Uint8},skipUnsupportedChannels::bool32)
    ccall((:DAQmxPerformThrmcplLeadOffsetNullingCal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,skipUnsupportedChannels)
end

function DAQmxPerformStrainShuntCal(taskHandle::TaskHandle,channel::Ptr{Uint8},shuntResistorValue::float64,shuntResistorLocation::int32,skipUnsupportedChannels::bool32)
    ccall((:DAQmxPerformStrainShuntCal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64,int32,bool32),taskHandle,channel,shuntResistorValue,shuntResistorLocation,skipUnsupportedChannels)
end

function DAQmxPerformBridgeShuntCal(taskHandle::TaskHandle,channel::Ptr{Uint8},shuntResistorValue::float64,shuntResistorLocation::int32,bridgeResistance::float64,skipUnsupportedChannels::bool32)
    ccall((:DAQmxPerformBridgeShuntCal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64,int32,float64,bool32),taskHandle,channel,shuntResistorValue,shuntResistorLocation,bridgeResistance,skipUnsupportedChannels)
end

function DAQmxGetSelfCalLastDateAndTime(deviceName::Ptr{Uint8},year::Ptr{uInt32},month::Ptr{uInt32},day::Ptr{uInt32},hour::Ptr{uInt32},minute::Ptr{uInt32})
    ccall((:DAQmxGetSelfCalLastDateAndTime,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32}),deviceName,year,month,day,hour,minute)
end

function DAQmxGetExtCalLastDateAndTime(deviceName::Ptr{Uint8},year::Ptr{uInt32},month::Ptr{uInt32},day::Ptr{uInt32},hour::Ptr{uInt32},minute::Ptr{uInt32})
    ccall((:DAQmxGetExtCalLastDateAndTime,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32}),deviceName,year,month,day,hour,minute)
end

function DAQmxRestoreLastExtCalConst(deviceName::Ptr{Uint8})
    ccall((:DAQmxRestoreLastExtCalConst,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},),deviceName)
end

function DAQmxESeriesCalAdjust(calHandle::CalHandle,referenceVoltage::float64)
    ccall((:DAQmxESeriesCalAdjust,NIDAQmx_V9.6.0),int32,(CalHandle,float64),calHandle,referenceVoltage)
end

function DAQmxMSeriesCalAdjust(calHandle::CalHandle,referenceVoltage::float64)
    ccall((:DAQmxMSeriesCalAdjust,NIDAQmx_V9.6.0),int32,(CalHandle,float64),calHandle,referenceVoltage)
end

function DAQmxSSeriesCalAdjust(calHandle::CalHandle,referenceVoltage::float64)
    ccall((:DAQmxSSeriesCalAdjust,NIDAQmx_V9.6.0),int32,(CalHandle,float64),calHandle,referenceVoltage)
end

function DAQmxSCBaseboardCalAdjust(calHandle::CalHandle,referenceVoltage::float64)
    ccall((:DAQmxSCBaseboardCalAdjust,NIDAQmx_V9.6.0),int32,(CalHandle,float64),calHandle,referenceVoltage)
end

function DAQmxAOSeriesCalAdjust(calHandle::CalHandle,referenceVoltage::float64)
    ccall((:DAQmxAOSeriesCalAdjust,NIDAQmx_V9.6.0),int32,(CalHandle,float64),calHandle,referenceVoltage)
end

function DAQmxXSeriesCalAdjust(calHandle::CalHandle,referenceVoltage::float64)
    ccall((:DAQmxXSeriesCalAdjust,NIDAQmx_V9.6.0),int32,(CalHandle,float64),calHandle,referenceVoltage)
end

function DAQmxDeviceSupportsCal(deviceName::Ptr{Uint8},calSupported::Ptr{bool32})
    ccall((:DAQmxDeviceSupportsCal,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),deviceName,calSupported)
end

function DAQmxInitExtCal(deviceName::Ptr{Uint8},password::Ptr{Uint8},calHandle::Ptr{CalHandle})
    ccall((:DAQmxInitExtCal,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},Ptr{CalHandle}),deviceName,password,calHandle)
end

function DAQmxCloseExtCal(calHandle::CalHandle,action::int32)
    ccall((:DAQmxCloseExtCal,NIDAQmx_V9.6.0),int32,(CalHandle,int32),calHandle,action)
end

function DAQmxChangeExtCalPassword(deviceName::Ptr{Uint8},password::Ptr{Uint8},newPassword::Ptr{Uint8})
    ccall((:DAQmxChangeExtCalPassword,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},Ptr{Uint8}),deviceName,password,newPassword)
end

function DAQmxAdjustDSAAICal(calHandle::CalHandle,referenceVoltage::float64)
    ccall((:DAQmxAdjustDSAAICal,NIDAQmx_V9.6.0),int32,(CalHandle,float64),calHandle,referenceVoltage)
end

function DAQmxAdjustDSAAICalEx(calHandle::CalHandle,referenceVoltage::float64,inputsShorted::bool32)
    ccall((:DAQmxAdjustDSAAICalEx,NIDAQmx_V9.6.0),int32,(CalHandle,float64,bool32),calHandle,referenceVoltage,inputsShorted)
end

function DAQmxAdjustDSAAICalWithGainAndCoupling(calHandle::CalHandle,coupling::int32,gain::float64,referenceVoltage::float64)
    ccall((:DAQmxAdjustDSAAICalWithGainAndCoupling,NIDAQmx_V9.6.0),int32,(CalHandle,int32,float64,float64),calHandle,coupling,gain,referenceVoltage)
end

function DAQmxAdjustDSAAOCal(calHandle::CalHandle,channel::uInt32,requestedLowVoltage::float64,actualLowVoltage::float64,requestedHighVoltage::float64,actualHighVoltage::float64,gainSetting::float64)
    ccall((:DAQmxAdjustDSAAOCal,NIDAQmx_V9.6.0),int32,(CalHandle,uInt32,float64,float64,float64,float64,float64),calHandle,channel,requestedLowVoltage,actualLowVoltage,requestedHighVoltage,actualHighVoltage,gainSetting)
end

function DAQmxAdjustDSATimebaseCal(calHandle::CalHandle,referenceFrequency::float64)
    ccall((:DAQmxAdjustDSATimebaseCal,NIDAQmx_V9.6.0),int32,(CalHandle,float64),calHandle,referenceFrequency)
end

function DAQmxAdjust4204Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},lowPassFreq::float64,trackHoldEnabled::bool32,inputVal::float64)
    ccall((:DAQmxAdjust4204Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64,bool32,float64),calHandle,channelNames,lowPassFreq,trackHoldEnabled,inputVal)
end

function DAQmxAdjust4220Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},gain::float64,inputVal::float64)
    ccall((:DAQmxAdjust4220Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64,float64),calHandle,channelNames,gain,inputVal)
end

function DAQmxAdjust4224Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},gain::float64,inputVal::float64)
    ccall((:DAQmxAdjust4224Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64,float64),calHandle,channelNames,gain,inputVal)
end

function DAQmxAdjust4225Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},gain::float64,inputVal::float64)
    ccall((:DAQmxAdjust4225Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64,float64),calHandle,channelNames,gain,inputVal)
end

function DAQmxSetup433xCal(calHandle::CalHandle,channelNames::Ptr{Uint8},excitationVoltage::float64)
    ccall((:DAQmxSetup433xCal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,excitationVoltage)
end

function DAQmxAdjust433xCal(calHandle::CalHandle,refVoltage::float64,refExcitation::float64,shuntLocation::int32)
    ccall((:DAQmxAdjust433xCal,NIDAQmx_V9.6.0),int32,(CalHandle,float64,float64,int32),calHandle,refVoltage,refExcitation,shuntLocation)
end

function DAQmxAdjust4300Cal(calHandle::CalHandle,refVoltage::float64)
    ccall((:DAQmxAdjust4300Cal,NIDAQmx_V9.6.0),int32,(CalHandle,float64),calHandle,refVoltage)
end

function DAQmxAdjust4353Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},refVal::float64)
    ccall((:DAQmxAdjust4353Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,refVal)
end

function DAQmxAdjust4357Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},refVals::Ptr{float64},numRefVals::int32)
    ccall((:DAQmxAdjust4357Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},Ptr{float64},int32),calHandle,channelNames,refVals,numRefVals)
end

function DAQmxSetup4322Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},outputType::int32,outputVal::float64)
    ccall((:DAQmxSetup4322Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},int32,float64),calHandle,channelNames,outputType,outputVal)
end

function DAQmxAdjust4322Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},refVal::float64)
    ccall((:DAQmxAdjust4322Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,refVal)
end

function DAQmxGet4322CalAdjustPoints(calHandle::CalHandle,outputType::int32,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet4322CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,int32,Ptr{float64},uInt32),calHandle,outputType,adjustmentPoints,bufferSize)
end

function DAQmxConnectSCExpressCalAccChans(calHandle::CalHandle,channelNames::Ptr{Uint8},connection::Ptr{Uint8})
    ccall((:DAQmxConnectSCExpressCalAccChans,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},Ptr{Uint8}),calHandle,channelNames,connection)
end

function DAQmxDisconnectSCExpressCalAccChans(calHandle::CalHandle)
    ccall((:DAQmxDisconnectSCExpressCalAccChans,NIDAQmx_V9.6.0),int32,(CalHandle,),calHandle)
end

function DAQmxGetPossibleSCExpressCalAccConnections(deviceName::Ptr{Uint8},channelNames::Ptr{Uint8},connections::Ptr{Uint8},connectionsBufferSize::uInt32)
    ccall((:DAQmxGetPossibleSCExpressCalAccConnections,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},Ptr{Uint8},uInt32),deviceName,channelNames,connections,connectionsBufferSize)
end

function DAQmxSetSCExpressCalAccBridgeOutput(calHandle::CalHandle,voltsPerVolt::float64)
    ccall((:DAQmxSetSCExpressCalAccBridgeOutput,NIDAQmx_V9.6.0),int32,(CalHandle,float64),calHandle,voltsPerVolt)
end

function DAQmxGet9201CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9201CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxCSeriesSetCalTemp(calHandle::CalHandle,temperature::float64)
    ccall((:DAQmxCSeriesSetCalTemp,NIDAQmx_V9.6.0),int32,(CalHandle,float64),calHandle,temperature)
end

function DAQmxAdjust9201Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::float64)
    ccall((:DAQmxAdjust9201Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,value)
end

function DAQmxGet9203CalAdjustPoints(calHandle::CalHandle,rangeMin::float64,rangeMax::float64,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9203CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,float64,float64,Ptr{float64},uInt32),calHandle,rangeMin,rangeMax,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9203GainCal(calHandle::CalHandle,channelNames::Ptr{Uint8},rangeMin::float64,rangeMax::float64,value::float64)
    ccall((:DAQmxAdjust9203GainCal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64,float64,float64),calHandle,channelNames,rangeMin,rangeMax,value)
end

function DAQmxAdjust9203OffsetCal(calHandle::CalHandle,channelNames::Ptr{Uint8},rangeMin::float64,rangeMax::float64)
    ccall((:DAQmxAdjust9203OffsetCal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64,float64),calHandle,channelNames,rangeMin,rangeMax)
end

function DAQmxAdjust9205Cal(calHandle::CalHandle,value::float64)
    ccall((:DAQmxAdjust9205Cal,NIDAQmx_V9.6.0),int32,(CalHandle,float64),calHandle,value)
end

function DAQmxAdjust9206Cal(calHandle::CalHandle,value::float64)
    ccall((:DAQmxAdjust9206Cal,NIDAQmx_V9.6.0),int32,(CalHandle,float64),calHandle,value)
end

function DAQmxGet9207CalAdjustPoints(calHandle::CalHandle,channelNames::Ptr{Uint8},adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9207CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},Ptr{float64},uInt32),calHandle,channelNames,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9207GainCal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::float64)
    ccall((:DAQmxAdjust9207GainCal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,value)
end

function DAQmxAdjust9207OffsetCal(calHandle::CalHandle,channelNames::Ptr{Uint8})
    ccall((:DAQmxAdjust9207OffsetCal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8}),calHandle,channelNames)
end

function DAQmxGet9208CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9208CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9208GainCal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::float64)
    ccall((:DAQmxAdjust9208GainCal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,value)
end

function DAQmxAdjust9208OffsetCal(calHandle::CalHandle,channelNames::Ptr{Uint8})
    ccall((:DAQmxAdjust9208OffsetCal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8}),calHandle,channelNames)
end

function DAQmxAdjust9211Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::float64)
    ccall((:DAQmxAdjust9211Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,value)
end

function DAQmxGet9213CalAdjustPoints(calHandle::CalHandle,rangeMin::float64,rangeMax::float64,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9213CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,float64,float64,Ptr{float64},uInt32),calHandle,rangeMin,rangeMax,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9213Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},rangeMin::float64,rangeMax::float64,value::float64)
    ccall((:DAQmxAdjust9213Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64,float64,float64),calHandle,channelNames,rangeMin,rangeMax,value)
end

function DAQmxGet9214CalAdjustPoints(calHandle::CalHandle,channelNames::Ptr{Uint8},adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9214CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},Ptr{float64},uInt32),calHandle,channelNames,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9214Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::float64)
    ccall((:DAQmxAdjust9214Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,value)
end

function DAQmxGet9215CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9215CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9215Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::float64)
    ccall((:DAQmxAdjust9215Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,value)
end

function DAQmxGet9217CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9217CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9217Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::float64)
    ccall((:DAQmxAdjust9217Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,value)
end

function DAQmxSetup9219Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},rangeMin::float64,rangeMax::float64,measType::int32,bridgeConfig::int32)
    ccall((:DAQmxSetup9219Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64,float64,int32,int32),calHandle,channelNames,rangeMin,rangeMax,measType,bridgeConfig)
end

function DAQmxGet9219CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9219CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9219Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::float64)
    ccall((:DAQmxAdjust9219Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,value)
end

function DAQmxGet9220CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9220CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9220Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::float64)
    ccall((:DAQmxAdjust9220Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,value)
end

function DAQmxGet9221CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9221CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9221Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::float64)
    ccall((:DAQmxAdjust9221Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,value)
end

function DAQmxGet9222CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9222CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9222Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::float64)
    ccall((:DAQmxAdjust9222Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,value)
end

function DAQmxGet9223CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9223CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9223Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::float64)
    ccall((:DAQmxAdjust9223Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,value)
end

function DAQmxGet9225CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9225CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9225Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::float64)
    ccall((:DAQmxAdjust9225Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,value)
end

function DAQmxGet9227CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9227CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9227Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::float64)
    ccall((:DAQmxAdjust9227Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,value)
end

function DAQmxGet9229CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9229CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9229Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::float64)
    ccall((:DAQmxAdjust9229Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,value)
end

function DAQmxGet9232CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9232CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9232Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::float64)
    ccall((:DAQmxAdjust9232Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,value)
end

function DAQmxGet9234CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9234CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9234GainCal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::float64)
    ccall((:DAQmxAdjust9234GainCal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,value)
end

function DAQmxAdjust9234OffsetCal(calHandle::CalHandle,channelNames::Ptr{Uint8})
    ccall((:DAQmxAdjust9234OffsetCal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8}),calHandle,channelNames)
end

function DAQmxGet9239CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9239CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9239Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::float64)
    ccall((:DAQmxAdjust9239Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,value)
end

function DAQmxGet9263CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{int32},bufferSize::uInt32)
    ccall((:DAQmxGet9263CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{int32},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxSetup9263Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::int32)
    ccall((:DAQmxSetup9263Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},int32),calHandle,channelNames,value)
end

function DAQmxAdjust9263Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::float64)
    ccall((:DAQmxAdjust9263Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,value)
end

function DAQmxGet9264CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{int32},bufferSize::uInt32)
    ccall((:DAQmxGet9264CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{int32},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxSetup9264Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::int32)
    ccall((:DAQmxSetup9264Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},int32),calHandle,channelNames,value)
end

function DAQmxAdjust9264Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::float64)
    ccall((:DAQmxAdjust9264Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,value)
end

function DAQmxGet9265CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{int32},bufferSize::uInt32)
    ccall((:DAQmxGet9265CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{int32},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxSetup9265Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::int32)
    ccall((:DAQmxSetup9265Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},int32),calHandle,channelNames,value)
end

function DAQmxAdjust9265Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::float64)
    ccall((:DAQmxAdjust9265Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,value)
end

function DAQmxGet9269CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{int32},bufferSize::uInt32)
    ccall((:DAQmxGet9269CalAdjustPoints,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{int32},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxSetup9269Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::int32)
    ccall((:DAQmxSetup9269Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},int32),calHandle,channelNames,value)
end

function DAQmxAdjust9269Cal(calHandle::CalHandle,channelNames::Ptr{Uint8},value::float64)
    ccall((:DAQmxAdjust9269Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelNames,value)
end

function DAQmxSetup1102Cal(calHandle::CalHandle,channelName::Ptr{Uint8},gain::float64)
    ccall((:DAQmxSetup1102Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelName,gain)
end

function DAQmxAdjust1102Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1102Cal,NIDAQmx_V9.6.0),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup1104Cal(calHandle::CalHandle,channelName::Ptr{Uint8})
    ccall((:DAQmxSetup1104Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8}),calHandle,channelName)
end

function DAQmxAdjust1104Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1104Cal,NIDAQmx_V9.6.0),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup1112Cal(calHandle::CalHandle,channelName::Ptr{Uint8})
    ccall((:DAQmxSetup1112Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8}),calHandle,channelName)
end

function DAQmxAdjust1112Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1112Cal,NIDAQmx_V9.6.0),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup1122Cal(calHandle::CalHandle,channelName::Ptr{Uint8},gain::float64)
    ccall((:DAQmxSetup1122Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelName,gain)
end

function DAQmxAdjust1122Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1122Cal,NIDAQmx_V9.6.0),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup1124Cal(calHandle::CalHandle,channelName::Ptr{Uint8},range::int32,dacValue::uInt32)
    ccall((:DAQmxSetup1124Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},int32,uInt32),calHandle,channelName,range,dacValue)
end

function DAQmxAdjust1124Cal(calHandle::CalHandle,measOutput::float64)
    ccall((:DAQmxAdjust1124Cal,NIDAQmx_V9.6.0),int32,(CalHandle,float64),calHandle,measOutput)
end

function DAQmxSetup1125Cal(calHandle::CalHandle,channelName::Ptr{Uint8},gain::float64)
    ccall((:DAQmxSetup1125Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelName,gain)
end

function DAQmxAdjust1125Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1125Cal,NIDAQmx_V9.6.0),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup1126Cal(calHandle::CalHandle,channelName::Ptr{Uint8},upperFreqLimit::float64)
    ccall((:DAQmxSetup1126Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelName,upperFreqLimit)
end

function DAQmxAdjust1126Cal(calHandle::CalHandle,refFreq::float64,measOutput::float64)
    ccall((:DAQmxAdjust1126Cal,NIDAQmx_V9.6.0),int32,(CalHandle,float64,float64),calHandle,refFreq,measOutput)
end

function DAQmxSetup1141Cal(calHandle::CalHandle,channelName::Ptr{Uint8},gain::float64)
    ccall((:DAQmxSetup1141Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelName,gain)
end

function DAQmxAdjust1141Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1141Cal,NIDAQmx_V9.6.0),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup1142Cal(calHandle::CalHandle,channelName::Ptr{Uint8},gain::float64)
    ccall((:DAQmxSetup1142Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelName,gain)
end

function DAQmxAdjust1142Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1142Cal,NIDAQmx_V9.6.0),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup1143Cal(calHandle::CalHandle,channelName::Ptr{Uint8},gain::float64)
    ccall((:DAQmxSetup1143Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelName,gain)
end

function DAQmxAdjust1143Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1143Cal,NIDAQmx_V9.6.0),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup1502Cal(calHandle::CalHandle,channelName::Ptr{Uint8},gain::float64)
    ccall((:DAQmxSetup1502Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelName,gain)
end

function DAQmxAdjust1502Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1502Cal,NIDAQmx_V9.6.0),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup1503Cal(calHandle::CalHandle,channelName::Ptr{Uint8},gain::float64)
    ccall((:DAQmxSetup1503Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelName,gain)
end

function DAQmxAdjust1503Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1503Cal,NIDAQmx_V9.6.0),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxAdjust1503CurrentCal(calHandle::CalHandle,channelName::Ptr{Uint8},measCurrent::float64)
    ccall((:DAQmxAdjust1503CurrentCal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelName,measCurrent)
end

function DAQmxSetup1520Cal(calHandle::CalHandle,channelName::Ptr{Uint8},gain::float64)
    ccall((:DAQmxSetup1520Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelName,gain)
end

function DAQmxAdjust1520Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1520Cal,NIDAQmx_V9.6.0),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup1521Cal(calHandle::CalHandle,channelName::Ptr{Uint8})
    ccall((:DAQmxSetup1521Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8}),calHandle,channelName)
end

function DAQmxAdjust1521Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1521Cal,NIDAQmx_V9.6.0),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup153xCal(calHandle::CalHandle,channelName::Ptr{Uint8},gain::float64)
    ccall((:DAQmxSetup153xCal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64),calHandle,channelName,gain)
end

function DAQmxAdjust153xCal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust153xCal,NIDAQmx_V9.6.0),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup1540Cal(calHandle::CalHandle,channelName::Ptr{Uint8},excitationVoltage::float64,excitationFreq::float64)
    ccall((:DAQmxSetup1540Cal,NIDAQmx_V9.6.0),int32,(CalHandle,Ptr{Uint8},float64,float64),calHandle,channelName,excitationVoltage,excitationFreq)
end

function DAQmxAdjust1540Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64,inputCalSource::int32)
    ccall((:DAQmxAdjust1540Cal,NIDAQmx_V9.6.0),int32,(CalHandle,float64,float64,int32),calHandle,refVoltage,measOutput,inputCalSource)
end

function DAQmxConfigureTEDS(physicalChannel::Ptr{Uint8},filePath::Ptr{Uint8})
    ccall((:DAQmxConfigureTEDS,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8}),physicalChannel,filePath)
end

function DAQmxClearTEDS(physicalChannel::Ptr{Uint8})
    ccall((:DAQmxClearTEDS,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},),physicalChannel)
end

function DAQmxWriteToTEDSFromArray(physicalChannel::Ptr{Uint8},bitStream::Ptr{uInt8},arraySize::uInt32,basicTEDSOptions::int32)
    ccall((:DAQmxWriteToTEDSFromArray,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt8},uInt32,int32),physicalChannel,bitStream,arraySize,basicTEDSOptions)
end

function DAQmxWriteToTEDSFromFile(physicalChannel::Ptr{Uint8},filePath::Ptr{Uint8},basicTEDSOptions::int32)
    ccall((:DAQmxWriteToTEDSFromFile,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},int32),physicalChannel,filePath,basicTEDSOptions)
end

function DAQmxWaitForNextSampleClock(taskHandle::TaskHandle,timeout::float64,isLate::Ptr{bool32})
    ccall((:DAQmxWaitForNextSampleClock,NIDAQmx_V9.6.0),int32,(TaskHandle,float64,Ptr{bool32}),taskHandle,timeout,isLate)
end

function DAQmxResetRealTimeAttribute(taskHandle::TaskHandle,attribute::int32)
    ccall((:DAQmxResetRealTimeAttribute,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,attribute)
end

function DAQmxIsReadOrWriteLate(errorCode::int32)
    ccall((:DAQmxIsReadOrWriteLate,NIDAQmx_V9.6.0),bool32,(int32,),errorCode)
end

function DAQmxSaveTask(taskHandle::TaskHandle,saveAs::Ptr{Uint8},author::Ptr{Uint8},options::uInt32)
    ccall((:DAQmxSaveTask,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,saveAs,author,options)
end

function DAQmxSaveGlobalChan(taskHandle::TaskHandle,channelName::Ptr{Uint8},saveAs::Ptr{Uint8},author::Ptr{Uint8},options::uInt32)
    ccall((:DAQmxSaveGlobalChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channelName,saveAs,author,options)
end

function DAQmxSaveScale(scaleName::Ptr{Uint8},saveAs::Ptr{Uint8},author::Ptr{Uint8},options::uInt32)
    ccall((:DAQmxSaveScale,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},Ptr{Uint8},uInt32),scaleName,saveAs,author,options)
end

function DAQmxDeleteSavedTask(taskName::Ptr{Uint8})
    ccall((:DAQmxDeleteSavedTask,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},),taskName)
end

function DAQmxDeleteSavedGlobalChan(channelName::Ptr{Uint8})
    ccall((:DAQmxDeleteSavedGlobalChan,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},),channelName)
end

function DAQmxDeleteSavedScale(scaleName::Ptr{Uint8})
    ccall((:DAQmxDeleteSavedScale,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},),scaleName)
end

function DAQmxSetDigitalLogicFamilyPowerUpState(deviceName::Ptr{Uint8},logicFamily::int32)
    ccall((:DAQmxSetDigitalLogicFamilyPowerUpState,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},int32),deviceName,logicFamily)
end

function DAQmxGetDigitalLogicFamilyPowerUpState(deviceName::Ptr{Uint8},logicFamily::Ptr{int32})
    ccall((:DAQmxGetDigitalLogicFamilyPowerUpState,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32}),deviceName,logicFamily)
end

function DAQmxAddNetworkDevice(IPAddress::Ptr{Uint8},deviceName::Ptr{Uint8},attemptReservation::bool32,timeout::float64,deviceNameOut::Ptr{Uint8},deviceNameOutBufferSize::uInt32)
    ccall((:DAQmxAddNetworkDevice,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},bool32,float64,Ptr{Uint8},uInt32),IPAddress,deviceName,attemptReservation,timeout,deviceNameOut,deviceNameOutBufferSize)
end

function DAQmxDeleteNetworkDevice(deviceName::Ptr{Uint8})
    ccall((:DAQmxDeleteNetworkDevice,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},),deviceName)
end

function DAQmxReserveNetworkDevice(deviceName::Ptr{Uint8},overrideReservation::bool32)
    ccall((:DAQmxReserveNetworkDevice,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},bool32),deviceName,overrideReservation)
end

function DAQmxUnreserveNetworkDevice(deviceName::Ptr{Uint8})
    ccall((:DAQmxUnreserveNetworkDevice,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},),deviceName)
end

function DAQmxAutoConfigureCDAQSyncConnections(chassisDevicesPorts::Ptr{Uint8},timeout::float64)
    ccall((:DAQmxAutoConfigureCDAQSyncConnections,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},float64),chassisDevicesPorts,timeout)
end

function DAQmxGetAutoConfiguredCDAQSyncConnections(portList::Ptr{Uint8},portListSize::uInt32)
    ccall((:DAQmxGetAutoConfiguredCDAQSyncConnections,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},uInt32),portList,portListSize)
end

function DAQmxAreConfiguredCDAQSyncPortsDisconnected(chassisDevicesPorts::Ptr{Uint8},timeout::float64,disconnectedPortsExist::Ptr{bool32})
    ccall((:DAQmxAreConfiguredCDAQSyncPortsDisconnected,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},float64,Ptr{bool32}),chassisDevicesPorts,timeout,disconnectedPortsExist)
end

function DAQmxGetDisconnectedCDAQSyncPorts(portList::Ptr{Uint8},portListSize::uInt32)
    ccall((:DAQmxGetDisconnectedCDAQSyncPorts,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},uInt32),portList,portListSize)
end

function DAQmxAddCDAQSyncConnection(portList::Ptr{Uint8})
    ccall((:DAQmxAddCDAQSyncConnection,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},),portList)
end

function DAQmxRemoveCDAQSyncConnection(portList::Ptr{Uint8})
    ccall((:DAQmxRemoveCDAQSyncConnection,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},),portList)
end

function DAQmxGetErrorString(errorCode::int32,errorString::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetErrorString,NIDAQmx_V9.6.0),int32,(int32,Ptr{Uint8},uInt32),errorCode,errorString,bufferSize)
end

function DAQmxGetExtendedErrorInfo(errorString::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetExtendedErrorInfo,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},uInt32),errorString,bufferSize)
end

function DAQmxGetBufInputBufSize(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetBufInputBufSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetBufInputBufSize(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetBufInputBufSize,NIDAQmx_V9.6.0),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetBufInputBufSize(taskHandle::TaskHandle)
    ccall((:DAQmxResetBufInputBufSize,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetBufInputOnbrdBufSize(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetBufInputOnbrdBufSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxGetBufOutputBufSize(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetBufOutputBufSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetBufOutputBufSize(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetBufOutputBufSize,NIDAQmx_V9.6.0),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetBufOutputBufSize(taskHandle::TaskHandle)
    ccall((:DAQmxResetBufOutputBufSize,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetBufOutputOnbrdBufSize(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetBufOutputOnbrdBufSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetBufOutputOnbrdBufSize(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetBufOutputOnbrdBufSize,NIDAQmx_V9.6.0),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetBufOutputOnbrdBufSize(taskHandle::TaskHandle)
    ccall((:DAQmxResetBufOutputOnbrdBufSize,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSelfCalSupported(deviceName::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetSelfCalSupported,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),deviceName,data)
end

function DAQmxGetSelfCalLastTemp(deviceName::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetSelfCalLastTemp,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),deviceName,data)
end

function DAQmxGetExtCalRecommendedInterval(deviceName::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetExtCalRecommendedInterval,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),deviceName,data)
end

function DAQmxGetExtCalLastTemp(deviceName::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetExtCalLastTemp,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),deviceName,data)
end

function DAQmxGetCalUserDefinedInfo(deviceName::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCalUserDefinedInfo,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),deviceName,data,bufferSize)
end

function DAQmxSetCalUserDefinedInfo(deviceName::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCalUserDefinedInfo,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8}),deviceName,data)
end

function DAQmxGetCalUserDefinedInfoMaxSize(deviceName::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCalUserDefinedInfoMaxSize,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),deviceName,data)
end

function DAQmxGetCalDevTemp(deviceName::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCalDevTemp,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),deviceName,data)
end

function DAQmxGetCalAccConnectionCount(deviceName::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCalAccConnectionCount,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),deviceName,data)
end

function DAQmxSetCalAccConnectionCount(deviceName::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetCalAccConnectionCount,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},uInt32),deviceName,data)
end

function DAQmxGetCalRecommendedAccConnectionCountLimit(deviceName::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCalRecommendedAccConnectionCountLimit,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),deviceName,data)
end

function DAQmxGetAIMax(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIMax,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIMax(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIMax,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIMax(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIMax,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIMin(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIMin,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIMin(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIMin,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIMin(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIMin,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAICustomScaleName(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAICustomScaleName,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetAICustomScaleName(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetAICustomScaleName,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetAICustomScaleName(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAICustomScaleName,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIMeasType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIMeasType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxGetAIVoltageUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIVoltageUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIVoltageUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIVoltageUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIVoltageUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIVoltageUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIVoltagedBRef(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIVoltagedBRef,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIVoltagedBRef(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIVoltagedBRef,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIVoltagedBRef(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIVoltagedBRef,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIVoltageACRMSUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIVoltageACRMSUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIVoltageACRMSUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIVoltageACRMSUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIVoltageACRMSUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIVoltageACRMSUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAITempUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAITempUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAITempUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAITempUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAITempUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAITempUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIThrmcplType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIThrmcplType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIThrmcplType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIThrmcplType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIThrmcplType(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIThrmcplType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIThrmcplScaleType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIThrmcplScaleType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIThrmcplScaleType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIThrmcplScaleType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIThrmcplScaleType(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIThrmcplScaleType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIThrmcplCJCSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIThrmcplCJCSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxGetAIThrmcplCJCVal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIThrmcplCJCVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIThrmcplCJCVal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIThrmcplCJCVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIThrmcplCJCVal(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIThrmcplCJCVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIThrmcplCJCChan(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAIThrmcplCJCChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxGetAIRTDType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIRTDType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIRTDType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIRTDType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIRTDType(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIRTDType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIRTDR0(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIRTDR0,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIRTDR0(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIRTDR0,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIRTDR0(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIRTDR0,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIRTDA(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIRTDA,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIRTDA(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIRTDA,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIRTDA(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIRTDA,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIRTDB(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIRTDB,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIRTDB(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIRTDB,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIRTDB(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIRTDB,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIRTDC(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIRTDC,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIRTDC(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIRTDC,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIRTDC(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIRTDC,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIThrmstrA(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIThrmstrA,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIThrmstrA(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIThrmstrA,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIThrmstrA(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIThrmstrA,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIThrmstrB(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIThrmstrB,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIThrmstrB(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIThrmstrB,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIThrmstrB(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIThrmstrB,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIThrmstrC(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIThrmstrC,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIThrmstrC(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIThrmstrC,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIThrmstrC(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIThrmstrC,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIThrmstrR1(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIThrmstrR1,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIThrmstrR1(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIThrmstrR1,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIThrmstrR1(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIThrmstrR1,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIForceReadFromChan(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAIForceReadFromChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIForceReadFromChan(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetAIForceReadFromChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIForceReadFromChan(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIForceReadFromChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAICurrentUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAICurrentUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAICurrentUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAICurrentUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAICurrentUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAICurrentUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAICurrentACRMSUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAICurrentACRMSUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAICurrentACRMSUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAICurrentACRMSUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAICurrentACRMSUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAICurrentACRMSUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIStrainUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIStrainUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIStrainUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIStrainUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIStrainUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIStrainUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIStrainGageForceReadFromChan(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAIStrainGageForceReadFromChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIStrainGageForceReadFromChan(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetAIStrainGageForceReadFromChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIStrainGageForceReadFromChan(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIStrainGageForceReadFromChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIStrainGageGageFactor(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIStrainGageGageFactor,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIStrainGageGageFactor(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIStrainGageGageFactor,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIStrainGageGageFactor(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIStrainGageGageFactor,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIStrainGagePoissonRatio(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIStrainGagePoissonRatio,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIStrainGagePoissonRatio(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIStrainGagePoissonRatio,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIStrainGagePoissonRatio(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIStrainGagePoissonRatio,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIStrainGageCfg(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIStrainGageCfg,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIStrainGageCfg(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIStrainGageCfg,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIStrainGageCfg(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIStrainGageCfg,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIRosetteStrainGageRosetteType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIRosetteStrainGageRosetteType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxGetAIRosetteStrainGageOrientation(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIRosetteStrainGageOrientation,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIRosetteStrainGageOrientation(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIRosetteStrainGageOrientation,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIRosetteStrainGageOrientation(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIRosetteStrainGageOrientation,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIRosetteStrainGageStrainChans(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAIRosetteStrainGageStrainChans,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxGetAIRosetteStrainGageRosetteMeasType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIRosetteStrainGageRosetteMeasType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIRosetteStrainGageRosetteMeasType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIRosetteStrainGageRosetteMeasType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIRosetteStrainGageRosetteMeasType(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIRosetteStrainGageRosetteMeasType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIResistanceUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIResistanceUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIResistanceUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIResistanceUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIResistanceUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIResistanceUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIFreqUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIFreqUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIFreqUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIFreqUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIFreqUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIFreqUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIFreqThreshVoltage(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIFreqThreshVoltage,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIFreqThreshVoltage(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIFreqThreshVoltage,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIFreqThreshVoltage(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIFreqThreshVoltage,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIFreqHyst(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIFreqHyst,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIFreqHyst(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIFreqHyst,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIFreqHyst(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIFreqHyst,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAILVDTUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAILVDTUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAILVDTUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAILVDTUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAILVDTUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAILVDTUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAILVDTSensitivity(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAILVDTSensitivity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAILVDTSensitivity(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAILVDTSensitivity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAILVDTSensitivity(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAILVDTSensitivity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAILVDTSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAILVDTSensitivityUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAILVDTSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAILVDTSensitivityUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAILVDTSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAILVDTSensitivityUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIRVDTUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIRVDTUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIRVDTUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIRVDTUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIRVDTUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIRVDTUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIRVDTSensitivity(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIRVDTSensitivity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIRVDTSensitivity(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIRVDTSensitivity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIRVDTSensitivity(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIRVDTSensitivity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIRVDTSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIRVDTSensitivityUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIRVDTSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIRVDTSensitivityUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIRVDTSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIRVDTSensitivityUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIEddyCurrentProxProbeUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIEddyCurrentProxProbeUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIEddyCurrentProxProbeUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIEddyCurrentProxProbeUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIEddyCurrentProxProbeUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIEddyCurrentProxProbeUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIEddyCurrentProxProbeSensitivity(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIEddyCurrentProxProbeSensitivity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIEddyCurrentProxProbeSensitivity(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIEddyCurrentProxProbeSensitivity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIEddyCurrentProxProbeSensitivity(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIEddyCurrentProxProbeSensitivity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIEddyCurrentProxProbeSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIEddyCurrentProxProbeSensitivityUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIEddyCurrentProxProbeSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIEddyCurrentProxProbeSensitivityUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIEddyCurrentProxProbeSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIEddyCurrentProxProbeSensitivityUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAISoundPressureMaxSoundPressureLvl(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAISoundPressureMaxSoundPressureLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAISoundPressureMaxSoundPressureLvl(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAISoundPressureMaxSoundPressureLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAISoundPressureMaxSoundPressureLvl(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAISoundPressureMaxSoundPressureLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAISoundPressureUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAISoundPressureUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAISoundPressureUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAISoundPressureUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAISoundPressureUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAISoundPressureUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAISoundPressuredBRef(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAISoundPressuredBRef,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAISoundPressuredBRef(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAISoundPressuredBRef,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAISoundPressuredBRef(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAISoundPressuredBRef,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIMicrophoneSensitivity(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIMicrophoneSensitivity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIMicrophoneSensitivity(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIMicrophoneSensitivity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIMicrophoneSensitivity(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIMicrophoneSensitivity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIAccelUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIAccelUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIAccelUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIAccelUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIAccelUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIAccelUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIAcceldBRef(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIAcceldBRef,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIAcceldBRef(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIAcceldBRef,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIAcceldBRef(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIAcceldBRef,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIAccelSensitivity(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIAccelSensitivity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIAccelSensitivity(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIAccelSensitivity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIAccelSensitivity(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIAccelSensitivity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIAccelSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIAccelSensitivityUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIAccelSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIAccelSensitivityUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIAccelSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIAccelSensitivityUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIVelocityUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIVelocityUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIVelocityUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIVelocityUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIVelocityUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIVelocityUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIVelocityIEPESensordBRef(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIVelocityIEPESensordBRef,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIVelocityIEPESensordBRef(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIVelocityIEPESensordBRef,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIVelocityIEPESensordBRef(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIVelocityIEPESensordBRef,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIVelocityIEPESensorSensitivity(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIVelocityIEPESensorSensitivity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIVelocityIEPESensorSensitivity(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIVelocityIEPESensorSensitivity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIVelocityIEPESensorSensitivity(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIVelocityIEPESensorSensitivity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIVelocityIEPESensorSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIVelocityIEPESensorSensitivityUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIVelocityIEPESensorSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIVelocityIEPESensorSensitivityUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIVelocityIEPESensorSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIVelocityIEPESensorSensitivityUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIForceUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIForceUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIForceUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIForceUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIForceUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIForceUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIForceIEPESensorSensitivity(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIForceIEPESensorSensitivity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIForceIEPESensorSensitivity(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIForceIEPESensorSensitivity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIForceIEPESensorSensitivity(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIForceIEPESensorSensitivity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIForceIEPESensorSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIForceIEPESensorSensitivityUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIForceIEPESensorSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIForceIEPESensorSensitivityUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIForceIEPESensorSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIForceIEPESensorSensitivityUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIPressureUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIPressureUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIPressureUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIPressureUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIPressureUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIPressureUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAITorqueUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAITorqueUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAITorqueUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAITorqueUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAITorqueUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAITorqueUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIBridgeUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIBridgeUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIBridgeUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIBridgeUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIBridgeUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIBridgeElectricalUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIBridgeElectricalUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeElectricalUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIBridgeElectricalUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIBridgeElectricalUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIBridgeElectricalUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIBridgePhysicalUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIBridgePhysicalUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIBridgePhysicalUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIBridgePhysicalUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIBridgePhysicalUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIBridgePhysicalUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIBridgeScaleType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIBridgeScaleType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeScaleType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIBridgeScaleType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIBridgeScaleType(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIBridgeScaleType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIBridgeTwoPointLinFirstElectricalVal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIBridgeTwoPointLinFirstElectricalVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeTwoPointLinFirstElectricalVal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIBridgeTwoPointLinFirstElectricalVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIBridgeTwoPointLinFirstElectricalVal(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIBridgeTwoPointLinFirstElectricalVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIBridgeTwoPointLinFirstPhysicalVal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIBridgeTwoPointLinFirstPhysicalVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeTwoPointLinFirstPhysicalVal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIBridgeTwoPointLinFirstPhysicalVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIBridgeTwoPointLinFirstPhysicalVal(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIBridgeTwoPointLinFirstPhysicalVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIBridgeTwoPointLinSecondElectricalVal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIBridgeTwoPointLinSecondElectricalVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeTwoPointLinSecondElectricalVal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIBridgeTwoPointLinSecondElectricalVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIBridgeTwoPointLinSecondElectricalVal(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIBridgeTwoPointLinSecondElectricalVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIBridgeTwoPointLinSecondPhysicalVal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIBridgeTwoPointLinSecondPhysicalVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeTwoPointLinSecondPhysicalVal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIBridgeTwoPointLinSecondPhysicalVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIBridgeTwoPointLinSecondPhysicalVal(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIBridgeTwoPointLinSecondPhysicalVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIBridgeTableElectricalVals(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIBridgeTableElectricalVals,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxSetAIBridgeTableElectricalVals(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIBridgeTableElectricalVals,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxResetAIBridgeTableElectricalVals(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIBridgeTableElectricalVals,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIBridgeTablePhysicalVals(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIBridgeTablePhysicalVals,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxSetAIBridgeTablePhysicalVals(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIBridgeTablePhysicalVals,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxResetAIBridgeTablePhysicalVals(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIBridgeTablePhysicalVals,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIBridgePolyForwardCoeff(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIBridgePolyForwardCoeff,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxSetAIBridgePolyForwardCoeff(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIBridgePolyForwardCoeff,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxResetAIBridgePolyForwardCoeff(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIBridgePolyForwardCoeff,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIBridgePolyReverseCoeff(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIBridgePolyReverseCoeff,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxSetAIBridgePolyReverseCoeff(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIBridgePolyReverseCoeff,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxResetAIBridgePolyReverseCoeff(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIBridgePolyReverseCoeff,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIIsTEDS(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAIIsTEDS,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxGetAITEDSUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAITEDSUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxGetAICoupling(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAICoupling,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAICoupling(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAICoupling,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAICoupling(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAICoupling,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIImpedance(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIImpedance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIImpedance(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIImpedance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIImpedance(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIImpedance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAITermCfg(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAITermCfg,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAITermCfg(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAITermCfg,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAITermCfg(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAITermCfg,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIInputSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAIInputSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetAIInputSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetAIInputSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetAIInputSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIInputSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIResistanceCfg(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIResistanceCfg,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIResistanceCfg(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIResistanceCfg,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIResistanceCfg(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIResistanceCfg,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAILeadWireResistance(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAILeadWireResistance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAILeadWireResistance(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAILeadWireResistance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAILeadWireResistance(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAILeadWireResistance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIBridgeCfg(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIBridgeCfg,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeCfg(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIBridgeCfg,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIBridgeCfg(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIBridgeCfg,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIBridgeNomResistance(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIBridgeNomResistance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeNomResistance(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIBridgeNomResistance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIBridgeNomResistance(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIBridgeNomResistance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIBridgeInitialVoltage(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIBridgeInitialVoltage,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeInitialVoltage(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIBridgeInitialVoltage,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIBridgeInitialVoltage(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIBridgeInitialVoltage,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIBridgeInitialRatio(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIBridgeInitialRatio,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeInitialRatio(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIBridgeInitialRatio,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIBridgeInitialRatio(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIBridgeInitialRatio,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIBridgeShuntCalEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAIBridgeShuntCalEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeShuntCalEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetAIBridgeShuntCalEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIBridgeShuntCalEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIBridgeShuntCalEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIBridgeShuntCalSelect(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIBridgeShuntCalSelect,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeShuntCalSelect(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIBridgeShuntCalSelect,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIBridgeShuntCalSelect(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIBridgeShuntCalSelect,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIBridgeShuntCalGainAdjust(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIBridgeShuntCalGainAdjust,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeShuntCalGainAdjust(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIBridgeShuntCalGainAdjust,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIBridgeShuntCalGainAdjust(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIBridgeShuntCalGainAdjust,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIBridgeShuntCalShuntCalAResistance(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIBridgeShuntCalShuntCalAResistance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeShuntCalShuntCalAResistance(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIBridgeShuntCalShuntCalAResistance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIBridgeShuntCalShuntCalAResistance(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIBridgeShuntCalShuntCalAResistance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIBridgeShuntCalShuntCalAActualResistance(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIBridgeShuntCalShuntCalAActualResistance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeShuntCalShuntCalAActualResistance(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIBridgeShuntCalShuntCalAActualResistance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIBridgeShuntCalShuntCalAActualResistance(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIBridgeShuntCalShuntCalAActualResistance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIBridgeBalanceCoarsePot(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIBridgeBalanceCoarsePot,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeBalanceCoarsePot(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIBridgeBalanceCoarsePot,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIBridgeBalanceCoarsePot(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIBridgeBalanceCoarsePot,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIBridgeBalanceFinePot(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIBridgeBalanceFinePot,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeBalanceFinePot(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIBridgeBalanceFinePot,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIBridgeBalanceFinePot(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIBridgeBalanceFinePot,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAICurrentShuntLoc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAICurrentShuntLoc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAICurrentShuntLoc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAICurrentShuntLoc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAICurrentShuntLoc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAICurrentShuntLoc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAICurrentShuntResistance(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAICurrentShuntResistance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAICurrentShuntResistance(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAICurrentShuntResistance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAICurrentShuntResistance(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAICurrentShuntResistance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIExcitSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIExcitSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIExcitSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIExcitSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIExcitSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIExcitSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIExcitVal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIExcitVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIExcitVal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIExcitVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIExcitVal(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIExcitVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIExcitUseForScaling(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAIExcitUseForScaling,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIExcitUseForScaling(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetAIExcitUseForScaling,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIExcitUseForScaling(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIExcitUseForScaling,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIExcitUseMultiplexed(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAIExcitUseMultiplexed,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIExcitUseMultiplexed(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetAIExcitUseMultiplexed,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIExcitUseMultiplexed(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIExcitUseMultiplexed,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIExcitActualVal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIExcitActualVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIExcitActualVal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIExcitActualVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIExcitActualVal(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIExcitActualVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIExcitDCorAC(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIExcitDCorAC,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIExcitDCorAC(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIExcitDCorAC,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIExcitDCorAC(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIExcitDCorAC,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIExcitVoltageOrCurrent(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIExcitVoltageOrCurrent,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIExcitVoltageOrCurrent(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIExcitVoltageOrCurrent,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIExcitVoltageOrCurrent(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIExcitVoltageOrCurrent,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIACExcitFreq(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIACExcitFreq,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIACExcitFreq(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIACExcitFreq,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIACExcitFreq(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIACExcitFreq,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIACExcitSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAIACExcitSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIACExcitSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetAIACExcitSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIACExcitSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIACExcitSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIACExcitWireMode(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIACExcitWireMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIACExcitWireMode(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIACExcitWireMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIACExcitWireMode(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIACExcitWireMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIOpenThrmcplDetectEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAIOpenThrmcplDetectEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIOpenThrmcplDetectEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetAIOpenThrmcplDetectEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIOpenThrmcplDetectEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIOpenThrmcplDetectEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIThrmcplLeadOffsetVoltage(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIThrmcplLeadOffsetVoltage,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIThrmcplLeadOffsetVoltage(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIThrmcplLeadOffsetVoltage,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIThrmcplLeadOffsetVoltage(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIThrmcplLeadOffsetVoltage,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIAtten(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIAtten,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIAtten(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIAtten,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIAtten(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIAtten,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIProbeAtten(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIProbeAtten,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIProbeAtten(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIProbeAtten,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIProbeAtten(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIProbeAtten,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAILowpassEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAILowpassEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAILowpassEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetAILowpassEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetAILowpassEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAILowpassEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAILowpassCutoffFreq(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAILowpassCutoffFreq,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAILowpassCutoffFreq(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAILowpassCutoffFreq,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAILowpassCutoffFreq(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAILowpassCutoffFreq,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAILowpassSwitchCapClkSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAILowpassSwitchCapClkSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAILowpassSwitchCapClkSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAILowpassSwitchCapClkSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAILowpassSwitchCapClkSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAILowpassSwitchCapClkSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAILowpassSwitchCapExtClkFreq(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAILowpassSwitchCapExtClkFreq,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAILowpassSwitchCapExtClkFreq(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAILowpassSwitchCapExtClkFreq,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAILowpassSwitchCapExtClkFreq(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAILowpassSwitchCapExtClkFreq,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAILowpassSwitchCapExtClkDiv(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetAILowpassSwitchCapExtClkDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetAILowpassSwitchCapExtClkDiv(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetAILowpassSwitchCapExtClkDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetAILowpassSwitchCapExtClkDiv(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAILowpassSwitchCapExtClkDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAILowpassSwitchCapOutClkDiv(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetAILowpassSwitchCapOutClkDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetAILowpassSwitchCapOutClkDiv(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetAILowpassSwitchCapOutClkDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetAILowpassSwitchCapOutClkDiv(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAILowpassSwitchCapOutClkDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIFilterDelay(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIFilterDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxGetAIRemoveFilterDelay(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAIRemoveFilterDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIRemoveFilterDelay(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetAIRemoveFilterDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIRemoveFilterDelay(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIRemoveFilterDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIAveragingWinSize(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetAIAveragingWinSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetAIAveragingWinSize(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetAIAveragingWinSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetAIAveragingWinSize(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIAveragingWinSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIResolutionUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIResolutionUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxGetAIResolution(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIResolution,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxGetAIRawSampSize(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetAIRawSampSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxGetAIRawSampJustification(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIRawSampJustification,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxGetAIADCTimingMode(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIADCTimingMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIADCTimingMode(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIADCTimingMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIADCTimingMode(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIADCTimingMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIADCCustomTimingMode(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetAIADCCustomTimingMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetAIADCCustomTimingMode(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetAIADCCustomTimingMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetAIADCCustomTimingMode(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIADCCustomTimingMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIDitherEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAIDitherEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIDitherEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetAIDitherEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIDitherEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIDitherEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIChanCalHasValidCalInfo(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAIChanCalHasValidCalInfo,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxGetAIChanCalEnableCal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAIChanCalEnableCal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIChanCalEnableCal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetAIChanCalEnableCal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIChanCalEnableCal(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIChanCalEnableCal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIChanCalApplyCalIfExp(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAIChanCalApplyCalIfExp,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIChanCalApplyCalIfExp(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetAIChanCalApplyCalIfExp,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIChanCalApplyCalIfExp(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIChanCalApplyCalIfExp,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIChanCalScaleType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIChanCalScaleType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIChanCalScaleType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIChanCalScaleType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIChanCalScaleType(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIChanCalScaleType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIChanCalTablePreScaledVals(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIChanCalTablePreScaledVals,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxSetAIChanCalTablePreScaledVals(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIChanCalTablePreScaledVals,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxResetAIChanCalTablePreScaledVals(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIChanCalTablePreScaledVals,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIChanCalTableScaledVals(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIChanCalTableScaledVals,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxSetAIChanCalTableScaledVals(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIChanCalTableScaledVals,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxResetAIChanCalTableScaledVals(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIChanCalTableScaledVals,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIChanCalPolyForwardCoeff(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIChanCalPolyForwardCoeff,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxSetAIChanCalPolyForwardCoeff(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIChanCalPolyForwardCoeff,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxResetAIChanCalPolyForwardCoeff(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIChanCalPolyForwardCoeff,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIChanCalPolyReverseCoeff(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIChanCalPolyReverseCoeff,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxSetAIChanCalPolyReverseCoeff(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIChanCalPolyReverseCoeff,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxResetAIChanCalPolyReverseCoeff(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIChanCalPolyReverseCoeff,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIChanCalOperatorName(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAIChanCalOperatorName,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetAIChanCalOperatorName(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetAIChanCalOperatorName,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetAIChanCalOperatorName(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIChanCalOperatorName,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIChanCalDesc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAIChanCalDesc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetAIChanCalDesc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetAIChanCalDesc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetAIChanCalDesc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIChanCalDesc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIChanCalVerifRefVals(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIChanCalVerifRefVals,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxSetAIChanCalVerifRefVals(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIChanCalVerifRefVals,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxResetAIChanCalVerifRefVals(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIChanCalVerifRefVals,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIChanCalVerifAcqVals(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIChanCalVerifAcqVals,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxSetAIChanCalVerifAcqVals(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIChanCalVerifAcqVals,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxResetAIChanCalVerifAcqVals(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIChanCalVerifAcqVals,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIRngHigh(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIRngHigh,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIRngHigh(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIRngHigh,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIRngHigh(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIRngHigh,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIRngLow(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIRngLow,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIRngLow(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIRngLow,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIRngLow(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIRngLow,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIDCOffset(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIDCOffset,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIDCOffset(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIDCOffset,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIDCOffset(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIDCOffset,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIGain(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIGain,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIGain(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIGain,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAIGain(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIGain,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAISampAndHoldEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAISampAndHoldEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAISampAndHoldEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetAISampAndHoldEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetAISampAndHoldEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAISampAndHoldEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIAutoZeroMode(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIAutoZeroMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIAutoZeroMode(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIAutoZeroMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIAutoZeroMode(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIAutoZeroMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIDataXferMech(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIDataXferMech,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIDataXferMech(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIDataXferMech,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIDataXferMech(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIDataXferMech,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIDataXferReqCond(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIDataXferReqCond,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIDataXferReqCond(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIDataXferReqCond,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIDataXferReqCond(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIDataXferReqCond,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIDataXferCustomThreshold(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetAIDataXferCustomThreshold,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetAIDataXferCustomThreshold(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetAIDataXferCustomThreshold,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetAIDataXferCustomThreshold(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIDataXferCustomThreshold,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetAIUsbXferReqSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetAIUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetAIUsbXferReqSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetAIUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIUsbXferReqSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetAIUsbXferReqCount,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetAIUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetAIUsbXferReqCount,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetAIUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIUsbXferReqCount,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIMemMapEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAIMemMapEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIMemMapEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetAIMemMapEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIMemMapEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIMemMapEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIRawDataCompressionType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIRawDataCompressionType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIRawDataCompressionType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIRawDataCompressionType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAIRawDataCompressionType(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIRawDataCompressionType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAILossyLSBRemovalCompressedSampSize(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetAILossyLSBRemovalCompressedSampSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetAILossyLSBRemovalCompressedSampSize(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetAILossyLSBRemovalCompressedSampSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetAILossyLSBRemovalCompressedSampSize(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAILossyLSBRemovalCompressedSampSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAIDevScalingCoeff(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIDevScalingCoeff,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxGetAIEnhancedAliasRejectionEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAIEnhancedAliasRejectionEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIEnhancedAliasRejectionEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetAIEnhancedAliasRejectionEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIEnhancedAliasRejectionEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAIEnhancedAliasRejectionEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOMax(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAOMax,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOMax(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAOMax,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAOMax(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOMax,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOMin(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAOMin,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOMin(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAOMin,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAOMin(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOMin,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOCustomScaleName(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAOCustomScaleName,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetAOCustomScaleName(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetAOCustomScaleName,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetAOCustomScaleName(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOCustomScaleName,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOOutputType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAOOutputType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxGetAOVoltageUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAOVoltageUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAOVoltageUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAOVoltageUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAOVoltageUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOVoltageUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOVoltageCurrentLimit(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAOVoltageCurrentLimit,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOVoltageCurrentLimit(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAOVoltageCurrentLimit,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAOVoltageCurrentLimit(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOVoltageCurrentLimit,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOCurrentUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAOCurrentUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAOCurrentUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAOCurrentUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAOCurrentUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOCurrentUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOFuncGenType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAOFuncGenType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAOFuncGenType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAOFuncGenType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAOFuncGenType(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOFuncGenType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOFuncGenFreq(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAOFuncGenFreq,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOFuncGenFreq(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAOFuncGenFreq,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAOFuncGenFreq(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOFuncGenFreq,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOFuncGenAmplitude(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAOFuncGenAmplitude,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOFuncGenAmplitude(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAOFuncGenAmplitude,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAOFuncGenAmplitude(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOFuncGenAmplitude,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOFuncGenOffset(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAOFuncGenOffset,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOFuncGenOffset(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAOFuncGenOffset,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAOFuncGenOffset(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOFuncGenOffset,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOFuncGenSquareDutyCycle(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAOFuncGenSquareDutyCycle,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOFuncGenSquareDutyCycle(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAOFuncGenSquareDutyCycle,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAOFuncGenSquareDutyCycle(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOFuncGenSquareDutyCycle,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOFuncGenModulationType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAOFuncGenModulationType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAOFuncGenModulationType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAOFuncGenModulationType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAOFuncGenModulationType(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOFuncGenModulationType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOFuncGenFMDeviation(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAOFuncGenFMDeviation,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOFuncGenFMDeviation(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAOFuncGenFMDeviation,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAOFuncGenFMDeviation(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOFuncGenFMDeviation,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOOutputImpedance(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAOOutputImpedance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOOutputImpedance(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAOOutputImpedance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAOOutputImpedance(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOOutputImpedance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOLoadImpedance(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAOLoadImpedance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOLoadImpedance(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAOLoadImpedance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAOLoadImpedance(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOLoadImpedance,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOIdleOutputBehavior(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAOIdleOutputBehavior,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAOIdleOutputBehavior(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAOIdleOutputBehavior,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAOIdleOutputBehavior(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOIdleOutputBehavior,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOTermCfg(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAOTermCfg,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAOTermCfg(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAOTermCfg,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAOTermCfg(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOTermCfg,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOResolutionUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAOResolutionUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAOResolutionUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAOResolutionUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAOResolutionUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOResolutionUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOResolution(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAOResolution,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxGetAODACRngHigh(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAODACRngHigh,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAODACRngHigh(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAODACRngHigh,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAODACRngHigh(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAODACRngHigh,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAODACRngLow(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAODACRngLow,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAODACRngLow(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAODACRngLow,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAODACRngLow(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAODACRngLow,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAODACRefConnToGnd(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAODACRefConnToGnd,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAODACRefConnToGnd(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetAODACRefConnToGnd,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetAODACRefConnToGnd(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAODACRefConnToGnd,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAODACRefAllowConnToGnd(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAODACRefAllowConnToGnd,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAODACRefAllowConnToGnd(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetAODACRefAllowConnToGnd,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetAODACRefAllowConnToGnd(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAODACRefAllowConnToGnd,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAODACRefSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAODACRefSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAODACRefSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAODACRefSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAODACRefSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAODACRefSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAODACRefExtSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAODACRefExtSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetAODACRefExtSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetAODACRefExtSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetAODACRefExtSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAODACRefExtSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAODACRefVal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAODACRefVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAODACRefVal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAODACRefVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAODACRefVal(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAODACRefVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAODACOffsetSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAODACOffsetSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAODACOffsetSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAODACOffsetSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAODACOffsetSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAODACOffsetSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAODACOffsetExtSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAODACOffsetExtSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetAODACOffsetExtSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetAODACOffsetExtSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetAODACOffsetExtSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAODACOffsetExtSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAODACOffsetVal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAODACOffsetVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAODACOffsetVal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAODACOffsetVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAODACOffsetVal(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAODACOffsetVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOReglitchEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAOReglitchEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAOReglitchEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetAOReglitchEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetAOReglitchEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOReglitchEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOGain(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAOGain,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOGain(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAOGain,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetAOGain(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOGain,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOUseOnlyOnBrdMem(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAOUseOnlyOnBrdMem,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAOUseOnlyOnBrdMem(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetAOUseOnlyOnBrdMem,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetAOUseOnlyOnBrdMem(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOUseOnlyOnBrdMem,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAODataXferMech(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAODataXferMech,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAODataXferMech(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAODataXferMech,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAODataXferMech(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAODataXferMech,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAODataXferReqCond(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAODataXferReqCond,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAODataXferReqCond(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAODataXferReqCond,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetAODataXferReqCond(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAODataXferReqCond,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetAOUsbXferReqSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetAOUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetAOUsbXferReqSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetAOUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOUsbXferReqSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetAOUsbXferReqCount,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetAOUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetAOUsbXferReqCount,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetAOUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOUsbXferReqCount,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAOMemMapEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAOMemMapEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAOMemMapEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetAOMemMapEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetAOMemMapEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOMemMapEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetAODevScalingCoeff(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAODevScalingCoeff,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxGetAOEnhancedImageRejectionEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAOEnhancedImageRejectionEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAOEnhancedImageRejectionEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetAOEnhancedImageRejectionEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetAOEnhancedImageRejectionEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetAOEnhancedImageRejectionEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDIInvertLines(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetDIInvertLines,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetDIInvertLines(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetDIInvertLines,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetDIInvertLines(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDIInvertLines,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDINumLines(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetDINumLines,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxGetDIDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetDIDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetDIDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetDIDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetDIDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDIDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDIDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetDIDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetDIDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetDIDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetDIDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDIDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDIDigFltrEnableBusMode(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetDIDigFltrEnableBusMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetDIDigFltrEnableBusMode(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetDIDigFltrEnableBusMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetDIDigFltrEnableBusMode(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDIDigFltrEnableBusMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDIDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDIDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetDIDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetDIDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetDIDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDIDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDIDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetDIDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetDIDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetDIDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetDIDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDIDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDIDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetDIDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetDIDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetDIDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetDIDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDIDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDITristate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetDITristate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetDITristate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetDITristate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetDITristate(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDITristate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDILogicFamily(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetDILogicFamily,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDILogicFamily(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetDILogicFamily,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetDILogicFamily(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDILogicFamily,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDIDataXferMech(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetDIDataXferMech,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDIDataXferMech(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetDIDataXferMech,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetDIDataXferMech(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDIDataXferMech,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDIDataXferReqCond(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetDIDataXferReqCond,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDIDataXferReqCond(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetDIDataXferReqCond,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetDIDataXferReqCond(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDIDataXferReqCond,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDIUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetDIUsbXferReqSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetDIUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetDIUsbXferReqSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetDIUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDIUsbXferReqSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDIUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetDIUsbXferReqCount,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetDIUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetDIUsbXferReqCount,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetDIUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDIUsbXferReqCount,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDIMemMapEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetDIMemMapEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetDIMemMapEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetDIMemMapEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetDIMemMapEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDIMemMapEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDIAcquireOn(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetDIAcquireOn,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDIAcquireOn(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetDIAcquireOn,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetDIAcquireOn(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDIAcquireOn,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDOOutputDriveType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetDOOutputDriveType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDOOutputDriveType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetDOOutputDriveType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetDOOutputDriveType(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDOOutputDriveType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDOInvertLines(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetDOInvertLines,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetDOInvertLines(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetDOInvertLines,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetDOInvertLines(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDOInvertLines,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDONumLines(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetDONumLines,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxGetDOTristate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetDOTristate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetDOTristate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetDOTristate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetDOTristate(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDOTristate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDOLineStatesStartState(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetDOLineStatesStartState,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDOLineStatesStartState(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetDOLineStatesStartState,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetDOLineStatesStartState(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDOLineStatesStartState,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDOLineStatesPausedState(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetDOLineStatesPausedState,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDOLineStatesPausedState(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetDOLineStatesPausedState,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetDOLineStatesPausedState(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDOLineStatesPausedState,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDOLineStatesDoneState(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetDOLineStatesDoneState,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDOLineStatesDoneState(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetDOLineStatesDoneState,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetDOLineStatesDoneState(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDOLineStatesDoneState,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDOLogicFamily(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetDOLogicFamily,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDOLogicFamily(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetDOLogicFamily,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetDOLogicFamily(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDOLogicFamily,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDOOvercurrentLimit(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetDOOvercurrentLimit,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetDOOvercurrentLimit(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetDOOvercurrentLimit,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetDOOvercurrentLimit(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDOOvercurrentLimit,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDOOvercurrentAutoReenable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetDOOvercurrentAutoReenable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetDOOvercurrentAutoReenable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetDOOvercurrentAutoReenable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetDOOvercurrentAutoReenable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDOOvercurrentAutoReenable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDOOvercurrentReenablePeriod(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetDOOvercurrentReenablePeriod,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetDOOvercurrentReenablePeriod(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetDOOvercurrentReenablePeriod,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetDOOvercurrentReenablePeriod(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDOOvercurrentReenablePeriod,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDOUseOnlyOnBrdMem(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetDOUseOnlyOnBrdMem,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetDOUseOnlyOnBrdMem(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetDOUseOnlyOnBrdMem,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetDOUseOnlyOnBrdMem(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDOUseOnlyOnBrdMem,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDODataXferMech(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetDODataXferMech,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDODataXferMech(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetDODataXferMech,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetDODataXferMech(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDODataXferMech,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDODataXferReqCond(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetDODataXferReqCond,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDODataXferReqCond(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetDODataXferReqCond,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetDODataXferReqCond(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDODataXferReqCond,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDOUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetDOUsbXferReqSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetDOUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetDOUsbXferReqSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetDOUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDOUsbXferReqSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDOUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetDOUsbXferReqCount,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetDOUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetDOUsbXferReqCount,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetDOUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDOUsbXferReqCount,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDOMemMapEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetDOMemMapEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetDOMemMapEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetDOMemMapEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetDOMemMapEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDOMemMapEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetDOGenerateOn(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetDOGenerateOn,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDOGenerateOn(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetDOGenerateOn,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetDOGenerateOn(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetDOGenerateOn,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIMax(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIMax,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIMax(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIMax,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIMax(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIMax,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIMin(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIMin,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIMin(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIMin,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIMin(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIMin,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICustomScaleName(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCICustomScaleName,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCICustomScaleName(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCICustomScaleName,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCICustomScaleName(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICustomScaleName,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIMeasType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCIMeasType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxGetCIFreqUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCIFreqUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIFreqUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCIFreqUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCIFreqUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIFreqUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIFreqTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCIFreqTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIFreqTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCIFreqTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCIFreqTerm(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIFreqTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIFreqStartingEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCIFreqStartingEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIFreqStartingEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCIFreqStartingEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCIFreqStartingEdge(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIFreqStartingEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIFreqMeasMeth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCIFreqMeasMeth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIFreqMeasMeth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCIFreqMeasMeth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCIFreqMeasMeth(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIFreqMeasMeth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIFreqEnableAveraging(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCIFreqEnableAveraging,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIFreqEnableAveraging(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCIFreqEnableAveraging,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIFreqEnableAveraging(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIFreqEnableAveraging,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIFreqMeasTime(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIFreqMeasTime,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIFreqMeasTime(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIFreqMeasTime,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIFreqMeasTime(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIFreqMeasTime,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIFreqDiv(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCIFreqDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCIFreqDiv(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetCIFreqDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCIFreqDiv(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIFreqDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIFreqDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCIFreqDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIFreqDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCIFreqDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIFreqDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIFreqDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIFreqDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIFreqDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIFreqDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIFreqDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIFreqDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIFreqDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIFreqDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCIFreqDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIFreqDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCIFreqDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCIFreqDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIFreqDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIFreqDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIFreqDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIFreqDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIFreqDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIFreqDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIFreqDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIFreqDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCIFreqDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIFreqDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCIFreqDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIFreqDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIFreqDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPeriodUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCIPeriodUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIPeriodUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCIPeriodUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCIPeriodUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPeriodUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPeriodTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCIPeriodTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIPeriodTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCIPeriodTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCIPeriodTerm(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPeriodTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPeriodStartingEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCIPeriodStartingEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIPeriodStartingEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCIPeriodStartingEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCIPeriodStartingEdge(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPeriodStartingEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPeriodMeasMeth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCIPeriodMeasMeth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIPeriodMeasMeth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCIPeriodMeasMeth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCIPeriodMeasMeth(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPeriodMeasMeth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPeriodEnableAveraging(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCIPeriodEnableAveraging,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIPeriodEnableAveraging(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCIPeriodEnableAveraging,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIPeriodEnableAveraging(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPeriodEnableAveraging,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPeriodMeasTime(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIPeriodMeasTime,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIPeriodMeasTime(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIPeriodMeasTime,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIPeriodMeasTime(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPeriodMeasTime,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPeriodDiv(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCIPeriodDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCIPeriodDiv(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetCIPeriodDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCIPeriodDiv(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPeriodDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPeriodDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCIPeriodDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIPeriodDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCIPeriodDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIPeriodDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPeriodDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPeriodDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIPeriodDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIPeriodDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIPeriodDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIPeriodDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPeriodDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPeriodDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCIPeriodDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIPeriodDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCIPeriodDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCIPeriodDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPeriodDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPeriodDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIPeriodDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIPeriodDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIPeriodDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIPeriodDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPeriodDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPeriodDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCIPeriodDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIPeriodDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCIPeriodDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIPeriodDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPeriodDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCICountEdgesTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCICountEdgesTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCICountEdgesTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesTerm(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesDir(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCICountEdgesDir,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesDir(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCICountEdgesDir,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesDir(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesDir,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesDirTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCICountEdgesDirTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCICountEdgesDirTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCICountEdgesDirTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesDirTerm(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesDirTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountDirDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCICountEdgesCountDirDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesCountDirDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCICountEdgesCountDirDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountDirDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesCountDirDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountDirDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCICountEdgesCountDirDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesCountDirDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCICountEdgesCountDirDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountDirDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesCountDirDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountDirDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCICountEdgesCountDirDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCICountEdgesCountDirDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCICountEdgesCountDirDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountDirDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesCountDirDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountDirDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCICountEdgesCountDirDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesCountDirDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCICountEdgesCountDirDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountDirDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesCountDirDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountDirDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCICountEdgesCountDirDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesCountDirDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCICountEdgesCountDirDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountDirDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesCountDirDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesInitialCnt(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCICountEdgesInitialCnt,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesInitialCnt(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetCICountEdgesInitialCnt,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesInitialCnt(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesInitialCnt,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesActiveEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCICountEdgesActiveEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesActiveEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCICountEdgesActiveEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesActiveEdge(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesActiveEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountResetEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCICountEdgesCountResetEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesCountResetEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCICountEdgesCountResetEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountResetEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesCountResetEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountResetResetCount(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCICountEdgesCountResetResetCount,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesCountResetResetCount(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetCICountEdgesCountResetResetCount,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountResetResetCount(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesCountResetResetCount,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountResetTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCICountEdgesCountResetTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCICountEdgesCountResetTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCICountEdgesCountResetTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountResetTerm(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesCountResetTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountResetActiveEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCICountEdgesCountResetActiveEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesCountResetActiveEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCICountEdgesCountResetActiveEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountResetActiveEdge(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesCountResetActiveEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountResetDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCICountEdgesCountResetDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesCountResetDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCICountEdgesCountResetDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountResetDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesCountResetDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountResetDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCICountEdgesCountResetDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesCountResetDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCICountEdgesCountResetDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountResetDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesCountResetDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountResetDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCICountEdgesCountResetDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCICountEdgesCountResetDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCICountEdgesCountResetDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountResetDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesCountResetDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountResetDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCICountEdgesCountResetDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesCountResetDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCICountEdgesCountResetDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountResetDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesCountResetDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountResetDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCICountEdgesCountResetDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesCountResetDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCICountEdgesCountResetDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountResetDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesCountResetDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCICountEdgesDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCICountEdgesDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCICountEdgesDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCICountEdgesDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCICountEdgesDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCICountEdgesDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCICountEdgesDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCICountEdgesDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCICountEdgesDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCICountEdgesDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCICountEdgesDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICountEdgesDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIAngEncoderUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCIAngEncoderUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIAngEncoderUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCIAngEncoderUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCIAngEncoderUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIAngEncoderUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIAngEncoderPulsesPerRev(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCIAngEncoderPulsesPerRev,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCIAngEncoderPulsesPerRev(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetCIAngEncoderPulsesPerRev,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCIAngEncoderPulsesPerRev(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIAngEncoderPulsesPerRev,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIAngEncoderInitialAngle(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIAngEncoderInitialAngle,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIAngEncoderInitialAngle(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIAngEncoderInitialAngle,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIAngEncoderInitialAngle(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIAngEncoderInitialAngle,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCILinEncoderUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCILinEncoderUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCILinEncoderUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCILinEncoderUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCILinEncoderUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCILinEncoderUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCILinEncoderDistPerPulse(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCILinEncoderDistPerPulse,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCILinEncoderDistPerPulse(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCILinEncoderDistPerPulse,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCILinEncoderDistPerPulse(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCILinEncoderDistPerPulse,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCILinEncoderInitialPos(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCILinEncoderInitialPos,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCILinEncoderInitialPos(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCILinEncoderInitialPos,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCILinEncoderInitialPos(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCILinEncoderInitialPos,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIEncoderDecodingType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCIEncoderDecodingType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderDecodingType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCIEncoderDecodingType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCIEncoderDecodingType(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIEncoderDecodingType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIEncoderAInputTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCIEncoderAInputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIEncoderAInputTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCIEncoderAInputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCIEncoderAInputTerm(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIEncoderAInputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIEncoderAInputDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCIEncoderAInputDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderAInputDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCIEncoderAInputDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIEncoderAInputDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIEncoderAInputDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIEncoderAInputDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIEncoderAInputDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderAInputDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIEncoderAInputDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIEncoderAInputDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIEncoderAInputDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIEncoderAInputDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCIEncoderAInputDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIEncoderAInputDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCIEncoderAInputDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCIEncoderAInputDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIEncoderAInputDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIEncoderAInputDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIEncoderAInputDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderAInputDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIEncoderAInputDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIEncoderAInputDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIEncoderAInputDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIEncoderAInputDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCIEncoderAInputDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderAInputDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCIEncoderAInputDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIEncoderAInputDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIEncoderAInputDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIEncoderBInputTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCIEncoderBInputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIEncoderBInputTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCIEncoderBInputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCIEncoderBInputTerm(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIEncoderBInputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIEncoderBInputDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCIEncoderBInputDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderBInputDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCIEncoderBInputDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIEncoderBInputDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIEncoderBInputDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIEncoderBInputDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIEncoderBInputDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderBInputDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIEncoderBInputDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIEncoderBInputDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIEncoderBInputDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIEncoderBInputDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCIEncoderBInputDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIEncoderBInputDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCIEncoderBInputDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCIEncoderBInputDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIEncoderBInputDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIEncoderBInputDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIEncoderBInputDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderBInputDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIEncoderBInputDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIEncoderBInputDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIEncoderBInputDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIEncoderBInputDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCIEncoderBInputDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderBInputDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCIEncoderBInputDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIEncoderBInputDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIEncoderBInputDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIEncoderZInputTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCIEncoderZInputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIEncoderZInputTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCIEncoderZInputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCIEncoderZInputTerm(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIEncoderZInputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIEncoderZInputDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCIEncoderZInputDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderZInputDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCIEncoderZInputDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIEncoderZInputDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIEncoderZInputDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIEncoderZInputDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIEncoderZInputDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderZInputDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIEncoderZInputDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIEncoderZInputDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIEncoderZInputDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIEncoderZInputDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCIEncoderZInputDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIEncoderZInputDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCIEncoderZInputDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCIEncoderZInputDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIEncoderZInputDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIEncoderZInputDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIEncoderZInputDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderZInputDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIEncoderZInputDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIEncoderZInputDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIEncoderZInputDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIEncoderZInputDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCIEncoderZInputDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderZInputDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCIEncoderZInputDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIEncoderZInputDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIEncoderZInputDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIEncoderZIndexEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCIEncoderZIndexEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderZIndexEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCIEncoderZIndexEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIEncoderZIndexEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIEncoderZIndexEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIEncoderZIndexVal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIEncoderZIndexVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderZIndexVal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIEncoderZIndexVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIEncoderZIndexVal(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIEncoderZIndexVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIEncoderZIndexPhase(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCIEncoderZIndexPhase,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderZIndexPhase(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCIEncoderZIndexPhase,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCIEncoderZIndexPhase(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIEncoderZIndexPhase,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseWidthUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCIPulseWidthUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseWidthUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCIPulseWidthUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCIPulseWidthUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseWidthUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseWidthTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseWidthTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIPulseWidthTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCIPulseWidthTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCIPulseWidthTerm(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseWidthTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseWidthStartingEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCIPulseWidthStartingEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseWidthStartingEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCIPulseWidthStartingEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCIPulseWidthStartingEdge(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseWidthStartingEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseWidthDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCIPulseWidthDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseWidthDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCIPulseWidthDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIPulseWidthDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseWidthDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseWidthDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIPulseWidthDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIPulseWidthDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIPulseWidthDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIPulseWidthDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseWidthDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseWidthDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseWidthDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIPulseWidthDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCIPulseWidthDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCIPulseWidthDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseWidthDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseWidthDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIPulseWidthDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIPulseWidthDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIPulseWidthDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIPulseWidthDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseWidthDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseWidthDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCIPulseWidthDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseWidthDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCIPulseWidthDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIPulseWidthDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseWidthDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCITwoEdgeSepUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCITwoEdgeSepUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCITwoEdgeSepUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCITwoEdgeSepUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepFirstTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCITwoEdgeSepFirstTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCITwoEdgeSepFirstTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCITwoEdgeSepFirstTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepFirstTerm(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCITwoEdgeSepFirstTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepFirstEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCITwoEdgeSepFirstEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCITwoEdgeSepFirstEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCITwoEdgeSepFirstEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepFirstEdge(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCITwoEdgeSepFirstEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepFirstDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCITwoEdgeSepFirstDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCITwoEdgeSepFirstDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCITwoEdgeSepFirstDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepFirstDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCITwoEdgeSepFirstDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepFirstDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCITwoEdgeSepFirstDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCITwoEdgeSepFirstDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCITwoEdgeSepFirstDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepFirstDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCITwoEdgeSepFirstDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepFirstDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCITwoEdgeSepFirstDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCITwoEdgeSepFirstDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCITwoEdgeSepFirstDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepFirstDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCITwoEdgeSepFirstDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepFirstDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCITwoEdgeSepFirstDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCITwoEdgeSepFirstDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCITwoEdgeSepFirstDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepFirstDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCITwoEdgeSepFirstDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepFirstDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCITwoEdgeSepFirstDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCITwoEdgeSepFirstDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCITwoEdgeSepFirstDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepFirstDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCITwoEdgeSepFirstDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepSecondTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCITwoEdgeSepSecondTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCITwoEdgeSepSecondTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCITwoEdgeSepSecondTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepSecondTerm(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCITwoEdgeSepSecondTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepSecondEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCITwoEdgeSepSecondEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCITwoEdgeSepSecondEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCITwoEdgeSepSecondEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepSecondEdge(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCITwoEdgeSepSecondEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepSecondDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCITwoEdgeSepSecondDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCITwoEdgeSepSecondDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCITwoEdgeSepSecondDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepSecondDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCITwoEdgeSepSecondDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepSecondDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCITwoEdgeSepSecondDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCITwoEdgeSepSecondDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCITwoEdgeSepSecondDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepSecondDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCITwoEdgeSepSecondDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepSecondDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCITwoEdgeSepSecondDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCITwoEdgeSepSecondDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCITwoEdgeSepSecondDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepSecondDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCITwoEdgeSepSecondDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepSecondDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCITwoEdgeSepSecondDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCITwoEdgeSepSecondDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCITwoEdgeSepSecondDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepSecondDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCITwoEdgeSepSecondDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepSecondDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCITwoEdgeSepSecondDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCITwoEdgeSepSecondDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCITwoEdgeSepSecondDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepSecondDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCITwoEdgeSepSecondDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCISemiPeriodUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCISemiPeriodUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCISemiPeriodUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCISemiPeriodUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCISemiPeriodUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCISemiPeriodUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCISemiPeriodTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCISemiPeriodTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCISemiPeriodTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCISemiPeriodTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCISemiPeriodTerm(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCISemiPeriodTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCISemiPeriodStartingEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCISemiPeriodStartingEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCISemiPeriodStartingEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCISemiPeriodStartingEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCISemiPeriodStartingEdge(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCISemiPeriodStartingEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCISemiPeriodDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCISemiPeriodDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCISemiPeriodDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCISemiPeriodDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCISemiPeriodDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCISemiPeriodDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCISemiPeriodDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCISemiPeriodDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCISemiPeriodDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCISemiPeriodDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCISemiPeriodDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCISemiPeriodDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCISemiPeriodDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCISemiPeriodDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCISemiPeriodDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCISemiPeriodDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCISemiPeriodDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCISemiPeriodDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCISemiPeriodDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCISemiPeriodDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCISemiPeriodDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCISemiPeriodDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCISemiPeriodDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCISemiPeriodDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCISemiPeriodDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCISemiPeriodDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCISemiPeriodDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCISemiPeriodDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCISemiPeriodDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCISemiPeriodDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseFreqUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCIPulseFreqUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseFreqUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCIPulseFreqUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCIPulseFreqUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseFreqUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseFreqTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseFreqTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIPulseFreqTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCIPulseFreqTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCIPulseFreqTerm(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseFreqTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseFreqStartEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCIPulseFreqStartEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseFreqStartEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCIPulseFreqStartEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCIPulseFreqStartEdge(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseFreqStartEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseFreqDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCIPulseFreqDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseFreqDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCIPulseFreqDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIPulseFreqDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseFreqDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseFreqDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIPulseFreqDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIPulseFreqDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIPulseFreqDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIPulseFreqDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseFreqDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseFreqDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseFreqDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIPulseFreqDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCIPulseFreqDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCIPulseFreqDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseFreqDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseFreqDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIPulseFreqDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIPulseFreqDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIPulseFreqDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIPulseFreqDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseFreqDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseFreqDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCIPulseFreqDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseFreqDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCIPulseFreqDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIPulseFreqDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseFreqDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseTimeUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCIPulseTimeUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseTimeUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCIPulseTimeUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCIPulseTimeUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseTimeUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseTimeTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseTimeTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIPulseTimeTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCIPulseTimeTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCIPulseTimeTerm(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseTimeTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseTimeStartEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCIPulseTimeStartEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseTimeStartEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCIPulseTimeStartEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCIPulseTimeStartEdge(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseTimeStartEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseTimeDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCIPulseTimeDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseTimeDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCIPulseTimeDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIPulseTimeDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseTimeDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseTimeDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIPulseTimeDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIPulseTimeDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIPulseTimeDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIPulseTimeDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseTimeDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseTimeDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseTimeDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIPulseTimeDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCIPulseTimeDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCIPulseTimeDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseTimeDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseTimeDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIPulseTimeDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIPulseTimeDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIPulseTimeDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIPulseTimeDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseTimeDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseTimeDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCIPulseTimeDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseTimeDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCIPulseTimeDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIPulseTimeDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseTimeDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseTicksTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseTicksTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIPulseTicksTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCIPulseTicksTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCIPulseTicksTerm(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseTicksTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseTicksStartEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCIPulseTicksStartEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseTicksStartEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCIPulseTicksStartEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCIPulseTicksStartEdge(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseTicksStartEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseTicksDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCIPulseTicksDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseTicksDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCIPulseTicksDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIPulseTicksDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseTicksDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseTicksDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIPulseTicksDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIPulseTicksDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIPulseTicksDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIPulseTicksDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseTicksDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseTicksDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseTicksDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIPulseTicksDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCIPulseTicksDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCIPulseTicksDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseTicksDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseTicksDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCIPulseTicksDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIPulseTicksDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCIPulseTicksDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCIPulseTicksDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseTicksDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPulseTicksDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCIPulseTicksDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseTicksDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCIPulseTicksDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIPulseTicksDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPulseTicksDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCITimestampUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCITimestampUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCITimestampUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCITimestampUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCITimestampUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCITimestampUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCITimestampInitialSeconds(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCITimestampInitialSeconds,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCITimestampInitialSeconds(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetCITimestampInitialSeconds,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCITimestampInitialSeconds(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCITimestampInitialSeconds,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIGPSSyncMethod(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCIGPSSyncMethod,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIGPSSyncMethod(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCIGPSSyncMethod,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCIGPSSyncMethod(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIGPSSyncMethod,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIGPSSyncSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCIGPSSyncSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIGPSSyncSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCIGPSSyncSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCIGPSSyncSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIGPSSyncSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICtrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCICtrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCICtrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCICtrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCICtrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICtrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICtrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCICtrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCICtrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCICtrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCICtrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICtrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICtrTimebaseActiveEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCICtrTimebaseActiveEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCICtrTimebaseActiveEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCICtrTimebaseActiveEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCICtrTimebaseActiveEdge(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICtrTimebaseActiveEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICtrTimebaseDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCICtrTimebaseDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCICtrTimebaseDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCICtrTimebaseDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCICtrTimebaseDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICtrTimebaseDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICtrTimebaseDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCICtrTimebaseDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCICtrTimebaseDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCICtrTimebaseDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCICtrTimebaseDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICtrTimebaseDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICtrTimebaseDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCICtrTimebaseDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCICtrTimebaseDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCICtrTimebaseDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCICtrTimebaseDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICtrTimebaseDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICtrTimebaseDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCICtrTimebaseDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCICtrTimebaseDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCICtrTimebaseDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCICtrTimebaseDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICtrTimebaseDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICtrTimebaseDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCICtrTimebaseDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCICtrTimebaseDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCICtrTimebaseDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCICtrTimebaseDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICtrTimebaseDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCICount(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCICount,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxGetCIOutputState(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCIOutputState,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxGetCITCReached(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCITCReached,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxGetCICtrTimebaseMasterTimebaseDiv(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCICtrTimebaseMasterTimebaseDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCICtrTimebaseMasterTimebaseDiv(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetCICtrTimebaseMasterTimebaseDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCICtrTimebaseMasterTimebaseDiv(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCICtrTimebaseMasterTimebaseDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIDataXferMech(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCIDataXferMech,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIDataXferMech(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCIDataXferMech,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCIDataXferMech(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIDataXferMech,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIDataXferReqCond(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCIDataXferReqCond,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIDataXferReqCond(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCIDataXferReqCond,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCIDataXferReqCond(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIDataXferReqCond,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCIUsbXferReqSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCIUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetCIUsbXferReqSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCIUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIUsbXferReqSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCIUsbXferReqCount,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCIUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetCIUsbXferReqCount,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCIUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIUsbXferReqCount,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIMemMapEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCIMemMapEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIMemMapEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCIMemMapEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIMemMapEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIMemMapEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCINumPossiblyInvalidSamps(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCINumPossiblyInvalidSamps,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxGetCIDupCountPrevent(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCIDupCountPrevent,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIDupCountPrevent(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCIDupCountPrevent,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIDupCountPrevent(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIDupCountPrevent,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCIPrescaler(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCIPrescaler,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCIPrescaler(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetCIPrescaler,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCIPrescaler(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCIPrescaler,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOOutputType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCOOutputType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxGetCOPulseIdleState(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCOPulseIdleState,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCOPulseIdleState(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCOPulseIdleState,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCOPulseIdleState(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOPulseIdleState,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOPulseTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCOPulseTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCOPulseTerm(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCOPulseTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCOPulseTerm(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOPulseTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOPulseTimeUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCOPulseTimeUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCOPulseTimeUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCOPulseTimeUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCOPulseTimeUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOPulseTimeUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOPulseHighTime(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCOPulseHighTime,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCOPulseHighTime(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCOPulseHighTime,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCOPulseHighTime(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOPulseHighTime,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOPulseLowTime(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCOPulseLowTime,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCOPulseLowTime(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCOPulseLowTime,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCOPulseLowTime(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOPulseLowTime,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOPulseTimeInitialDelay(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCOPulseTimeInitialDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCOPulseTimeInitialDelay(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCOPulseTimeInitialDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCOPulseTimeInitialDelay(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOPulseTimeInitialDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOPulseDutyCyc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCOPulseDutyCyc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCOPulseDutyCyc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCOPulseDutyCyc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCOPulseDutyCyc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOPulseDutyCyc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOPulseFreqUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCOPulseFreqUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCOPulseFreqUnits(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCOPulseFreqUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCOPulseFreqUnits(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOPulseFreqUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOPulseFreq(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCOPulseFreq,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCOPulseFreq(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCOPulseFreq,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCOPulseFreq(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOPulseFreq,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOPulseFreqInitialDelay(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCOPulseFreqInitialDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCOPulseFreqInitialDelay(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCOPulseFreqInitialDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCOPulseFreqInitialDelay(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOPulseFreqInitialDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOPulseHighTicks(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCOPulseHighTicks,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCOPulseHighTicks(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetCOPulseHighTicks,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCOPulseHighTicks(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOPulseHighTicks,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOPulseLowTicks(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCOPulseLowTicks,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCOPulseLowTicks(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetCOPulseLowTicks,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCOPulseLowTicks(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOPulseLowTicks,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOPulseTicksInitialDelay(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCOPulseTicksInitialDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCOPulseTicksInitialDelay(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetCOPulseTicksInitialDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCOPulseTicksInitialDelay(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOPulseTicksInitialDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOCtrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCOCtrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCOCtrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCOCtrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCOCtrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOCtrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOCtrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCOCtrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCOCtrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCOCtrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCOCtrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOCtrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOCtrTimebaseActiveEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCOCtrTimebaseActiveEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCOCtrTimebaseActiveEdge(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCOCtrTimebaseActiveEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCOCtrTimebaseActiveEdge(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOCtrTimebaseActiveEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOCtrTimebaseDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCOCtrTimebaseDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCOCtrTimebaseDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCOCtrTimebaseDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCOCtrTimebaseDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOCtrTimebaseDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOCtrTimebaseDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCOCtrTimebaseDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCOCtrTimebaseDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCOCtrTimebaseDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCOCtrTimebaseDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOCtrTimebaseDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOCtrTimebaseDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetCOCtrTimebaseDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCOCtrTimebaseDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetCOCtrTimebaseDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetCOCtrTimebaseDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOCtrTimebaseDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOCtrTimebaseDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetCOCtrTimebaseDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCOCtrTimebaseDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetCOCtrTimebaseDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,channel,data)
end

function DAQmxResetCOCtrTimebaseDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOCtrTimebaseDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOCtrTimebaseDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCOCtrTimebaseDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCOCtrTimebaseDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCOCtrTimebaseDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCOCtrTimebaseDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOCtrTimebaseDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOCount(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCOCount,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxGetCOOutputState(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCOOutputState,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxGetCOAutoIncrCnt(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCOAutoIncrCnt,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCOAutoIncrCnt(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetCOAutoIncrCnt,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCOAutoIncrCnt(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOAutoIncrCnt,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOCtrTimebaseMasterTimebaseDiv(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCOCtrTimebaseMasterTimebaseDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCOCtrTimebaseMasterTimebaseDiv(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetCOCtrTimebaseMasterTimebaseDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCOCtrTimebaseMasterTimebaseDiv(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOCtrTimebaseMasterTimebaseDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOPulseDone(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCOPulseDone,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxGetCOEnableInitialDelayOnRetrigger(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCOEnableInitialDelayOnRetrigger,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCOEnableInitialDelayOnRetrigger(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCOEnableInitialDelayOnRetrigger,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCOEnableInitialDelayOnRetrigger(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOEnableInitialDelayOnRetrigger,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOConstrainedGenMode(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCOConstrainedGenMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCOConstrainedGenMode(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCOConstrainedGenMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCOConstrainedGenMode(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOConstrainedGenMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOUseOnlyOnBrdMem(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCOUseOnlyOnBrdMem,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCOUseOnlyOnBrdMem(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCOUseOnlyOnBrdMem,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCOUseOnlyOnBrdMem(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOUseOnlyOnBrdMem,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCODataXferMech(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCODataXferMech,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCODataXferMech(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCODataXferMech,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCODataXferMech(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCODataXferMech,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCODataXferReqCond(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetCODataXferReqCond,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCODataXferReqCond(taskHandle::TaskHandle,channel::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetCODataXferReqCond,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,channel,data)
end

function DAQmxResetCODataXferReqCond(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCODataXferReqCond,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCOUsbXferReqSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCOUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetCOUsbXferReqSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCOUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOUsbXferReqSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCOUsbXferReqCount,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCOUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetCOUsbXferReqCount,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCOUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOUsbXferReqCount,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOMemMapEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCOMemMapEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCOMemMapEnable(taskHandle::TaskHandle,channel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetCOMemMapEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,channel,data)
end

function DAQmxResetCOMemMapEnable(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOMemMapEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCOPrescaler(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCOPrescaler,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCOPrescaler(taskHandle::TaskHandle,channel::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetCOPrescaler,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCOPrescaler(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetCOPrescaler,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetCORdyForNewVal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetCORdyForNewVal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxGetChanType(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetChanType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxGetPhysicalChanName(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetPhysicalChanName,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetPhysicalChanName(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetPhysicalChanName,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxGetChanDescr(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetChanDescr,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetChanDescr(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetChanDescr,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,channel,data)
end

function DAQmxResetChanDescr(taskHandle::TaskHandle,channel::Ptr{Uint8})
    ccall((:DAQmxResetChanDescr,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,channel)
end

function DAQmxGetChanIsGlobal(taskHandle::TaskHandle,channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetChanIsGlobal,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxGetExportedAIConvClkOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedAIConvClkOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedAIConvClkOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetExportedAIConvClkOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetExportedAIConvClkOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAIConvClkOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedAIConvClkPulsePolarity(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedAIConvClkPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxGetExported10MHzRefClkOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetExported10MHzRefClkOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExported10MHzRefClkOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetExported10MHzRefClkOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetExported10MHzRefClkOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExported10MHzRefClkOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExported20MHzTimebaseOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetExported20MHzTimebaseOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExported20MHzTimebaseOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetExported20MHzTimebaseOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetExported20MHzTimebaseOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExported20MHzTimebaseOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedSampClkOutputBehavior(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedSampClkOutputBehavior,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedSampClkOutputBehavior(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedSampClkOutputBehavior,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedSampClkOutputBehavior(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedSampClkOutputBehavior,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedSampClkOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedSampClkOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedSampClkOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetExportedSampClkOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetExportedSampClkOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedSampClkOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedSampClkDelayOffset(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetExportedSampClkDelayOffset,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetExportedSampClkDelayOffset(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetExportedSampClkDelayOffset,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetExportedSampClkDelayOffset(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedSampClkDelayOffset,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedSampClkPulsePolarity(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedSampClkPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedSampClkPulsePolarity(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedSampClkPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedSampClkPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedSampClkPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedSampClkTimebaseOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedSampClkTimebaseOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedSampClkTimebaseOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetExportedSampClkTimebaseOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetExportedSampClkTimebaseOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedSampClkTimebaseOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedDividedSampClkTimebaseOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedDividedSampClkTimebaseOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedDividedSampClkTimebaseOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetExportedDividedSampClkTimebaseOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetExportedDividedSampClkTimebaseOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedDividedSampClkTimebaseOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedAdvTrigOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedAdvTrigOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedAdvTrigOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetExportedAdvTrigOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetExportedAdvTrigOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAdvTrigOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedAdvTrigPulsePolarity(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedAdvTrigPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxGetExportedAdvTrigPulseWidthUnits(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedAdvTrigPulseWidthUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedAdvTrigPulseWidthUnits(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedAdvTrigPulseWidthUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedAdvTrigPulseWidthUnits(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAdvTrigPulseWidthUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedAdvTrigPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetExportedAdvTrigPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetExportedAdvTrigPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetExportedAdvTrigPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetExportedAdvTrigPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAdvTrigPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedPauseTrigOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedPauseTrigOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedPauseTrigOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetExportedPauseTrigOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetExportedPauseTrigOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedPauseTrigOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedPauseTrigLvlActiveLvl(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedPauseTrigLvlActiveLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedPauseTrigLvlActiveLvl(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedPauseTrigLvlActiveLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedPauseTrigLvlActiveLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedPauseTrigLvlActiveLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedRefTrigOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedRefTrigOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedRefTrigOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetExportedRefTrigOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetExportedRefTrigOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRefTrigOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedRefTrigPulsePolarity(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedRefTrigPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedRefTrigPulsePolarity(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedRefTrigPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedRefTrigPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRefTrigPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedStartTrigOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedStartTrigOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedStartTrigOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetExportedStartTrigOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetExportedStartTrigOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedStartTrigOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedStartTrigPulsePolarity(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedStartTrigPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedStartTrigPulsePolarity(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedStartTrigPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedStartTrigPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedStartTrigPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedAdvCmpltEventOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedAdvCmpltEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedAdvCmpltEventOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetExportedAdvCmpltEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetExportedAdvCmpltEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAdvCmpltEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedAdvCmpltEventDelay(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetExportedAdvCmpltEventDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetExportedAdvCmpltEventDelay(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetExportedAdvCmpltEventDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetExportedAdvCmpltEventDelay(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAdvCmpltEventDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedAdvCmpltEventPulsePolarity(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedAdvCmpltEventPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedAdvCmpltEventPulsePolarity(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedAdvCmpltEventPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedAdvCmpltEventPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAdvCmpltEventPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedAdvCmpltEventPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetExportedAdvCmpltEventPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetExportedAdvCmpltEventPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetExportedAdvCmpltEventPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetExportedAdvCmpltEventPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAdvCmpltEventPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedAIHoldCmpltEventOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedAIHoldCmpltEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedAIHoldCmpltEventOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetExportedAIHoldCmpltEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetExportedAIHoldCmpltEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAIHoldCmpltEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedAIHoldCmpltEventPulsePolarity(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedAIHoldCmpltEventPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedAIHoldCmpltEventPulsePolarity(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedAIHoldCmpltEventPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedAIHoldCmpltEventPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAIHoldCmpltEventPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedChangeDetectEventOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedChangeDetectEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedChangeDetectEventOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetExportedChangeDetectEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetExportedChangeDetectEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedChangeDetectEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedChangeDetectEventPulsePolarity(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedChangeDetectEventPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedChangeDetectEventPulsePolarity(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedChangeDetectEventPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedChangeDetectEventPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedChangeDetectEventPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedCtrOutEventOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedCtrOutEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedCtrOutEventOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetExportedCtrOutEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetExportedCtrOutEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedCtrOutEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedCtrOutEventOutputBehavior(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedCtrOutEventOutputBehavior,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedCtrOutEventOutputBehavior(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedCtrOutEventOutputBehavior,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedCtrOutEventOutputBehavior(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedCtrOutEventOutputBehavior,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedCtrOutEventPulsePolarity(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedCtrOutEventPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedCtrOutEventPulsePolarity(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedCtrOutEventPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedCtrOutEventPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedCtrOutEventPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedCtrOutEventToggleIdleState(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedCtrOutEventToggleIdleState,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedCtrOutEventToggleIdleState(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedCtrOutEventToggleIdleState,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedCtrOutEventToggleIdleState(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedCtrOutEventToggleIdleState,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedHshkEventOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedHshkEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedHshkEventOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetExportedHshkEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetExportedHshkEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedHshkEventOutputBehavior(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedHshkEventOutputBehavior,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedHshkEventOutputBehavior(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedHshkEventOutputBehavior,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedHshkEventOutputBehavior(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventOutputBehavior,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedHshkEventDelay(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetExportedHshkEventDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetExportedHshkEventDelay(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetExportedHshkEventDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetExportedHshkEventDelay(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedHshkEventInterlockedAssertedLvl(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedHshkEventInterlockedAssertedLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedHshkEventInterlockedAssertedLvl(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedHshkEventInterlockedAssertedLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedHshkEventInterlockedAssertedLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventInterlockedAssertedLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedHshkEventInterlockedAssertOnStart(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetExportedHshkEventInterlockedAssertOnStart,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetExportedHshkEventInterlockedAssertOnStart(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetExportedHshkEventInterlockedAssertOnStart,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetExportedHshkEventInterlockedAssertOnStart(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventInterlockedAssertOnStart,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedHshkEventInterlockedDeassertDelay(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetExportedHshkEventInterlockedDeassertDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetExportedHshkEventInterlockedDeassertDelay(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetExportedHshkEventInterlockedDeassertDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetExportedHshkEventInterlockedDeassertDelay(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventInterlockedDeassertDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedHshkEventPulsePolarity(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedHshkEventPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedHshkEventPulsePolarity(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedHshkEventPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedHshkEventPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventPulsePolarity,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedHshkEventPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetExportedHshkEventPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetExportedHshkEventPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetExportedHshkEventPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetExportedHshkEventPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedRdyForXferEventOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedRdyForXferEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedRdyForXferEventOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetExportedRdyForXferEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetExportedRdyForXferEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRdyForXferEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedRdyForXferEventLvlActiveLvl(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedRdyForXferEventLvlActiveLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedRdyForXferEventLvlActiveLvl(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedRdyForXferEventLvlActiveLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedRdyForXferEventLvlActiveLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRdyForXferEventLvlActiveLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedRdyForXferEventDeassertCond(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedRdyForXferEventDeassertCond,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedRdyForXferEventDeassertCond(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedRdyForXferEventDeassertCond,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedRdyForXferEventDeassertCond(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRdyForXferEventDeassertCond,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedRdyForXferEventDeassertCondCustomThreshold(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetExportedRdyForXferEventDeassertCondCustomThreshold,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetExportedRdyForXferEventDeassertCondCustomThreshold(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetExportedRdyForXferEventDeassertCondCustomThreshold,NIDAQmx_V9.6.0),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetExportedRdyForXferEventDeassertCondCustomThreshold(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRdyForXferEventDeassertCondCustomThreshold,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedDataActiveEventOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedDataActiveEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedDataActiveEventOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetExportedDataActiveEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetExportedDataActiveEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedDataActiveEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedDataActiveEventLvlActiveLvl(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedDataActiveEventLvlActiveLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedDataActiveEventLvlActiveLvl(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedDataActiveEventLvlActiveLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedDataActiveEventLvlActiveLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedDataActiveEventLvlActiveLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedRdyForStartEventOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedRdyForStartEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedRdyForStartEventOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetExportedRdyForStartEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetExportedRdyForStartEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRdyForStartEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedRdyForStartEventLvlActiveLvl(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedRdyForStartEventLvlActiveLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedRdyForStartEventLvlActiveLvl(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedRdyForStartEventLvlActiveLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedRdyForStartEventLvlActiveLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRdyForStartEventLvlActiveLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedSyncPulseEventOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedSyncPulseEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedSyncPulseEventOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetExportedSyncPulseEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetExportedSyncPulseEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedSyncPulseEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedWatchdogExpiredEventOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedWatchdogExpiredEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedWatchdogExpiredEventOutputTerm(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetExportedWatchdogExpiredEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetExportedWatchdogExpiredEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedWatchdogExpiredEventOutputTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDevIsSimulated(device::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetDevIsSimulated,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),device,data)
end

function DAQmxGetDevProductCategory(device::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetDevProductCategory,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32}),device,data)
end

function DAQmxGetDevProductType(device::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDevProductType,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevProductNum(device::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetDevProductNum,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),device,data)
end

function DAQmxGetDevSerialNum(device::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetDevSerialNum,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),device,data)
end

function DAQmxGetDevAccessoryProductTypes(device::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDevAccessoryProductTypes,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevAccessoryProductNums(device::Ptr{Uint8},data::Ptr{uInt32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAccessoryProductNums,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAccessorySerialNums(device::Ptr{Uint8},data::Ptr{uInt32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAccessorySerialNums,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetCarrierSerialNum(device::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetCarrierSerialNum,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),device,data)
end

function DAQmxGetDevChassisModuleDevNames(device::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDevChassisModuleDevNames,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevAnlgTrigSupported(device::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetDevAnlgTrigSupported,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),device,data)
end

function DAQmxGetDevDigTrigSupported(device::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetDevDigTrigSupported,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),device,data)
end

function DAQmxGetDevAIPhysicalChans(device::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDevAIPhysicalChans,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevAISupportedMeasTypes(device::Ptr{Uint8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAISupportedMeasTypes,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAIMaxSingleChanRate(device::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetDevAIMaxSingleChanRate,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),device,data)
end

function DAQmxGetDevAIMaxMultiChanRate(device::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetDevAIMaxMultiChanRate,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),device,data)
end

function DAQmxGetDevAIMinRate(device::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetDevAIMinRate,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),device,data)
end

function DAQmxGetDevAISimultaneousSamplingSupported(device::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetDevAISimultaneousSamplingSupported,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),device,data)
end

function DAQmxGetDevAISampModes(device::Ptr{Uint8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAISampModes,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAITrigUsage(device::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetDevAITrigUsage,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32}),device,data)
end

function DAQmxGetDevAIVoltageRngs(device::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIVoltageRngs,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAIVoltageIntExcitDiscreteVals(device::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIVoltageIntExcitDiscreteVals,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAIVoltageIntExcitRangeVals(device::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIVoltageIntExcitRangeVals,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAICurrentRngs(device::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAICurrentRngs,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAICurrentIntExcitDiscreteVals(device::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAICurrentIntExcitDiscreteVals,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAIBridgeRngs(device::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIBridgeRngs,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAIResistanceRngs(device::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIResistanceRngs,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAIFreqRngs(device::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIFreqRngs,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAIGains(device::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIGains,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAICouplings(device::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetDevAICouplings,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32}),device,data)
end

function DAQmxGetDevAILowpassCutoffFreqDiscreteVals(device::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAILowpassCutoffFreqDiscreteVals,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAILowpassCutoffFreqRangeVals(device::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAILowpassCutoffFreqRangeVals,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAOPhysicalChans(device::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDevAOPhysicalChans,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevAOSupportedOutputTypes(device::Ptr{Uint8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAOSupportedOutputTypes,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAOSampClkSupported(device::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetDevAOSampClkSupported,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),device,data)
end

function DAQmxGetDevAOSampModes(device::Ptr{Uint8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAOSampModes,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAOMaxRate(device::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetDevAOMaxRate,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),device,data)
end

function DAQmxGetDevAOMinRate(device::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetDevAOMinRate,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),device,data)
end

function DAQmxGetDevAOTrigUsage(device::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetDevAOTrigUsage,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32}),device,data)
end

function DAQmxGetDevAOVoltageRngs(device::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAOVoltageRngs,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAOCurrentRngs(device::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAOCurrentRngs,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAOGains(device::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAOGains,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevDILines(device::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDevDILines,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevDIPorts(device::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDevDIPorts,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevDIMaxRate(device::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetDevDIMaxRate,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),device,data)
end

function DAQmxGetDevDITrigUsage(device::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetDevDITrigUsage,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32}),device,data)
end

function DAQmxGetDevDOLines(device::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDevDOLines,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevDOPorts(device::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDevDOPorts,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevDOMaxRate(device::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetDevDOMaxRate,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),device,data)
end

function DAQmxGetDevDOTrigUsage(device::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetDevDOTrigUsage,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32}),device,data)
end

function DAQmxGetDevCIPhysicalChans(device::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDevCIPhysicalChans,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevCISupportedMeasTypes(device::Ptr{Uint8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevCISupportedMeasTypes,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevCITrigUsage(device::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetDevCITrigUsage,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32}),device,data)
end

function DAQmxGetDevCISampClkSupported(device::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetDevCISampClkSupported,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),device,data)
end

function DAQmxGetDevCISampModes(device::Ptr{Uint8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevCISampModes,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevCIMaxSize(device::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetDevCIMaxSize,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),device,data)
end

function DAQmxGetDevCIMaxTimebase(device::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetDevCIMaxTimebase,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),device,data)
end

function DAQmxGetDevCOPhysicalChans(device::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDevCOPhysicalChans,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevCOSupportedOutputTypes(device::Ptr{Uint8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevCOSupportedOutputTypes,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevCOSampClkSupported(device::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetDevCOSampClkSupported,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),device,data)
end

function DAQmxGetDevCOSampModes(device::Ptr{Uint8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevCOSampModes,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevCOTrigUsage(device::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetDevCOTrigUsage,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32}),device,data)
end

function DAQmxGetDevCOMaxSize(device::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetDevCOMaxSize,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),device,data)
end

function DAQmxGetDevCOMaxTimebase(device::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetDevCOMaxTimebase,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),device,data)
end

function DAQmxGetDevTEDSHWTEDSSupported(device::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetDevTEDSHWTEDSSupported,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),device,data)
end

function DAQmxGetDevNumDMAChans(device::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetDevNumDMAChans,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),device,data)
end

function DAQmxGetDevBusType(device::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetDevBusType,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32}),device,data)
end

function DAQmxGetDevPCIBusNum(device::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetDevPCIBusNum,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),device,data)
end

function DAQmxGetDevPCIDevNum(device::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetDevPCIDevNum,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),device,data)
end

function DAQmxGetDevPXIChassisNum(device::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetDevPXIChassisNum,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),device,data)
end

function DAQmxGetDevPXISlotNum(device::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetDevPXISlotNum,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),device,data)
end

function DAQmxGetDevCompactDAQChassisDevName(device::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDevCompactDAQChassisDevName,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevCompactDAQSlotNum(device::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetDevCompactDAQSlotNum,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),device,data)
end

function DAQmxGetDevTCPIPHostname(device::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDevTCPIPHostname,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevTCPIPEthernetIP(device::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDevTCPIPEthernetIP,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevTCPIPWirelessIP(device::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDevTCPIPWirelessIP,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevTerminals(device::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDevTerminals,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),device,data,bufferSize)
end

function DAQmxGetReadRelativeTo(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetReadRelativeTo,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetReadRelativeTo(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetReadRelativeTo,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetReadRelativeTo(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadRelativeTo,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetReadOffset(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetReadOffset,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetReadOffset(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetReadOffset,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetReadOffset(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadOffset,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetReadChannelsToRead(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetReadChannelsToRead,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetReadChannelsToRead(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetReadChannelsToRead,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetReadChannelsToRead(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadChannelsToRead,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetReadReadAllAvailSamp(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetReadReadAllAvailSamp,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetReadReadAllAvailSamp(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetReadReadAllAvailSamp,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetReadReadAllAvailSamp(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadReadAllAvailSamp,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetReadAutoStart(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetReadAutoStart,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetReadAutoStart(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetReadAutoStart,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetReadAutoStart(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadAutoStart,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetReadOverWrite(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetReadOverWrite,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetReadOverWrite(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetReadOverWrite,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetReadOverWrite(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadOverWrite,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetReadCurrReadPos(taskHandle::TaskHandle,data::Ptr{uInt64})
    ccall((:DAQmxGetReadCurrReadPos,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt64}),taskHandle,data)
end

function DAQmxGetReadAvailSampPerChan(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetReadAvailSampPerChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxGetLoggingFilePath(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetLoggingFilePath,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetLoggingFilePath(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetLoggingFilePath,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetLoggingFilePath(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingFilePath,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetLoggingMode(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetLoggingMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetLoggingMode(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetLoggingMode,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetLoggingMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingMode,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetLoggingTDMSGroupName(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetLoggingTDMSGroupName,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetLoggingTDMSGroupName(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetLoggingTDMSGroupName,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetLoggingTDMSGroupName(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingTDMSGroupName,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetLoggingTDMSOperation(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetLoggingTDMSOperation,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetLoggingTDMSOperation(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetLoggingTDMSOperation,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetLoggingTDMSOperation(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingTDMSOperation,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetLoggingPause(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetLoggingPause,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetLoggingPause(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetLoggingPause,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetLoggingPause(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingPause,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetLoggingSampsPerFile(taskHandle::TaskHandle,data::Ptr{uInt64})
    ccall((:DAQmxGetLoggingSampsPerFile,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt64}),taskHandle,data)
end

function DAQmxSetLoggingSampsPerFile(taskHandle::TaskHandle,data::uInt64)
    ccall((:DAQmxSetLoggingSampsPerFile,NIDAQmx_V9.6.0),int32,(TaskHandle,uInt64),taskHandle,data)
end

function DAQmxResetLoggingSampsPerFile(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingSampsPerFile,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetLoggingFileWriteSize(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetLoggingFileWriteSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetLoggingFileWriteSize(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetLoggingFileWriteSize,NIDAQmx_V9.6.0),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetLoggingFileWriteSize(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingFileWriteSize,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetLoggingFilePreallocationSize(taskHandle::TaskHandle,data::Ptr{uInt64})
    ccall((:DAQmxGetLoggingFilePreallocationSize,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt64}),taskHandle,data)
end

function DAQmxSetLoggingFilePreallocationSize(taskHandle::TaskHandle,data::uInt64)
    ccall((:DAQmxSetLoggingFilePreallocationSize,NIDAQmx_V9.6.0),int32,(TaskHandle,uInt64),taskHandle,data)
end

function DAQmxResetLoggingFilePreallocationSize(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingFilePreallocationSize,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetReadTotalSampPerChanAcquired(taskHandle::TaskHandle,data::Ptr{uInt64})
    ccall((:DAQmxGetReadTotalSampPerChanAcquired,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt64}),taskHandle,data)
end

function DAQmxGetReadCommonModeRangeErrorChansExist(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetReadCommonModeRangeErrorChansExist,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetReadCommonModeRangeErrorChans(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetReadCommonModeRangeErrorChans,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetReadOvercurrentChansExist(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetReadOvercurrentChansExist,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetReadOvercurrentChans(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetReadOvercurrentChans,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetReadOpenCurrentLoopChansExist(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetReadOpenCurrentLoopChansExist,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetReadOpenCurrentLoopChans(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetReadOpenCurrentLoopChans,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetReadOpenThrmcplChansExist(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetReadOpenThrmcplChansExist,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetReadOpenThrmcplChans(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetReadOpenThrmcplChans,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetReadOverloadedChansExist(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetReadOverloadedChansExist,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetReadOverloadedChans(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetReadOverloadedChans,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetReadAccessoryInsertionOrRemovalDetected(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetReadAccessoryInsertionOrRemovalDetected,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetReadDevsWithInsertedOrRemovedAccessories(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetReadDevsWithInsertedOrRemovedAccessories,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetReadChangeDetectHasOverflowed(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetReadChangeDetectHasOverflowed,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetReadRawDataWidth(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetReadRawDataWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxGetReadNumChans(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetReadNumChans,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxGetReadDigitalLinesBytesPerChan(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetReadDigitalLinesBytesPerChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxGetReadWaitMode(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetReadWaitMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetReadWaitMode(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetReadWaitMode,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetReadWaitMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadWaitMode,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetReadSleepTime(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetReadSleepTime,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetReadSleepTime(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetReadSleepTime,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetReadSleepTime(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadSleepTime,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRealTimeConvLateErrorsToWarnings(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetRealTimeConvLateErrorsToWarnings,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetRealTimeConvLateErrorsToWarnings(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetRealTimeConvLateErrorsToWarnings,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetRealTimeConvLateErrorsToWarnings(taskHandle::TaskHandle)
    ccall((:DAQmxResetRealTimeConvLateErrorsToWarnings,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRealTimeNumOfWarmupIters(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetRealTimeNumOfWarmupIters,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetRealTimeNumOfWarmupIters(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetRealTimeNumOfWarmupIters,NIDAQmx_V9.6.0),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetRealTimeNumOfWarmupIters(taskHandle::TaskHandle)
    ccall((:DAQmxResetRealTimeNumOfWarmupIters,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRealTimeWaitForNextSampClkWaitMode(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetRealTimeWaitForNextSampClkWaitMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetRealTimeWaitForNextSampClkWaitMode(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetRealTimeWaitForNextSampClkWaitMode,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetRealTimeWaitForNextSampClkWaitMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetRealTimeWaitForNextSampClkWaitMode,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRealTimeReportMissedSamp(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetRealTimeReportMissedSamp,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetRealTimeReportMissedSamp(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetRealTimeReportMissedSamp,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetRealTimeReportMissedSamp(taskHandle::TaskHandle)
    ccall((:DAQmxResetRealTimeReportMissedSamp,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRealTimeWriteRecoveryMode(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetRealTimeWriteRecoveryMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetRealTimeWriteRecoveryMode(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetRealTimeWriteRecoveryMode,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetRealTimeWriteRecoveryMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetRealTimeWriteRecoveryMode,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSwitchChanUsage(switchChannelName::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetSwitchChanUsage,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32}),switchChannelName,data)
end

function DAQmxSetSwitchChanUsage(switchChannelName::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetSwitchChanUsage,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},int32),switchChannelName,data)
end

function DAQmxGetSwitchChanAnlgBusSharingEnable(switchChannelName::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetSwitchChanAnlgBusSharingEnable,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),switchChannelName,data)
end

function DAQmxSetSwitchChanAnlgBusSharingEnable(switchChannelName::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetSwitchChanAnlgBusSharingEnable,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},bool32),switchChannelName,data)
end

function DAQmxGetSwitchChanMaxACCarryCurrent(switchChannelName::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanMaxACCarryCurrent,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchChanMaxACSwitchCurrent(switchChannelName::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanMaxACSwitchCurrent,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchChanMaxACCarryPwr(switchChannelName::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanMaxACCarryPwr,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchChanMaxACSwitchPwr(switchChannelName::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanMaxACSwitchPwr,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchChanMaxDCCarryCurrent(switchChannelName::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanMaxDCCarryCurrent,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchChanMaxDCSwitchCurrent(switchChannelName::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanMaxDCSwitchCurrent,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchChanMaxDCCarryPwr(switchChannelName::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanMaxDCCarryPwr,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchChanMaxDCSwitchPwr(switchChannelName::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanMaxDCSwitchPwr,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchChanMaxACVoltage(switchChannelName::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanMaxACVoltage,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchChanMaxDCVoltage(switchChannelName::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanMaxDCVoltage,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchChanWireMode(switchChannelName::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetSwitchChanWireMode,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),switchChannelName,data)
end

function DAQmxGetSwitchChanBandwidth(switchChannelName::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanBandwidth,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchChanImpedance(switchChannelName::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanImpedance,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchDevSettlingTime(deviceName::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchDevSettlingTime,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),deviceName,data)
end

function DAQmxSetSwitchDevSettlingTime(deviceName::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetSwitchDevSettlingTime,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},float64),deviceName,data)
end

function DAQmxGetSwitchDevAutoConnAnlgBus(deviceName::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetSwitchDevAutoConnAnlgBus,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),deviceName,data)
end

function DAQmxSetSwitchDevAutoConnAnlgBus(deviceName::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetSwitchDevAutoConnAnlgBus,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},bool32),deviceName,data)
end

function DAQmxGetSwitchDevPwrDownLatchRelaysAfterSettling(deviceName::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetSwitchDevPwrDownLatchRelaysAfterSettling,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),deviceName,data)
end

function DAQmxSetSwitchDevPwrDownLatchRelaysAfterSettling(deviceName::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetSwitchDevPwrDownLatchRelaysAfterSettling,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},bool32),deviceName,data)
end

function DAQmxGetSwitchDevSettled(deviceName::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetSwitchDevSettled,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),deviceName,data)
end

function DAQmxGetSwitchDevRelayList(deviceName::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetSwitchDevRelayList,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),deviceName,data,bufferSize)
end

function DAQmxGetSwitchDevNumRelays(deviceName::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetSwitchDevNumRelays,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),deviceName,data)
end

function DAQmxGetSwitchDevSwitchChanList(deviceName::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetSwitchDevSwitchChanList,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),deviceName,data,bufferSize)
end

function DAQmxGetSwitchDevNumSwitchChans(deviceName::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetSwitchDevNumSwitchChans,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),deviceName,data)
end

function DAQmxGetSwitchDevNumRows(deviceName::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetSwitchDevNumRows,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),deviceName,data)
end

function DAQmxGetSwitchDevNumColumns(deviceName::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetSwitchDevNumColumns,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),deviceName,data)
end

function DAQmxGetSwitchDevTopology(deviceName::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetSwitchDevTopology,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),deviceName,data,bufferSize)
end

function DAQmxGetSwitchDevTemperature(deviceName::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchDevTemperature,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),deviceName,data)
end

function DAQmxGetSwitchScanBreakMode(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetSwitchScanBreakMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetSwitchScanBreakMode(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetSwitchScanBreakMode,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetSwitchScanBreakMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetSwitchScanBreakMode,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSwitchScanRepeatMode(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetSwitchScanRepeatMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetSwitchScanRepeatMode(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetSwitchScanRepeatMode,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetSwitchScanRepeatMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetSwitchScanRepeatMode,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSwitchScanWaitingForAdv(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetSwitchScanWaitingForAdv,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetScaleDescr(scaleName::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetScaleDescr,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),scaleName,data,bufferSize)
end

function DAQmxSetScaleDescr(scaleName::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetScaleDescr,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8}),scaleName,data)
end

function DAQmxGetScaleScaledUnits(scaleName::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetScaleScaledUnits,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),scaleName,data,bufferSize)
end

function DAQmxSetScaleScaledUnits(scaleName::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetScaleScaledUnits,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8}),scaleName,data)
end

function DAQmxGetScalePreScaledUnits(scaleName::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetScalePreScaledUnits,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32}),scaleName,data)
end

function DAQmxSetScalePreScaledUnits(scaleName::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetScalePreScaledUnits,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},int32),scaleName,data)
end

function DAQmxGetScaleType(scaleName::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetScaleType,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32}),scaleName,data)
end

function DAQmxGetScaleLinSlope(scaleName::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetScaleLinSlope,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),scaleName,data)
end

function DAQmxSetScaleLinSlope(scaleName::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetScaleLinSlope,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},float64),scaleName,data)
end

function DAQmxGetScaleLinYIntercept(scaleName::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetScaleLinYIntercept,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),scaleName,data)
end

function DAQmxSetScaleLinYIntercept(scaleName::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetScaleLinYIntercept,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},float64),scaleName,data)
end

function DAQmxGetScaleMapScaledMax(scaleName::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetScaleMapScaledMax,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),scaleName,data)
end

function DAQmxSetScaleMapScaledMax(scaleName::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetScaleMapScaledMax,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},float64),scaleName,data)
end

function DAQmxGetScaleMapPreScaledMax(scaleName::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetScaleMapPreScaledMax,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),scaleName,data)
end

function DAQmxSetScaleMapPreScaledMax(scaleName::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetScaleMapPreScaledMax,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},float64),scaleName,data)
end

function DAQmxGetScaleMapScaledMin(scaleName::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetScaleMapScaledMin,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),scaleName,data)
end

function DAQmxSetScaleMapScaledMin(scaleName::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetScaleMapScaledMin,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},float64),scaleName,data)
end

function DAQmxGetScaleMapPreScaledMin(scaleName::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetScaleMapPreScaledMin,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),scaleName,data)
end

function DAQmxSetScaleMapPreScaledMin(scaleName::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetScaleMapPreScaledMin,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},float64),scaleName,data)
end

function DAQmxGetScalePolyForwardCoeff(scaleName::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetScalePolyForwardCoeff,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32),scaleName,data,arraySizeInElements)
end

function DAQmxSetScalePolyForwardCoeff(scaleName::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetScalePolyForwardCoeff,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32),scaleName,data,arraySizeInElements)
end

function DAQmxGetScalePolyReverseCoeff(scaleName::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetScalePolyReverseCoeff,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32),scaleName,data,arraySizeInElements)
end

function DAQmxSetScalePolyReverseCoeff(scaleName::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetScalePolyReverseCoeff,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32),scaleName,data,arraySizeInElements)
end

function DAQmxGetScaleTableScaledVals(scaleName::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetScaleTableScaledVals,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32),scaleName,data,arraySizeInElements)
end

function DAQmxSetScaleTableScaledVals(scaleName::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetScaleTableScaledVals,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32),scaleName,data,arraySizeInElements)
end

function DAQmxGetScaleTablePreScaledVals(scaleName::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetScaleTablePreScaledVals,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32),scaleName,data,arraySizeInElements)
end

function DAQmxSetScaleTablePreScaledVals(scaleName::Ptr{Uint8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetScaleTablePreScaledVals,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64},uInt32),scaleName,data,arraySizeInElements)
end

function DAQmxGetSysGlobalChans(data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetSysGlobalChans,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},uInt32),data,bufferSize)
end

function DAQmxGetSysScales(data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetSysScales,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},uInt32),data,bufferSize)
end

function DAQmxGetSysTasks(data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetSysTasks,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},uInt32),data,bufferSize)
end

function DAQmxGetSysDevNames(data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetSysDevNames,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},uInt32),data,bufferSize)
end

function DAQmxGetSysNIDAQMajorVersion(data::Ptr{uInt32})
    ccall((:DAQmxGetSysNIDAQMajorVersion,NIDAQmx_V9.6.0),int32,(Ptr{uInt32},),data)
end

function DAQmxGetSysNIDAQMinorVersion(data::Ptr{uInt32})
    ccall((:DAQmxGetSysNIDAQMinorVersion,NIDAQmx_V9.6.0),int32,(Ptr{uInt32},),data)
end

function DAQmxGetSysNIDAQUpdateVersion(data::Ptr{uInt32})
    ccall((:DAQmxGetSysNIDAQUpdateVersion,NIDAQmx_V9.6.0),int32,(Ptr{uInt32},),data)
end

function DAQmxGetTaskName(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetTaskName,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetTaskChannels(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetTaskChannels,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetTaskNumChans(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetTaskNumChans,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxGetTaskDevices(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetTaskDevices,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetTaskNumDevices(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetTaskNumDevices,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxGetTaskComplete(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetTaskComplete,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetSampQuantSampMode(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetSampQuantSampMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetSampQuantSampMode(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetSampQuantSampMode,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetSampQuantSampMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampQuantSampMode,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampQuantSampPerChan(taskHandle::TaskHandle,data::Ptr{uInt64})
    ccall((:DAQmxGetSampQuantSampPerChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt64}),taskHandle,data)
end

function DAQmxSetSampQuantSampPerChan(taskHandle::TaskHandle,data::uInt64)
    ccall((:DAQmxSetSampQuantSampPerChan,NIDAQmx_V9.6.0),int32,(TaskHandle,uInt64),taskHandle,data)
end

function DAQmxResetSampQuantSampPerChan(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampQuantSampPerChan,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampTimingType(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetSampTimingType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetSampTimingType(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetSampTimingType,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetSampTimingType(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampTimingType,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetSampClkRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetSampClkRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetSampClkRate,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetSampClkRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkRate,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkMaxRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetSampClkMaxRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxGetSampClkSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetSampClkSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetSampClkSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetSampClkSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetSampClkSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkActiveEdge(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetSampClkActiveEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetSampClkActiveEdge(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetSampClkActiveEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetSampClkActiveEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkActiveEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkOverrunBehavior(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetSampClkOverrunBehavior,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetSampClkOverrunBehavior(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetSampClkOverrunBehavior,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetSampClkOverrunBehavior(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkOverrunBehavior,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkUnderflowBehavior(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetSampClkUnderflowBehavior,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetSampClkUnderflowBehavior(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetSampClkUnderflowBehavior,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetSampClkUnderflowBehavior(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkUnderflowBehavior,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkTimebaseDiv(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetSampClkTimebaseDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetSampClkTimebaseDiv(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetSampClkTimebaseDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetSampClkTimebaseDiv(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkTimebaseDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetSampClkTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetSampClkTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetSampClkTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetSampClkTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetSampClkTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetSampClkTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetSampClkTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetSampClkTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetSampClkTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetSampClkTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkTimebaseActiveEdge(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetSampClkTimebaseActiveEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetSampClkTimebaseActiveEdge(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetSampClkTimebaseActiveEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetSampClkTimebaseActiveEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkTimebaseActiveEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkTimebaseMasterTimebaseDiv(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetSampClkTimebaseMasterTimebaseDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetSampClkTimebaseMasterTimebaseDiv(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetSampClkTimebaseMasterTimebaseDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetSampClkTimebaseMasterTimebaseDiv(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkTimebaseMasterTimebaseDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkTimebaseTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetSampClkTimebaseTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetSampClkDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetSampClkDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetSampClkDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetSampClkDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetSampClkDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetSampClkDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetSampClkDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetSampClkDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetSampClkDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetSampClkDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetSampClkDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetSampClkDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetSampClkDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetSampClkDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetSampClkDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetSampClkDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetSampClkDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetSampClkDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetSampClkDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetSampClkDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetSampClkDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetHshkDelayAfterXfer(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetHshkDelayAfterXfer,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetHshkDelayAfterXfer(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetHshkDelayAfterXfer,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetHshkDelayAfterXfer(taskHandle::TaskHandle)
    ccall((:DAQmxResetHshkDelayAfterXfer,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetHshkStartCond(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetHshkStartCond,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetHshkStartCond(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetHshkStartCond,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetHshkStartCond(taskHandle::TaskHandle)
    ccall((:DAQmxResetHshkStartCond,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetHshkSampleInputDataWhen(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetHshkSampleInputDataWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetHshkSampleInputDataWhen(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetHshkSampleInputDataWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetHshkSampleInputDataWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetHshkSampleInputDataWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetChangeDetectDIRisingEdgePhysicalChans(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetChangeDetectDIRisingEdgePhysicalChans,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetChangeDetectDIRisingEdgePhysicalChans(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetChangeDetectDIRisingEdgePhysicalChans,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetChangeDetectDIRisingEdgePhysicalChans(taskHandle::TaskHandle)
    ccall((:DAQmxResetChangeDetectDIRisingEdgePhysicalChans,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetChangeDetectDIFallingEdgePhysicalChans(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetChangeDetectDIFallingEdgePhysicalChans,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetChangeDetectDIFallingEdgePhysicalChans(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetChangeDetectDIFallingEdgePhysicalChans,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetChangeDetectDIFallingEdgePhysicalChans(taskHandle::TaskHandle)
    ccall((:DAQmxResetChangeDetectDIFallingEdgePhysicalChans,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetChangeDetectDITristate(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetChangeDetectDITristate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetChangeDetectDITristate(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetChangeDetectDITristate,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetChangeDetectDITristate(taskHandle::TaskHandle)
    ccall((:DAQmxResetChangeDetectDITristate,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetOnDemandSimultaneousAOEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetOnDemandSimultaneousAOEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetOnDemandSimultaneousAOEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetOnDemandSimultaneousAOEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetOnDemandSimultaneousAOEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetOnDemandSimultaneousAOEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetImplicitUnderflowBehavior(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetImplicitUnderflowBehavior,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetImplicitUnderflowBehavior(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetImplicitUnderflowBehavior,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetImplicitUnderflowBehavior(taskHandle::TaskHandle)
    ccall((:DAQmxResetImplicitUnderflowBehavior,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAIConvRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAIConvRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAIConvRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAIConvRate,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAIConvRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvRate,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAIConvRateEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIConvRateEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,deviceNames,data)
end

function DAQmxSetAIConvRateEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIConvRateEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,deviceNames,data)
end

function DAQmxResetAIConvRateEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8})
    ccall((:DAQmxResetAIConvRateEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,deviceNames)
end

function DAQmxGetAIConvMaxRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAIConvMaxRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxGetAIConvMaxRateEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIConvMaxRateEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,deviceNames,data)
end

function DAQmxGetAIConvSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAIConvSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAIConvSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetAIConvSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetAIConvSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAIConvSrcEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAIConvSrcEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,deviceNames,data,bufferSize)
end

function DAQmxSetAIConvSrcEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetAIConvSrcEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,deviceNames,data)
end

function DAQmxResetAIConvSrcEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8})
    ccall((:DAQmxResetAIConvSrcEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,deviceNames)
end

function DAQmxGetAIConvActiveEdge(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAIConvActiveEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAIConvActiveEdge(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAIConvActiveEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAIConvActiveEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvActiveEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAIConvActiveEdgeEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIConvActiveEdgeEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,deviceNames,data)
end

function DAQmxSetAIConvActiveEdgeEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIConvActiveEdgeEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,deviceNames,data)
end

function DAQmxResetAIConvActiveEdgeEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8})
    ccall((:DAQmxResetAIConvActiveEdgeEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,deviceNames)
end

function DAQmxGetAIConvTimebaseDiv(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetAIConvTimebaseDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetAIConvTimebaseDiv(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetAIConvTimebaseDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetAIConvTimebaseDiv(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvTimebaseDiv,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAIConvTimebaseDivEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetAIConvTimebaseDivEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{uInt32}),taskHandle,deviceNames,data)
end

function DAQmxSetAIConvTimebaseDivEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::uInt32)
    ccall((:DAQmxSetAIConvTimebaseDivEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,deviceNames,data)
end

function DAQmxResetAIConvTimebaseDivEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8})
    ccall((:DAQmxResetAIConvTimebaseDivEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,deviceNames)
end

function DAQmxGetAIConvTimebaseSrc(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAIConvTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAIConvTimebaseSrc(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAIConvTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAIConvTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAIConvTimebaseSrcEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetAIConvTimebaseSrcEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,deviceNames,data)
end

function DAQmxSetAIConvTimebaseSrcEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetAIConvTimebaseSrcEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,deviceNames,data)
end

function DAQmxResetAIConvTimebaseSrcEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8})
    ccall((:DAQmxResetAIConvTimebaseSrcEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,deviceNames)
end

function DAQmxGetDelayFromSampClkDelayUnits(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetDelayFromSampClkDelayUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetDelayFromSampClkDelayUnits(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetDelayFromSampClkDelayUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetDelayFromSampClkDelayUnits(taskHandle::TaskHandle)
    ccall((:DAQmxResetDelayFromSampClkDelayUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDelayFromSampClkDelayUnitsEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetDelayFromSampClkDelayUnitsEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,deviceNames,data)
end

function DAQmxSetDelayFromSampClkDelayUnitsEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetDelayFromSampClkDelayUnitsEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,deviceNames,data)
end

function DAQmxResetDelayFromSampClkDelayUnitsEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8})
    ccall((:DAQmxResetDelayFromSampClkDelayUnitsEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,deviceNames)
end

function DAQmxGetDelayFromSampClkDelay(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetDelayFromSampClkDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetDelayFromSampClkDelay(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetDelayFromSampClkDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetDelayFromSampClkDelay(taskHandle::TaskHandle)
    ccall((:DAQmxResetDelayFromSampClkDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDelayFromSampClkDelayEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetDelayFromSampClkDelayEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,deviceNames,data)
end

function DAQmxSetDelayFromSampClkDelayEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetDelayFromSampClkDelayEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,deviceNames,data)
end

function DAQmxResetDelayFromSampClkDelayEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8})
    ccall((:DAQmxResetDelayFromSampClkDelayEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,deviceNames)
end

function DAQmxGetAIConvDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAIConvDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAIConvDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAIConvDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAIConvDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAIConvDigFltrEnableEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAIConvDigFltrEnableEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,deviceNames,data)
end

function DAQmxSetAIConvDigFltrEnableEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetAIConvDigFltrEnableEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,deviceNames,data)
end

function DAQmxResetAIConvDigFltrEnableEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8})
    ccall((:DAQmxResetAIConvDigFltrEnableEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,deviceNames)
end

function DAQmxGetAIConvDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAIConvDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAIConvDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAIConvDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAIConvDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAIConvDigFltrMinPulseWidthEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIConvDigFltrMinPulseWidthEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,deviceNames,data)
end

function DAQmxSetAIConvDigFltrMinPulseWidthEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIConvDigFltrMinPulseWidthEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,deviceNames,data)
end

function DAQmxResetAIConvDigFltrMinPulseWidthEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8})
    ccall((:DAQmxResetAIConvDigFltrMinPulseWidthEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,deviceNames)
end

function DAQmxGetAIConvDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAIConvDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAIConvDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetAIConvDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetAIConvDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAIConvDigFltrTimebaseSrcEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAIConvDigFltrTimebaseSrcEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8},uInt32),taskHandle,deviceNames,data,bufferSize)
end

function DAQmxSetAIConvDigFltrTimebaseSrcEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::Ptr{Uint8})
    ccall((:DAQmxSetAIConvDigFltrTimebaseSrcEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{Uint8}),taskHandle,deviceNames,data)
end

function DAQmxResetAIConvDigFltrTimebaseSrcEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8})
    ccall((:DAQmxResetAIConvDigFltrTimebaseSrcEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,deviceNames)
end

function DAQmxGetAIConvDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAIConvDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAIConvDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAIConvDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAIConvDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAIConvDigFltrTimebaseRateEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetAIConvDigFltrTimebaseRateEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{float64}),taskHandle,deviceNames,data)
end

function DAQmxSetAIConvDigFltrTimebaseRateEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::float64)
    ccall((:DAQmxSetAIConvDigFltrTimebaseRateEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},float64),taskHandle,deviceNames,data)
end

function DAQmxResetAIConvDigFltrTimebaseRateEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8})
    ccall((:DAQmxResetAIConvDigFltrTimebaseRateEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,deviceNames)
end

function DAQmxGetAIConvDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAIConvDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAIConvDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAIConvDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAIConvDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAIConvDigSyncEnableEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetAIConvDigSyncEnableEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{bool32}),taskHandle,deviceNames,data)
end

function DAQmxSetAIConvDigSyncEnableEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetAIConvDigSyncEnableEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},bool32),taskHandle,deviceNames,data)
end

function DAQmxResetAIConvDigSyncEnableEx(taskHandle::TaskHandle,deviceNames::Ptr{Uint8})
    ccall((:DAQmxResetAIConvDigSyncEnableEx,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,deviceNames)
end

function DAQmxGetMasterTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetMasterTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetMasterTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetMasterTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetMasterTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetMasterTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetMasterTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetMasterTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetMasterTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetMasterTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetMasterTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetMasterTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRefClkRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetRefClkRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetRefClkRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetRefClkRate,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetRefClkRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefClkRate,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRefClkSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetRefClkSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetRefClkSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetRefClkSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetRefClkSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefClkSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSyncPulseSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetSyncPulseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetSyncPulseSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetSyncPulseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetSyncPulseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetSyncPulseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSyncPulseSyncTime(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetSyncPulseSyncTime,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxGetSyncPulseMinDelayToStart(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetSyncPulseMinDelayToStart,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetSyncPulseMinDelayToStart(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetSyncPulseMinDelayToStart,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetSyncPulseMinDelayToStart(taskHandle::TaskHandle)
    ccall((:DAQmxResetSyncPulseMinDelayToStart,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSyncPulseResetTime(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetSyncPulseResetTime,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxGetSyncPulseResetDelay(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetSyncPulseResetDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetSyncPulseResetDelay(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetSyncPulseResetDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetSyncPulseResetDelay(taskHandle::TaskHandle)
    ccall((:DAQmxResetSyncPulseResetDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSyncPulseTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetSyncPulseTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetSyncClkInterval(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetSyncClkInterval,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetSyncClkInterval(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetSyncClkInterval,NIDAQmx_V9.6.0),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetSyncClkInterval(taskHandle::TaskHandle)
    ccall((:DAQmxResetSyncClkInterval,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampTimingEngine(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetSampTimingEngine,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetSampTimingEngine(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetSampTimingEngine,NIDAQmx_V9.6.0),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetSampTimingEngine(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampTimingEngine,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetStartTrigType(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetStartTrigType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetStartTrigType(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetStartTrigType,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetStartTrigType(taskHandle::TaskHandle)
    ccall((:DAQmxResetStartTrigType,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetStartTrigTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetStartTrigTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetDigEdgeStartTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeStartTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigEdgeStartTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetDigEdgeStartTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetDigEdgeStartTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeStartTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeStartTrigEdge(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetDigEdgeStartTrigEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetDigEdgeStartTrigEdge(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetDigEdgeStartTrigEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetDigEdgeStartTrigEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeStartTrigEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeStartTrigDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetDigEdgeStartTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetDigEdgeStartTrigDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetDigEdgeStartTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetDigEdgeStartTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeStartTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetDigEdgeStartTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetDigEdgeStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetDigEdgeStartTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetDigEdgeStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeStartTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeStartTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigEdgeStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetDigEdgeStartTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetDigEdgeStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeStartTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetDigEdgeStartTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetDigEdgeStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetDigEdgeStartTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetDigEdgeStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeStartTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeStartTrigDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetDigEdgeStartTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetDigEdgeStartTrigDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetDigEdgeStartTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetDigEdgeStartTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeStartTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigPatternStartTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDigPatternStartTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigPatternStartTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetDigPatternStartTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetDigPatternStartTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternStartTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigPatternStartTrigPattern(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDigPatternStartTrigPattern,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigPatternStartTrigPattern(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetDigPatternStartTrigPattern,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetDigPatternStartTrigPattern(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternStartTrigPattern,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigPatternStartTrigWhen(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetDigPatternStartTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetDigPatternStartTrigWhen(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetDigPatternStartTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetDigPatternStartTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternStartTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgEdgeStartTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgEdgeStartTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetAnlgEdgeStartTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetAnlgEdgeStartTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigSlope(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgEdgeStartTrigSlope,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgEdgeStartTrigSlope(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgEdgeStartTrigSlope,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgEdgeStartTrigSlope(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigSlope,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigLvl(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgEdgeStartTrigLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgEdgeStartTrigLvl(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgEdgeStartTrigLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgEdgeStartTrigLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigHyst(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgEdgeStartTrigHyst,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgEdgeStartTrigHyst(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgEdgeStartTrigHyst,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgEdgeStartTrigHyst(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigHyst,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigCoupling(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgEdgeStartTrigCoupling,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgEdgeStartTrigCoupling(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgEdgeStartTrigCoupling,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgEdgeStartTrigCoupling(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigCoupling,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgEdgeStartTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgEdgeStartTrigDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgEdgeStartTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgEdgeStartTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgEdgeStartTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgEdgeStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgEdgeStartTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgEdgeStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgEdgeStartTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgEdgeStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetAnlgEdgeStartTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetAnlgEdgeStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgEdgeStartTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgEdgeStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgEdgeStartTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgEdgeStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgEdgeStartTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgEdgeStartTrigDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgEdgeStartTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgEdgeStartTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinStartTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgWinStartTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgWinStartTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetAnlgWinStartTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetAnlgWinStartTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinStartTrigWhen(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgWinStartTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgWinStartTrigWhen(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgWinStartTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgWinStartTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinStartTrigTop(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinStartTrigTop,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinStartTrigTop(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinStartTrigTop,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinStartTrigTop(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigTop,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinStartTrigBtm(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinStartTrigBtm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinStartTrigBtm(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinStartTrigBtm,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinStartTrigBtm(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigBtm,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinStartTrigCoupling(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgWinStartTrigCoupling,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgWinStartTrigCoupling(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgWinStartTrigCoupling,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgWinStartTrigCoupling(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigCoupling,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinStartTrigDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgWinStartTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgWinStartTrigDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgWinStartTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgWinStartTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinStartTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinStartTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgWinStartTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgWinStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetAnlgWinStartTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetAnlgWinStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinStartTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinStartTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinStartTrigDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgWinStartTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgWinStartTrigDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgWinStartTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgWinStartTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetStartTrigDelay(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetStartTrigDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetStartTrigDelay(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetStartTrigDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetStartTrigDelay(taskHandle::TaskHandle)
    ccall((:DAQmxResetStartTrigDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetStartTrigDelayUnits(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetStartTrigDelayUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetStartTrigDelayUnits(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetStartTrigDelayUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetStartTrigDelayUnits(taskHandle::TaskHandle)
    ccall((:DAQmxResetStartTrigDelayUnits,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetStartTrigRetriggerable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetStartTrigRetriggerable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetStartTrigRetriggerable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetStartTrigRetriggerable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetStartTrigRetriggerable(taskHandle::TaskHandle)
    ccall((:DAQmxResetStartTrigRetriggerable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRefTrigType(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetRefTrigType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetRefTrigType(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetRefTrigType,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetRefTrigType(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefTrigType,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRefTrigPretrigSamples(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetRefTrigPretrigSamples,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetRefTrigPretrigSamples(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetRefTrigPretrigSamples,NIDAQmx_V9.6.0),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetRefTrigPretrigSamples(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefTrigPretrigSamples,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRefTrigTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetRefTrigTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetDigEdgeRefTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeRefTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigEdgeRefTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetDigEdgeRefTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetDigEdgeRefTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeRefTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeRefTrigEdge(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetDigEdgeRefTrigEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetDigEdgeRefTrigEdge(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetDigEdgeRefTrigEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetDigEdgeRefTrigEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeRefTrigEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeRefTrigDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetDigEdgeRefTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetDigEdgeRefTrigDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetDigEdgeRefTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetDigEdgeRefTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeRefTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetDigEdgeRefTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetDigEdgeRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetDigEdgeRefTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetDigEdgeRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeRefTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeRefTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigEdgeRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetDigEdgeRefTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetDigEdgeRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeRefTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetDigEdgeRefTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetDigEdgeRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetDigEdgeRefTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetDigEdgeRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeRefTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeRefTrigDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetDigEdgeRefTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetDigEdgeRefTrigDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetDigEdgeRefTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetDigEdgeRefTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeRefTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigPatternRefTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDigPatternRefTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigPatternRefTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetDigPatternRefTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetDigPatternRefTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternRefTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigPatternRefTrigPattern(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDigPatternRefTrigPattern,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigPatternRefTrigPattern(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetDigPatternRefTrigPattern,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetDigPatternRefTrigPattern(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternRefTrigPattern,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigPatternRefTrigWhen(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetDigPatternRefTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetDigPatternRefTrigWhen(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetDigPatternRefTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetDigPatternRefTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternRefTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgEdgeRefTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgEdgeRefTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetAnlgEdgeRefTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetAnlgEdgeRefTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigSlope(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgEdgeRefTrigSlope,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgEdgeRefTrigSlope(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgEdgeRefTrigSlope,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgEdgeRefTrigSlope(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigSlope,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigLvl(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgEdgeRefTrigLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgEdgeRefTrigLvl(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgEdgeRefTrigLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgEdgeRefTrigLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigHyst(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgEdgeRefTrigHyst,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgEdgeRefTrigHyst(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgEdgeRefTrigHyst,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgEdgeRefTrigHyst(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigHyst,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigCoupling(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgEdgeRefTrigCoupling,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgEdgeRefTrigCoupling(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgEdgeRefTrigCoupling,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgEdgeRefTrigCoupling(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigCoupling,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgEdgeRefTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgEdgeRefTrigDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgEdgeRefTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgEdgeRefTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgEdgeRefTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgEdgeRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgEdgeRefTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgEdgeRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgEdgeRefTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgEdgeRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetAnlgEdgeRefTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetAnlgEdgeRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgEdgeRefTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgEdgeRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgEdgeRefTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgEdgeRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgEdgeRefTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgEdgeRefTrigDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgEdgeRefTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgEdgeRefTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinRefTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgWinRefTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgWinRefTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetAnlgWinRefTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetAnlgWinRefTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinRefTrigWhen(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgWinRefTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgWinRefTrigWhen(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgWinRefTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgWinRefTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinRefTrigTop(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinRefTrigTop,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinRefTrigTop(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinRefTrigTop,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinRefTrigTop(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigTop,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinRefTrigBtm(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinRefTrigBtm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinRefTrigBtm(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinRefTrigBtm,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinRefTrigBtm(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigBtm,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinRefTrigCoupling(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgWinRefTrigCoupling,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgWinRefTrigCoupling(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgWinRefTrigCoupling,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgWinRefTrigCoupling(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigCoupling,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinRefTrigDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgWinRefTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgWinRefTrigDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgWinRefTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgWinRefTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinRefTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinRefTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgWinRefTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgWinRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetAnlgWinRefTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetAnlgWinRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinRefTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinRefTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinRefTrigDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgWinRefTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgWinRefTrigDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgWinRefTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgWinRefTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRefTrigAutoTrigEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetRefTrigAutoTrigEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetRefTrigAutoTrigEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetRefTrigAutoTrigEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetRefTrigAutoTrigEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefTrigAutoTrigEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRefTrigAutoTriggered(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetRefTrigAutoTriggered,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetRefTrigDelay(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetRefTrigDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetRefTrigDelay(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetRefTrigDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetRefTrigDelay(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefTrigDelay,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAdvTrigType(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAdvTrigType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAdvTrigType(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAdvTrigType,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAdvTrigType(taskHandle::TaskHandle)
    ccall((:DAQmxResetAdvTrigType,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeAdvTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeAdvTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigEdgeAdvTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetDigEdgeAdvTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetDigEdgeAdvTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeAdvTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeAdvTrigEdge(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetDigEdgeAdvTrigEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetDigEdgeAdvTrigEdge(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetDigEdgeAdvTrigEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetDigEdgeAdvTrigEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeAdvTrigEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeAdvTrigDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetDigEdgeAdvTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetDigEdgeAdvTrigDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetDigEdgeAdvTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetDigEdgeAdvTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeAdvTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetHshkTrigType(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetHshkTrigType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetHshkTrigType(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetHshkTrigType,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetHshkTrigType(taskHandle::TaskHandle)
    ccall((:DAQmxResetHshkTrigType,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetInterlockedHshkTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetInterlockedHshkTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetInterlockedHshkTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetInterlockedHshkTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetInterlockedHshkTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetInterlockedHshkTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetInterlockedHshkTrigAssertedLvl(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetInterlockedHshkTrigAssertedLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetInterlockedHshkTrigAssertedLvl(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetInterlockedHshkTrigAssertedLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetInterlockedHshkTrigAssertedLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetInterlockedHshkTrigAssertedLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetPauseTrigType(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetPauseTrigType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetPauseTrigType(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetPauseTrigType,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetPauseTrigType(taskHandle::TaskHandle)
    ccall((:DAQmxResetPauseTrigType,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetPauseTrigTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetPauseTrigTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetAnlgLvlPauseTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgLvlPauseTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgLvlPauseTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetAnlgLvlPauseTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetAnlgLvlPauseTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigWhen(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgLvlPauseTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgLvlPauseTrigWhen(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgLvlPauseTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgLvlPauseTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigLvl(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgLvlPauseTrigLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgLvlPauseTrigLvl(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgLvlPauseTrigLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgLvlPauseTrigLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigLvl,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigHyst(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgLvlPauseTrigHyst,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgLvlPauseTrigHyst(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgLvlPauseTrigHyst,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgLvlPauseTrigHyst(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigHyst,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigCoupling(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgLvlPauseTrigCoupling,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgLvlPauseTrigCoupling(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgLvlPauseTrigCoupling,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgLvlPauseTrigCoupling(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigCoupling,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgLvlPauseTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgLvlPauseTrigDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgLvlPauseTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgLvlPauseTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgLvlPauseTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgLvlPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgLvlPauseTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgLvlPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgLvlPauseTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgLvlPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetAnlgLvlPauseTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetAnlgLvlPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgLvlPauseTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgLvlPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgLvlPauseTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgLvlPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgLvlPauseTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgLvlPauseTrigDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgLvlPauseTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgLvlPauseTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinPauseTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgWinPauseTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgWinPauseTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetAnlgWinPauseTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetAnlgWinPauseTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinPauseTrigWhen(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgWinPauseTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgWinPauseTrigWhen(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgWinPauseTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgWinPauseTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinPauseTrigTop(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinPauseTrigTop,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinPauseTrigTop(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinPauseTrigTop,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinPauseTrigTop(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigTop,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinPauseTrigBtm(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinPauseTrigBtm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinPauseTrigBtm(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinPauseTrigBtm,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinPauseTrigBtm(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigBtm,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinPauseTrigCoupling(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgWinPauseTrigCoupling,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgWinPauseTrigCoupling(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgWinPauseTrigCoupling,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgWinPauseTrigCoupling(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigCoupling,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinPauseTrigDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgWinPauseTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgWinPauseTrigDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgWinPauseTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgWinPauseTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinPauseTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinPauseTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgWinPauseTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgWinPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetAnlgWinPauseTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetAnlgWinPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinPauseTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinPauseTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinPauseTrigDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgWinPauseTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgWinPauseTrigDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgWinPauseTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgWinPauseTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigLvlPauseTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDigLvlPauseTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigLvlPauseTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetDigLvlPauseTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetDigLvlPauseTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigLvlPauseTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigLvlPauseTrigWhen(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetDigLvlPauseTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetDigLvlPauseTrigWhen(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetDigLvlPauseTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetDigLvlPauseTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigLvlPauseTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigLvlPauseTrigDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetDigLvlPauseTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetDigLvlPauseTrigDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetDigLvlPauseTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetDigLvlPauseTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigLvlPauseTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigLvlPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetDigLvlPauseTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetDigLvlPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetDigLvlPauseTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetDigLvlPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigLvlPauseTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigLvlPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDigLvlPauseTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigLvlPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetDigLvlPauseTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetDigLvlPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigLvlPauseTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigLvlPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetDigLvlPauseTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetDigLvlPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetDigLvlPauseTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetDigLvlPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigLvlPauseTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigLvlPauseTrigDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetDigLvlPauseTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetDigLvlPauseTrigDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetDigLvlPauseTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetDigLvlPauseTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigLvlPauseTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigPatternPauseTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDigPatternPauseTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigPatternPauseTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetDigPatternPauseTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetDigPatternPauseTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternPauseTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigPatternPauseTrigPattern(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDigPatternPauseTrigPattern,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigPatternPauseTrigPattern(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetDigPatternPauseTrigPattern,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetDigPatternPauseTrigPattern(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternPauseTrigPattern,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigPatternPauseTrigWhen(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetDigPatternPauseTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetDigPatternPauseTrigWhen(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetDigPatternPauseTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetDigPatternPauseTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternPauseTrigWhen,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetArmStartTrigType(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetArmStartTrigType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetArmStartTrigType(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetArmStartTrigType,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetArmStartTrigType(taskHandle::TaskHandle)
    ccall((:DAQmxResetArmStartTrigType,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetArmStartTerm(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetArmStartTerm,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetDigEdgeArmStartTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeArmStartTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigEdgeArmStartTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetDigEdgeArmStartTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetDigEdgeArmStartTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeArmStartTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigEdge(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetDigEdgeArmStartTrigEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetDigEdgeArmStartTrigEdge(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetDigEdgeArmStartTrigEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetDigEdgeArmStartTrigEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeArmStartTrigEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetDigEdgeArmStartTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetDigEdgeArmStartTrigDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetDigEdgeArmStartTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetDigEdgeArmStartTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeArmStartTrigDigFltrEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetDigEdgeArmStartTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetDigEdgeArmStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetDigEdgeArmStartTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetDigEdgeArmStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeArmStartTrigDigFltrMinPulseWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeArmStartTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigEdgeArmStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetDigEdgeArmStartTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetDigEdgeArmStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeArmStartTrigDigFltrTimebaseSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetDigEdgeArmStartTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetDigEdgeArmStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetDigEdgeArmStartTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetDigEdgeArmStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeArmStartTrigDigFltrTimebaseRate,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetDigEdgeArmStartTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetDigEdgeArmStartTrigDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetDigEdgeArmStartTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetDigEdgeArmStartTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeArmStartTrigDigSyncEnable,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetTriggerSyncType(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetTriggerSyncType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetTriggerSyncType(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetTriggerSyncType,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetTriggerSyncType(taskHandle::TaskHandle)
    ccall((:DAQmxResetTriggerSyncType,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetWatchdogTimeout(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetWatchdogTimeout,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetWatchdogTimeout(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetWatchdogTimeout,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetWatchdogTimeout(taskHandle::TaskHandle)
    ccall((:DAQmxResetWatchdogTimeout,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetWatchdogExpirTrigType(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetWatchdogExpirTrigType,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetWatchdogExpirTrigType(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetWatchdogExpirTrigType,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetWatchdogExpirTrigType(taskHandle::TaskHandle)
    ccall((:DAQmxResetWatchdogExpirTrigType,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeWatchdogExpirTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeWatchdogExpirTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigEdgeWatchdogExpirTrigSrc(taskHandle::TaskHandle,data::Ptr{Uint8})
    ccall((:DAQmxSetDigEdgeWatchdogExpirTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,data)
end

function DAQmxResetDigEdgeWatchdogExpirTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeWatchdogExpirTrigSrc,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeWatchdogExpirTrigEdge(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetDigEdgeWatchdogExpirTrigEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetDigEdgeWatchdogExpirTrigEdge(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetDigEdgeWatchdogExpirTrigEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetDigEdgeWatchdogExpirTrigEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeWatchdogExpirTrigEdge,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetWatchdogDOExpirState(taskHandle::TaskHandle,lines::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetWatchdogDOExpirState,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},Ptr{int32}),taskHandle,lines,data)
end

function DAQmxSetWatchdogDOExpirState(taskHandle::TaskHandle,lines::Ptr{Uint8},data::int32)
    ccall((:DAQmxSetWatchdogDOExpirState,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},int32),taskHandle,lines,data)
end

function DAQmxResetWatchdogDOExpirState(taskHandle::TaskHandle,lines::Ptr{Uint8})
    ccall((:DAQmxResetWatchdogDOExpirState,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8}),taskHandle,lines)
end

function DAQmxGetWatchdogHasExpired(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetWatchdogHasExpired,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetWriteRelativeTo(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetWriteRelativeTo,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetWriteRelativeTo(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetWriteRelativeTo,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetWriteRelativeTo(taskHandle::TaskHandle)
    ccall((:DAQmxResetWriteRelativeTo,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetWriteOffset(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetWriteOffset,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetWriteOffset(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetWriteOffset,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetWriteOffset(taskHandle::TaskHandle)
    ccall((:DAQmxResetWriteOffset,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetWriteRegenMode(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetWriteRegenMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetWriteRegenMode(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetWriteRegenMode,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetWriteRegenMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetWriteRegenMode,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetWriteCurrWritePos(taskHandle::TaskHandle,data::Ptr{uInt64})
    ccall((:DAQmxGetWriteCurrWritePos,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt64}),taskHandle,data)
end

function DAQmxGetWriteOvercurrentChansExist(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetWriteOvercurrentChansExist,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetWriteOvercurrentChans(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetWriteOvercurrentChans,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetWriteOvertemperatureChansExist(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetWriteOvertemperatureChansExist,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetWriteOpenCurrentLoopChansExist(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetWriteOpenCurrentLoopChansExist,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetWriteOpenCurrentLoopChans(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetWriteOpenCurrentLoopChans,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetWritePowerSupplyFaultChansExist(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetWritePowerSupplyFaultChansExist,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetWritePowerSupplyFaultChans(taskHandle::TaskHandle,data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetWritePowerSupplyFaultChans,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{Uint8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetWriteSpaceAvail(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetWriteSpaceAvail,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxGetWriteTotalSampPerChanGenerated(taskHandle::TaskHandle,data::Ptr{uInt64})
    ccall((:DAQmxGetWriteTotalSampPerChanGenerated,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt64}),taskHandle,data)
end

function DAQmxGetWriteRawDataWidth(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetWriteRawDataWidth,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxGetWriteNumChans(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetWriteNumChans,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxGetWriteWaitMode(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetWriteWaitMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetWriteWaitMode(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetWriteWaitMode,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetWriteWaitMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetWriteWaitMode,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetWriteSleepTime(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetWriteSleepTime,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetWriteSleepTime(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetWriteSleepTime,NIDAQmx_V9.6.0),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetWriteSleepTime(taskHandle::TaskHandle)
    ccall((:DAQmxResetWriteSleepTime,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetWriteNextWriteIsLast(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetWriteNextWriteIsLast,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetWriteNextWriteIsLast(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetWriteNextWriteIsLast,NIDAQmx_V9.6.0),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetWriteNextWriteIsLast(taskHandle::TaskHandle)
    ccall((:DAQmxResetWriteNextWriteIsLast,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetWriteDigitalLinesBytesPerChan(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetWriteDigitalLinesBytesPerChan,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxGetPhysicalChanAISupportedMeasTypes(physicalChannel::Ptr{Uint8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanAISupportedMeasTypes,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32},uInt32),physicalChannel,data,arraySizeInElements)
end

function DAQmxGetPhysicalChanAITermCfgs(physicalChannel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetPhysicalChanAITermCfgs,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanAIInputSrcs(physicalChannel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetPhysicalChanAIInputSrcs,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),physicalChannel,data,bufferSize)
end

function DAQmxGetPhysicalChanAOSupportedOutputTypes(physicalChannel::Ptr{Uint8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanAOSupportedOutputTypes,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32},uInt32),physicalChannel,data,arraySizeInElements)
end

function DAQmxGetPhysicalChanAOTermCfgs(physicalChannel::Ptr{Uint8},data::Ptr{int32})
    ccall((:DAQmxGetPhysicalChanAOTermCfgs,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanAOManualControlEnable(physicalChannel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetPhysicalChanAOManualControlEnable,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),physicalChannel,data)
end

function DAQmxSetPhysicalChanAOManualControlEnable(physicalChannel::Ptr{Uint8},data::bool32)
    ccall((:DAQmxSetPhysicalChanAOManualControlEnable,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},bool32),physicalChannel,data)
end

function DAQmxResetPhysicalChanAOManualControlEnable(physicalChannel::Ptr{Uint8})
    ccall((:DAQmxResetPhysicalChanAOManualControlEnable,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},),physicalChannel)
end

function DAQmxGetPhysicalChanAOManualControlShortDetected(physicalChannel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetPhysicalChanAOManualControlShortDetected,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanAOManualControlAmplitude(physicalChannel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetPhysicalChanAOManualControlAmplitude,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),physicalChannel,data)
end

function DAQmxGetPhysicalChanAOManualControlFreq(physicalChannel::Ptr{Uint8},data::Ptr{float64})
    ccall((:DAQmxGetPhysicalChanAOManualControlFreq,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{float64}),physicalChannel,data)
end

function DAQmxGetPhysicalChanDIPortWidth(physicalChannel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetPhysicalChanDIPortWidth,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanDISampClkSupported(physicalChannel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetPhysicalChanDISampClkSupported,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanDISampModes(physicalChannel::Ptr{Uint8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanDISampModes,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32},uInt32),physicalChannel,data,arraySizeInElements)
end

function DAQmxGetPhysicalChanDIChangeDetectSupported(physicalChannel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetPhysicalChanDIChangeDetectSupported,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanDOPortWidth(physicalChannel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetPhysicalChanDOPortWidth,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanDOSampClkSupported(physicalChannel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetPhysicalChanDOSampClkSupported,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanDOSampModes(physicalChannel::Ptr{Uint8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanDOSampModes,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32},uInt32),physicalChannel,data,arraySizeInElements)
end

function DAQmxGetPhysicalChanCISupportedMeasTypes(physicalChannel::Ptr{Uint8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanCISupportedMeasTypes,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32},uInt32),physicalChannel,data,arraySizeInElements)
end

function DAQmxGetPhysicalChanCOSupportedOutputTypes(physicalChannel::Ptr{Uint8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanCOSupportedOutputTypes,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{int32},uInt32),physicalChannel,data,arraySizeInElements)
end

function DAQmxGetPhysicalChanTEDSMfgID(physicalChannel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetPhysicalChanTEDSMfgID,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanTEDSModelNum(physicalChannel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetPhysicalChanTEDSModelNum,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanTEDSSerialNum(physicalChannel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetPhysicalChanTEDSSerialNum,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanTEDSVersionNum(physicalChannel::Ptr{Uint8},data::Ptr{uInt32})
    ccall((:DAQmxGetPhysicalChanTEDSVersionNum,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanTEDSVersionLetter(physicalChannel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetPhysicalChanTEDSVersionLetter,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),physicalChannel,data,bufferSize)
end

function DAQmxGetPhysicalChanTEDSBitStream(physicalChannel::Ptr{Uint8},data::Ptr{uInt8},arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanTEDSBitStream,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt8},uInt32),physicalChannel,data,arraySizeInElements)
end

function DAQmxGetPhysicalChanTEDSTemplateIDs(physicalChannel::Ptr{Uint8},data::Ptr{uInt32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanTEDSTemplateIDs,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{uInt32},uInt32),physicalChannel,data,arraySizeInElements)
end

function DAQmxGetPersistedTaskAuthor(taskName::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetPersistedTaskAuthor,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),taskName,data,bufferSize)
end

function DAQmxGetPersistedTaskAllowInteractiveEditing(taskName::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetPersistedTaskAllowInteractiveEditing,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),taskName,data)
end

function DAQmxGetPersistedTaskAllowInteractiveDeletion(taskName::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetPersistedTaskAllowInteractiveDeletion,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),taskName,data)
end

function DAQmxGetPersistedChanAuthor(channel::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetPersistedChanAuthor,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),channel,data,bufferSize)
end

function DAQmxGetPersistedChanAllowInteractiveEditing(channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetPersistedChanAllowInteractiveEditing,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),channel,data)
end

function DAQmxGetPersistedChanAllowInteractiveDeletion(channel::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetPersistedChanAllowInteractiveDeletion,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),channel,data)
end

function DAQmxGetPersistedScaleAuthor(scaleName::Ptr{Uint8},data::Ptr{Uint8},bufferSize::uInt32)
    ccall((:DAQmxGetPersistedScaleAuthor,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{Uint8},uInt32),scaleName,data,bufferSize)
end

function DAQmxGetPersistedScaleAllowInteractiveEditing(scaleName::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetPersistedScaleAllowInteractiveEditing,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),scaleName,data)
end

function DAQmxGetPersistedScaleAllowInteractiveDeletion(scaleName::Ptr{Uint8},data::Ptr{bool32})
    ccall((:DAQmxGetPersistedScaleAllowInteractiveDeletion,NIDAQmx_V9.6.0),int32,(Ptr{Uint8},Ptr{bool32}),scaleName,data)
end

function DAQmxGetSampClkTimingResponseMode(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetSampClkTimingResponseMode,NIDAQmx_V9.6.0),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetSampClkTimingResponseMode(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetSampClkTimingResponseMode,NIDAQmx_V9.6.0),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetSampClkTimingResponseMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkTimingResponseMode,NIDAQmx_V9.6.0),int32,(TaskHandle,),taskHandle)
end
