#!/bin/bash

# This script is meant to take the ALREADY INSTALLED POP-NORD THEME and put it in some local folders so that I can add it gnome-look.
# If you didn't install it via the build instructions in the README, this will not work.

THEME_DIR="/usr/share/themes"
SHELL_DIR="/usr/share/gnome-shell/theme"

LOCAL_THEMES_DIR="themes"

THEME_NAME="Pop-nord"
DARK_SUFFIX="-dark"

rm -rf $LOCAL_THEMES_DIR

if [ ! -d $LOCAL_THEMES_DIR ]
then
    echo "Creating $LOCAL_THEMES_DIR..."
    mkdir $LOCAL_THEMES_DIR
else
    echo "$LOCAL_THEMES_DIR folder already exists."
fi

if [ ! -d $LOCAL_THEMES_DIR/$THEME_NAME ]
then
    echo "Creating $LOCAL_THEMES_DIR/$THEME_NAME..."
    mkdir $LOCAL_THEMES_DIR/$THEME_NAME
else
    echo "$LOCAL_THEMES_DIR/$THEME_NAME folder already exists."
fi

if [ ! -d $LOCAL_THEMES_DIR/$THEME_NAME$DARK_SUFFIX ]
then
    echo "Creating $LOCAL_THEMES_DIR/$THEME_NAME$DARK_SUFFIX..."
    mkdir $LOCAL_THEMES_DIR/$THEME_NAME$DARK_SUFFIX
else
    echo "$LOCAL_THEMES_DIR/$THEME_NAME$DARK_SUFFIX folder already exists."
fi


if  [ -d $THEME_DIR/$THEME_NAME ] && 
    [ -d $THEME_DIR/$THEME_NAME$DARK_SUFFIX ] &&
    [ -d $SHELL_DIR/$THEME_NAME ] &&
    [ -d $SHELL_DIR/$THEME_NAME$DARK_SUFFIX ]
then
    echo "All theme directories exist."
else
    echo "Pop-nord not installed globally in $THEME_DIR or $SHELL_DIR"
    exit
fi

echo "Writing light theme..."
cp -r $THEME_DIR/$THEME_NAME $LOCAL_THEMES_DIR # Clone the theme files to here
rm -rf $LOCAL_THEMES_DIR/$THEME_NAME/gnome-shell # Remove the linked gnome-shell directory
mkdir $LOCAL_THEMES_DIR/$THEME_NAME/gnome-shell # Create a new gnome-shell directory
cp -r $SHELL_DIR/$THEME_NAME/* $LOCAL_THEMES_DIR/$THEME_NAME/gnome-shell # Copy the actual gnome-shell files
rm -f $LOCAL_THEMES_DIR/$THEME_NAME/gnome-shell/$THEME_NAME # Remove the useless symbolic link

echo "Writing dark theme..."
cp -r $THEME_DIR/$THEME_NAME$DARK_SUFFIX $LOCAL_THEMES_DIR # Clone the theme files to here
rm -rf $LOCAL_THEMES_DIR/$THEME_NAME$DARK_SUFFIX/gnome-shell # Remove the linked gnome-shell directory
mkdir $LOCAL_THEMES_DIR/$THEME_NAME$DARK_SUFFIX/gnome-shell # Create a new gnome-shell directory
cp -r $SHELL_DIR/$THEME_NAME$DARK_SUFFIX/* $LOCAL_THEMES_DIR/$THEME_NAME$DARK_SUFFIX/gnome-shell # Copy the actual gnome-shell files
rm -f $LOCAL_THEMES_DIR/$THEME_NAME$DARK_SUFFIX/gnome-shell/$THEME_NAME$DARK_SUFFIX # Remove the useless symbolic link

echo "Done!"