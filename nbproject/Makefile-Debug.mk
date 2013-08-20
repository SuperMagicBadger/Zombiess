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
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/RakNet/Source/RakWString.o \
	${OBJECTDIR}/RakNet/Source/FullyConnectedMesh2.o \
	${OBJECTDIR}/RakNet/Source/NatTypeDetectionServer.o \
	${OBJECTDIR}/src/TutorialApplication.o \
	${OBJECTDIR}/RakNet/Source/DirectoryDeltaTransfer.o \
	${OBJECTDIR}/RakNet/Source/TCPInterface.o \
	${OBJECTDIR}/RakNet/Source/_FindFirst.o \
	${OBJECTDIR}/RakNet/Source/UDPProxyServer.o \
	${OBJECTDIR}/RakNet/Source/Rackspace.o \
	${OBJECTDIR}/RakNet/Source/Gets.o \
	${OBJECTDIR}/RakNet/Source/rdlmalloc.o \
	${OBJECTDIR}/RakNet/Source/RakNetTransport2.o \
	${OBJECTDIR}/src/dotSceneParser/DotSceneLoader.o \
	${OBJECTDIR}/RakNet/Source/RakNetSocket.o \
	${OBJECTDIR}/RakNet/Source/SecureHandshake.o \
	${OBJECTDIR}/RakNet/Source/SignaledEvent.o \
	${OBJECTDIR}/RakNet/Source/PacketConsoleLogger.o \
	${OBJECTDIR}/src/Client/ZombiesClient.o \
	${OBJECTDIR}/RakNet/Source/FormatString.o \
	${OBJECTDIR}/RakNet/Source/ConsoleServer.o \
	${OBJECTDIR}/RakNet/Source/HTTPConnection.o \
	${OBJECTDIR}/RakNet/Source/SendToThread.o \
	${OBJECTDIR}/RakNet/Source/DS_Table.o \
	${OBJECTDIR}/RakNet/Source/RakString.o \
	${OBJECTDIR}/RakNet/Source/Getche.o \
	${OBJECTDIR}/RakNet/Source/NetworkIDObject.o \
	${OBJECTDIR}/RakNet/Source/UDPForwarder.o \
	${OBJECTDIR}/RakNet/Source/RakNetTypes.o \
	${OBJECTDIR}/RakNet/Source/TeamManager.o \
	${OBJECTDIR}/RakNet/Source/CCRakNetUDT.o \
	${OBJECTDIR}/RakNet/Source/Rand.o \
	${OBJECTDIR}/RakNet/Source/ThreadsafePacketLogger.o \
	${OBJECTDIR}/RakNet/Source/Router2.o \
	${OBJECTDIR}/RakNet/Source/PacketFileLogger.o \
	${OBJECTDIR}/RakNet/Source/TwoWayAuthentication.o \
	${OBJECTDIR}/RakNet/Source/PacketOutputWindowLogger.o \
	${OBJECTDIR}/RakNet/Source/LocklessTypes.o \
	${OBJECTDIR}/RakNet/Source/RakPeer.o \
	${OBJECTDIR}/RakNet/Source/UDPProxyClient.o \
	${OBJECTDIR}/RakNet/Source/FileListTransfer.o \
	${OBJECTDIR}/RakNet/Source/BitStream.o \
	${OBJECTDIR}/src/dotSceneParser/tinystr.o \
	${OBJECTDIR}/RakNet/Source/NatTypeDetectionClient.o \
	${OBJECTDIR}/src/PlayerController.o \
	${OBJECTDIR}/RakNet/Source/EncodeClassName.o \
	${OBJECTDIR}/src/Actor.o \
	${OBJECTDIR}/RakNet/Source/ConnectionGraph2.o \
	${OBJECTDIR}/RakNet/Source/GetTime.o \
	${OBJECTDIR}/RakNet/Source/VariableListDeltaTracker.o \
	${OBJECTDIR}/RakNet/Source/NatPunchthroughServer.o \
	${OBJECTDIR}/RakNet/Source/GridSectorizer.o \
	${OBJECTDIR}/RakNet/Source/StringTable.o \
	${OBJECTDIR}/RakNet/Source/NatPunchthroughClient.o \
	${OBJECTDIR}/src/dotSceneParser/tinyxmlerror.o \
	${OBJECTDIR}/RakNet/Source/SHA1.o \
	${OBJECTDIR}/RakNet/Source/RakSleep.o \
	${OBJECTDIR}/src/dotSceneParser/tinyxml.o \
	${OBJECTDIR}/RakNet/Source/RPC4Plugin.o \
	${OBJECTDIR}/RakNet/Source/NetworkIDManager.o \
	${OBJECTDIR}/RakNet/Source/EpochTimeToString.o \
	${OBJECTDIR}/RakNet/Source/ReadyEvent.o \
	${OBJECTDIR}/RakNet/Source/CloudCommon.o \
	${OBJECTDIR}/RakNet/Source/PacketizedTCP.o \
	${OBJECTDIR}/RakNet/Source/SuperFastHash.o \
	${OBJECTDIR}/RakNet/Source/FileList.o \
	${OBJECTDIR}/RakNet/Source/CloudClient.o \
	${OBJECTDIR}/src/clientController.o \
	${OBJECTDIR}/RakNet/Source/CCRakNetSlidingWindow.o \
	${OBJECTDIR}/RakNet/Source/UDPProxyCoordinator.o \
	${OBJECTDIR}/src/Gorilla.o \
	${OBJECTDIR}/src/BaseApplication.o \
	${OBJECTDIR}/RakNet/Source/ReplicaManager3.o \
	${OBJECTDIR}/RakNet/Source/RakNetStatistics.o \
	${OBJECTDIR}/RakNet/Source/FileOperations.o \
	${OBJECTDIR}/RakNet/Source/LogCommandParser.o \
	${OBJECTDIR}/RakNet/Source/gettimeofday.o \
	${OBJECTDIR}/RakNet/Source/TelnetTransport.o \
	${OBJECTDIR}/src/CollisionTools.o \
	${OBJECTDIR}/RakNet/Source/TeamBalancer.o \
	${OBJECTDIR}/src/hud.o \
	${OBJECTDIR}/RakNet/Source/CommandParserInterface.o \
	${OBJECTDIR}/RakNet/Source/SocketLayer.o \
	${OBJECTDIR}/RakNet/Source/IncrementalReadInterface.o \
	${OBJECTDIR}/RakNet/Source/VariadicSQLParser.o \
	${OBJECTDIR}/src/Splash.o \
	${OBJECTDIR}/RakNet/Source/PacketLogger.o \
	${OBJECTDIR}/RakNet/Source/Itoa.o \
	${OBJECTDIR}/RakNet/Source/RakThread.o \
	${OBJECTDIR}/RakNet/Source/DS_ByteQueue.o \
	${OBJECTDIR}/RakNet/Source/RakNetCommandParser.o \
	${OBJECTDIR}/RakNet/Source/ReliabilityLayer.o \
	${OBJECTDIR}/src/dotSceneParser/tinyxmlparser.o \
	${OBJECTDIR}/RakNet/Source/RakMemoryOverride.o \
	${OBJECTDIR}/RakNet/Source/CloudServer.o \
	${OBJECTDIR}/RakNet/Source/VariableDeltaSerializer.o \
	${OBJECTDIR}/RakNet/Source/StringCompressor.o \
	${OBJECTDIR}/RakNet/Source/NatTypeDetectionCommon.o \
	${OBJECTDIR}/RakNet/Source/DynDNS.o \
	${OBJECTDIR}/RakNet/Source/DS_BytePool.o \
	${OBJECTDIR}/src/gridmap.o \
	${OBJECTDIR}/RakNet/Source/PluginInterface2.o \
	${OBJECTDIR}/RakNet/Source/DS_HuffmanEncodingTree.o \
	${OBJECTDIR}/RakNet/Source/VitaIncludes.o \
	${OBJECTDIR}/RakNet/Source/LinuxStrings.o \
	${OBJECTDIR}/RakNet/Source/TableSerializer.o \
	${OBJECTDIR}/src/CameraControll.o \
	${OBJECTDIR}/RakNet/Source/DataCompressor.o \
	${OBJECTDIR}/RakNet/Source/SimpleMutex.o \
	${OBJECTDIR}/RakNet/Source/WSAStartupSingleton.o \
	${OBJECTDIR}/RakNet/Source/EmailSender.o \
	${OBJECTDIR}/RakNet/Source/MessageFilter.o \
	${OBJECTDIR}/RakNet/Source/CheckSum.o


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
LDLIBSOPTIONS=`pkg-config --libs OGRE` `pkg-config --libs OGRE-PCZ` `pkg-config --libs OGRE-Paging` `pkg-config --libs OGRE-Property` `pkg-config --libs OGRE-RTShaderSystem` `pkg-config --libs OIS`  

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zombies

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zombies: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zombies ${OBJECTFILES} ${LDLIBSOPTIONS} 

