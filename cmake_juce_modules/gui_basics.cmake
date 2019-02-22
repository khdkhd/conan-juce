if(APPLE)
  set(JUCE_MODULE_HEADERS
    "${JUCE_MODULE_PATH}/application/juce_Application.h"
    "${JUCE_MODULE_PATH}/buttons/juce_ArrowButton.h"
    "${JUCE_MODULE_PATH}/buttons/juce_Button.h"
    "${JUCE_MODULE_PATH}/buttons/juce_DrawableButton.h"
    "${JUCE_MODULE_PATH}/buttons/juce_HyperlinkButton.h"
    "${JUCE_MODULE_PATH}/buttons/juce_ImageButton.h"
    "${JUCE_MODULE_PATH}/buttons/juce_ShapeButton.h"
    "${JUCE_MODULE_PATH}/buttons/juce_TextButton.h"
    "${JUCE_MODULE_PATH}/buttons/juce_ToggleButton.h"
    "${JUCE_MODULE_PATH}/buttons/juce_ToolbarButton.h"
    "${JUCE_MODULE_PATH}/commands/juce_ApplicationCommandID.h"
    "${JUCE_MODULE_PATH}/commands/juce_ApplicationCommandInfo.h"
    "${JUCE_MODULE_PATH}/commands/juce_ApplicationCommandManager.h"
    "${JUCE_MODULE_PATH}/commands/juce_ApplicationCommandTarget.h"
    "${JUCE_MODULE_PATH}/commands/juce_KeyPressMappingSet.h"
    "${JUCE_MODULE_PATH}/components/juce_CachedComponentImage.h"
    "${JUCE_MODULE_PATH}/components/juce_Component.h"
    "${JUCE_MODULE_PATH}/components/juce_ComponentListener.h"
    "${JUCE_MODULE_PATH}/components/juce_ModalComponentManager.h"
    "${JUCE_MODULE_PATH}/desktop/juce_Desktop.h"
    "${JUCE_MODULE_PATH}/desktop/juce_Displays.h"
    "${JUCE_MODULE_PATH}/drawables/juce_Drawable.h"
    "${JUCE_MODULE_PATH}/drawables/juce_DrawableComposite.h"
    "${JUCE_MODULE_PATH}/drawables/juce_DrawableImage.h"
    "${JUCE_MODULE_PATH}/drawables/juce_DrawablePath.h"
    "${JUCE_MODULE_PATH}/drawables/juce_DrawableRectangle.h"
    "${JUCE_MODULE_PATH}/drawables/juce_DrawableShape.h"
    "${JUCE_MODULE_PATH}/drawables/juce_DrawableText.h"
    "${JUCE_MODULE_PATH}/filebrowser/juce_ContentSharer.h"
    "${JUCE_MODULE_PATH}/filebrowser/juce_DirectoryContentsDisplayComponent.h"
    "${JUCE_MODULE_PATH}/filebrowser/juce_DirectoryContentsList.h"
    "${JUCE_MODULE_PATH}/filebrowser/juce_FileBrowserComponent.h"
    "${JUCE_MODULE_PATH}/filebrowser/juce_FileBrowserListener.h"
    "${JUCE_MODULE_PATH}/filebrowser/juce_FileChooser.h"
    "${JUCE_MODULE_PATH}/filebrowser/juce_FileChooserDialogBox.h"
    "${JUCE_MODULE_PATH}/filebrowser/juce_FileListComponent.h"
    "${JUCE_MODULE_PATH}/filebrowser/juce_FilenameComponent.h"
    "${JUCE_MODULE_PATH}/filebrowser/juce_FilePreviewComponent.h"
    "${JUCE_MODULE_PATH}/filebrowser/juce_FileSearchPathListComponent.h"
    "${JUCE_MODULE_PATH}/filebrowser/juce_FileTreeComponent.h"
    "${JUCE_MODULE_PATH}/filebrowser/juce_ImagePreviewComponent.h"
    "${JUCE_MODULE_PATH}/keyboard/juce_CaretComponent.h"
    "${JUCE_MODULE_PATH}/keyboard/juce_KeyboardFocusTraverser.h"
    "${JUCE_MODULE_PATH}/keyboard/juce_KeyListener.h"
    "${JUCE_MODULE_PATH}/keyboard/juce_KeyPress.h"
    "${JUCE_MODULE_PATH}/keyboard/juce_ModifierKeys.h"
    "${JUCE_MODULE_PATH}/keyboard/juce_SystemClipboard.h"
    "${JUCE_MODULE_PATH}/keyboard/juce_TextEditorKeyMapper.h"
    "${JUCE_MODULE_PATH}/keyboard/juce_TextInputTarget.h"
    "${JUCE_MODULE_PATH}/layout/juce_AnimatedPosition.h"
    "${JUCE_MODULE_PATH}/layout/juce_AnimatedPositionBehaviours.h"
    "${JUCE_MODULE_PATH}/layout/juce_ComponentAnimator.h"
    "${JUCE_MODULE_PATH}/layout/juce_ComponentBoundsConstrainer.h"
    "${JUCE_MODULE_PATH}/layout/juce_ComponentBuilder.h"
    "${JUCE_MODULE_PATH}/layout/juce_ComponentMovementWatcher.h"
    "${JUCE_MODULE_PATH}/layout/juce_ConcertinaPanel.h"
    "${JUCE_MODULE_PATH}/layout/juce_FlexBox.h"
    "${JUCE_MODULE_PATH}/layout/juce_FlexItem.h"
    "${JUCE_MODULE_PATH}/layout/juce_Grid.h"
    "${JUCE_MODULE_PATH}/layout/juce_GridItem.h"
    "${JUCE_MODULE_PATH}/layout/juce_GroupComponent.h"
    "${JUCE_MODULE_PATH}/layout/juce_MultiDocumentPanel.h"
    "${JUCE_MODULE_PATH}/layout/juce_ResizableBorderComponent.h"
    "${JUCE_MODULE_PATH}/layout/juce_ResizableCornerComponent.h"
    "${JUCE_MODULE_PATH}/layout/juce_ResizableEdgeComponent.h"
    "${JUCE_MODULE_PATH}/layout/juce_ScrollBar.h"
    "${JUCE_MODULE_PATH}/layout/juce_SidePanel.h"
    "${JUCE_MODULE_PATH}/layout/juce_StretchableLayoutManager.h"
    "${JUCE_MODULE_PATH}/layout/juce_StretchableLayoutResizerBar.h"
    "${JUCE_MODULE_PATH}/layout/juce_StretchableObjectResizer.h"
    "${JUCE_MODULE_PATH}/layout/juce_TabbedButtonBar.h"
    "${JUCE_MODULE_PATH}/layout/juce_TabbedComponent.h"
    "${JUCE_MODULE_PATH}/layout/juce_Viewport.h"
    "${JUCE_MODULE_PATH}/lookandfeel/juce_LookAndFeel.h"
    "${JUCE_MODULE_PATH}/lookandfeel/juce_LookAndFeel_V1.h"
    "${JUCE_MODULE_PATH}/lookandfeel/juce_LookAndFeel_V2.h"
    "${JUCE_MODULE_PATH}/lookandfeel/juce_LookAndFeel_V3.h"
    "${JUCE_MODULE_PATH}/lookandfeel/juce_LookAndFeel_V4.h"
    "${JUCE_MODULE_PATH}/menus/juce_BurgerMenuComponent.h"
    "${JUCE_MODULE_PATH}/menus/juce_MenuBarComponent.h"
    "${JUCE_MODULE_PATH}/menus/juce_MenuBarModel.h"
    "${JUCE_MODULE_PATH}/menus/juce_PopupMenu.h"
    "${JUCE_MODULE_PATH}/misc/juce_BubbleComponent.h"
    "${JUCE_MODULE_PATH}/misc/juce_DropShadower.h"
    "${JUCE_MODULE_PATH}/misc/juce_JUCESplashScreen.h"
    "${JUCE_MODULE_PATH}/mouse/juce_ComponentDragger.h"
    "${JUCE_MODULE_PATH}/mouse/juce_DragAndDropContainer.h"
    "${JUCE_MODULE_PATH}/mouse/juce_DragAndDropTarget.h"
    "${JUCE_MODULE_PATH}/mouse/juce_FileDragAndDropTarget.h"
    "${JUCE_MODULE_PATH}/mouse/juce_LassoComponent.h"
    "${JUCE_MODULE_PATH}/mouse/juce_MouseCursor.h"
    "${JUCE_MODULE_PATH}/mouse/juce_MouseEvent.h"
    "${JUCE_MODULE_PATH}/mouse/juce_MouseInactivityDetector.h"
    "${JUCE_MODULE_PATH}/mouse/juce_MouseInputSource.h"
    "${JUCE_MODULE_PATH}/mouse/juce_MouseListener.h"
    "${JUCE_MODULE_PATH}/mouse/juce_SelectedItemSet.h"
    "${JUCE_MODULE_PATH}/mouse/juce_TextDragAndDropTarget.h"
    "${JUCE_MODULE_PATH}/mouse/juce_TooltipClient.h"
    "${JUCE_MODULE_PATH}/native/juce_linux_X11.h"
    "${JUCE_MODULE_PATH}/native/juce_MultiTouchMapper.h"
    "${JUCE_MODULE_PATH}/positioning/juce_MarkerList.h"
    "${JUCE_MODULE_PATH}/positioning/juce_RelativeCoordinate.h"
    "${JUCE_MODULE_PATH}/positioning/juce_RelativeCoordinatePositioner.h"
    "${JUCE_MODULE_PATH}/positioning/juce_RelativeParallelogram.h"
    "${JUCE_MODULE_PATH}/positioning/juce_RelativePoint.h"
    "${JUCE_MODULE_PATH}/positioning/juce_RelativePointPath.h"
    "${JUCE_MODULE_PATH}/positioning/juce_RelativeRectangle.h"
    "${JUCE_MODULE_PATH}/properties/juce_BooleanPropertyComponent.h"
    "${JUCE_MODULE_PATH}/properties/juce_ButtonPropertyComponent.h"
    "${JUCE_MODULE_PATH}/properties/juce_ChoicePropertyComponent.h"
    "${JUCE_MODULE_PATH}/properties/juce_MultiChoicePropertyComponent.h"
    "${JUCE_MODULE_PATH}/properties/juce_PropertyComponent.h"
    "${JUCE_MODULE_PATH}/properties/juce_PropertyPanel.h"
    "${JUCE_MODULE_PATH}/properties/juce_SliderPropertyComponent.h"
    "${JUCE_MODULE_PATH}/properties/juce_TextPropertyComponent.h"
    "${JUCE_MODULE_PATH}/widgets/juce_ComboBox.h"
    "${JUCE_MODULE_PATH}/widgets/juce_ImageComponent.h"
    "${JUCE_MODULE_PATH}/widgets/juce_Label.h"
    "${JUCE_MODULE_PATH}/widgets/juce_ListBox.h"
    "${JUCE_MODULE_PATH}/widgets/juce_ProgressBar.h"
    "${JUCE_MODULE_PATH}/widgets/juce_Slider.h"
    "${JUCE_MODULE_PATH}/widgets/juce_TableHeaderComponent.h"
    "${JUCE_MODULE_PATH}/widgets/juce_TableListBox.h"
    "${JUCE_MODULE_PATH}/widgets/juce_TextEditor.h"
    "${JUCE_MODULE_PATH}/widgets/juce_Toolbar.h"
    "${JUCE_MODULE_PATH}/widgets/juce_ToolbarItemComponent.h"
    "${JUCE_MODULE_PATH}/widgets/juce_ToolbarItemFactory.h"
    "${JUCE_MODULE_PATH}/widgets/juce_ToolbarItemPalette.h"
    "${JUCE_MODULE_PATH}/widgets/juce_TreeView.h"
    "${JUCE_MODULE_PATH}/windows/juce_AlertWindow.h"
    "${JUCE_MODULE_PATH}/windows/juce_CallOutBox.h"
    "${JUCE_MODULE_PATH}/windows/juce_ComponentPeer.h"
    "${JUCE_MODULE_PATH}/windows/juce_DialogWindow.h"
    "${JUCE_MODULE_PATH}/windows/juce_DocumentWindow.h"
    "${JUCE_MODULE_PATH}/windows/juce_NativeMessageBox.h"
    "${JUCE_MODULE_PATH}/windows/juce_ResizableWindow.h"
    "${JUCE_MODULE_PATH}/windows/juce_ThreadWithProgressWindow.h"
    "${JUCE_MODULE_PATH}/windows/juce_TooltipWindow.h"
    "${JUCE_MODULE_PATH}/windows/juce_TopLevelWindow.h"
    "${JUCE_MODULE_PATH}/juce_gui_basics.h"
  )
  set(JUCE_MODULE_SOURCES
    "${JUCE_MODULE_PATH}/application/juce_Application.cpp"
    "${JUCE_MODULE_PATH}/buttons/juce_ArrowButton.cpp"
    "${JUCE_MODULE_PATH}/buttons/juce_Button.cpp"
    "${JUCE_MODULE_PATH}/buttons/juce_DrawableButton.cpp"
    "${JUCE_MODULE_PATH}/buttons/juce_HyperlinkButton.cpp"
    "${JUCE_MODULE_PATH}/buttons/juce_ImageButton.cpp"
    "${JUCE_MODULE_PATH}/buttons/juce_ShapeButton.cpp"
    "${JUCE_MODULE_PATH}/buttons/juce_TextButton.cpp"
    "${JUCE_MODULE_PATH}/buttons/juce_ToggleButton.cpp"
    "${JUCE_MODULE_PATH}/buttons/juce_ToolbarButton.cpp"
    "${JUCE_MODULE_PATH}/commands/juce_ApplicationCommandInfo.cpp"
    "${JUCE_MODULE_PATH}/commands/juce_ApplicationCommandManager.cpp"
    "${JUCE_MODULE_PATH}/commands/juce_ApplicationCommandTarget.cpp"
    "${JUCE_MODULE_PATH}/commands/juce_KeyPressMappingSet.cpp"
    "${JUCE_MODULE_PATH}/components/juce_Component.cpp"
    "${JUCE_MODULE_PATH}/components/juce_ComponentListener.cpp"
    "${JUCE_MODULE_PATH}/components/juce_ModalComponentManager.cpp"
    "${JUCE_MODULE_PATH}/desktop/juce_Desktop.cpp"
    "${JUCE_MODULE_PATH}/desktop/juce_Displays.cpp"
    "${JUCE_MODULE_PATH}/drawables/juce_Drawable.cpp"
    "${JUCE_MODULE_PATH}/drawables/juce_DrawableComposite.cpp"
    "${JUCE_MODULE_PATH}/drawables/juce_DrawableImage.cpp"
    "${JUCE_MODULE_PATH}/drawables/juce_DrawablePath.cpp"
    "${JUCE_MODULE_PATH}/drawables/juce_DrawableRectangle.cpp"
    "${JUCE_MODULE_PATH}/drawables/juce_DrawableShape.cpp"
    "${JUCE_MODULE_PATH}/drawables/juce_DrawableText.cpp"
    "${JUCE_MODULE_PATH}/drawables/juce_SVGParser.cpp"
    "${JUCE_MODULE_PATH}/filebrowser/juce_ContentSharer.cpp"
    "${JUCE_MODULE_PATH}/filebrowser/juce_DirectoryContentsDisplayComponent.cpp"
    "${JUCE_MODULE_PATH}/filebrowser/juce_DirectoryContentsList.cpp"
    "${JUCE_MODULE_PATH}/filebrowser/juce_FileBrowserComponent.cpp"
    "${JUCE_MODULE_PATH}/filebrowser/juce_FileChooser.cpp"
    "${JUCE_MODULE_PATH}/filebrowser/juce_FileChooserDialogBox.cpp"
    "${JUCE_MODULE_PATH}/filebrowser/juce_FileListComponent.cpp"
    "${JUCE_MODULE_PATH}/filebrowser/juce_FilenameComponent.cpp"
    "${JUCE_MODULE_PATH}/filebrowser/juce_FileSearchPathListComponent.cpp"
    "${JUCE_MODULE_PATH}/filebrowser/juce_FileTreeComponent.cpp"
    "${JUCE_MODULE_PATH}/filebrowser/juce_ImagePreviewComponent.cpp"
    "${JUCE_MODULE_PATH}/keyboard/juce_CaretComponent.cpp"
    "${JUCE_MODULE_PATH}/keyboard/juce_KeyboardFocusTraverser.cpp"
    "${JUCE_MODULE_PATH}/keyboard/juce_KeyListener.cpp"
    "${JUCE_MODULE_PATH}/keyboard/juce_KeyPress.cpp"
    "${JUCE_MODULE_PATH}/keyboard/juce_ModifierKeys.cpp"
    "${JUCE_MODULE_PATH}/layout/juce_ComponentAnimator.cpp"
    "${JUCE_MODULE_PATH}/layout/juce_ComponentBoundsConstrainer.cpp"
    "${JUCE_MODULE_PATH}/layout/juce_ComponentBuilder.cpp"
    "${JUCE_MODULE_PATH}/layout/juce_ComponentMovementWatcher.cpp"
    "${JUCE_MODULE_PATH}/layout/juce_ConcertinaPanel.cpp"
    "${JUCE_MODULE_PATH}/layout/juce_FlexBox.cpp"
    "${JUCE_MODULE_PATH}/layout/juce_Grid.cpp"
    "${JUCE_MODULE_PATH}/layout/juce_GridItem.cpp"
    "${JUCE_MODULE_PATH}/layout/juce_GridUnitTests.cpp"
    "${JUCE_MODULE_PATH}/layout/juce_GroupComponent.cpp"
    "${JUCE_MODULE_PATH}/layout/juce_MultiDocumentPanel.cpp"
    "${JUCE_MODULE_PATH}/layout/juce_ResizableBorderComponent.cpp"
    "${JUCE_MODULE_PATH}/layout/juce_ResizableCornerComponent.cpp"
    "${JUCE_MODULE_PATH}/layout/juce_ResizableEdgeComponent.cpp"
    "${JUCE_MODULE_PATH}/layout/juce_ScrollBar.cpp"
    "${JUCE_MODULE_PATH}/layout/juce_SidePanel.cpp"
    "${JUCE_MODULE_PATH}/layout/juce_StretchableLayoutManager.cpp"
    "${JUCE_MODULE_PATH}/layout/juce_StretchableLayoutResizerBar.cpp"
    "${JUCE_MODULE_PATH}/layout/juce_StretchableObjectResizer.cpp"
    "${JUCE_MODULE_PATH}/layout/juce_TabbedButtonBar.cpp"
    "${JUCE_MODULE_PATH}/layout/juce_TabbedComponent.cpp"
    "${JUCE_MODULE_PATH}/layout/juce_Viewport.cpp"
    "${JUCE_MODULE_PATH}/lookandfeel/juce_LookAndFeel.cpp"
    "${JUCE_MODULE_PATH}/lookandfeel/juce_LookAndFeel_V1.cpp"
    "${JUCE_MODULE_PATH}/lookandfeel/juce_LookAndFeel_V2.cpp"
    "${JUCE_MODULE_PATH}/lookandfeel/juce_LookAndFeel_V3.cpp"
    "${JUCE_MODULE_PATH}/lookandfeel/juce_LookAndFeel_V4.cpp"
    "${JUCE_MODULE_PATH}/menus/juce_BurgerMenuComponent.cpp"
    "${JUCE_MODULE_PATH}/menus/juce_MenuBarComponent.cpp"
    "${JUCE_MODULE_PATH}/menus/juce_MenuBarModel.cpp"
    "${JUCE_MODULE_PATH}/menus/juce_PopupMenu.cpp"
    "${JUCE_MODULE_PATH}/misc/juce_BubbleComponent.cpp"
    "${JUCE_MODULE_PATH}/misc/juce_DropShadower.cpp"
    "${JUCE_MODULE_PATH}/misc/juce_JUCESplashScreen.cpp"
    "${JUCE_MODULE_PATH}/mouse/juce_ComponentDragger.cpp"
    "${JUCE_MODULE_PATH}/mouse/juce_DragAndDropContainer.cpp"
    "${JUCE_MODULE_PATH}/mouse/juce_MouseCursor.cpp"
    "${JUCE_MODULE_PATH}/mouse/juce_MouseEvent.cpp"
    "${JUCE_MODULE_PATH}/mouse/juce_MouseInactivityDetector.cpp"
    "${JUCE_MODULE_PATH}/mouse/juce_MouseInputSource.cpp"
    "${JUCE_MODULE_PATH}/mouse/juce_MouseListener.cpp"
    "${JUCE_MODULE_PATH}/native/juce_android_ContentSharer.cpp"
    "${JUCE_MODULE_PATH}/native/juce_android_FileChooser.cpp"
    "${JUCE_MODULE_PATH}/native/juce_android_Windowing.cpp"
    "${JUCE_MODULE_PATH}/native/juce_common_MimeTypes.cpp"
    "${JUCE_MODULE_PATH}/native/juce_ios_ContentSharer.cpp"
    "${JUCE_MODULE_PATH}/native/juce_ios_FileChooser.mm"
    "${JUCE_MODULE_PATH}/native/juce_ios_UIViewComponentPeer.mm"
    "${JUCE_MODULE_PATH}/native/juce_ios_Windowing.mm"
    "${JUCE_MODULE_PATH}/native/juce_linux_FileChooser.cpp"
    "${JUCE_MODULE_PATH}/native/juce_linux_X11.cpp"
    "${JUCE_MODULE_PATH}/native/juce_linux_X11_Clipboard.cpp"
    "${JUCE_MODULE_PATH}/native/juce_linux_X11_Windowing.cpp"
    "${JUCE_MODULE_PATH}/native/juce_mac_FileChooser.mm"
    "${JUCE_MODULE_PATH}/native/juce_mac_MainMenu.mm"
    "${JUCE_MODULE_PATH}/native/juce_mac_MouseCursor.mm"
    "${JUCE_MODULE_PATH}/native/juce_mac_NSViewComponentPeer.mm"
    "${JUCE_MODULE_PATH}/native/juce_mac_Windowing.mm"
    "${JUCE_MODULE_PATH}/native/juce_win32_DragAndDrop.cpp"
    "${JUCE_MODULE_PATH}/native/juce_win32_FileChooser.cpp"
    "${JUCE_MODULE_PATH}/native/juce_win32_Windowing.cpp"
    "${JUCE_MODULE_PATH}/positioning/juce_MarkerList.cpp"
    "${JUCE_MODULE_PATH}/positioning/juce_RelativeCoordinate.cpp"
    "${JUCE_MODULE_PATH}/positioning/juce_RelativeCoordinatePositioner.cpp"
    "${JUCE_MODULE_PATH}/positioning/juce_RelativeParallelogram.cpp"
    "${JUCE_MODULE_PATH}/positioning/juce_RelativePoint.cpp"
    "${JUCE_MODULE_PATH}/positioning/juce_RelativePointPath.cpp"
    "${JUCE_MODULE_PATH}/positioning/juce_RelativeRectangle.cpp"
    "${JUCE_MODULE_PATH}/properties/juce_BooleanPropertyComponent.cpp"
    "${JUCE_MODULE_PATH}/properties/juce_ButtonPropertyComponent.cpp"
    "${JUCE_MODULE_PATH}/properties/juce_ChoicePropertyComponent.cpp"
    "${JUCE_MODULE_PATH}/properties/juce_MultiChoicePropertyComponent.cpp"
    "${JUCE_MODULE_PATH}/properties/juce_PropertyComponent.cpp"
    "${JUCE_MODULE_PATH}/properties/juce_PropertyPanel.cpp"
    "${JUCE_MODULE_PATH}/properties/juce_SliderPropertyComponent.cpp"
    "${JUCE_MODULE_PATH}/properties/juce_TextPropertyComponent.cpp"
    "${JUCE_MODULE_PATH}/widgets/juce_ComboBox.cpp"
    "${JUCE_MODULE_PATH}/widgets/juce_ImageComponent.cpp"
    "${JUCE_MODULE_PATH}/widgets/juce_Label.cpp"
    "${JUCE_MODULE_PATH}/widgets/juce_ListBox.cpp"
    "${JUCE_MODULE_PATH}/widgets/juce_ProgressBar.cpp"
    "${JUCE_MODULE_PATH}/widgets/juce_Slider.cpp"
    "${JUCE_MODULE_PATH}/widgets/juce_TableHeaderComponent.cpp"
    "${JUCE_MODULE_PATH}/widgets/juce_TableListBox.cpp"
    "${JUCE_MODULE_PATH}/widgets/juce_TextEditor.cpp"
    "${JUCE_MODULE_PATH}/widgets/juce_Toolbar.cpp"
    "${JUCE_MODULE_PATH}/widgets/juce_ToolbarItemComponent.cpp"
    "${JUCE_MODULE_PATH}/widgets/juce_ToolbarItemPalette.cpp"
    "${JUCE_MODULE_PATH}/widgets/juce_TreeView.cpp"
    "${JUCE_MODULE_PATH}/windows/juce_AlertWindow.cpp"
    "${JUCE_MODULE_PATH}/windows/juce_CallOutBox.cpp"
    "${JUCE_MODULE_PATH}/windows/juce_ComponentPeer.cpp"
    "${JUCE_MODULE_PATH}/windows/juce_DialogWindow.cpp"
    "${JUCE_MODULE_PATH}/windows/juce_DocumentWindow.cpp"
    "${JUCE_MODULE_PATH}/windows/juce_ResizableWindow.cpp"
    "${JUCE_MODULE_PATH}/windows/juce_ThreadWithProgressWindow.cpp"
    "${JUCE_MODULE_PATH}/windows/juce_TooltipWindow.cpp"
    "${JUCE_MODULE_PATH}/windows/juce_TopLevelWindow.cpp"
  )
  set(JUCE_MODULE_DEPENDENCIES
    "-framework Carbon"
    "-framework Cocoa"
    "-framework QuartzCore"
  )
endif()
