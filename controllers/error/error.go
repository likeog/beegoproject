package error

import (
	"github.com/astaxie/beego"
)

type ErrorController struct {
	beego.Controller
}

func (this *ErrorController) Error404() {
	this.Data["content"] = "page not found"
	this.TplNames = "404.tpl"
}
