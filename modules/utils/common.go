package utils

import (
	"crypto/md5"
	"encoding/hex"
	"fmt"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
)

func GetPwd(password string) string {
	h := md5.New()
	h.Write([]byte(password))
	return hex.EncodeToString(h.Sum(nil))
}

func Initial() {
	registerModel()
}

func registerModel() {
	// 获取数据库信息
	db_type := beego.AppConfig.String("db_type")
	db_host := beego.AppConfig.String("db_host")
	db_port := beego.AppConfig.String("db_port")
	db_user := beego.AppConfig.String("db_user")
	db_pass := beego.AppConfig.String("db_passwd")
	db_name := beego.AppConfig.String("db_name")
	db_charset := beego.AppConfig.String("db_charset")
	// 判断数据库类型
	if db_type != "mysql" {
		beego.Trace("数据库类型错误")
		return
	}
	// 注册数据库驱动
	dns := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s?charset=%s", db_user, db_pass, db_host, db_port, db_name, db_charset)
	orm.RegisterDriver("mysql", orm.DR_MySQL)
	orm.RegisterDataBase("default", db_type, dns)
}
