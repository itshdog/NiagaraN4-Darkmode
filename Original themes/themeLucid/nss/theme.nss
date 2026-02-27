//=============================================================================
// definitions - define like so:
//      #define foo = lightpurple;
// then reference like so:
//      background-color: $foo;
// NSS will substitute as if you had written:
//      background-color: lightpurple;
//
// NOTE: Cannot use a reference inside a definition:
//      DOES NOT WORK: #define foo2 = $foo;
//
// definitions must be at the top of the NSS file!
//
// gotcha: there can be no space between a function and the opening (
//=============================================================================

#define button = 
	lineargradient(
		stop(0%, #b0cbf5) stop(100%, #d9e8ff) 
		angle(135) );

#define button_selected = 
	lineargradient(
		stop(0%, #9d9e95) stop(100%, #b4b5ac) 
		angle(135) );

		
#define buttonVertical = 
  lineargradient(
    stop(0%, #b0cbf5) stop(100%, #d9e8ff) 
    angle(90) );
		
#define pathBar = 
	lineargradient(
		stop(0%, #9d9e95) stop(100%, #b4b5ac) 
		angle(90) );
		
#define menuBar = 
	lineargradient(
		stop(0%, #ebe9d8) stop(100%, #f4f5eb) 
		angle(90) );

#define tab = 
	lineargradient(
		stop(0%, #cdcfbe) stop(100%, #cdcfbe) 
		angle(90) );
		
#define tabSelected = 
	lineargradient(
		stop(0%, #ebe9d8) stop(100%, #ebe9d8) 
		angle(90) );		

#define sideBarHeader = 
	lineargradient(
		stop(0%, #b0cbf5) stop(33%, #bfdcff) stop(66%, #bfdcff) stop(100%, #b0cbf5) );
		
#define pathBarProgress =
	lineargradient(
		stop(0%, #b8b0cbf5) stop(100%, #b8bfdcff) );

    
//=============================================================================
// General theme attributes (required)
//=============================================================================

font-families {
  sansserif: Tahoma, DejaVu Sans Condensed, DejaVu Sans, Nimbus Sans L, Arial;
  monospaced: Courier New, DejaVu Sans Mono;
}

javafx {
  enabled: true;
  hide-nonessential-icons: false;
}

font: 11pt sansserif;
bold-font: bold 11pt sansserif;
large-font: 14pt sansserif;
large-bold-font: bold 14pt sansserif;
fixed-font: 12pt monospaced;
fixed-bold-font: bold 12pt monospaced;

color: #000;
background-color: #ebe9d8;
auxiliary-color: #999;
outline: #3e402f; 
auxiliary-color: $pathBar;
header-color: $pathBar;

highlight: #faf7e8; 
shadow: #bdbaaa;

focus-color: #0a246a;

selection-color: #fff;
selection-background-color: #306bc2;

border-radius: 0; //default border radius for anything that might use it

.disabled {
	color: #3e402f;
	background-color: #ebe9d8;
	outline: #a4a098;
	highlight: none; 
	shadow: $pathBar;
}

.readonly {
  background-color: #ebe9d8;
}

//window-color and window-background-color included to keep legacy widgets happy
//wherever possible, please use color and background-color instead
window-color: #000;
window-background-color: #fff;

drop-ok-color: #fff;
drop-ok-background-color: #306bc2;

list {
	background-color: #fff;
}

label {
  font: 11pt sansserif;

  .strong {
    font: bold 11pt sansserif;
  }
  
  .large {
    font: 13pt sansserif;
  }
  
  .error {
    color: #a00;
  }
  
  .warning {
    color: #ce5e04;
  }
  
  .message {
    color: #090;
  }
  
  .trace {
    color: #666;
  }
  
  .emphasized {
    font: italic 11pt sansserif;
  }
  
  .hyperlink {
    color: #00f;
    font: underline 11pt sansserif;
  }
  
  .disabled {
    color: #848687;
  }
  
  .statusBar {
    color: #000;
  }
}

drop-down {
	background-color: #fff;
	padding: 1 2 2 2;
	.disabled {
		background-color: #ebe9d8;
	}
}

progress-bar {
  background-color: #fff;
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
	font: bold 11pt sansserif;
	outline: #3f4038; 
	highlight: none; 
	shadow: none;
	background-color: $button;
	selection-background-color: $button_selected;
	
	.disabled {
		highlight: #f9fae8; 
		shadow: none;
		color:#848687;
	}
		
	.toolbar {
		background-color: none;
		selection-background-color: $pathBar;
		outline: #9c9e95;
		highlight: #ebe9d8; 
		shadow: #ebe9d8;
	}
	
	//override the bold font applied to regular buttons
	checkbox {
	  font: 11pt sansserif;
	  .disabled { outline: #848687; }
	}
	
	radio {
	  font: 11pt sansserif;
	  .disabled { outline: #848687; }
	}
}
//=============== end ============


//================================
//   MENU (including right-click menu)
//
//   NOTE: Use JavaFX to format main workbench Menu Bar (File, Edit, etc. ) elements by editing fx\theme.css
//================================
menu {
	background-color: #ffffff;
	outline: #9d9e95; 
	highlight: #fff; 
	shadow: #fff;
	padding: 3;						//default: 3
	opacity: 0.97;
}

menu-bar {
	font: 11pt sansserif;
	item-padding: 2 4; 				//default: 2 7
	bar-padding: 1;					//default: 1
	
	color: #333;
	background-color: $menuBar;
	outline: #9d9e95;
	highlight: none;
	shadow: none;
	
	.selected {
	  color: #fff;
	  background-color: #306bc2;
	  outline: #306bc2;
	  highlight: #306bc2;
	  shadow: #306bc2;
	 }	
}

menu-item {
	font: 11pt sansserif;
	color: #000;
	background-color: #ffffff;
	padding: 2 14 4 22; 				//default: 2 14 2 22
	icon-indent: 2; 					//default: 2
	
	.disabled {
		highlight: #fff;
		shadow: #a7a8a0;
	}

	selection-color: #fff;
	selection-background-color: #306bc2;

	accelerator {
		font: 11pt sansserif; 			//default: menu-item font -1 point
		color: #a7a8a0;
	}
}
//=============== end ============


//================================
//   PATHBAR - ORD path below Menu Bar
//================================
path-bar {
	color: #fff;
	font: 11pt sansserif;
	outline: #3f4038;
	highlight: none; 
	shadow: none;
	background-color: $pathBar;
	progress-color: $pathBarProgress;
}
//=============== end ============

pane {
    grid-pane {
        band-color: #d7d9cc;

        .scrolled {
          band-color: #e2e2e2;
        }
	}

	background-color: none;
	.errorPanel { background-color: white; }
	
	border-pane {
		width: 1;
		color: $pathBar;
		font: 11pt sansserif;
	}
	
	
	//================================
	//   SCROLL PANE
	//================================
	scroll-pane {
		padding: 0;						//default: 0 (and you want it that way)
		background-color: #fff;
		outline: #3f4038;
	}
	
	//================================
	//   SPLIT PANE
	//================================
	split-pane {
		shadow: none;
		highlight: none;
		width: 8;
		divider {
			background-color: #ebe9d8;
			outline: none; 
			highlight: #9d9e95; 
			shadow: none;
		}
	}
	
	tabbed-pane {
		background-color: $tab;
		shadow: none;
		highlight: #BCBAAD;
		outline: #000;
		color: #000;
		.selected {
			background-color: $tabSelected;
			highlight: #F7F6EF;
			shadow: #BCBAAD;
			outline: #000;
		}
	}
	
	// title above certain tables like station properties
	.title {
		color: #fff;
		font: 11pt sansserif;
		background-color: $pathBar;
	}
	
	//================================
	//   TOOL PANE - nav, palette, etc.
	//================================
	tool-pane {
		outline: #3f4038;
		font: 11pt sansserif;
		border: 1px;
		header {
			background-color: $sideBarHeader;
			selection-color: #fff;
			selection-background-color: #306bc2;
		}
	}
}
//=============== end ============


//================================
//   SCROLL BAR
//================================
scroll-bar {
	width: 17; 						//default: 15
	button {
		color: #4e6182;
		background-color: $button;
		outline: #3f4038; 
		highlight: #e0f5ff; 
		shadow: #9aafd6;
		
		.disabled {
			color: #707070;
			background-color: #d4d0c8;
			outline: #9d9e95; 
			highlight: #fff; 
			shadow: #a4a098;
		}
	}
	thumb {
		background-color: #c3d5fa;
		outline: #3f4038; 
		highlight: #e0f5ff; 
		shadow: #9aafd6;
	}
	track {
		background-color: #a4a098;
		outline: #3f4038; 
		highlight: none; 
		shadow: none;
	}
}
//=============== end ============

separator {
	width:2;							//default: 2
	width-menu:8;					//default: 8
	width-toolbar:8;					//default: 8

	highlight: #9d9e95;
	shadow: none;
}

table {
	background-color: #fff;
	band-color: #f6f5ed;
  .cell-table { 
    selection-color: #000;
    selection-background-color: #bfdcff; 
  }

	tree-table {
	  connector-color: #000;
	  expander {
	    color: #000;
	  }
	  .category-browser { band-color: #ffffbb; }
	}
}

text-editor {
	background-color: #fff;
	.disabled {
		background-color: #ebe9d8;
	}	
	selection-color: white;
	selection-background-color: #306bc2;
}

console {
  background-color: #fff;
}

//================================
//   TREE
//================================
tree {
	font: 11pt sansserif;
	color: #000;
	background-color: #fff;
	connector-color: #3e402f;
	padding: 4 4;					//default: 2 4
	
	highlight: #000;
	shadow: #000;
	
	expander {
		color: #000;
		width: 9;					//default: 9, looks goofy with even nums
		height: 9;					//default: 9, looks goofy with even nums
	}
	
	selection-color: #fff;
	selection-background-color: #306bc2;
	
	property-sheet {
		background-color: #fff;
		color: #000;
		
		divider {
			color: #d3d4cf;
		}
	}
}

toolbar {
	scroll-speed: 120;
}

wire-sheet {
	color: #ddd;
	background-color: #fff;
	.ace {
		background-color: lightCyan;
	}
	outline: #3e402f;
	
	glyph {
		background-color: white;
		outline: #3e402f;
		font: 9pt sansserif; 
		
		title {
			title { font: bold 9pt sansserif; }
			subtitle { font: 9pt sansserif; }
			color: #000;
			background-color: $button;
			.cut {
				color: #6e6e6e; 
				background-color: #32969696;
			}
		}
		
		selection-color: #eaebd8;
		selection-background-color: #000;
		
		.cut {
			background-color: #32969696;
		}
	}
	
	thumbnail {
		color: #7fb0cdf5;
		background-color: #7feaebd8;
		outline: #3e402f;
	}
}
//=============== end ============
