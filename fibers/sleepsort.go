package main

import "fmt"
import "time"

func main() {

  arr := [8]int{ 2, 4, 3, 2, 3, 1, 1, 4 }

	length := len(arr)
	c := make(chan int)

	for i := 0; i < length; i++ {
		go func(value int) {
			sleepTime := time.Duration(value) * 100 * time.Millisecond
			time.Sleep(sleepTime)
			c <- value
		}(arr[i])
	}


  for i := 0; i < length; i++  {
		fmt.Println(<-c)
	}
}
