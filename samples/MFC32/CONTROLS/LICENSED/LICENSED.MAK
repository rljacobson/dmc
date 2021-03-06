ORIGIN		= Symantec C++
ORIGIN_VER	= Version 7.22
VERSION		= DEBUG

!IFDEF SUB_DEBUG
DEBUG		= $(SUB_DEBUG)
NDEBUG		= !$(SUB_DEBUG)
!ELSE
DEBUG		= 1
NDEBUG		= 0
!ENDIF

PROJ		= LICENSED
APPTYPE		= WIN32 DLL
PROJTYPE	= DLL

CC		= SC
CPP		= SPP
JAVAC		= sj
MAKE		= SMAKE
RC		= RCC
HC		= HC31
ASM		= SC
DISASM		= OBJ2ASM
LNK		= LINK
DLLS		= 

HEADERS		= stdafx.h licensed.h resource.h  \
		licenctl.h licenppg.h ..\..\..\..\MFC\INCLUDE\afxctl.h ..\..\..\..\MFC\INCLUDE\32-bit\afxctl.h  \
		..\..\..\..\MFC\INCLUDE\afxole.h ..\..\..\..\MFC\INCLUDE\32-bit\afxole.h ..\..\..\..\MFC\INCLUDE\afxext.h ..\..\..\..\MFC\INCLUDE\32-bit\afxext.h  \
		..\..\..\..\MFC\INCLUDE\afxwin.h ..\..\..\..\MFC\INCLUDE\32-bit\afxwin.h ..\..\..\..\MFC\INCLUDE\afx.h ..\..\..\..\MFC\INCLUDE\32-bit\afx.h  \
		..\..\..\..\MFC\INCLUDE\afxver_.h ..\..\..\..\MFC\INCLUDE\32-bit\afxver_.h ..\..\..\..\MFC\INCLUDE\afxv_w32.h ..\..\..\..\MFC\INCLUDE\32-bit\afxv_w32.h  \
		..\..\..\..\INCLUDE\windows.h ..\..\..\..\INCLUDE\win32\scdefs.h ..\..\..\..\INCLUDE\win32\windows.h ..\..\..\..\INCLUDE\excpt.h  \
		..\..\..\..\INCLUDE\stdarg.h ..\..\..\..\INCLUDE\windef.h ..\..\..\..\INCLUDE\win32\windef.h ..\..\..\..\INCLUDE\winnt.h  \
		..\..\..\..\INCLUDE\win32\winnt.h ..\..\..\..\INCLUDE\ctype.h ..\..\..\..\INCLUDE\pshpack4.h ..\..\..\..\INCLUDE\win32\pshpack4.h  \
		..\..\..\..\INCLUDE\poppack.h ..\..\..\..\INCLUDE\win32\poppack.h ..\..\..\..\INCLUDE\win32\pshpack1.h ..\..\..\..\INCLUDE\string.h  \
		..\..\..\..\INCLUDE\winbase.h ..\..\..\..\INCLUDE\win32\winbase.h ..\..\..\..\INCLUDE\winerror.h ..\..\..\..\INCLUDE\win32\winerror.h  \
		..\..\..\..\INCLUDE\wingdi.h ..\..\..\..\INCLUDE\win32\wingdi.h ..\..\..\..\INCLUDE\pshpack1.h ..\..\..\..\INCLUDE\pshpack2.h  \
		..\..\..\..\INCLUDE\win32\pshpack2.h ..\..\..\..\INCLUDE\winuser.h ..\..\..\..\INCLUDE\win32\winuser.h ..\..\..\..\INCLUDE\winnls.h  \
		..\..\..\..\INCLUDE\win32\winnls.h ..\..\..\..\INCLUDE\wincon.h ..\..\..\..\INCLUDE\win32\wincon.h ..\..\..\..\INCLUDE\winver.h  \
		..\..\..\..\INCLUDE\win32\winver.h ..\..\..\..\INCLUDE\winreg.h ..\..\..\..\INCLUDE\win32\winreg.h ..\..\..\..\INCLUDE\winnetwk.h  \
		..\..\..\..\INCLUDE\win32\winnetwk.h ..\..\..\..\INCLUDE\winsvc.h ..\..\..\..\INCLUDE\win32\winsvc.h ..\..\..\..\INCLUDE\mcx.h  \
		..\..\..\..\INCLUDE\win32\mcx.h ..\..\..\..\INCLUDE\imm.h ..\..\..\..\INCLUDE\win32\imm.h ..\..\..\..\INCLUDE\commctrl.h  \
		..\..\..\..\INCLUDE\win32\commctrl.h ..\..\..\..\INCLUDE\prsht.h ..\..\..\..\INCLUDE\win32\prsht.h ..\..\..\..\INCLUDE\tchar.h  \
		..\..\..\..\MFC\INCLUDE\afxv_dll.h ..\..\..\..\MFC\INCLUDE\32-bit\afxv_dll.h ..\..\..\..\INCLUDE\stdio.h ..\..\..\..\INCLUDE\stdlib.h  \
		..\..\..\..\INCLUDE\time.h ..\..\..\..\INCLUDE\limits.h ..\..\..\..\INCLUDE\stddef.h ..\..\..\..\MFC\INCLUDE\afxcoll.h  \
		..\..\..\..\MFC\INCLUDE\32-bit\afxcoll.h ..\..\..\..\MFC\INCLUDE\afxstat_.h ..\..\..\..\MFC\INCLUDE\32-bit\afxstat_.h ..\..\..\..\MFC\INCLUDE\afxtls_.h  \
		..\..\..\..\MFC\INCLUDE\32-bit\afxtls_.h ..\..\..\..\INCLUDE\shellapi.h ..\..\..\..\INCLUDE\win32\shellapi.h ..\..\..\..\MFC\INCLUDE\afxres.h  \
		..\..\..\..\MFC\INCLUDE\32-bit\afxres.h ..\..\..\..\MFC\INCLUDE\afxmsg_.h ..\..\..\..\MFC\INCLUDE\32-bit\afxmsg_.h ..\..\..\..\MFC\INCLUDE\afxdd_.h  \
		..\..\..\..\MFC\INCLUDE\32-bit\afxdd_.h ..\..\..\..\MFC\INCLUDE\afxdll_.h ..\..\..\..\MFC\INCLUDE\32-bit\afxdll_.h ..\..\..\..\MFC\INCLUDE\afxdlgs.h  \
		..\..\..\..\MFC\INCLUDE\32-bit\afxdlgs.h ..\..\..\..\INCLUDE\commdlg.h ..\..\..\..\INCLUDE\win32\commdlg.h ..\..\..\..\INCLUDE\richedit.h  \
		..\..\..\..\INCLUDE\win32\richedit.h ..\..\..\..\MFC\INCLUDE\afxdisp.h ..\..\..\..\MFC\INCLUDE\32-bit\afxdisp.h ..\..\..\..\INCLUDE\objbase.h  \
		..\..\..\..\INCLUDE\win32\objbase.h ..\..\..\..\INCLUDE\win32\rpcbase.h ..\..\..\..\INCLUDE\rpc.h ..\..\..\..\INCLUDE\win32\rpc.h  \
		..\..\..\..\INCLUDE\rpcdce.h ..\..\..\..\INCLUDE\win32\rpcdce.h ..\..\..\..\INCLUDE\rpcdcep.h ..\..\..\..\INCLUDE\win32\rpcdcep.h  \
		..\..\..\..\INCLUDE\rpcnsi.h ..\..\..\..\INCLUDE\win32\rpcnsi.h ..\..\..\..\INCLUDE\rpcnterr.h ..\..\..\..\INCLUDE\win32\rpcnterr.h  \
		..\..\..\..\INCLUDE\rpcndr.h ..\..\..\..\INCLUDE\win32\rpcndr.h ..\..\..\..\INCLUDE\rpcnsip.h ..\..\..\..\INCLUDE\win32\rpcnsip.h  \
		..\..\..\..\INCLUDE\pshpack8.h ..\..\..\..\INCLUDE\win32\pshpack8.h ..\..\..\..\INCLUDE\wtypes.h ..\..\..\..\INCLUDE\win32\wtypes.h  \
		..\..\..\..\INCLUDE\unknwn.h ..\..\..\..\INCLUDE\win32\unknwn.h ..\..\..\..\INCLUDE\win32\ole2.h ..\..\..\..\INCLUDE\oleauto.h  \
		..\..\..\..\INCLUDE\win32\oleauto.h ..\..\..\..\INCLUDE\oaidl.h ..\..\..\..\INCLUDE\win32\oaidl.h ..\..\..\..\INCLUDE\win32\objidl.h  \
		..\..\..\..\INCLUDE\oleidl.h ..\..\..\..\INCLUDE\win32\oleidl.h ..\..\..\..\INCLUDE\cguid.h ..\..\..\..\INCLUDE\win32\cguid.h  \
		..\..\..\..\INCLUDE\olectl.h ..\..\..\..\INCLUDE\win32\olectl.h ..\..\..\..\INCLUDE\olectlid.h ..\..\..\..\INCLUDE\win32\olectlid.h  \
		..\..\..\..\include\crtdbg.h ..\..\..\..\include\objidl.h ..\..\..\..\include\ocidl.h ..\..\..\..\include\win32\OCIDL.H  \
		..\..\..\..\include\docobj.h ..\..\..\..\include\win32\DOCOBJ.H ..\..\..\..\include\win32\servprov.h ..\..\..\..\include\urlmon.h  \
		..\..\..\..\include\win32\URLMON.H ..\..\..\..\mfc\include\afxcom_.h ..\..\..\..\mfc\include\32-bit\afxcom_.h ..\..\..\..\mfc\include\32-bit\winres.h 

