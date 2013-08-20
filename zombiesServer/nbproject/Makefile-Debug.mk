#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/98827951/FileOperations.o \
	${OBJECTDIR}/_ext/98827951/GridSectorizer.o \
	${OBJECTDIR}/_ext/98827951/FileList.o \
	${OBJECTDIR}/_ext/98827951/UDPProxyCoordinator.o \
	${OBJECTDIR}/_ext/98827951/BitStream.o \
	${OBJECTDIR}/_ext/98827951/gettimeofday.o \
	${OBJECTDIR}/_ext/98827951/PacketLogger.o \
	${OBJECTDIR}/_ext/98827951/Itoa.o \
	${OBJECTDIR}/_ext/98827951/RakNetSocket.o \
	${OBJECTDIR}/_ext/98827951/SHA1.o \
	${OBJECTDIR}/_ext/98827951/DataCompressor.o \
	${OBJECTDIR}/_ext/98827951/VariableListDeltaTracker.o \
	${OBJECTDIR}/_ext/98827951/NatPunchthroughClient.o \
	${OBJECTDIR}/_ext/98827951/DS_ByteQueue.o \
	${OBJECTDIR}/_ext/98827951/DirectoryDeltaTransfer.o \
	${OBJECTDIR}/_ext/98827951/PacketFileLogger.o \
	${OBJECTDIR}/main.o \
	${OBJECTDIR}/_ext/98827951/NatTypeDetectionCommon.o \
	${OBJECTDIR}/_ext/98827951/SendToThread.o \
	${OBJECTDIR}/_ext/98827951/LinuxStrings.o \
	${OBJECTDIR}/_ext/98827951/ConnectionGraph2.o \
	${OBJECTDIR}/_ext/98827951/SuperFastHash.o \
	${OBJECTDIR}/_ext/98827951/DynDNS.o \
	${OBJECTDIR}/_ext/98827951/StringTable.o \
	${OBJECTDIR}/_ext/98827951/EpochTimeToString.o \
	${OBJECTDIR}/_ext/98827951/DS_HuffmanEncodingTree.o \
	${OBJECTDIR}/_ext/98827951/ReliabilityLayer.o \
	${OBJECTDIR}/_ext/98827951/UDPProxyClient.o \
	${OBJECTDIR}/_ext/98827951/DS_Table.o \
	${OBJECTDIR}/_ext/98827951/CheckSum.o \
	${OBJECTDIR}/_ext/98827951/CCRakNetSlidingWindow.o \
	${OBJECTDIR}/_ext/98827951/Router2.o \
	${OBJECTDIR}/_ext/98827951/VariadicSQLParser.o \
	${OBJECTDIR}/_ext/98827951/HTTPConnection.o \
	${OBJECTDIR}/_ext/98827951/NatTypeDetectionClient.o \
	${OBJECTDIR}/_ext/98827951/TelnetTransport.o \
	${OBJECTDIR}/_ext/98827951/RakMemoryOverride.o \
	${OBJECTDIR}/_ext/98827951/SocketLayer.o \
	${OBJECTDIR}/_ext/98827951/PluginInterface2.o \
	${OBJECTDIR}/character.o \
	${OBJECTDIR}/_ext/98827951/DS_BytePool.o \
	${OBJECTDIR}/_ext/98827951/Rackspace.o \
	${OBJECTDIR}/_ext/98827951/ConsoleServer.o \
	${OBJECTDIR}/_ext/98827951/LogCommandParser.o \
	${OBJECTDIR}/_ext/98827951/TwoWayAuthentication.o \
	${OBJECTDIR}/_ext/98827951/FormatString.o \
	${OBJECTDIR}/_ext/98827951/CloudCommon.o \
	${OBJECTDIR}/_ext/98827951/ThreadsafePacketLogger.o \
	${OBJECTDIR}/_ext/98827951/PacketizedTCP.o \
	${OBJECTDIR}/_ext/98827951/rdlmalloc.o \
	${OBJECTDIR}/_ext/98827951/NetworkIDManager.o \
	${OBJECTDIR}/_ext/98827951/Getche.o \
	${OBJECTDIR}/_ext/98827951/VitaIncludes.o \
	${OBJECTDIR}/_ext/98827951/TCPInterface.o \
	${OBJECTDIR}/_ext/98827951/CommandParserInterface.o \
	${OBJECTDIR}/_ext/98827951/TeamBalancer.o \
	${OBJECTDIR}/_ext/98827951/CloudServer.o \
	${OBJECTDIR}/_ext/98827951/TableSerializer.o \
	${OBJECTDIR}/_ext/98827951/RPC4Plugin.o \
	${OBJECTDIR}/_ext/98827951/NetworkIDObject.o \
	${OBJECTDIR}/_ext/98827951/StringCompressor.o \
	${OBJECTDIR}/characterManager.o \
	${OBJECTDIR}/_ext/98827951/RakSleep.o \
	${OBJECTDIR}/_ext/98827951/SimpleMutex.o \
	${OBJECTDIR}/_ext/98827951/RakWString.o \
	${OBJECTDIR}/_ext/98827951/RakNetStatistics.o \
	${OBJECTDIR}/_ext/98827951/RakNetTypes.o \
	${OBJECTDIR}/_ext/98827951/RakNetTransport2.o \
	${OBJECTDIR}/_ext/98827951/CCRakNetUDT.o \
	${OBJECTDIR}/_ext/98827951/GetTime.o \
	${OBJECTDIR}/_ext/98827951/RakNetCommandParser.o \
	${OBJECTDIR}/_ext/98827951/RakThread.o \
	${OBJECTDIR}/_ext/98827951/SecureHandshake.o \
	${OBJECTDIR}/_ext/98827951/EmailSender.o \
	${OBJECTDIR}/_ext/98827951/LocklessTypes.o \
	${OBJECTDIR}/_ext/98827951/CloudClient.o \
	${OBJECTDIR}/_ext/98827951/RakString.o \
	${OBJECTDIR}/_ext/98827951/FullyConnectedMesh2.o \
	${OBJECTDIR}/_ext/98827951/SignaledEvent.o \
	${OBJECTDIR}/_ext/98827951/FileListTransfer.o \
	${OBJECTDIR}/_ext/98827951/IncrementalReadInterface.o \
	${OBJECTDIR}/_ext/98827951/MessageFilter.o \
	${OBJECTDIR}/_ext/98827951/PacketOutputWindowLogger.o \
	${OBJECTDIR}/_ext/98827951/Gets.o \
	${OBJECTDIR}/_ext/98827951/UDPForwarder.o \
	${OBJECTDIR}/_ext/98827951/_FindFirst.o \
	${OBJECTDIR}/_ext/98827951/Rand.o \
	${OBJECTDIR}/_ext/98827951/WSAStartupSingleton.o \
	${OBJECTDIR}/_ext/98827951/PacketConsoleLogger.o \
	${OBJECTDIR}/_ext/98827951/UDPProxyServer.o \
	${OBJECTDIR}/_ext/98827951/ReadyEvent.o \
	${OBJECTDIR}/_ext/98827951/RakPeer.o \
	${OBJECTDIR}/_ext/98827951/NatTypeDetectionServer.o \
	${OBJECTDIR}/_ext/98827951/VariableDeltaSerializer.o \
	${OBJECTDIR}/_ext/98827951/EncodeClassName.o \
	${OBJECTDIR}/_ext/98827951/NatPunchthroughServer.o \
	${OBJECTDIR}/_ext/98827951/TeamManager.o \
	${OBJECTDIR}/_ext/98827951/ReplicaManager3.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-lpthread

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zombiesserver

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zombiesserver: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zombiesserver ${OBJECTFILES} ${LDLIBSOPTIONS} 