${OBJECTDIR}/RakNet/Source/RakWString.o: RakNet/Source/RakWString.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/RakWString.o RakNet/Source/RakWString.cpp

${OBJECTDIR}/RakNet/Source/FullyConnectedMesh2.o: RakNet/Source/FullyConnectedMesh2.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/FullyConnectedMesh2.o RakNet/Source/FullyConnectedMesh2.cpp

${OBJECTDIR}/RakNet/Source/NatTypeDetectionServer.o: RakNet/Source/NatTypeDetectionServer.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/NatTypeDetectionServer.o RakNet/Source/NatTypeDetectionServer.cpp

${OBJECTDIR}/src/TutorialApplication.o: src/TutorialApplication.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/TutorialApplication.o src/TutorialApplication.cpp

${OBJECTDIR}/RakNet/Source/DirectoryDeltaTransfer.o: RakNet/Source/DirectoryDeltaTransfer.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/DirectoryDeltaTransfer.o RakNet/Source/DirectoryDeltaTransfer.cpp

${OBJECTDIR}/RakNet/Source/TCPInterface.o: RakNet/Source/TCPInterface.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/TCPInterface.o RakNet/Source/TCPInterface.cpp

${OBJECTDIR}/RakNet/Source/_FindFirst.o: RakNet/Source/_FindFirst.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/_FindFirst.o RakNet/Source/_FindFirst.cpp

