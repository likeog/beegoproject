package admin

import (
	"github.com/astaxie/beego/cache"
	"github.com/astaxie/beego/utils/captcha"
	"github.com/likeog/beegoproject/controllers"
)

type IndexController struct {
	controllers.Baserouter
}

func init() {
	store := cache.NewMemoryCache()
	captcha.NewWithFilter("/captcha/", store)
}
func (this *IndexController) Index() {
	this.Data["userinfo"] = this.GetSession("userinfo")
	this.TplNames = "admin/index.tpl"
}
