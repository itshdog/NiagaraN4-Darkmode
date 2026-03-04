//=============================================================================
// definitions - define like so:
//      #define foo = lightpurple;
// then reference like so:
//      background-color: $foo;
// NSS will expand it out as if you had written:
//      background-color: lightpurple;
//
// definitions must be at the top of the NSS file!
//
// gotcha: there can be no space between a function and the opening (
//=============================================================================
    
#define buttonVertical = 
  lineargradient(
    stop(0%, #323232) stop(100%, #cc0000)
    angle(90) );
    
#define menuBar = 
  lineargradient(
    stop(0%, #323232) stop(100%, #ff8000)
    angle(90) );

#define tab = 
  lineargradient(
    stop(0%, #323232) stop(100%, #ffff00)
    angle(90) );
    
#define tabSelected = 
  lineargradient(
    stop(0%, #323232) stop(100%, #80ff00)
    angle(90) );    

#define sideBarHeader = 
  lineargradient(
    stop(0%, #b0cbf5) stop(33%, #bfdcff) stop(66%, #373b40) stop(100%, #373b40) );
    

//=============================================================================
// General theme attributes (required)
//=============================================================================

#define mainBackground = #212121; //Workbench pane background color

#define button = lineargradient(stop(0%, #3d3d3d) stop(100%, #404040) angle(135) ); //button background
#define buttonSelectedBackground = #333333;
#define buttonText = #eeeeee;
#define buttonBorder = #323232;
#define buttonShadow = #1a1a1a;
#define buttonHighlight = #303030;
#define buttonFont = bold 12pt sansserif;

#define textEditorBorder = #212121;
#define textEditorBackground = #212121;
#define textEditorTextColor = #eeeeee;
#define textEditorDisabledBackground = #292929;
#define textEditorDisabledTextColor = #777777;

#define spinnerButtonArrows = #111111;
#define spinnerButtonBackground = #e6e6e6;

#define scrollBarButtonForeground = #555555; //scroll bar arrow color
#define scrollBarButtonBackground = #323232;
#define scrollBarThumb = #555555; //thumb color
#define scrollBarTrack = #323232; //track color

#define treeBackground = #323232;
#define treeNodeFont = 12.5pt sansserif;
#define treeNodeText = #eeeeee; //tree node text color
#define treeNodeConnector = #cecece;
#define treeNodeExpander = #cecece;
#define treeNodeSelectedText = #fff;
#define treeNodeSelectedBackground = #373b40;

#define splitPaneDividerBackground = #323232;
#define splitPaneDividerIndentation = #111111; //indentation dots color

#define titlePaneTitleText = #eeeeee;
#define titlePaneTitleBackground = #323232;
#define titlePaneTitleUnderline = #6193dd;
#define titlePaneHeaderBackground = #323232;
#define titlePaneHeaderTitleSeparator = #323232;
#define titlePaneTitleFont = 17pt sansserif;

#define tableBackground = #323232;
#define tableHeaderBackground = #282828;
#define tableHeaderFont = 13pt sansserif;
#define tableHeaderText = #eeeeee;
#define tableCellSelectedBackground = #373b40;
#define tableCellSelectedText = #fff;
#define tableCellBackground = #3d3d3d;
#define tableCellText = #eeeeee;
#define tableCellFont = 12pt sansserif;
#define tableCellHeightOffset = 10; //adds additional height to tableCellFont height value
#define tableGrid = #2c2c2c;
#define tableBorder = #2c2c2c;

#define dropDownOutline = #212121;
#define dropDownBackground = #212121;
#define dropDownButtonBackground = #212121;
#define dropDownButtonForeground = #eeeeee; //arrow color

#define listTextFont = 12pt sansserif; 
#define listText = #eeeeee;
#define listSelectedText = #fff;
#define listBackground = #323232;
#define listBorder = #212121;
#define listSelectedBackground = #373b40;
#define checkBoxBackground = #212121;
#define checkBoxCheckMark = #a9a9a9; //check mark color and box outline

#define tabBackground = #323232;
#define tabSelectedBackground = #373b40;
#define tabBorder = #212121;
#define tabSelectedBorder = #212121;
#define tabInsets = 8;
#define tabContentSeparator = #353535;
#define tabSelectedUnderline = #6193dd;

#define gridPaneBand = #3d3d3d;

//=============================================================================
// PathBar theme attributes
//=============================================================================

//main pathbar (non-edit mode)
#define pathBarBackground = #212121; //default pathbar background color. Note: keep this value in sync with $mainBackground for pathbar to blend correctly into background
#define pathBarProgress = lineargradient(stop(0%, #b859657a) stop(100%, #b83c506b) );

//pathbar text field (edit mode)
#define pathBarTextFieldText = #eeeeee; //normal text color
#define pathBarTextFieldSelectedText = #000; //selected text foreground color
#define pathBarTextFieldBackground = #323232; //normal text background color
#define pathBarTextFieldSelectedBackground = #fff; //selected text background color

//pathbar suggestion dropdown list
#define pathBarListText = #eeeeee;  //unselected item text color
#define pathBarListSelectedText = #fff; //selected item text color
#define pathBarListBackground = #212121; //unselected item background color
#define pathBarListSelectedBackground = #23282F; //selected item background color

//=============================================================================
// ToolPane/Sidebar theme attributes
//=============================================================================

#define toolPaneBorder = none;
#define toolPaneHeaderLabelBackground = #323232;
#define toolPaneHeaderLabelUnderline = #6193dd;
#define toolPaneHeaderLabelSeparator = #323232;
#define toolPaneHeaderFont = 17pt sansserif;
#define toolPaneHeaderArmedForeground = #6193dd;
#define toolPaneHeaderArmedBackground = #323232;
#define toolPaneHeaderDisarmedForeground = #757575;
#define toolPaneHeaderDisarmedBackground = #323232;
#define toolPaneHeaderDropShadow = #50000000;

//=============================================================================
// Property Sheet attributes
//=============================================================================
#define propertySheetBackground = #323232;
#define propertySheetText = #eeeeee;
#define propertySheetHeaderBackground = #323232;
#define propertySheetHeaderText = #fff;
#define propertySheetDivider = #3a3a3a;
#define propertySheetFont = 14pt sansserif;
#define propertySheetExpanderWidth = 9;
#define propertySheetExpanderHeight = 9;

//=============================================================================
// Console attributes
//=============================================================================
#define consoleBackground = #292929;

//=============================================================================
// common attributes (required)
//=============================================================================

font-families {
  sansserif: Source Sans Pro, Tahoma, DejaVu Sans Condensed, DejaVu Sans, Nimbus Sans L, Arial;
  monospaced: Courier New, DejaVu Sans Mono;
}

javafx {
  enabled: true;
  hide-nonessential-icons: true;
}

font: 12pt sansserif;
bold-font: bold 12pt sansserif;
large-font: 14pt sansserif;
large-bold-font: bold 14pt sansserif;
fixed-font: 12pt monospaced;
fixed-bold-font: bold 12pt monospaced;

color: #eeeeee;
background-color: #323232;
outline: #323232;
auxiliary-color: $pathBarBackground;
highlight: none;
shadow: none;
header-color: #212121;


focus-color: #498CF2;

selection-color: #bbcbe8;
selection-background-color: #306bc2;

border-radius: 5; //default border radius for anything that might use it


.themeTextForeground {
  color: $treeNodeText;
}

.disabled {
  color: #a0a198;
  background-color: #3a3a3a;
  outline: #a4a098;
  highlight: none; 
  shadow: $pathBarBackground;
}

.readonly {
  background-color: #3f3f3f;
  outline: none;
  shadow: $textEditorBorder;
  highlight: $textEditorBorder;
}

//window-color and window-background-color included to keep legacy widgets happy
//wherever possible, please use color and background-color instead
window-color: #eeeeee;
window-background-color: #323232;

drop-ok-color: #5FC154;
drop-ok-background-color: #323232;

label {
  font: 12pt sansserif;
  color: #b5b5b5;

  .strong {
    font: bold 12pt sansserif;
  }
  
  .large {
    font: 13pt sansserif;
  }
  
  .error {
    color: #f03333;
  }
  
  .warning {
    color: #fd9f4c;
  }
  
  .message {
    color: #090;
  }
  
  .trace {
    color: #666;
  }
  
  .emphasized {
    font: italic 12pt sansserif;
  }
  
  .hyperlink {
    color: #54547A;
    font: underline 12pt sansserif;
  }
  
  .disabled {
    color: #848687;
  }
  
  .statusBar {
    color: #eeeeee;
  }
}

list {
  font: $listTextFont; //list font
  color: $listText; //list text color
  selection-color: $listSelectedText; // selected item forground color
  background-color: $listBackground; //list background color
  selection-background-color: $listSelectedBackground; //selected item background color
  
  outline: #212121; //list border
  shadow: #1b1b1b;  //list border
  highlight: none; //list border

  #pathbar-list {
    outline: none;
    shadow: none;
    highlight: none;
    color: $pathBarListText;
    selection-color: $pathBarListSelectedText; 
    background-color: $pathBarListBackground; 
    selection-background-color: $pathBarListSelectedBackground;
  }
}

drop-down {

  //drop-down border attributes (corresponds to BListDropDownDisplay)
  //this just styles the collapsed version of the drop down (NOT the drop down list)
  background-color: $dropDownBackground;
  outline: #212121;
  shadow: none;
  highlight: none;
  
  button {
    outline: none;
    shadow: none;
    highlight: none;
    color: $dropDownButtonForeground; 
    background-color: $dropDownButtonBackground;
  }

  .disabled {
    background-color: #f7f7f7;
  }
}

progress-bar {
  background-color: #282828;
  color: $buttonVertical;
}


//=============================================================================
// widget-specific attributes
//=============================================================================


//================================
//   TOOLBAR - buttons / icons
//
//   NOTE: Use JavaFX to format main Workbench Toolbar related elements by editing fx\theme.css
//================================
button {

  color: $buttonText;
  font: $buttonFont;
  outline: none;
  highlight: none;
  shadow: #323232;
  background-color: #212121;
  selection-background-color: $buttonSelectedBackground;
  toolbar-padding: 5 8 5 8;
  
  .disabled {
    highlight: #444444;
    shadow: #000;
    color:#909090;
    background-color: #121212;
  }
    
  .toolbar {
    background-color: none;
    selection-background-color: $buttonSelectedBackground;
    outline: #9c9e95;
    highlight: #3d3d3d;
    shadow: #3d3d3d;
  }
  
  //override the bold font applied to regular buttons
  checkbox {
    font: 12pt sansserif;
    outline: $checkBoxCheckMark;
    background-color: $checkBoxBackground;
    .disabled { outline: #848687; }
  }
  
  radio {
    font: 12pt sansserif;
    .disabled { outline: #848687; }
    outline: #212121;
    highlight: none;
    shadow: none;
  }
  
  #tableOptionsButton {
    background-color: $tableHeaderBackground;
    outline: none;
    highlight: none; 
    shadow: #1b1b1b;
  }
  
  spinner {
    shadow: #1b1b1b;
    highlight: none;
    outline: $spinnerButtonArrows;
    background-color: $spinnerButtonBackground;
  }
}
//=============== end ============


//================================
//   MENU (including right-click menu)
//
//   NOTE: Use JavaFX to format main workbench Menu Bar (File, Edit, etc. ) elements by editing fx\theme.css
//================================
menu {
  background-color: #2b2b2b;
  outline: #333333;
  highlight: #333333; 
  shadow: #2b2b2b;
  padding: 0;
  opacity: 1;
}

menu-bar {
  font: 14pt sansserif;
  item-padding: 0 0 0 0;         //default: 2 7
  bar-padding: 0 0 0 0;          //default: 1
  
  color: #909090;
  background-color: $menuBar;
  outline: none;
  shadow: #212121;
  highlight: #212121
  
  .selected {
    color: #C9DFE4;
    background-color: #373b40;
    outline: #306bc2;
    highlight: #306bc2;
    shadow: #306bc2;
   }  
}

menu-item {
  font: 14pt sansserif;
  color: #eeeeee;
  background-color: #2b2b2b;
  padding:  4 14 4 12;         //default: 2 14 2 22
  icon-indent: 0;           //default: 2
  outline: #9c9c9c; //checkbox color
  
  .disabled {
    shadow: #464646;
    highlight: #2b2b2b;
    color: #464646;
  }

  selection-color: #fff;
  selection-background-color: #373b40;
  selection-font: bold 14pt sansserif

  // divider in right click menus
  accelerator {
    font: 1pt sansserif;       //default: menu-item font -1 point
    color: #909090;
    padding: 4 0 4 0;
  }
}

recent-ords menu-item accelerator { color: #373b40; }
//=============== end ============


//================================
//   PATHBAR - ORD path below Menu Bar
//================================
path-bar {
  color: #eeeeee;
  font: 12pt sansserif;
  outline: none;
  highlight: none; 
  shadow: none;
  background-color: $pathBarBackground;
  progress-color: $pathBarProgress;
}
//=============== end ============
c
console {
  background-color #292929;
  outline: none;
  color: #eeeeee;
}

pane {

  outline: none;
  shadow: none;
  highlight: none;
  
    grid-pane {
  
    #platform-admin-grid { background-color: #323232; }
        band-color: $gridPaneBand;
        .scrolled {
          band-color: #323232;
        }
  }

  background-color: none;

  .errorPanel { background-color: white; }
  
  border-pane {
    width: 0;
    color: #eeeeee;
    font: 18pt sansserif;
  }
  
  #main-background-pane { background-color: $mainBackground; }
  #alarm-title-pane { background-color: $dropDownButtonBackground; }
  
  //================================
  //   SCROLL PANE
  //================================
  scroll-pane {
    padding: 0;            //default: 0 (and you want it that way)
    background-color: #323232;
    outline: none; //remove scroll pane border
    .sidebar-body { background-color: $treeBackground; }
    .sidebar-scroll-pane 
    { 
      background-color: $treeBackground;
    } 
  }
  
  //================================
  //   SPLIT PANE
  //================================
  split-pane {
    shadow: none;
    highlight: none;
    color: #eeeeee;
    width: 4;
    divider {
      background-color: $splitPaneDividerBackground;
      highlight: $splitPaneDividerIndentation; //indentation dot color
      outline: none; 
      shadow: none;
    }
    
    .console-top {
      width: 10;
      background-color: lineargradient(stop(0%, #212121) stop(100% #323232) angle(270) );
    }
  }
  
  tabbed-pane {
    background-color: $tabBackground;
    color: #eeeeee;
    shadow: none;
    highlight: $tabContentSeparator;
    outline: $tabBorder;
    tab-insets: $tabInsets;
    
    .selected {
      background-color: $tabSelectedBackground;
      highlight: $tabSelectedUnderline;
      shadow: none;
      outline: $tabSelectedBorder;
    }
  }
  
  //================================
  //   TITLE-PANE
  //================================
  .title {
    color: $titlePaneTitleText;
    font: $titlePaneTitleFont;
    background-color: $titlePaneTitleBackground;
    outline: $titlePaneHeaderBackground;
    shadow: $titlePaneHeaderTitleSeparator;
    highlight: $titlePaneTitleUnderline;
  }
  
  //================================
  //   TOOL-PANE - nav, palette, etc.
  //================================
  tool-pane {
    outline: none; //toolpane border color
    highlight: $toolPaneHeaderLabelUnderline;
    shadow: $toolPaneHeaderLabelSeparator;
    background-color: $toolPaneHeaderLabelBackground;
    drop-shadow: $toolPaneHeaderDropShadow;
    drop-shadow-width: 10;
    
    header { //header attributes for a single sidebar in toolpane
      font: $toolPaneHeaderFont;
      selection-color: $toolPaneHeaderArmedForeground;
      selection-background-color: $toolPaneHeaderArmedBackground;
      color: #fff;
      background-color: $toolPaneHeaderDisarmedBackground;
      padding: 3 0 3 6;
    }
  }
}
//=============== end ============


//================================
//   SCROLL BAR
//================================
scroll-bar {
  width: 17;             //default: 15
  button {
    outline: none;
    highlight: none;
    shadow: none;
    color: $scrollBarButtonForeground;
    background-color: $scrollBarButtonBackground;
     
    .disabled {
      color: #eeeeee;
      background-color: #4a4843;
      outline: #9d9e95; 
      highlight: #3d3d3d;
      shadow: #a4a098;
    }
  }
  thumb {
    outline: none; 
    highlight: none; 
    shadow: none;
    background-color: $scrollBarThumb;
    border-radius: 1;
  }
  track {
    outline: none; 
    highlight: none; 
    shadow: none;
    background-color: $scrollBarTrack;
    border-radius: 1;
    
  }
}

//=============== end ============

separator {
  width:2;              //default: 2
  width-menu:8;          //default: 8
  width-toolbar:8;          //default: 8

  highlight: #3d3d3d;
  shadow: none;
}

table {

  outline: $tableBorder;
  background-color: $tableBackground;
  grid-color: $tableGrid;
  selection-background-color: $tableCellSelectedBackground;
  selection-color: $tableCellSelectedText;
  band-color: $tableCellBackground;
  color: $tableCellText; 
  font: $tableCellFont;
  cell-height-offset: $tableCellHeightOffset;
  
  .sidebar-table { 
    background-color: $treeBackground; 
  }
  
  header {
    highlight: none;
    shadow: none;
    outline: none;
    background-color: $tableHeaderBackground;
    font: $tableHeaderFont;
    color: $tableHeaderText;
  }
  
  .cell-table { 
    selection-color: #212121;
    selection-background-color: #bfdcff; 
  }

  tree-table {
    connector-color: #353535;
    expander {
      color: #373b40;
    }
    .category-browser { band-color: #b5b5b5; }
  }
}

text-editor {

  background-color: $textEditorBackground;
  outline: #212121;
  shadow: $textEditorBorder;
  highlight: $textEditorBorder;
  font: $tableCellFont;
  color: #eeeeee;
  
  .disabled {
    background-color: #3f3f3f;
    color: #9c9c9c;
    outline: none;
    shadow: #212121;
    highlight: #212121;
  }  
  selection-color: white;
  selection-background-color: #306bc2;
  
  #pathbar-text-field {    
    outline: $pathBarTextFieldText;
    background-color: $pathBarTextFieldBackground;
    selection-color: $pathBarTextFieldSelectedText;
    selection-background-color: $pathBarTextFieldSelectedBackground;
  }
}

//================================
//   TREE
//================================
tree {
  highlight: none;
  shadow: none;
  font: $treeNodeFont;
  color: $treeNodeText; //tree node text color
  background-color: $treeBackground;
  connector-color: $treeNodeConnector;
  padding: 6 10;          //default: 2 4
  
  expander {
    color: $treeNodeExpander;
    /gra: 11;          //default: 9, looks goofy with even nums
  }

  selection-color: $treeNodeSelectedText;
  selection-background-color: $treeNodeSelectedBackground;
  
  property-sheet {
    background-color: $propertySheetBackground;
    color: $propertySheetText;
    font: $propertySheetFont;
    
    header {  
      color: $propertySheetHeaderText;
      background-color: $propertySheetHeaderBackground;
    }
    
    divider {
      color: $propertySheetDivider;
    }
  }
}

toolbar {
  scroll-speed: 120;
}

wire-sheet {
  color: #3a3a3a;
  background-color: #323232;
  .ace {
    background-color: lightCyan;
  }
  outline: #323232;
  
  glyph {
    background-color: #212121;
    outline: #000;
    font: 9pt sansserif;
    color: #eeeeee;
    shadow: #000;
    
    title {
      title { font: bold 9pt sansserif; }
      subtitle { font: 9pt sansserif; }
      color: #eeeeee;
      background-color: #212121;
      shadow: #000;
      .cut {
        color: #3d3d3d;
        background-color: #32373737;
      }
    }
    
    selection-color: #3d3d3d;
    selection-background-color: #111111;
    
    .cut {
      background-color: #32969696;
    }
  }
  
  thumbnail {
    color: #7f3e4a4b;
    background-color: #7f393939;
    outline: #212121;
  }
}
//=============== end ============