DEFFILE		= licensed.DEF

!IF $(DEBUG)
OUTPUTDIR	= .
CREATEOUTPUTDIR	=
TARGETDIR	= .
CREATETARGETDIR	=

SYMROOT		=  .\stdafx 
SYMS		= $(SYMROOT).SYM 
LIBS		= KERNEL32.LIB GDI32.LIB USER32.LIB 

CFLAGS		=  -cpp -Jm -Ae -Ar -mn -C -D_WINDOWS -D_WINDLL -S -ND -3 -a8 -c -H -HO- -w- -w17 -g 
LFLAGS		=  /CO /NOI /DO /DE /NOPACKF /XN /NT /ENTRY:_DllMainCRTStartup /BAS:268435456 /A:512 /RC   :licensed.RES
DEFINES		= -D_DEBUG -D_DEBUG=1 -D_X86_=1 -D_MT=1 -D_AFXDLL=1 -D_AFXCTL=1
!ELSE
OUTPUTDIR	= .
CREATEOUTPUTDIR	=
TARGETDIR	= .
CREATETARGETDIR	=

SYMROOT		=  .\stdafx 
SYMS		= $(SYMROOT).SYM 
LIBS		= KERNEL32.LIB GDI32.LIB USER32.LIB 

CFLAGS		=  -cpp -Ae -Ar -mn -o+time -D_WINDOWS -D_WINDLL -ND -3 -a8 -c -H -HO- 
LFLAGS		=  /NOI /DO /DE /PACKF /XN /NT /ENTRY:_DllMainCRTStartup /BAS:268435456 /A:512 /RC   :licensed.RES
DEFINES		= -D_X86_=1 -D_MT=1 -D_AFXDLL=1 -D_AFXCTL=1
!ENDIF

