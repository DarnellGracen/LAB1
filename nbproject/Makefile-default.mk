#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LAB1FORREALZZZZ.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LAB1FORREALZZZZ.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=folder/busyxlcd.c folder/openxlcd.c folder/putrxlcd.c folder/putsxlcd.c folder/readaddr.c folder/readdata.c folder/setcgram.c folder/setddram.c folder/wcmdxlcd.c folder/writdata.c lab1.asm lab1asm.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/folder/busyxlcd.o ${OBJECTDIR}/folder/openxlcd.o ${OBJECTDIR}/folder/putrxlcd.o ${OBJECTDIR}/folder/putsxlcd.o ${OBJECTDIR}/folder/readaddr.o ${OBJECTDIR}/folder/readdata.o ${OBJECTDIR}/folder/setcgram.o ${OBJECTDIR}/folder/setddram.o ${OBJECTDIR}/folder/wcmdxlcd.o ${OBJECTDIR}/folder/writdata.o ${OBJECTDIR}/lab1.o ${OBJECTDIR}/lab1asm.o
POSSIBLE_DEPFILES=${OBJECTDIR}/folder/busyxlcd.o.d ${OBJECTDIR}/folder/openxlcd.o.d ${OBJECTDIR}/folder/putrxlcd.o.d ${OBJECTDIR}/folder/putsxlcd.o.d ${OBJECTDIR}/folder/readaddr.o.d ${OBJECTDIR}/folder/readdata.o.d ${OBJECTDIR}/folder/setcgram.o.d ${OBJECTDIR}/folder/setddram.o.d ${OBJECTDIR}/folder/wcmdxlcd.o.d ${OBJECTDIR}/folder/writdata.o.d ${OBJECTDIR}/lab1.o.d ${OBJECTDIR}/lab1asm.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/folder/busyxlcd.o ${OBJECTDIR}/folder/openxlcd.o ${OBJECTDIR}/folder/putrxlcd.o ${OBJECTDIR}/folder/putsxlcd.o ${OBJECTDIR}/folder/readaddr.o ${OBJECTDIR}/folder/readdata.o ${OBJECTDIR}/folder/setcgram.o ${OBJECTDIR}/folder/setddram.o ${OBJECTDIR}/folder/wcmdxlcd.o ${OBJECTDIR}/folder/writdata.o ${OBJECTDIR}/lab1.o ${OBJECTDIR}/lab1asm.o

