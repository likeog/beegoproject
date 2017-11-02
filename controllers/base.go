package controllers

import (
	"github.com/astaxie/beego"
	"github.com/likeog/beegoproject/modules/utils"
	"time"
)

type CommonPrepare interface {
	CommonPrepare()
}

type Baserouter struct {
	beego.Controller
	IsLogin bool
}

func (this *Baserouter) Prepare() {
	this.Data["PageStartTime"] = time.Now().Unix()
	if this.GetSession("userinfo") != nil {
		this.IsLogin = true
	}
	if !this.IsLogin {
		this.Ctx.Redirect(302, "/admin/login")
	}

	if app, ok := this.AppController.(CommonPrepare); ok {
		app.CommonPrepare()
	}
}

func (this *Baserouter) SetPaginator(per int, nums int64) *utils.Paginator {
	p := utils.NewPaginator(this.Ctx.Request, per, nums)
	this.Data["paginator"] = p
	return p
}
