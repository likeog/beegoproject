package admin

import (
	//"crypto/md5"
	//"fmt"
	"github.com/astaxie/beego"
	//"io"
	"github.com/likeog/beegoproject/modules/auth"
)

type LoginController struct {
	beego.Controller
}

func (this *LoginController) Prepare() {
	this.Ctx.Output.Header("Server", "likeogweb")
}

func (this *LoginController) Get() {
	if this.GetSession("userinfo") != nil {
		this.Redirect("/admin/index", 302)
	}
	this.TplNames = "admin/login/index.tpl"
}

func (this *LoginController) Post() {
	username := this.GetString("username")
	password := this.GetString("password")
	user, err := auth.CheckLogin(username, password)

	if err == nil {
		this.SetSession("userinfo", user)
		this.Data["json"] = "{\"status\":1,\"info\":\"登录成功\"}"
	} else {
		this.Data["json"] = "{\"status\":0,\"info\":\"" + err.Error() + "\"}"
	}
	this.ServeJson()

}