# Source Files
SOURCEFILES=folder/busyxlcd.c folder/openxlcd.c folder/putrxlcd.c folder/putsxlcd.c folder/readaddr.c folder/readdata.c folder/setcgram.c folder/setddram.c folder/wcmdxlcd.c folder/writdata.c lab1.asm lab1asm.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/LAB1FORREALZZZZ.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F452
MP_PROCESSOR_OPTION_LD=18f452
MP_LINKER_DEBUG_OPTION=-r=ROM@0x7DC0:0x7FFF -r=RAM@GPR:0x5F4:0x5FF -u_DEBUGSTACK
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/lab1.o: lab1.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lab1.o.d 
	@${RM} ${OBJECTDIR}/lab1.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/lab1.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_PK3=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/lab1.lst\" -e\"${OBJECTDIR}/lab1.err\" $(ASM_OPTIONS)  -o\"${OBJECTDIR}/lab1.o\" \"lab1.asm\"
	@${DEP_GEN} -d "${OBJECTDIR}/lab1.o"
	@${FIXDEPS} "${OBJECTDIR}/lab1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/lab1.o: lab1.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lab1.o.d 
	@${RM} ${OBJECTDIR}/lab1.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/lab1.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/lab1.lst\" -e\"${OBJECTDIR}/lab1.err\" $(ASM_OPTIONS)  -o\"${OBJECTDIR}/lab1.o\" \"lab1.asm\"
	@${DEP_GEN} -d "${OBJECTDIR}/lab1.o"
	@${FIXDEPS} "${OBJECTDIR}/lab1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/folder/busyxlcd.o: folder/busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/folder" 
	@${RM} ${OBJECTDIR}/folder/busyxlcd.o.d 
	@${RM} ${OBJECTDIR}/folder/busyxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/folder/busyxlcd.o   folder/busyxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/folder/busyxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/folder/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/folder/openxlcd.o: folder/openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/folder" 
	@${RM} ${OBJECTDIR}/folder/openxlcd.o.d 
	@${RM} ${OBJECTDIR}/folder/openxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/folder/openxlcd.o   folder/openxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/folder/openxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/folder/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/folder/putrxlcd.o: folder/putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/folder" 
	@${RM} ${OBJECTDIR}/folder/putrxlcd.o.d 
	@${RM} ${OBJECTDIR}/folder/putrxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/folder/putrxlcd.o   folder/putrxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/folder/putrxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/folder/putrxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/folder/putsxlcd.o: folder/putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/folder" 
	@${RM} ${OBJECTDIR}/folder/putsxlcd.o.d 
	@${RM} ${OBJECTDIR}/folder/putsxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/folder/putsxlcd.o   folder/putsxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/folder/putsxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/folder/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/folder/readaddr.o: folder/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/folder" 
	@${RM} ${OBJECTDIR}/folder/readaddr.o.d 
	@${RM} ${OBJECTDIR}/folder/readaddr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/folder/readaddr.o   folder/readaddr.c 
	@${DEP_GEN} -d ${OBJECTDIR}/folder/readaddr.o 
	@${FIXDEPS} "${OBJECTDIR}/folder/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/folder/readdata.o: folder/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/folder" 
	@${RM} ${OBJECTDIR}/folder/readdata.o.d 
	@${RM} ${OBJECTDIR}/folder/readdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/folder/readdata.o   folder/readdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/folder/readdata.o 
	@${FIXDEPS} "${OBJECTDIR}/folder/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/folder/setcgram.o: folder/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/folder" 
	@${RM} ${OBJECTDIR}/folder/setcgram.o.d 
	@${RM} ${OBJECTDIR}/folder/setcgram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/folder/setcgram.o   folder/setcgram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/folder/setcgram.o 
	@${FIXDEPS} "${OBJECTDIR}/folder/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/folder/setddram.o: folder/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/folder" 
	@${RM} ${OBJECTDIR}/folder/setddram.o.d 
	@${RM} ${OBJECTDIR}/folder/setddram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/folder/setddram.o   folder/setddram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/folder/setddram.o 
	@${FIXDEPS} "${OBJECTDIR}/folder/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/folder/wcmdxlcd.o: folder/wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/folder" 
	@${RM} ${OBJECTDIR}/folder/wcmdxlcd.o.d 
	@${RM} ${OBJECTDIR}/folder/wcmdxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/folder/wcmdxlcd.o   folder/wcmdxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/folder/wcmdxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/folder/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/folder/writdata.o: folder/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/folder" 
	@${RM} ${OBJECTDIR}/folder/writdata.o.d 
	@${RM} ${OBJECTDIR}/folder/writdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/folder/writdata.o   folder/writdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/folder/writdata.o 
	@${FIXDEPS} "${OBJECTDIR}/folder/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lab1asm.o: lab1asm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lab1asm.o.d 
	@${RM} ${OBJECTDIR}/lab1asm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/lab1asm.o   lab1asm.c 
	@${DEP_GEN} -d ${OBJECTDIR}/lab1asm.o 
	@${FIXDEPS} "${OBJECTDIR}/lab1asm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/folder/busyxlcd.o: folder/busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/folder" 
	@${RM} ${OBJECTDIR}/folder/busyxlcd.o.d 
	@${RM} ${OBJECTDIR}/folder/busyxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/folder/busyxlcd.o   folder/busyxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/folder/busyxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/folder/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/folder/openxlcd.o: folder/openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/folder" 
	@${RM} ${OBJECTDIR}/folder/openxlcd.o.d 
	@${RM} ${OBJECTDIR}/folder/openxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/folder/openxlcd.o   folder/openxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/folder/openxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/folder/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/folder/putrxlcd.o: folder/putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/folder" 
	@${RM} ${OBJECTDIR}/folder/putrxlcd.o.d 
	@${RM} ${OBJECTDIR}/folder/putrxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/folder/putrxlcd.o   folder/putrxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/folder/putrxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/folder/putrxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/folder/putsxlcd.o: folder/putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/folder" 
	@${RM} ${OBJECTDIR}/folder/putsxlcd.o.d 
	@${RM} ${OBJECTDIR}/folder/putsxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/folder/putsxlcd.o   folder/putsxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/folder/putsxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/folder/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/folder/readaddr.o: folder/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/folder" 
	@${RM} ${OBJECTDIR}/folder/readaddr.o.d 
	@${RM} ${OBJECTDIR}/folder/readaddr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/folder/readaddr.o   folder/readaddr.c 
	@${DEP_GEN} -d ${OBJECTDIR}/folder/readaddr.o 
	@${FIXDEPS} "${OBJECTDIR}/folder/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/folder/readdata.o: folder/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/folder" 
	@${RM} ${OBJECTDIR}/folder/readdata.o.d 
	@${RM} ${OBJECTDIR}/folder/readdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/folder/readdata.o   folder/readdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/folder/readdata.o 
	@${FIXDEPS} "${OBJECTDIR}/folder/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/folder/setcgram.o: folder/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/folder" 
	@${RM} ${OBJECTDIR}/folder/setcgram.o.d 
	@${RM} ${OBJECTDIR}/folder/setcgram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/folder/setcgram.o   folder/setcgram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/folder/setcgram.o 
	@${FIXDEPS} "${OBJECTDIR}/folder/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/folder/setddram.o: folder/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/folder" 
	@${RM} ${OBJECTDIR}/folder/setddram.o.d 
	@${RM} ${OBJECTDIR}/folder/setddram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/folder/setddram.o   folder/setddram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/folder/setddram.o 
	@${FIXDEPS} "${OBJECTDIR}/folder/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/folder/wcmdxlcd.o: folder/wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/folder" 
	@${RM} ${OBJECTDIR}/folder/wcmdxlcd.o.d 
	@${RM} ${OBJECTDIR}/folder/wcmdxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/folder/wcmdxlcd.o   folder/wcmdxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/folder/wcmdxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/folder/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/folder/writdata.o: folder/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/folder" 
	@${RM} ${OBJECTDIR}/folder/writdata.o.d 
	@${RM} ${OBJECTDIR}/folder/writdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/folder/writdata.o   folder/writdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/folder/writdata.o 
	@${FIXDEPS} "${OBJECTDIR}/folder/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lab1asm.o: lab1asm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lab1asm.o.d 
	@${RM} ${OBJECTDIR}/lab1asm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/lab1asm.o   lab1asm.c 
	@${DEP_GEN} -d ${OBJECTDIR}/lab1asm.o 
	@${FIXDEPS} "${OBJECTDIR}/lab1asm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/LAB1FORREALZZZZ.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    lab1_i.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "lab1_i.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_PK3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/LAB1FORREALZZZZ.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/LAB1FORREALZZZZ.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   lab1_i.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "lab1_i.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/LAB1FORREALZZZZ.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
