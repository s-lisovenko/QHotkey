file(GLOB FOUND_QT_VERSIONS
    LIST_DIRECTORIES true
    $ENV{HOME}/Qt/6.6.*
    )
if(NOT FOUND_QT_VERSIONS)
    return()
endif()

list(SORT FOUND_QT_VERSIONS) # prefer 5.15
list(GET FOUND_QT_VERSIONS 0 QT_PATH)

get_filename_component(QT_VERSION ${QT_PATH} NAME)
set(QT_QMAKE_PATH ${QT_PATH}/gcc_64/bin/qmake)
set(QT_PREFIX_PATH ${QT_PATH}/gcc_64)