${OBJECTDIR}/RakNet/Source/UDPProxyServer.o: RakNet/Source/UDPProxyServer.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/UDPProxyServer.o RakNet/Source/UDPProxyServer.cpp

${OBJECTDIR}/RakNet/Source/Rackspace.o: RakNet/Source/Rackspace.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/Rackspace.o RakNet/Source/Rackspace.cpp

${OBJECTDIR}/RakNet/Source/Gets.o: RakNet/Source/Gets.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/Gets.o RakNet/Source/Gets.cpp

${OBJECTDIR}/RakNet/Source/rdlmalloc.o: RakNet/Source/rdlmalloc.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/rdlmalloc.o RakNet/Source/rdlmalloc.cpp

${OBJECTDIR}/RakNet/Source/RakNetTransport2.o: RakNet/Source/RakNetTransport2.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/RakNetTransport2.o RakNet/Source/RakNetTransport2.cpp

${OBJECTDIR}/src/dotSceneParser/DotSceneLoader.o: src/dotSceneParser/DotSceneLoader.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/dotSceneParser
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/dotSceneParser/DotSceneLoader.o src/dotSceneParser/DotSceneLoader.cpp

${OBJECTDIR}/RakNet/Source/RakNetSocket.o: RakNet/Source/RakNetSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/RakNetSocket.o RakNet/Source/RakNetSocket.cpp

${OBJECTDIR}/RakNet/Source/SecureHandshake.o: RakNet/Source/SecureHandshake.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/SecureHandshake.o RakNet/Source/SecureHandshake.cpp

${OBJECTDIR}/RakNet/Source/SignaledEvent.o: RakNet/Source/SignaledEvent.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/SignaledEvent.o RakNet/Source/SignaledEvent.cpp

${OBJECTDIR}/RakNet/Source/PacketConsoleLogger.o: RakNet/Source/PacketConsoleLogger.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/PacketConsoleLogger.o RakNet/Source/PacketConsoleLogger.cpp

${OBJECTDIR}/src/Client/ZombiesClient.o: src/Client/ZombiesClient.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Client
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/Client/ZombiesClient.o src/Client/ZombiesClient.cpp

${OBJECTDIR}/RakNet/Source/FormatString.o: RakNet/Source/FormatString.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/FormatString.o RakNet/Source/FormatString.cpp

${OBJECTDIR}/RakNet/Source/ConsoleServer.o: RakNet/Source/ConsoleServer.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/ConsoleServer.o RakNet/Source/ConsoleServer.cpp

${OBJECTDIR}/RakNet/Source/HTTPConnection.o: RakNet/Source/HTTPConnection.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/HTTPConnection.o RakNet/Source/HTTPConnection.cpp