${OBJECTDIR}/_ext/98827951/FileOperations.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/FileOperations.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/FileOperations.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/FileOperations.cpp

${OBJECTDIR}/_ext/98827951/GridSectorizer.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/GridSectorizer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/GridSectorizer.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/GridSectorizer.cpp

${OBJECTDIR}/_ext/98827951/FileList.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/FileList.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/FileList.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/FileList.cpp

${OBJECTDIR}/_ext/98827951/UDPProxyCoordinator.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/UDPProxyCoordinator.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/UDPProxyCoordinator.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/UDPProxyCoordinator.cpp

${OBJECTDIR}/_ext/98827951/BitStream.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/BitStream.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/BitStream.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/BitStream.cpp

${OBJECTDIR}/_ext/98827951/gettimeofday.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/gettimeofday.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/gettimeofday.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/gettimeofday.cpp

${OBJECTDIR}/_ext/98827951/PacketLogger.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/PacketLogger.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/PacketLogger.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/PacketLogger.cpp

${OBJECTDIR}/_ext/98827951/Itoa.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/Itoa.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/Itoa.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/Itoa.cpp

${OBJECTDIR}/_ext/98827951/RakNetSocket.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RakNetSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/RakNetSocket.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RakNetSocket.cpp

${OBJECTDIR}/_ext/98827951/SHA1.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/SHA1.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/SHA1.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/SHA1.cpp

