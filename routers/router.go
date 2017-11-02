package routers

import (
	"github.com/astaxie/beego"
	"github.com/likeog/beegoproject/controllers/admin"
	"github.com/likeog/beegoproject/controllers/error"
	"github.com/likeog/beegoproject/controllers/home"
)

func init() {
	// 注册路由
	beego.Router("/", &home.IndexController{}, "get:Index")
	beego.Router("/admin/index", &admin.IndexController{}, "get:Index")
	beego.Router("/admin/login", &admin.LoginController{})
	beego.Router("/news/index", &admin.NewsController{}, "get:List")
	beego.Router("/news/edit/:id", &admin.NewsController{}, "*:Edit")
	beego.AutoRouter(&admin.NewsController{})
	beego.ErrorController(&e.ErrorController{})
}
