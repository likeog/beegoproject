package admin

import (
	"github.com/likeog/beegoproject/controllers"
	"github.com/likeog/beegoproject/modules/models"
)

type NewsController struct {
	controllers.Baserouter
}

func (this *NewsController) List() {
	var news models.News
	limit := 10
	qs := news.ReadList()
	nums, _ := qs.Count()
	pager := this.SetPaginator(limit, nums)
	var newslist []*models.News
	qs.OrderBy("id").Limit(limit, pager.Offset()).All(&newslist)
	this.Data["News"] = newslist
	this.Layout = "admin/layout.html"
	this.TplNames = "admin/news/manage.tpl"
}

func (this *NewsController) Edit() {

}