${OBJECTDIR}/_ext/98827951/DataCompressor.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/DataCompressor.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/DataCompressor.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/DataCompressor.cpp

${OBJECTDIR}/_ext/98827951/VariableListDeltaTracker.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/VariableListDeltaTracker.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/VariableListDeltaTracker.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/VariableListDeltaTracker.cpp

${OBJECTDIR}/_ext/98827951/NatPunchthroughClient.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/NatPunchthroughClient.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/NatPunchthroughClient.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/NatPunchthroughClient.cpp

${OBJECTDIR}/_ext/98827951/DS_ByteQueue.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/DS_ByteQueue.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/DS_ByteQueue.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/DS_ByteQueue.cpp

${OBJECTDIR}/_ext/98827951/DirectoryDeltaTransfer.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/DirectoryDeltaTransfer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/DirectoryDeltaTransfer.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/DirectoryDeltaTransfer.cpp

${OBJECTDIR}/_ext/98827951/PacketFileLogger.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/PacketFileLogger.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/PacketFileLogger.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/PacketFileLogger.cpp

${OBJECTDIR}/main.o: main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/main.o main.cpp

${OBJECTDIR}/_ext/98827951/NatTypeDetectionCommon.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/NatTypeDetectionCommon.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/NatTypeDetectionCommon.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/NatTypeDetectionCommon.cpp

${OBJECTDIR}/_ext/98827951/SendToThread.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/SendToThread.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/SendToThread.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/SendToThread.cpp

${OBJECTDIR}/_ext/98827951/LinuxStrings.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/LinuxStrings.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/LinuxStrings.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/LinuxStrings.cpp

${OBJECTDIR}/_ext/98827951/ConnectionGraph2.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/ConnectionGraph2.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/ConnectionGraph2.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/ConnectionGraph2.cpp

${OBJECTDIR}/_ext/98827951/SuperFastHash.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/SuperFastHash.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/SuperFastHash.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/SuperFastHash.cpp

${OBJECTDIR}/_ext/98827951/DynDNS.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/DynDNS.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/DynDNS.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/DynDNS.cpp

${OBJECTDIR}/_ext/98827951/StringTable.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/StringTable.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/StringTable.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/StringTable.cpp

${OBJECTDIR}/_ext/98827951/EpochTimeToString.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/EpochTimeToString.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/EpochTimeToString.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/EpochTimeToString.cpp

${OBJECTDIR}/_ext/98827951/DS_HuffmanEncodingTree.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/DS_HuffmanEncodingTree.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/DS_HuffmanEncodingTree.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/DS_HuffmanEncodingTree.cpp

${OBJECTDIR}/_ext/98827951/ReliabilityLayer.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/ReliabilityLayer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/ReliabilityLayer.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/ReliabilityLayer.cpp

${OBJECTDIR}/_ext/98827951/UDPProxyClient.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/UDPProxyClient.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/UDPProxyClient.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/UDPProxyClient.cpp

${OBJECTDIR}/_ext/98827951/DS_Table.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/DS_Table.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/DS_Table.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/DS_Table.cpp

${OBJECTDIR}/_ext/98827951/CheckSum.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/CheckSum.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/CheckSum.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/CheckSum.cpp

${OBJECTDIR}/_ext/98827951/CCRakNetSlidingWindow.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/CCRakNetSlidingWindow.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/CCRakNetSlidingWindow.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/CCRakNetSlidingWindow.cpp

${OBJECTDIR}/_ext/98827951/Router2.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/Router2.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/Router2.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/Router2.cpp

${OBJECTDIR}/_ext/98827951/VariadicSQLParser.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/VariadicSQLParser.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/VariadicSQLParser.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/VariadicSQLParser.cpp

${OBJECTDIR}/_ext/98827951/HTTPConnection.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/HTTPConnection.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/HTTPConnection.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/HTTPConnection.cpp

${OBJECTDIR}/_ext/98827951/NatTypeDetectionClient.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/NatTypeDetectionClient.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/NatTypeDetectionClient.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/NatTypeDetectionClient.cpp

${OBJECTDIR}/_ext/98827951/TelnetTransport.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/TelnetTransport.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/TelnetTransport.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/TelnetTransport.cpp

${OBJECTDIR}/_ext/98827951/RakMemoryOverride.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RakMemoryOverride.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/RakMemoryOverride.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RakMemoryOverride.cpp

${OBJECTDIR}/_ext/98827951/SocketLayer.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/SocketLayer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/SocketLayer.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/SocketLayer.cpp

