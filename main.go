package main

import (
	"github.com/astaxie/beego"
	. "github.com/likeog/beegoproject/modules/utils"
	_ "github.com/likeog/beegoproject/routers"
	"time"
)

func formdate(value interface{}) string {
	t, _ := ToInt64(value)
	return time.Unix(t, 0).Format("2006-01-02 15:04:05")
}

func init() {
	beego.AddFuncMap("formdate", formdate)
}

func main() {
	Initial()
	beego.Run()
}
