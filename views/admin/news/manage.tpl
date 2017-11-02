<div class="row">
	<div class="col-md-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">新闻列表</h3>		
				<div class="panel-options">
				</div>
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-md-12">
						<table class="table table-hover news-list">
						  <thead>
							<tr>
							  <th class="col-md-1">选择</th>
							  <th class="col-md-7">名  称</th>
							  <th class="col-md-2 text-center">时  间</th>
							  <th class="col-md-2 text-center">操  作</th>
							</tr>
						  </thead>
						  <tbody>
							 {{range .News}}
								<tr>
								  <th scope="row">{{.Id}}</th>
								  <td>{{.Title}}</td>
								  <td class="text-center">{{formdate .Atime }}</td>
								  <td class="text-center">
									<a class="btn btn-info" href='{{urlfor "admin.NewsController.Edit" ":id" .Id}}' role="button">修改</a>
									<a class="btn btn-warning" href="javascript:void(0);" onClick="del({{.Id}})" role="button">删除</a>
								   </td>
								</tr>
							 {{end}}
						  </tbody>
						</table>			
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 text-center">
						<ul class="pagination">
{{if gt .paginator.PageNums 1}}
<ul class="pagination pagination-sm">
    {{if .paginator.HasPrev}}
        <li><a href="{{.paginator.PageLinkFirst}}">首页</a></li>
        <li><a href="{{.paginator.PageLinkPrev}}">&lt;</a></li>
    {{else}}
        <li class="disabled"><a>首页</a></li>
        <li class="disabled"><a>&lt;</a></li>
    {{end}}
    {{range $index, $page := .paginator.Pages}}
        <li{{if $.paginator.IsActive .}} class="active"{{end}}>
            <a href="{{$.paginator.PageLink $page}}">{{$page}}</a>
        </li>
    {{end}}
    {{if .paginator.HasNext}}
        <li><a href="{{.paginator.PageLinkNext}}">&gt;</a></li>
        <li><a href="{{.paginator.PageLinkLast}}">末页</a></li>
    {{else}}
        <li class="disabled"><a>&gt;</a></li>
        <li class="disabled"><a>末页</a></li>
    {{end}}
</ul>
{{end}}
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