HFLAGS		= $(CFLAGS) 
MFLAGS		= MASTERPROJ=$(PROJ) 
LIBFLAGS	=  /C 
RESFLAGS	=  -32 
DEBUGGERFLAGS	=  
AFLAGS		= $(CFLAGS) 
HELPFLAGS	= 

MODEL		= N

PAR		= PROJS BATS OBJS

RCDEFINES	= -D_DEBUG

INCLUDES	= 

INCLUDEDOBJS	= 

OBJS		= licenctl.OBJ licenppg.OBJ licensed.OBJ 

RCFILES		=  licensed.RES 

RESFILES	= 

HELPFILES	= 

BATS		= 

.SUFFIXES: .C .CP .CPP .CXX .CC .H .HPP .HXX .COM .EXE .DLL .LIB .RTF .DLG .ASM .RES .RC .OBJ 

.C.OBJ:
	$(CC) $(CFLAGS) $(DEFINES) $(INCLUDES) -o$*.obj $*.c

.CPP.OBJ:
	$(CC) $(CFLAGS) $(DEFINES) $(INCLUDES) -o$*.obj $*.cpp

.CXX.OBJ:
	$(CC) $(CFLAGS) $(DEFINES) $(INCLUDES) -o$*.obj $*.cxx

.CC.OBJ:
	$(CC) $(CFLAGS) $(DEFINES) $(INCLUDES) -o$*.obj $*.cc

