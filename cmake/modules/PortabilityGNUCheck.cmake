#
# This module setup common portability variables


INCLUDE (CheckIncludeFiles)
INCLUDE (CheckFunctionExists) 
INCLUDE (CheckSymbolExists)
INCLUDE (CheckTypeSize)

##  C func
CHECK_INCLUDE_FILES (malloc.h HAVE_MALLOC_H)
CHECK_INCLUDE_FILES (string.h HAVE_STRING_H)
CHECK_INCLUDE_FILES (strings.h HAVE_STRINGS_H)
CHECK_INCLUDE_FILES (locale.h HAVE_LOCALE_H)
CHECK_INCLUDE_FILES(malloc.h HAVE_MALLOC_H)

#ifdef NE_USE_POLL
#include <sys/poll.h>
#elif defined(HAVE_SYS_SELECT_H)
#include <sys/select.h>
#endif

#ifdef HAVE_NETINET_IN_H
#include <netinet/in.h>
#endif
#ifdef HAVE_NETINET_TCP_H
#include <netinet/tcp.h>
#endif
#ifdef HAVE_ARPA_INET_H
#include <arpa/inet.h>
#endif
#ifdef HAVE_NETDB_H
#include <netdb.h>
#endif

## SYSTEM
CHECK_INCLUDE_FILES(sys/time.h HAVE_SYSTIME_H)
CHECK_INCLUDE_FILES(sys/socket.h HAVE_SYSSOCKET_H)
CHECK_INCLUDE_FILES(sys/poll.h HAVE_POLL_H)
CHECK_INCLUDE_FILES(sys/select.h HAVE_SYS_SELECT_H)

## size type
CHECK_TYPE_SIZE(int            DEF_SIZEOF_INT)
CHECK_TYPE_SIZE(long           DEF_SIZEOF_LONG)
CHECK_TYPE_SIZE(size_t         DEF_SIZEOF_SIZE_T)
CHECK_TYPE_SIZE(ssize_t        DEF_SIZEOF_SSIZE_T)
CHECK_TYPE_SIZE(off_t          DEF_SIZEOF_OFF_T)

## POSIX
CHECK_INCLUDE_FILES(unistd.h HAVE_UNISTD_H)


## BSD
CHECK_FUNCTION_EXISTS(strlcpy HAVE_STRLCPY_H)

##GNU EXT
CHECK_FUNCTION_EXISTS(mempcpy HAVE_MEMPCPY_H)
CHECK_FUNCTION_EXISTS(strptime HAVE_STRPTIME_H)

#NET
CHECK_INCLUDE_FILES(netdb.h HAVE_NETDB_H)
CHECK_INCLUDE_FILES(arpa/inet.h HAVE_ARPA_INET_H)
CHECK_INCLUDE_FILES(netinet/in.h HAVE_NETINET_IN_H)