${OBJECTDIR}/_ext/98827951/PluginInterface2.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/PluginInterface2.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/PluginInterface2.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/PluginInterface2.cpp

${OBJECTDIR}/character.o: character.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/character.o character.cpp

${OBJECTDIR}/_ext/98827951/DS_BytePool.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/DS_BytePool.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/DS_BytePool.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/DS_BytePool.cpp

${OBJECTDIR}/_ext/98827951/Rackspace.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/Rackspace.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/Rackspace.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/Rackspace.cpp

${OBJECTDIR}/_ext/98827951/ConsoleServer.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/ConsoleServer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/ConsoleServer.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/ConsoleServer.cpp

${OBJECTDIR}/_ext/98827951/LogCommandParser.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/LogCommandParser.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/LogCommandParser.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/LogCommandParser.cpp

${OBJECTDIR}/_ext/98827951/TwoWayAuthentication.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/TwoWayAuthentication.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/TwoWayAuthentication.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/TwoWayAuthentication.cpp

${OBJECTDIR}/_ext/98827951/FormatString.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/FormatString.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/FormatString.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/FormatString.cpp

${OBJECTDIR}/_ext/98827951/CloudCommon.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/CloudCommon.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/CloudCommon.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/CloudCommon.cpp

${OBJECTDIR}/_ext/98827951/ThreadsafePacketLogger.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/ThreadsafePacketLogger.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/ThreadsafePacketLogger.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/ThreadsafePacketLogger.cpp

${OBJECTDIR}/_ext/98827951/PacketizedTCP.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/PacketizedTCP.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/PacketizedTCP.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/PacketizedTCP.cpp

${OBJECTDIR}/_ext/98827951/rdlmalloc.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/rdlmalloc.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/rdlmalloc.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/rdlmalloc.cpp

${OBJECTDIR}/_ext/98827951/NetworkIDManager.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/NetworkIDManager.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/NetworkIDManager.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/NetworkIDManager.cpp

${OBJECTDIR}/_ext/98827951/Getche.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/Getche.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/Getche.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/Getche.cpp

${OBJECTDIR}/_ext/98827951/VitaIncludes.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/VitaIncludes.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/VitaIncludes.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/VitaIncludes.cpp

${OBJECTDIR}/_ext/98827951/TCPInterface.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/TCPInterface.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/TCPInterface.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/TCPInterface.cpp

${OBJECTDIR}/_ext/98827951/CommandParserInterface.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/CommandParserInterface.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/CommandParserInterface.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/CommandParserInterface.cpp

${OBJECTDIR}/_ext/98827951/TeamBalancer.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/TeamBalancer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/TeamBalancer.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/TeamBalancer.cpp

${OBJECTDIR}/_ext/98827951/CloudServer.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/CloudServer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/CloudServer.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/CloudServer.cpp

${OBJECTDIR}/_ext/98827951/TableSerializer.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/TableSerializer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/TableSerializer.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/TableSerializer.cpp

${OBJECTDIR}/_ext/98827951/RPC4Plugin.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RPC4Plugin.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/RPC4Plugin.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RPC4Plugin.cpp

${OBJECTDIR}/_ext/98827951/NetworkIDObject.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/NetworkIDObject.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/NetworkIDObject.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/NetworkIDObject.cpp

${OBJECTDIR}/_ext/98827951/StringCompressor.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/StringCompressor.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/StringCompressor.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/StringCompressor.cpp

${OBJECTDIR}/characterManager.o: characterManager.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/characterManager.o characterManager.cpp

${OBJECTDIR}/_ext/98827951/RakSleep.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RakSleep.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/RakSleep.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RakSleep.cpp

${OBJECTDIR}/_ext/98827951/SimpleMutex.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/SimpleMutex.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/SimpleMutex.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/SimpleMutex.cpp

${OBJECTDIR}/_ext/98827951/RakWString.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RakWString.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/RakWString.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RakWString.cpp

${OBJECTDIR}/_ext/98827951/RakNetStatistics.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RakNetStatistics.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/RakNetStatistics.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RakNetStatistics.cpp

${OBJECTDIR}/_ext/98827951/RakNetTypes.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RakNetTypes.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/RakNetTypes.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RakNetTypes.cpp

${OBJECTDIR}/_ext/98827951/RakNetTransport2.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RakNetTransport2.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/RakNetTransport2.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RakNetTransport2.cpp

${OBJECTDIR}/_ext/98827951/CCRakNetUDT.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/CCRakNetUDT.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/CCRakNetUDT.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/CCRakNetUDT.cpp

${OBJECTDIR}/_ext/98827951/GetTime.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/GetTime.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/GetTime.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/GetTime.cpp

