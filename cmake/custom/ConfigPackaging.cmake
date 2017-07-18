set (PROJECT_VERSION_MAJOR 2)
set (PROJECT_VERSION_MINOR 1)
set (PROJECT_VERSION_PATCH 4)

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY
    "GIMIC - Gauge-Including Magnetically Induced Currents program")
set(CPACK_PACKAGE_VENDOR "University of Helsinki")
set(CPACK_PACKAGE_CONTACT "Jonas Juselius <jonas.juselius@uit.no>")
set(CPACK_PACKAGE_EXECUTABLES "gimic" "The GIMIC program")
set(CPACK_PACKAGE_URL "http://repo.ctcc.no/projects/gimic")
set(CPACK_PACKAGE_DESCRIPTION_FILE "${CMAKE_CURRENT_SOURCE_DIR}/INSTALL")
set(CPACK_RESOURCE_FILE_README "${CMAKE_CURRENT_SOURCE_DIR}/README.md")
set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/LICENSE")
set(CPACK_GENERATOR TGZ DEB RPM)


include(InstallRequiredSystemLibraries)

string(TOLOWER ${PROJECT_NAME} CPACK_PACKAGE_NAME)

set(CPACK_PACKAGE_VERSION_MAJOR ${PROJECT_VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_MINOR ${PROJECT_VERSION_MINOR})
set(CPACK_PACKAGE_VERSION_PATCH ${PROJECT_VERSION_PATCH})

# Program packager
set(CPACK_PACKAGE_FILE_NAME
    "${CPACK_PACKAGE_NAME}-${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}-${CMAKE_SYSTEM}")
set(CPACK_PACKAGE_INSTALL_DIRECTORY
    "${CPACK_PACKAGE_NAME}-${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}")
set(CPACK_STRIP_FILES FALSE)
set(CPACK_PACKAGING_INSTALL_PREFIX ${CMAKE_INSTALL_PREFIX})

# Source packager

set(CPACK_SOURCE_GENERATOR TGZ)
set(CPACK_SOURCE_STRIP_FILES FALSE)
set(CPACK_SOURCE-PACKAGE_FILE_NAME
    "${CPACK_PACKAGE_NAME}-${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}")
set(CPACK_SOURCE_IGNORE_FILES
"/CVS/;/.svn/;/.bzr/;/.hg/;/.git.*/;.swp$;.#;/#")
set(CPACK_SOURCE_IGNORE_FILES
        "/(Build|build|BUILD)-?.*/;/(Release|release|RELEASE)-?.*/;/(Debug|debug|DEBUG)-?.*/;${CPACK_SOURCE_IGNORE_FILES}")

# Deb packager
set(CPACK_DEBIAN_PACKAGE_DEPENDS)
set(CPACK_DEBIAN_PACKAGE_SECTION 'misc')
set(CPACK_DEBIAN_PACKAGE_PRIORITY 'optional')
set(CPACK_DEBIAN_PACKAGE_HOMEPAGE ${CPACK_PACKAGE_URL})
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS)
set(CPACK_DEBIAN_PACKAGE_PREDEPENDS)
set(CPACK_DEBIAN_PACKAGE_ENHANCES)
set(CPACK_DEBIAN_PACKAGE_BREAKS)
set(CPACK_DEBIAN_PACKAGE_CONFLICTS)
set(CPACK_DEBIAN_PACKAGE_PROVIDES)
set(CPACK_DEBIAN_PACKAGE_REPLACES)

# RPM packager
set(CPACK_RPM_PACKAGE_ARCHITECTURE 'x86_64')
set(CPACK_RPM_PACKAGE_RELEASE 1)
set(CPACK_RPM_PACKAGE_LICENSE 'unknown')
set(CPACK_RPM_PACKAGE_GROUP 'misc')
set(CPACK_RPM_PACKAGE_URL ${CPACK_PACKAGE_URL})
set(CPACK_RPM_PACKAGE_REQUIRES)
set(CPACK_RPM_PACKAGE_SUGGESTS)
set(CPACK_RPM_PACKAGE_PROVIDES)
set(CPACK_RPM_PACKAGE_OBSOLETES)
set(CPACK_RPM_SPEC_INSTALL_POST)
set(CPACK_RPM_SPEC_MORE_DEFINE)
set(CPACK_RPM_USER_BINARY_SPECFILE)
set(CPACK_RPM_GENERATE_USER_BINARY_SPECFILE_TEMPLATE)
set(CPACK_RPM_PRE_INSTALL_SCRIPT_FILE)
set(CPACK_RPM_PRE_UNINSTALL_SCRIPT_FILE)
set(CPACK_RPM_POST_INSTALL_SCRIPT_FILE)
set(CPACK_RPM_POST_UNINSTALL_SCRIPT_FILE)
set(CPACK_RPM_CHANGELOG_FILE)

include(CPack)

# vim:ft=cmake
