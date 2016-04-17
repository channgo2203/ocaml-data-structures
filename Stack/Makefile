###########################################################################
#                                                                        
#		Listplus                                  
#                                                                        
#                                                                        
#		Copyright (C) 2016 Van-Chan Ngo.                                        
#                                                                        
#		All rights reserved.  This file is distributed under the terms of    
#		the GNU Lesser General Public License version 2.1, with the          
#		special exception on linking described in the file LICENSE.          
#                                                                        
###########################################################################

OCAMLMAKEFILE = ../OCamlMakefile

SOURCES = 	liststack.mli \
			liststack.ml \
			test.ml 

DOC_FILES = liststack.mli \
						liststack.ml

DOC_DIR = doc

RESULT = liststack

# libs
LIBS = str unix

# includes
#LIBDIRS = lib/thelib

YFLAGS = -v

all: native-code

-include $(OCAMLMAKEFILE)
