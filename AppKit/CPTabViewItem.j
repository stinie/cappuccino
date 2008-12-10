/*
 * CPTabViewItem.j
 * AppKit
 *
 * Created by Francisco Tolmasky.
 * Copyright 2008, 280 North, Inc.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */

@import <Foundation/CPObject.j>

@import <AppKit/CPView.j>


/*
    The tab is currently selected.
    @global
    @group CPTabState
*/
CPSelectedTab   = 0;
/*
    The tab is currently in the background (not selected).
    @global
    @group CPTabState
*/
CPBackgroundTab = 1;
/*
    The tab of this item is currently being pressed by the user.
    @global
    @group CPTabState
*/
CPPressedTab    = 2;

/*! @class CPTabView

    The class representation of an item in a CPTabView. One tab view item
    can be shown at a time in a CPTabView.
*/
@implementation CPTabViewItem : CPObject
{
    id          _identifier;
    CPString    _label;
    
    CPView      _view;
    CPView      _auxiliaryView;
}

/*!
    Initializes the tab view item with the specified identifier.
    @return the initialized CPTabViewItem
*/
- (id)initWithIdentifier:(id)anIdentifier
{
    self = [super init];
    
    if (self)
        _identifier = anIdentifier;
        
    return self;
}

// Working With Labels
/*!
    Sets the CPTabViewItem's label.
    @param aLabel the label for the item
*/
- (void)setLabel:(CPString)aLabel
{
    _label = aLabel;
}

/*!
    Returns the CPTabViewItem's label
*/
- (CPString)label
{
    return _label;
}

// Checking the Tab Display State
/*!
    Returns the tab's current state.
*/
- (CPTabState)tabState
{
    return _tabState;
}

// Assigning an Identifier Object
/*!
    Sets the item's identifier.
    @param anIdentifier the new identifier for the item
*/
- (void)setIdentifier:(id)anIdentifier
{
    _identifier = anIdentifier;
}

/*!
    Returns the tab's identifier.
*/
- (id)identifier
{
    return _identifier;
}

// Assigning a View
/*!
    Sets the view that gets displayed in this tab.
*/
- (void)setView:(CPView)aView
{
    _view = aView;
}

/*!
    Returns the tab's view.
*/
- (CPView)view
{
    return _view;
}

// Assigning an Auxiliary View
/*!
    Sets the tab's auxillary view.
    @param anAuxillaryView the new auxillary view
*/
- (void)setAuxiliaryView:(CPView)anAuxiliaryView
{
    _auxiliaryView = anAuxiliaryView;
}

/*!
    Returns the tab's auxillary view
*/
- (CPView)auxiliaryView
{
    return _auxiliaryView;
}

// Accessing the Parent Tab View
/*!
    Returns the tab view that contains this item.
*/
- (CPTabView)tabView
{
    return _tabView;
}

@end