${OBJECTDIR}/_ext/98827951/RakNetCommandParser.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RakNetCommandParser.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/RakNetCommandParser.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RakNetCommandParser.cpp

${OBJECTDIR}/_ext/98827951/RakThread.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RakThread.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/RakThread.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RakThread.cpp

${OBJECTDIR}/_ext/98827951/SecureHandshake.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/SecureHandshake.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/SecureHandshake.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/SecureHandshake.cpp

${OBJECTDIR}/_ext/98827951/EmailSender.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/EmailSender.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/EmailSender.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/EmailSender.cpp

${OBJECTDIR}/_ext/98827951/LocklessTypes.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/LocklessTypes.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/LocklessTypes.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/LocklessTypes.cpp

${OBJECTDIR}/_ext/98827951/CloudClient.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/CloudClient.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/CloudClient.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/CloudClient.cpp

${OBJECTDIR}/_ext/98827951/RakString.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RakString.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/RakString.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RakString.cpp

${OBJECTDIR}/_ext/98827951/FullyConnectedMesh2.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/FullyConnectedMesh2.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/FullyConnectedMesh2.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/FullyConnectedMesh2.cpp

${OBJECTDIR}/_ext/98827951/SignaledEvent.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/SignaledEvent.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/SignaledEvent.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/SignaledEvent.cpp

${OBJECTDIR}/_ext/98827951/FileListTransfer.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/FileListTransfer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/FileListTransfer.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/FileListTransfer.cpp

${OBJECTDIR}/_ext/98827951/IncrementalReadInterface.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/IncrementalReadInterface.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/IncrementalReadInterface.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/IncrementalReadInterface.cpp

${OBJECTDIR}/_ext/98827951/MessageFilter.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/MessageFilter.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/MessageFilter.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/MessageFilter.cpp

${OBJECTDIR}/_ext/98827951/PacketOutputWindowLogger.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/PacketOutputWindowLogger.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/PacketOutputWindowLogger.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/PacketOutputWindowLogger.cpp

${OBJECTDIR}/_ext/98827951/Gets.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/Gets.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/Gets.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/Gets.cpp

${OBJECTDIR}/_ext/98827951/UDPForwarder.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/UDPForwarder.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/UDPForwarder.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/UDPForwarder.cpp

${OBJECTDIR}/_ext/98827951/_FindFirst.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/_FindFirst.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/_FindFirst.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/_FindFirst.cpp

${OBJECTDIR}/_ext/98827951/Rand.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/Rand.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/Rand.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/Rand.cpp

${OBJECTDIR}/_ext/98827951/WSAStartupSingleton.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/WSAStartupSingleton.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/WSAStartupSingleton.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/WSAStartupSingleton.cpp

${OBJECTDIR}/_ext/98827951/PacketConsoleLogger.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/PacketConsoleLogger.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/PacketConsoleLogger.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/PacketConsoleLogger.cpp

${OBJECTDIR}/_ext/98827951/UDPProxyServer.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/UDPProxyServer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/UDPProxyServer.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/UDPProxyServer.cpp

${OBJECTDIR}/_ext/98827951/ReadyEvent.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/ReadyEvent.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/ReadyEvent.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/ReadyEvent.cpp

${OBJECTDIR}/_ext/98827951/RakPeer.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RakPeer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/RakPeer.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/RakPeer.cpp

${OBJECTDIR}/_ext/98827951/NatTypeDetectionServer.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/NatTypeDetectionServer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/NatTypeDetectionServer.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/NatTypeDetectionServer.cpp

${OBJECTDIR}/_ext/98827951/VariableDeltaSerializer.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/VariableDeltaSerializer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/VariableDeltaSerializer.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/VariableDeltaSerializer.cpp

${OBJECTDIR}/_ext/98827951/EncodeClassName.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/EncodeClassName.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/EncodeClassName.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/EncodeClassName.cpp

${OBJECTDIR}/_ext/98827951/NatPunchthroughServer.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/NatPunchthroughServer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/NatPunchthroughServer.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/NatPunchthroughServer.cpp

${OBJECTDIR}/_ext/98827951/TeamManager.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/TeamManager.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/TeamManager.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/TeamManager.cpp

${OBJECTDIR}/_ext/98827951/ReplicaManager3.o: /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/ReplicaManager3.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98827951
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/cow/Dropbox/school/cse171/Zombies/RakNet/Source -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/98827951/ReplicaManager3.o /home/cow/Dropbox/school/cse171/Zombies/RakNet/Source/ReplicaManager3.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zombiesserver

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