.CP.OBJ:
	$(CC) $(CFLAGS) $(DEFINES) $(INCLUDES) -o$*.obj $*.cp

.H.SYM:
	$(CC) $(HFLAGS) $(DEFINES) $(INCLUDES) -HF -o.\$(*B).sym $*.h

.HPP.SYM:
	$(CC) $(HFLAGS) $(DEFINES) $(INCLUDES) -HF -o.\$(*B).sym $*.hpp

.HXX.SYM:
	$(CC) $(HFLAGS) $(DEFINES) $(INCLUDES) -HF -o.\$(*B).sym $*.hxx

.C.EXP:
	$(CPP) $(CFLAGS) $(DEFINES) $(INCLUDES)   $*.c   -o$*.lst

.CPP.EXP:
	$(CPP) $(CFLAGS) $(DEFINES) $(INCLUDES) $*.cpp -o$*.lst

.CXX.EXP:
	$(CPP) $(CFLAGS) $(DEFINES) $(INCLUDES) $*.cxx -o$*.lst

.CP.EXP:
	$(CPP) $(CFLAGS) $(DEFINES) $(INCLUDES)  $*.cp  -o$*.lst

.CC.EXP:
	$(CPP) $(CFLAGS) $(DEFINES) $(INCLUDES)  $*.cc  -o$*.lst

.ASM.EXP:
	$(CPP) $(CFLAGS) $(DEFINES) $(INCLUDES) $*.asm -o$*.lst

.OBJ.COD:
	$(DISASM) $*.OBJ -c

!IF $(DEBUG)
.OBJ.EXE:
		$(LNK) $(LFLAGS) @<<$(PROJ).LNK
.\stdafx.PCO+
licenctl.OBJ+
licenppg.OBJ+
licensed.OBJ
$$SCW$$.DLL
NUL
KERNEL32.LIB GDI32.LIB USER32.LIB 
licensed.DEF;
<<
!ELSE
.OBJ.EXE:
		$(LNK) $(LFLAGS) @$(PROJ).LNK<<
.\stdafx.PCO+
licenctl.OBJ+
licenppg.OBJ+
licensed.OBJ
$$SCW$$.DLL
NUL
KERNEL32.LIB GDI32.LIB USER32.LIB 
licensed.DEF;
<<
!ENDIF

.RTF.HLP:
	$(HC) $(HELPFLAGS) $*.HPJ

.ASM.OBJ:
	$(ASM) $(AFLAGS) $(DEFINES) $(INCLUDES) -o$*.obj $*.asm

.RC.RES: 
	$(RC) $(RCDEFINES) $(RESFLAGS) $(INCLUDES) $*.rc -o$*.res