${OBJECTDIR}/RakNet/Source/SendToThread.o: RakNet/Source/SendToThread.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/SendToThread.o RakNet/Source/SendToThread.cpp

${OBJECTDIR}/RakNet/Source/DS_Table.o: RakNet/Source/DS_Table.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/DS_Table.o RakNet/Source/DS_Table.cpp

${OBJECTDIR}/RakNet/Source/RakString.o: RakNet/Source/RakString.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/RakString.o RakNet/Source/RakString.cpp

${OBJECTDIR}/RakNet/Source/Getche.o: RakNet/Source/Getche.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/Getche.o RakNet/Source/Getche.cpp

${OBJECTDIR}/RakNet/Source/NetworkIDObject.o: RakNet/Source/NetworkIDObject.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/NetworkIDObject.o RakNet/Source/NetworkIDObject.cpp

${OBJECTDIR}/RakNet/Source/UDPForwarder.o: RakNet/Source/UDPForwarder.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/UDPForwarder.o RakNet/Source/UDPForwarder.cpp

${OBJECTDIR}/RakNet/Source/RakNetTypes.o: RakNet/Source/RakNetTypes.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/RakNetTypes.o RakNet/Source/RakNetTypes.cpp

${OBJECTDIR}/RakNet/Source/TeamManager.o: RakNet/Source/TeamManager.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/TeamManager.o RakNet/Source/TeamManager.cpp

${OBJECTDIR}/RakNet/Source/CCRakNetUDT.o: RakNet/Source/CCRakNetUDT.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/CCRakNetUDT.o RakNet/Source/CCRakNetUDT.cpp

${OBJECTDIR}/RakNet/Source/Rand.o: RakNet/Source/Rand.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/Rand.o RakNet/Source/Rand.cpp

${OBJECTDIR}/RakNet/Source/ThreadsafePacketLogger.o: RakNet/Source/ThreadsafePacketLogger.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/ThreadsafePacketLogger.o RakNet/Source/ThreadsafePacketLogger.cpp

${OBJECTDIR}/RakNet/Source/Router2.o: RakNet/Source/Router2.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/Router2.o RakNet/Source/Router2.cpp

${OBJECTDIR}/RakNet/Source/PacketFileLogger.o: RakNet/Source/PacketFileLogger.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/PacketFileLogger.o RakNet/Source/PacketFileLogger.cpp

${OBJECTDIR}/RakNet/Source/TwoWayAuthentication.o: RakNet/Source/TwoWayAuthentication.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/TwoWayAuthentication.o RakNet/Source/TwoWayAuthentication.cpp

${OBJECTDIR}/RakNet/Source/PacketOutputWindowLogger.o: RakNet/Source/PacketOutputWindowLogger.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/PacketOutputWindowLogger.o RakNet/Source/PacketOutputWindowLogger.cpp

${OBJECTDIR}/RakNet/Source/LocklessTypes.o: RakNet/Source/LocklessTypes.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/LocklessTypes.o RakNet/Source/LocklessTypes.cpp

${OBJECTDIR}/RakNet/Source/RakPeer.o: RakNet/Source/RakPeer.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/RakPeer.o RakNet/Source/RakPeer.cpp

${OBJECTDIR}/RakNet/Source/UDPProxyClient.o: RakNet/Source/UDPProxyClient.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/UDPProxyClient.o RakNet/Source/UDPProxyClient.cpp

${OBJECTDIR}/RakNet/Source/FileListTransfer.o: RakNet/Source/FileListTransfer.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/FileListTransfer.o RakNet/Source/FileListTransfer.cpp

${OBJECTDIR}/RakNet/Source/BitStream.o: RakNet/Source/BitStream.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/BitStream.o RakNet/Source/BitStream.cpp

${OBJECTDIR}/src/dotSceneParser/tinystr.o: src/dotSceneParser/tinystr.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/dotSceneParser
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/dotSceneParser/tinystr.o src/dotSceneParser/tinystr.cpp

${OBJECTDIR}/RakNet/Source/NatTypeDetectionClient.o: RakNet/Source/NatTypeDetectionClient.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/NatTypeDetectionClient.o RakNet/Source/NatTypeDetectionClient.cpp

${OBJECTDIR}/src/PlayerController.o: src/PlayerController.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/PlayerController.o src/PlayerController.cpp

