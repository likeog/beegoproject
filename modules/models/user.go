package models

import (
	"github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql"
)

type User struct {
	Id        int
	Gid       int
	Username  string `orm:"unique"`
	Password  string
	Email     string
	Province  string `orm:"null"`
	City      string `orm:"null"`
	Address   string `orm:"null"`
	Birthday  string `orm:"null"`
	Loginip   string
	Lastip    string
	Logintime string
	Lasttime  string
	Is_admin  int
	Status    int `orm:"default(1)"`
}

func init() {
	orm.RegisterModelWithPrefix("wd_", new(User))
}

func GetUserByName(username string) (user User) {
	user = User{Username: username}
	o := orm.NewOrm()
	o.Read(&user, "Username")
	return user
}

func AddUser(userinfo User) bool {
	o := orm.NewOrm()
	_, err := o.Insert(&userinfo)
	if err != nil {
		return false
	}

	return true
}
