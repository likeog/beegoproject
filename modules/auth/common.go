package auth

import (
	"errors"
	"github.com/astaxie/beego"
	m "github.com/likeog/beegoproject/modules/models"
	. "github.com/likeog/beegoproject/modules/utils"
)

func CheckLogin(username, password string) (user m.User, err error) {
	user = m.GetUserByName(username)
	if user.Id == 0 {
		return user, errors.New("账号不存在")
	}

	if user.Password != GetPwd(password) {
		return user, errors.New("密码错误")
	}

	if user.Status == 0 {
		return user, errors.New("禁止用户")
	}

	beego.Trace(GetPwd(password))
	return user, nil
}