${OBJECTDIR}/RakNet/Source/EncodeClassName.o: RakNet/Source/EncodeClassName.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/EncodeClassName.o RakNet/Source/EncodeClassName.cpp

${OBJECTDIR}/src/Actor.o: src/Actor.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/Actor.o src/Actor.cpp

${OBJECTDIR}/RakNet/Source/ConnectionGraph2.o: RakNet/Source/ConnectionGraph2.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/ConnectionGraph2.o RakNet/Source/ConnectionGraph2.cpp

${OBJECTDIR}/RakNet/Source/GetTime.o: RakNet/Source/GetTime.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/GetTime.o RakNet/Source/GetTime.cpp

${OBJECTDIR}/RakNet/Source/VariableListDeltaTracker.o: RakNet/Source/VariableListDeltaTracker.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/VariableListDeltaTracker.o RakNet/Source/VariableListDeltaTracker.cpp

${OBJECTDIR}/RakNet/Source/NatPunchthroughServer.o: RakNet/Source/NatPunchthroughServer.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/NatPunchthroughServer.o RakNet/Source/NatPunchthroughServer.cpp

${OBJECTDIR}/RakNet/Source/GridSectorizer.o: RakNet/Source/GridSectorizer.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/GridSectorizer.o RakNet/Source/GridSectorizer.cpp

${OBJECTDIR}/RakNet/Source/StringTable.o: RakNet/Source/StringTable.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/StringTable.o RakNet/Source/StringTable.cpp

${OBJECTDIR}/RakNet/Source/NatPunchthroughClient.o: RakNet/Source/NatPunchthroughClient.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/NatPunchthroughClient.o RakNet/Source/NatPunchthroughClient.cpp

${OBJECTDIR}/src/dotSceneParser/tinyxmlerror.o: src/dotSceneParser/tinyxmlerror.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/dotSceneParser
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/dotSceneParser/tinyxmlerror.o src/dotSceneParser/tinyxmlerror.cpp

${OBJECTDIR}/RakNet/Source/SHA1.o: RakNet/Source/SHA1.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/SHA1.o RakNet/Source/SHA1.cpp

${OBJECTDIR}/RakNet/Source/RakSleep.o: RakNet/Source/RakSleep.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/RakSleep.o RakNet/Source/RakSleep.cpp

${OBJECTDIR}/src/dotSceneParser/tinyxml.o: src/dotSceneParser/tinyxml.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/dotSceneParser
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/dotSceneParser/tinyxml.o src/dotSceneParser/tinyxml.cpp

${OBJECTDIR}/RakNet/Source/RPC4Plugin.o: RakNet/Source/RPC4Plugin.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/RPC4Plugin.o RakNet/Source/RPC4Plugin.cpp

${OBJECTDIR}/RakNet/Source/NetworkIDManager.o: RakNet/Source/NetworkIDManager.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/NetworkIDManager.o RakNet/Source/NetworkIDManager.cpp

${OBJECTDIR}/RakNet/Source/EpochTimeToString.o: RakNet/Source/EpochTimeToString.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/EpochTimeToString.o RakNet/Source/EpochTimeToString.cpp

${OBJECTDIR}/RakNet/Source/ReadyEvent.o: RakNet/Source/ReadyEvent.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/ReadyEvent.o RakNet/Source/ReadyEvent.cpp

${OBJECTDIR}/RakNet/Source/CloudCommon.o: RakNet/Source/CloudCommon.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/CloudCommon.o RakNet/Source/CloudCommon.cpp

${OBJECTDIR}/RakNet/Source/PacketizedTCP.o: RakNet/Source/PacketizedTCP.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/PacketizedTCP.o RakNet/Source/PacketizedTCP.cpp

${OBJECTDIR}/RakNet/Source/SuperFastHash.o: RakNet/Source/SuperFastHash.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/SuperFastHash.o RakNet/Source/SuperFastHash.cpp

${OBJECTDIR}/RakNet/Source/FileList.o: RakNet/Source/FileList.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/FileList.o RakNet/Source/FileList.cpp

${OBJECTDIR}/RakNet/Source/CloudClient.o: RakNet/Source/CloudClient.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/CloudClient.o RakNet/Source/CloudClient.cpp

${OBJECTDIR}/src/clientController.o: src/clientController.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/clientController.o src/clientController.cpp

${OBJECTDIR}/RakNet/Source/CCRakNetSlidingWindow.o: RakNet/Source/CCRakNetSlidingWindow.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/CCRakNetSlidingWindow.o RakNet/Source/CCRakNetSlidingWindow.cpp

