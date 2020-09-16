//
// test.go
// Copyright (C) 2019 crane <crane@his-pc>
//
// Distributed under terms of the MIT license.
//

package main

import (
	"fmt"
	"os"
	"os/signal"
	"syscall"
)

func waitCtrlCSignal() {
	signalCh := make(chan os.Signal, 1)
	signal.Notify(signalCh, os.Interrupt, syscall.SIGTERM)

	// <-signalCh
	fmt.Println("received signal: [", <-signalCh, "]")
}

func main() {
	fmt.Println("start main")

	waitCtrlCSignal()
}
