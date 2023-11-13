#!/usr/bin/env bash

function bt() {
	start ms-settings:bluetooth
}

function dsp() {
	start ms-settings:display
}

function clip() {
	start ms-settings:clipboard
}

function control() {
	powershell ~/.terminal/powershell/control-panel.ps1
}