${OBJECTDIR}/RakNet/Source/UDPProxyCoordinator.o: RakNet/Source/UDPProxyCoordinator.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/UDPProxyCoordinator.o RakNet/Source/UDPProxyCoordinator.cpp

${OBJECTDIR}/src/Gorilla.o: src/Gorilla.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/Gorilla.o src/Gorilla.cpp

${OBJECTDIR}/src/BaseApplication.o: src/BaseApplication.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BaseApplication.o src/BaseApplication.cpp

${OBJECTDIR}/RakNet/Source/ReplicaManager3.o: RakNet/Source/ReplicaManager3.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/ReplicaManager3.o RakNet/Source/ReplicaManager3.cpp

${OBJECTDIR}/RakNet/Source/RakNetStatistics.o: RakNet/Source/RakNetStatistics.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/RakNetStatistics.o RakNet/Source/RakNetStatistics.cpp

${OBJECTDIR}/RakNet/Source/FileOperations.o: RakNet/Source/FileOperations.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/FileOperations.o RakNet/Source/FileOperations.cpp

${OBJECTDIR}/RakNet/Source/LogCommandParser.o: RakNet/Source/LogCommandParser.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/LogCommandParser.o RakNet/Source/LogCommandParser.cpp

${OBJECTDIR}/RakNet/Source/gettimeofday.o: RakNet/Source/gettimeofday.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/gettimeofday.o RakNet/Source/gettimeofday.cpp

${OBJECTDIR}/RakNet/Source/TelnetTransport.o: RakNet/Source/TelnetTransport.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/TelnetTransport.o RakNet/Source/TelnetTransport.cpp

${OBJECTDIR}/src/CollisionTools.o: src/CollisionTools.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/CollisionTools.o src/CollisionTools.cpp

${OBJECTDIR}/RakNet/Source/TeamBalancer.o: RakNet/Source/TeamBalancer.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/TeamBalancer.o RakNet/Source/TeamBalancer.cpp

${OBJECTDIR}/src/hud.o: src/hud.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/hud.o src/hud.cpp

${OBJECTDIR}/RakNet/Source/CommandParserInterface.o: RakNet/Source/CommandParserInterface.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/CommandParserInterface.o RakNet/Source/CommandParserInterface.cpp

${OBJECTDIR}/RakNet/Source/SocketLayer.o: RakNet/Source/SocketLayer.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/SocketLayer.o RakNet/Source/SocketLayer.cpp

${OBJECTDIR}/RakNet/Source/IncrementalReadInterface.o: RakNet/Source/IncrementalReadInterface.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/IncrementalReadInterface.o RakNet/Source/IncrementalReadInterface.cpp

${OBJECTDIR}/RakNet/Source/VariadicSQLParser.o: RakNet/Source/VariadicSQLParser.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/VariadicSQLParser.o RakNet/Source/VariadicSQLParser.cpp

${OBJECTDIR}/src/Splash.o: src/Splash.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/Splash.o src/Splash.cpp

${OBJECTDIR}/RakNet/Source/PacketLogger.o: RakNet/Source/PacketLogger.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/PacketLogger.o RakNet/Source/PacketLogger.cpp

${OBJECTDIR}/RakNet/Source/Itoa.o: RakNet/Source/Itoa.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/Itoa.o RakNet/Source/Itoa.cpp

${OBJECTDIR}/RakNet/Source/RakThread.o: RakNet/Source/RakThread.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/RakThread.o RakNet/Source/RakThread.cpp

${OBJECTDIR}/RakNet/Source/DS_ByteQueue.o: RakNet/Source/DS_ByteQueue.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/DS_ByteQueue.o RakNet/Source/DS_ByteQueue.cpp

${OBJECTDIR}/RakNet/Source/RakNetCommandParser.o: RakNet/Source/RakNetCommandParser.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/RakNetCommandParser.o RakNet/Source/RakNetCommandParser.cpp

${OBJECTDIR}/RakNet/Source/ReliabilityLayer.o: RakNet/Source/ReliabilityLayer.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/ReliabilityLayer.o RakNet/Source/ReliabilityLayer.cpp

${OBJECTDIR}/src/dotSceneParser/tinyxmlparser.o: src/dotSceneParser/tinyxmlparser.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/dotSceneParser
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/dotSceneParser/tinyxmlparser.o src/dotSceneParser/tinyxmlparser.cpp