.DLG.RES:
	echo ^#include "windows.h" >$$$*.rc
	echo ^IF EXIST "$*.h" >>$$$*.rc
	echo ^#include "$*.h" >>$$$*.rc
	echo ^#include "$*.dlg" >>$$$*.rc
	$(RC) $(RCDEFINES) $(RESFLAGS) $(INCLUDES) $$$*.rc
	-del $*.res
	-ren $$$*.res $*.res



all:	noteout createdir $(PRECOMPILE) $(SYMS) $(OBJS) $(INCLUDEDOBJS) $(POSTCOMPILE) $(TARGETDIR)\$(PROJ).$(PROJTYPE) $(POSTLINK) _done


all2:	createdir $(PRECOMPILE) $(SYMS) $(OBJS) $(INCLUDEDOBJS) $(POSTCOMPILE) $(TARGETDIR)\$(PROJ).$(PROJTYPE) $(POSTLINK) _done

noteout:
	REM Output to $(OUTPUTDIR)

createdir:
	$(CREATEOUTPUTDIR)
	$(CREATETARGETDIR)
	
$(TARGETDIR)\$(PROJ).$(PROJTYPE): $(SYMS) $(OBJS) $(INCLUDEDOBJS) $(RCFILES) $(RESFILES) $(HELPFILES) $(DEFFILE)
			-del $(TARGETDIR)\$(PROJ).$(PROJTYPE)
!IF $(DEBUG)
		$(LNK) $(LFLAGS) @<<$(PROJ).LNK
.\stdafx.PCO+
licenctl.OBJ+
licenppg.OBJ+
licensed.OBJ
$$SCW$$.DLL
NUL
KERNEL32.LIB GDI32.LIB USER32.LIB 
licensed.DEF;
<<
!ELSE
		$(LNK) $(LFLAGS) @<<$(PROJ).LNK
.\stdafx.PCO+
licenctl.OBJ+
licenppg.OBJ+
licensed.OBJ
$$SCW$$.DLL
NUL
KERNEL32.LIB GDI32.LIB USER32.LIB 
licensed.DEF;
<<
!ENDIF

			-ren $(TARGETDIR)\$$SCW$$.$(PROJTYPE) $(PROJ).$(PROJTYPE)
			-echo $(TARGETDIR)\$(PROJ).$(PROJTYPE) built

_done:
		REM  Project is up to date

buildall:	clean	all


clean:
		-del $(TARGETDIR)\$$SCW$$.$(PROJTYPE)
		-del $(PROJ).CLE
		-del $(OUTPUTDIR)\SCPH.SYM
		-del LICENSED.dpd
		-del $(OBJS)
		-del $(SYMROOT).SYM
		-del $(SYMROOT).PCO
		-del licensed.RES

cleanres:
		-del licensed.RES

res:		cleanres $(RCFILES) all


link:
!IF $(DEBUG)
		$(LNK) $(LFLAGS) @<<$(PROJ).LNK
.\stdafx.PCO+
licenctl.OBJ+
licenppg.OBJ+
licensed.OBJ
$$SCW$$.DLL
NUL
KERNEL32.LIB GDI32.LIB USER32.LIB 
licensed.DEF;
<<
!ELSE
		$(LNK) $(LFLAGS) @<<$(PROJ).LNK
.\stdafx.PCO+
licenctl.OBJ+
licenppg.OBJ+
licensed.OBJ
$$SCW$$.DLL
NUL
KERNEL32.LIB GDI32.LIB USER32.LIB 
licensed.DEF;
<<
!ENDIF

		-del $(TARGETDIR)\$(PROJ).$(PROJTYPE)
		-ren $(TARGETDIR)\$$SCW$$.$(PROJTYPE) $(PROJ).$(PROJTYPE)




!IF EXIST (LICENSED.dpd)
!INCLUDE LICENSED.dpd
!ENDIF
$(SYMROOT).SYM: stdafx.h
	$(CC) $(HFLAGS) $(DEFINES) $(INCLUDES) -HF$(SYMROOT).SYM -o$(SYMROOT).PCO stdafx.h



