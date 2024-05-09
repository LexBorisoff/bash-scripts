#!/usr/bin/env bash

port() {
	netstat -ano | grep ":$1"
}