${OBJECTDIR}/RakNet/Source/RakMemoryOverride.o: RakNet/Source/RakMemoryOverride.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/RakMemoryOverride.o RakNet/Source/RakMemoryOverride.cpp

${OBJECTDIR}/RakNet/Source/CloudServer.o: RakNet/Source/CloudServer.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/CloudServer.o RakNet/Source/CloudServer.cpp

${OBJECTDIR}/RakNet/Source/VariableDeltaSerializer.o: RakNet/Source/VariableDeltaSerializer.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/VariableDeltaSerializer.o RakNet/Source/VariableDeltaSerializer.cpp

${OBJECTDIR}/RakNet/Source/StringCompressor.o: RakNet/Source/StringCompressor.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/StringCompressor.o RakNet/Source/StringCompressor.cpp

${OBJECTDIR}/RakNet/Source/NatTypeDetectionCommon.o: RakNet/Source/NatTypeDetectionCommon.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/NatTypeDetectionCommon.o RakNet/Source/NatTypeDetectionCommon.cpp

${OBJECTDIR}/RakNet/Source/DynDNS.o: RakNet/Source/DynDNS.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/DynDNS.o RakNet/Source/DynDNS.cpp

${OBJECTDIR}/RakNet/Source/DS_BytePool.o: RakNet/Source/DS_BytePool.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/DS_BytePool.o RakNet/Source/DS_BytePool.cpp

${OBJECTDIR}/src/gridmap.o: src/gridmap.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/gridmap.o src/gridmap.cpp

${OBJECTDIR}/RakNet/Source/PluginInterface2.o: RakNet/Source/PluginInterface2.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/PluginInterface2.o RakNet/Source/PluginInterface2.cpp

${OBJECTDIR}/RakNet/Source/DS_HuffmanEncodingTree.o: RakNet/Source/DS_HuffmanEncodingTree.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/DS_HuffmanEncodingTree.o RakNet/Source/DS_HuffmanEncodingTree.cpp

${OBJECTDIR}/RakNet/Source/VitaIncludes.o: RakNet/Source/VitaIncludes.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/VitaIncludes.o RakNet/Source/VitaIncludes.cpp

${OBJECTDIR}/RakNet/Source/LinuxStrings.o: RakNet/Source/LinuxStrings.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/LinuxStrings.o RakNet/Source/LinuxStrings.cpp

${OBJECTDIR}/RakNet/Source/TableSerializer.o: RakNet/Source/TableSerializer.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/TableSerializer.o RakNet/Source/TableSerializer.cpp

${OBJECTDIR}/src/CameraControll.o: src/CameraControll.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/CameraControll.o src/CameraControll.cpp

${OBJECTDIR}/RakNet/Source/DataCompressor.o: RakNet/Source/DataCompressor.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/DataCompressor.o RakNet/Source/DataCompressor.cpp

${OBJECTDIR}/RakNet/Source/SimpleMutex.o: RakNet/Source/SimpleMutex.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/SimpleMutex.o RakNet/Source/SimpleMutex.cpp

${OBJECTDIR}/RakNet/Source/WSAStartupSingleton.o: RakNet/Source/WSAStartupSingleton.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/WSAStartupSingleton.o RakNet/Source/WSAStartupSingleton.cpp

${OBJECTDIR}/RakNet/Source/EmailSender.o: RakNet/Source/EmailSender.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/EmailSender.o RakNet/Source/EmailSender.cpp

${OBJECTDIR}/RakNet/Source/MessageFilter.o: RakNet/Source/MessageFilter.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/MessageFilter.o RakNet/Source/MessageFilter.cpp

${OBJECTDIR}/RakNet/Source/CheckSum.o: RakNet/Source/CheckSum.cpp 
	${MKDIR} -p ${OBJECTDIR}/RakNet/Source
	${RM} $@.d
	$(COMPILE.cc) -g -IRakNet/Source `pkg-config --cflags OGRE` `pkg-config --cflags OGRE-PCZ` `pkg-config --cflags OGRE-Paging` `pkg-config --cflags OGRE-Property` `pkg-config --cflags OGRE-RTShaderSystem` `pkg-config --cflags OIS`    -MMD -MP -MF $@.d -o ${OBJECTDIR}/RakNet/Source/CheckSum.o RakNet/Source/CheckSum.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zombies

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
