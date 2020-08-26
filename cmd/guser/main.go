package main

import (
	"encoding/json"
	"fmt"
	"guser/pkg/guser/model"
	"os"
)

func main() {
	user := model.User{ID: "a-1", Name: "Bob"}
	j, err := json.Marshal(user)
	if err != nil {
		os.Exit(1)
	}
	fmt.Println(string(j))
}
