#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "google/coredumper.h"

MODULE = Devel::CoreDump  PACKAGE = Devel::CoreDump

PROTOTYPES: DISABLE

void
write (class, filename)
		const char *filename
	PREINIT:
		int ret;
	CODE:
		ret = WriteCoreDump (filename);
	POSTCALL:
		if (ret < 0) {
			croak ("failed to write coredump: %s", strerror (errno));
		}
