# Copyright (c) 2016, Ruslan Baratov, Alexandre Pretyman
# All rights reserved.

if(DEFINED HUNTER_CMAKE_PROJECTS_ODB-MYSQL_HUNTER_CMAKE)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_ODB-MYSQL_HUNTER_CMAKE 1)
endif()

include(hunter_add_version)
include(hunter_pick_scheme)
include(hunter_download)

hunter_add_version(
    PACKAGE_NAME
    odb-mysql
    VERSION
    "2.4.0"
    URL
    "http://www.codesynthesis.com/download/odb/2.4/libodb-mysql-2.4.0.tar.bz2"
    SHA1
    2021a67577354f1d6bed50c0b257c1920760eda7
)

hunter_pick_scheme(DEFAULT url_sha1_odb-mysql_autotools)
hunter_download(PACKAGE_NAME odb-mysql)

