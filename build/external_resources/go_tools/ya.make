

RESOURCES_LIBRARY()

IF (NOT HOST_OS_DARWIN AND NOT HOST_OS_LINUX AND NOT HOST_OS_WINDOWS)
    MESSAGE(FATAL_ERROR Unsupported host platform for GO_TOOLS)
ELSEIF(GOSTD_VERSION == 1.15.7)
    DECLARE_EXTERNAL_HOST_RESOURCES_BUNDLE(
        GO_TOOLS
        sbr:1942898335 FOR DARWIN
        sbr:1942896681 FOR LINUX
        sbr:1942899875 FOR WIN32
    )
ELSEIF(GOSTD_VERSION == 1.15.8)
    DECLARE_EXTERNAL_HOST_RESOURCES_BUNDLE(
        GO_TOOLS
        sbr:1980733501 FOR DARWIN
        sbr:1980729450 FOR LINUX
        sbr:1980736299 FOR WIN32
    )
ELSE()
    MESSAGE(FATAL_ERROR Unsupported version [${GOSTD_VERSION}] of Go Standard Library)
ENDIF()

END()
