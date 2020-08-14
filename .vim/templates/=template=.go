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

func wait_ctrl_c() {
	signalCh := make(chan os.Signal, 1)
	signal.Notify(signalCh, os.Interrupt, syscall.SIGTERM)
	<-signalCh
}

func main() {
	fmt.Println("start main")

	wait_ctrl_c()
}
