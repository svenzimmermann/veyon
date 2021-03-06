FIND_PROGRAM(XDG_DESKTOP_MENU_EXECUTABLE xdg-desktop-menu)
SET(XDG_APPS_INSTALL_DIR ${CMAKE_INSTALL_PREFIX}/share/applications)

MACRO(XDG_INSTALL DESKTOP_FILE ICON_XPM ICON_PNG ICON_SVG)
	INSTALL(FILES ${DESKTOP_FILE} DESTINATION ${XDG_APPS_INSTALL_DIR})
	INSTALL(FILES ${ICON_XPM} DESTINATION ${CMAKE_INSTALL_PREFIX}/share/pixmaps)
	INSTALL(FILES ${ICON_PNG} DESTINATION ${CMAKE_INSTALL_PREFIX}/share/icons/hicolor/48x48/apps)
	INSTALL(FILES ${ICON_SVG} DESTINATION ${CMAKE_INSTALL_PREFIX}/share/icons/hicolor/scalable/apps)
	#IF(XDG_DESKTOP_MENU_EXECUTABLE)
	#	INSTALL(CODE "EXECUTE_PROCESS(COMMAND ${XDG_DESKTOP_MENU_EXECUTABLE} install --novendor ${XDG_APPS_INSTALL_DIR}/${DESKTOP_FILE})")
	#ENDIF()
ENDMACRO()
