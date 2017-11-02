package models

import (
	"github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql"
)

type News struct {
	Id          int
	Gid         int
	Pic         string
	Author      string
	Title       string
	Keywords    string
	Description string
	Content     string
	Click       int `orm:default(1)`
	Position    int
	Atime       int
	Ctime       int
	Origin      string
}

func init() {
	orm.RegisterModelWithPrefix("wd_", new(News))
}

func ListNews() []News {
	o := orm.NewOrm()
	qs := o.QueryTable("wd_news")
	cnt, _ := qs.Count()

	var news []News
	//o.QueryTable("wd_news").All(&news)
	qs.OrderBy("-id").Limit(10, cnt).All(&news)
	return news
}

func (n *News) ReadList() orm.QuerySeter {
	o := orm.NewOrm()
	return o.QueryTable("wd_news")
}
