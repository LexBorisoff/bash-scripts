#!/usr/bin/env bash

bt() {
	start ms-settings:bluetooth
}

dsp() {
	start ms-settings:display
}

clip() {
	start ms-settings:clipboard
}

control() {
	powershell ~/.terminal/powershell/control-panel.ps1
}
